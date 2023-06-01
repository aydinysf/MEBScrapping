import uuid

import requests
from bs4 import BeautifulSoup

from dataaccess import DataAccess
from postgresqlconnector import PostgreSQLConnector


class SchoolScraper:
    def __init__(self):
        self.base_url = 'https://www.meb.gov.tr/baglantilar/okullar/index.php'
        self.session = requests.Session()

    def get_il_list(self):
        response = self.session.get(self.base_url)
        soup = BeautifulSoup(response.content, 'html.parser')
        il_dropdown = soup.find('select', id='jumpMenu5')

        il_list_raw = [option['value'] for option in il_dropdown.find_all('option') if option['value']]
        il_list = []
        for il in il_list_raw:
            il_list.append(il)
        return il_list

    def get_il_kodu_list(self):
        response = self.session.get(self.base_url)
        soup = BeautifulSoup(response.content, 'html.parser')
        il_dropdown = soup.find('select', id='jumpMenu5')
        il_dropdown_ = [option['value'].replace('?ILKODU=', '') for option in il_dropdown.find_all('option') if
                        option['value']]
        iller = []
        ils = []
        options = soup.find_all('option')

        for op in options:
            id = op.text.strip()
            ils.append(id)

        # Her bir option etiketini döngüyle gezme
        for option in il_dropdown_:
            iller.append(option)  # İl ismini iller listesine ekleme

        for i in range(1, 82, 1):
            dal = DataAccess()
            plaka=int(iller[i - 1])
            ilguid = uuid.uuid4()
            if plaka >79:
                setil = dal.setIl(ils[i], plaka, ilguid)
                self.get_ilce_list(iller[i - 1], ilguid)

    def get_ilce_list(self, ilid, ilguid):

        self.base_url = "https://www.meb.gov.tr/baglantilar/okullar/index.php?ILKODU=" + ilid
        response = self.session.post(self.base_url)
        soup = BeautifulSoup(response.content, 'html.parser')
        ilce_dropdown = soup.find('select', id='jumpMenu6')
        ilce_list = [option['value'].replace("ILCEKODU=", "") for option in ilce_dropdown.find_all('option') if
                     option['value']]
        ilce_kodu = []
        ilce_adi = []

        options = ilce_dropdown.find_all('option')

        for op in options:
            id = op.text.strip()
            ilce_adi.append(id)

        for option in ilce_list:
            ilce_kodu.append(option.replace("?ILKODU=" + ilid + "&", ""))  # İl ismini iller listesine ekleme

        for i in range(0, len(ilce_list), 1):
            dal = DataAccess()
            ilceno = int(ilce_kodu[i])
            if ilce_kodu[i] != '0':
                guid = uuid.uuid4()
                dal.setIlce(ilid,ilceno, ilce_adi[i], guid, ilguid)
                self.get_okul_list(ilid, ilce_kodu[i], guid)

    def get_okul_list(self, il, ilceid, guid):
        if ilceid == '0':
            return
        self.base_url = "https://www.meb.gov.tr/baglantilar/okullar/index.php?ILKODU=" + il + "&ILCEKODU=" + ilceid
        response = self.session.post(self.base_url)
        soup = BeautifulSoup(response.content, 'html.parser')

        soupokul = soup.find('table', id='icerik-listesi')
        okullinks = soupokul.find_all('a')
        okullist = []
        for op in okullinks:
            okul = op.text.strip()
            if okul != '':
                okulstr = ""
                boluk_okul = okul.split("-")
                if len(boluk_okul) == 3:
                    okulstr = boluk_okul[2]
                if len(boluk_okul) == 2:
                    okulstr = boluk_okul[1]
                if len(boluk_okul) == 1:
                    okulstr = boluk_okul[0]
                okullist.append(okulstr)
                dalokul = DataAccess()

                guid_okul = uuid.uuid4()
                dalokul.setOkul(il, ilceid, okulstr, guid, guid_okul)
