import sqlite3
import os.path

#custom class imports
from character import Character
from skill_prof import Skill_Prof
from subclass import Subclass
from subrace import Subrace
from traits import Trait
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
                print(str(result[i][0]) + str(result[i][1]) + str(result[i][2]) + str(result[i][3]) + str(result[i][4]) + str(result[i][5]))
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
            cursor.execute("SELECT c.char_id, c.char_name, c.char_exp, c.char_lvl, r.race_name, r.race_description, s.subrace_name, "
                           "s.subrace_description, k.class_name, k.class_description, p.path_name, p.path_description, "
                           "b.background_name, b.background_description, a.alignment_name, c.speed, c.size, c.strength, "
                           "c.dexterity, c.constitution, c.wisdom, c.intelegence, c.charisma, c.hp, c.total_hp FROM CHARACTERS c JOIN "
                           "RACES r ON r.race_id = c.char_race_id JOIN SUBRACES s ON s.pk_subrace = c.pk_subrace JOIN "
                           "CLASSES k ON k.class_id = c.char_class_id JOIN PATHS p ON p.path_id = c.path_id JOIN "
                           "BACKGROUNDS b ON b.background_id = c.char_background_id JOIN ALIGNMENTS a ON a.alignment_id "
                           "= c.char_alignment_id WHERE c.char_name = ?", (char_name, ))
            for char_id, char_name, char_exp, char_lvl, race_name, race_description, subrace_name, subrace_description, class_name, class_description, path_name, path_description, background_name, background_description, alignment_name, speed, size, strength, dexterity, constitution, wisdom, intelegence, charisma, hp, total_hp in cursor:
                character.append((char_id, Character(char_id, char_name, char_exp, char_lvl, race_name, race_description, subrace_name, subrace_description, class_name, class_description, path_name, path_description, background_name, background_description, alignment_name, speed, size, strength, dexterity, constitution, wisdom, intelegence, charisma, hp, total_hp)))
                print("Current: "+str(hp))
                print("Total: "+str(total_hp))
        cursor.close()
        return character

    def get_stats(self, char_name):
        stats = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute( "SELECT char_id, strength, dexterity, constitution, intelegence, wisdom, charisma FROM CHARACTERS WHERE char_name = ?", (char_name,))
            for char_id, strength, dexterity, constitution, wisdom, intelegence, charisma in cursor:
                stats.append((char_id, Skill_Prof(char_id, strength, dexterity, constitution, wisdom, intelegence, charisma)))
        cursor.close()
        return stats

    def get_skill_prof(self, char_id, skill_name):
        #  1 means proficient, 0 means not proficient
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT s.skill_id FROM SKILLS s JOIN BACKGROUND_PROFICENCY_SKILLS b ON b.skill_id = "
                           "s.skill_id JOIN CHARACTERS c ON c.char_background_id = b.background_id WHERE c.char_id = ? "
                           "AND s.skill_name = ?", (char_id, skill_name))
            result = cursor.fetchall()
            if result != 0:
                return 1

            cursor.execute("SELECT s.skill_id FROM SKILLS s JOIN CLASS_PROFICENCY_SKILLS k ON k.skill_id = s.skill_id "
                           "JOIN CHARACTERS c ON c.char_class_id = k.class_id WHERE c.char_id = ? AND s.skill_name "
                           "= ?", (char_id, skill_name))
            result = cursor.fetchall()
            if result != 0:
                return 1

            cursor.execute("SELECT s.skill_id FROM SKILLS s JOIN RACIAL_TRAIT_GRANTS_SKILLS t ON t.skill_id = "
                           "s.skill_id JOIN RACE_GRANTS_TRAITS r ON r.racial_trait_id = t.racial_trait_id JOIN "
                           "CHARACTERS c ON c.char_race_id = r.race_id WHERE c.char_id = ? AND s.skill_name = ?",
                           (char_id, skill_name))
            result = cursor.fetchall()
            if result != 0:
                return 1

            cursor.execute("SELECT s.skill_id FROM SKILLS s JOIN RACIAL_TRAIT_GRANTS_SKILLS t ON t.skill_id = "
                           "s.skill_id JOIN SUBRACE_GRANTS_TRAITS s ON s.racial_trait_id = t.racial_trait_id JOIN "
                           "CHARACTERS c ON c.char_race_id = s.pk_subrace WHERE c.char_id = ? AND s.skill_name = ?",
                           (char_id, skill_name))
            result = cursor.fetchall()
            if result != 0:
                return 1

    def get_level(self, char_id):
        level = 0
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT char_lvl FROM CHARACTERS  WHERE char_id = ?", (char_id, ))
            level = cursor.fetchone()
            cursor.close()
        return level

    def get_saving_throw_prof(self, char_id, ability_name):
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT k.ability_id FROM CLASS_PROFICENCY_SAVING_THROWS k JOIN CHARACTERS c ON "
                           "c.char_class_id = k.class_id JOIN ABILITIES a ON a.ability_id = k.ability_id WHERE "
                           "c.char_id = ? AND a.ability_name = ?", (char_id, ability_name))
            result = cursor.fetchone()
            cursor.close()
        return result

    def get_traits(self, char_name):
        print("TEST")
        traits = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT r.trait_name, n.race_name, r.trait_description FROM RACIAL_TRAITS r "
                           "JOIN RACE_GRANTS_TRAITS m ON m.racial_trait_id = r.racial_trait_id JOIN RACES n "
                           "ON n.race_id = m.race_id JOIN CHARACTERS c on c.char_race_id = n.race_id WHERE "
                           "c.char_name = ?", (char_name, ))
            id = 0
            print("Here")
            for trait_name, race_name, trait_description in cursor:
                print(trait_name+"\t"+race_name+"\t"+trait_description)
                traits.append((id, Trait(trait_name, race_name, trait_description)))
                id = id + 1

            cursor.execute("SELECT p.feat_name, s.path_name, p.feat_description FROM PATH_FEATS p JOIN PATHS s ON "
                           "s.path_id = p.path_id JOIN CHARACTERS c ON c.path_id = p.path_id WHERE p.lvl <= 3 AND "
                           "c.char_name = ?", (char_name, ))
            for feat_name, path_name, feat_description in cursor:
                traits.append((id, Trait(feat_name, path_name, trait_description)))
                id = id + 1

            cursor.close()
        return traits

    def get_subraces(self, race_id):
        subraces = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT s.pk_subrace, s.subrace_name, s.subrace_description, r.race_description FROM SUBRACES s JOIN RACES r ON "
                           "r.race_id = s.race_id WHERE s.race_id = ?", (race_id, ))
            for pk_subrace, subrace_name, subrace_description, race_description in cursor:
                #print(str(pk_subrace)+ ",    " + subrace_name+ ",    " + race_description)
                subraces.append(Subrace(pk_subrace, subrace_name, subrace_description, race_description))
            cursor.close()

        return subraces

    def get_path(self, class_id):
        paths = []
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute(
                "SELECT path_id, path_name FROM PATHS WHERE class_id = ?", (class_id,))
            for path_id, path_name  in cursor:
                paths.append(Subclass(path_id, path_name ))
            cursor.close()

        return paths

    def get_race_desc(self, race_id):
        race_desc = ""
        #  Establishing link to the database
        BASE_DIR = os.path.dirname(os.path.abspath(__file__))
        db_path = os.path.join(BASE_DIR, "dnddb.db")
        #  SQL commands to execute
        with sqlite3.connect(db_path) as connection:
            cursor = connection.cursor()
            cursor.execute("SELECT race_description FROM RACES WHERE race_id = ?", (race_id, ))
            for race_description in cursor:
                race_desc = race_description
            cursor.close()
        return race_desc
