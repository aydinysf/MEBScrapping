import psycopg2

import postgresqlconnector


class DataAccess:
    def __init__(self):
        self.connector = psycopg2.connect(host="localhost", port="5432", database="MEB",
                                          user="postgres", password="12345")

    def setIl(self, il, ilid,ilguid):
        query = "INSERT INTO public.iller (id, iladi,ilguid) VALUES (%s, %s,%s)"
        values = (ilid, il,str(ilguid))
        cursor = self.connector.cursor()
        cursor.execute(query, values)
        self.connector.commit()
        cursor.close()
        self.connector.close()

    def setIlce(self, ilid, ilceid, ilce, ilceguid,ilguid):
        query = "INSERT INTO public.ilceler (ilid, ilceid, ilce, ilceguid,ilguid) VALUES (%s, %s, %s, %s, %s)"
        values = (ilid, ilceid, ilce, str(ilceguid), str(ilguid))
        cursor = self.connector.cursor()
        cursor.execute(query, values)
        self.connector.commit()
        cursor.close()
        self.connector.close()

    def setOkul(self, ilid, ilceid, okul, ilceguid, okulguid):
        query = "INSERT INTO public.okul (ilid, ilceid,okul,ilceguid,okulguid) VALUES (%s, %s,%s,%s,%s)"
        values = (ilid, ilceid, okul, str(ilceguid), str(okulguid))
        cursor = self.connector.cursor()
        cursor.execute(query, values)
        self.connector.commit()
        cursor.close()
        self.connector.close()
