import sqlite3
import os.path

#custom class imports
from character import Character
from user_char import User_char

class Database:
    def __init__(self, dbfile):
        self.dbfile = dbfile

    def get_user_characters(self, username):
        user_chars = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT c.char_id, c.char_name, c.char_lvl, r.race_name, s.subrace_name, k.class_name FROM "
                           "CHARACTERS c JOIN USERS u ON u.id = c.user_id JOIN RACES r ON r.race_id = c.char_race_id "
                           "JOIN CLASSES k ON k.class_id = c.char_class_id JOIN SUBRACES s ON s.pk_subrace = "
                           "c.pk_subrace WHERE u.username = ?", (username,))
            result = cursor.fetchall()
            for i in range(0, len(result)):
                user_chars.append((result[i][0], User_char(result[i][0], result[i][1], result[i][2], result[i][3], result[i][4], result[i][5])))
            cursor.close()
        return user_chars

    def get_character(self, char_name):
        character = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT c.char_id, c.char_name, c.char_exp, r.race_name, r.race_description, s.subrace_name, "
                           "s.subrace_description, k.class_name, k.class_description, p.path_name, p.path_description, "
                           "b.background_name, b.background_description, a.alignment_name, c.speed, c.size, c.strength, "
                           "c.dexterity, c.constitution, c.wisdom, c.intelegence, c.charisma FROM CHARACTERS c JOIN "
                           "RACES r ON r.race_id = c.char_race_id JOIN SUBRACES s ON s.pk_subrace = c.pk_subrace JOIN "
                           "CLASSES k ON k.class_id = c.char_class_id JOIN PATHS p ON p.path_id = c.path_id JOIN "
                           "BACKGROUNDS b ON b.background_id = c.char_background_id JOIN ALIGNMENTS a ON a.alignment_id "
                           "= c.char_alignment_id WHERE c.char_name = ?", (char_name, ))
            for char_id, char_name, char_exp, race_name, race_description, subrace_name, subrace_description, class_name, class_description, path_name, path_description, background_name, background_description, alignment_name, speed, size, strength, dexterity, constitution, wisdom, intelegence, charisma in cursor:
                character.append((char_id, Character(char_name, char_exp, race_name, race_description, subrace_name, subrace_description, class_name, class_description, path_name, path_description, background_name, background_description, alignment_name, speed, size, strength, dexterity, constitution, wisdom, intelegence, charisma)))
        cursor.close()
        return character
