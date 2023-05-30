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
            dal= DataAccess()
            #setil =dal.setIl(ils[i], int(iller[i-1]))
            self.get_ilce_list(iller[i-1])

    def get_ilce_list(self, ilid):

        self.base_url = "https://www.meb.gov.tr/baglantilar/okullar/index.php?ILKODU=" + ilid
        response = self.session.post(self.base_url)
        soup = BeautifulSoup(response.content, 'html.parser')
        ilce_dropdown = soup.find('select', id='jumpMenu6')
        ilce_list = [option['value'] for option in ilce_dropdown.find_all('option') if option['value']]


    def get_okul_list(self, il, ilce):
        response = self.session.post(self.base_url, data={'il': il, 'ilce': ilce})
        soup = BeautifulSoup(response.content, 'html.parser')
        okul_table = soup.find('table', class_='okullar')
        okul_list = [row.td.text.strip() for row in okul_table.find_all('tr')[1:]]
        return okul_list
