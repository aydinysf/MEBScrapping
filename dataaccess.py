import psycopg2

import postgresqlconnector


class DataAccess:
    def __init__(self):
        self.connector = psycopg2.connect(host="localhost", port="5432", database="MEB",
                                          user="postgres", password="12345")

    def setIl(self, il, ilid):
        query = "INSERT INTO public.iller (id, iladi) VALUES (%s, %s)"
        values = (ilid, il)
        cursor = self.connector.cursor()
        cursor.execute(query, values)
        self.connector.commit()
        cursor.close()
        self.connector.close()
