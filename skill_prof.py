from flask import current_app


class Skill_Prof:
    def __init__(self, char_id, strength, dexterity, constitution, wisdom, intelligence, charisma):
        self.char_id = char_id
        self.prof_mod = self.prof_bonus(char_id)

        self.strength = self.bonus_determiner(strength)
        self.strength_saving_throw = self.saving_throw_prof(strength, "Strength", char_id)
        self.athletics = self.modifier_determiner(strength, "Athletics", char_id)

        self.dexterity = self.bonus_determiner(dexterity)
        self.dexterity_saving_throw = self.saving_throw_prof(dexterity, "Dexterity", char_id)
        self.acrobatics = self.modifier_determiner(dexterity, "Acrobatics", char_id)
        self.sleight_of_hand = self.modifier_determiner(dexterity, "Sleight of Hand", char_id)
        self.stealth = self.modifier_determiner(dexterity, "Stealth", char_id)

        self.constitution = self.bonus_determiner(constitution)
        self.constitution_saving_throw = self.saving_throw_prof(constitution, "Constitution", char_id)

        self.wisdom = self.bonus_determiner(wisdom)
        self.wisdom_saving_throw = self.saving_throw_prof(wisdom, "Wisdom", char_id)
        self.animal_handling = self.modifier_determiner(wisdom, "Animal Handling", char_id)
        self.insight = self.modifier_determiner(wisdom, "Insight", char_id)
        self.medicine = self.modifier_determiner(wisdom, "Medicine", char_id)
        self.perception = self.modifier_determiner(wisdom, "Perception", char_id)
        self.survival = self.modifier_determiner(wisdom, "Survival", char_id)

        self.intelligence = self.bonus_determiner(intelligence)
        self.intelligence_saving_throw = self.saving_throw_prof(intelligence, "Intelligence", char_id)
        self.arcana = self.modifier_determiner(intelligence, "Arcana", char_id)
        self.history = self.modifier_determiner(intelligence, "History", char_id)
        self.investigation = self.modifier_determiner(intelligence, "Investigation", char_id)
        self.nature = self.modifier_determiner(intelligence, "Nature", char_id)
        self.religion = self.modifier_determiner(intelligence, "Religion", char_id)

        self.charisma = self.bonus_determiner(charisma)
        self.charisma_saving_throw = self.saving_throw_prof(charisma, "Charisma", char_id)
        self.deception = self.modifier_determiner(charisma, "Deception", char_id)
        self.intimidation = self.modifier_determiner(charisma, "Intimidation", char_id)
        self.performance = self.modifier_determiner(charisma, "Performance", char_id)
        self.persuasion = self.modifier_determiner(charisma, "Persuasion", char_id)

    def modifier_determiner(self, stat, skill_name, char_id):
        db = current_app.config["db"]
        if db.get_skill_prof(char_id, skill_name) == 1:
            # Char is Proficient in skill
            modifier = self.bonus_determiner(stat)+self.prof_bonus(char_id)
            if modifier >= 0:
                return "+"+str(modifier)
            else:
                return str(modifier)
        else:
            modifier = self.bonus_determiner(stat)
            if modifier >= 0:
                return "+" + str(modifier)
            else:
                return str(modifier)

    def prof_bonus(self, char_id):
        db = current_app.config["db"]
        lvl = db.get_level(char_id)
        if lvl[0] < 5:
            return 2
        elif 4 < lvl[0] < 9:
            return 3
        elif 8 < lvl[0] < 13:
            return 4
        elif 12 < lvl[0] < 18:
            return 5
        else:
            return 6


    def bonus_determiner(self, stat):
        stat = int(stat)
        if stat == 1:
            modifier = -5
        elif stat == 2 or stat == 3:
            modifier = -4
        elif stat == 4 or stat == 5:
            modifier = -3
        elif stat == 6 or stat == 7:
            modifier = -2
        elif stat == 8 or stat == 9:
            modifier = -1
        elif stat == 10 or stat == 11:
            modifier = 0
        elif stat == 12 or stat == 13:
            modifier = 1
        elif stat == 14 or stat == 15:
            modifier = 2
        elif stat == 16 or stat == 17:
            modifier = 3
        elif stat == 18 or stat == 19:
            modifier = 4
        elif stat == 20 or stat == 21:
            modifier = 5
        elif stat == 22 or stat == 23:
            modifier = 6
        elif stat == 24 or stat == 25:
            modifier = 7
        elif stat == 26 or stat == 27:
            modifier = 8
        elif stat == 28 or stat == 29:
            modifier = 9
        else:
            modifier = 10
        return modifier

    def saving_throw_prof(self, stat, stat_name, char_id):
        db = current_app.config["db"]
        if db.get_saving_throw_prof(stat_name,char_id) != None:
            #print(stat_name+" saving throw: Proficient \tBonus + prof bonus: \t"+str(self.bonus_determiner(stat)+" + "+str(self.prof_bonus(char_id))))
            modifier = self.bonus_determiner(stat)+self.prof_bonus(char_id)
            if modifier >= 0:
                #print("+" + str(modifier))
                return "+" + str(modifier)
            else:
                #print("-" + str(modifier))
                return str(modifier)
        else:
            #print(stat_name+" saving throw: \tBonus: \t"+str(self.bonus_determiner(stat)))
            modifier = self.bonus_determiner(stat)
            if modifier >= 0:
                #print("+" + str(modifier))
                return "+" + str(modifier)
            else:
                #print("-" + str(modifier))
                return str(modifier)
