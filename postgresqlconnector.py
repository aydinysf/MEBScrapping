import psycopg2

class PostgreSQLConnector:
    def __init__(self, host, port, database, user, password):
        self.host = host
        self.port = port
        self.database = database
        self.user = user
        self.password = password
        self.connection = None

    def connect(self):
        try:
            self.connection = psycopg2.connect(
                host=self.host,
                port=self.port,
                database=self.database,
                user=self.user,
                password=self.password
            )
            print("Bağlantı başarılı.")

        except (Exception, psycopg2.Error) as error:
            print("Bağlantı hatası:", error)

    def execute_query(self, query):
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            rows = cursor.fetchall()
            cursor.close()
            return rows

        except (Exception, psycopg2.Error) as error:
            print("Sorgu hatası:", error)

    def close_connection(self):
        if self.connection:
            self.connection.close()
            print("Bağlantı kapatıldı.")




