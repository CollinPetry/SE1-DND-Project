class Character:
    def __init__(self, char_id, name, exp, level, race, race_desc, subrace, subrace_desc, char_class, class_desc, class_path,
                 path_desc, background, background_desc, alignment, speed, size, strength, dexterity, constitution,
                 wisdom, intelligence, charisma, current_hp, total_hp):
        self.char_id = char_id
        self.name = name
        self.exp = exp
        self.level = level
        self.race = race
        self.race_desc = race_desc
        self.subrace = subrace
        self.subrace_desc = subrace_desc
        self.char_class = char_class
        self.class_desc = class_desc
        self.class_path = class_path
        self.path_desc = path_desc
        self.background = background
        self.background_desc = background_desc
        self.alignment = alignment
        self.speed = speed
        self.size = size
        self.strength = strength
        self.dexterity = dexterity
        self.constitution = constitution
        self.wisdom = wisdom
        self.intelligence = intelligence
        self.charisma = charisma
        self.current_hp = current_hp
        self.total_hp = total_hp
