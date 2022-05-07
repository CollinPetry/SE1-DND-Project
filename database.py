from flask import app
from flask_mysqldb import MySQL


class Database:
    def __init__(self, dbfile):
        self.dbfile = dbfile

    def form(self, name, age):
        app.config['MYSQL_HOST'] = 'localhost'
        app.config['MYSQL_USER'] = 'root'
        app.config['MYSQL_PASSWORD'] = ''
        app.config['MYSQL_DB'] = 'flask'

        mysql = MySQL(app)
        cursor = mysql.connection.cursor()
        cursor.execute(''' INSERT INTO info_table VALUES(%s,%s)''', (name, age))
        mysql.connection.commit()
        cursor.close()

        print("here")

