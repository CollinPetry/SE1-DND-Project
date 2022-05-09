import sqlite3
import os.path
import random

#custom class imports
from user_char import User_char


class Database:
    def __init__(self, dbfile):
        self.dbfile = dbfile

    def get_user_characters(self, username):
        print("IN DB METHOD")
        user_chars = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dndb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            print("CONNECTION SUCCESS")
            cursor = connection.cursor()
            print(username)
            cursor.execute("SELECT c.char_id, c.char_name, c.char_lvl, r.race_name, s.subrace_name, k.class_name FROM "
                           "CHARACTERS c JOIN USERS u ON u.id = c.user_id JOIN RACES r ON r.race_id = c.char_race_id "
                           "JOIN CLASSES k ON k.class_id = c.char_class_id JOIN SUBRACES s ON s.pk_subrace = "
                           "c.pk_subrace WHERE u.username = ?", (username,))
            print("WE MADE IT HERE")
            result = cursor.fetchall()
            print(result)
            for i in range(0, len(result)):
                print("For LOOP")
                user_chars.append((result[i][0], User_char(result[i][0], result[i][1], result[i][2], result[i][3], result[i][4], result[i][5])))
                print(user_chars)
            cursor.close()
        return user_chars
