class Item:
    def __init__(self, cgi_id, item_id, class_id, item_name):
        self.cgi_id = cgi_id
        self.item_id = item_id
        self.class_id = class_id
        self.item_name = item_name

class Gear:
    def __init__(self, name, desc, category, weight, cost):
        self.name = name
        self.desc = desc
        self.category = category
        self.weight = weight
        self.cost = cost

class Weapon:
    def __init__(self, name, category, cost, damage_die, num_die, damage_type, weight):
        self.name = name
        self.category = category
        self.cost = cost
        self.damage_die = damage_die
        self.num_die = num_die
        self.damage_type = damage_type
        self.weight = weight

class Armor:
    def __init__(self, name, category, cost, armor_class, stre, stealth, weight):
        self.name = name
        self.category = category
        self.cost = cost
        self.armor_class = armor_class
        self.stre = stre
        self.stealth = stealth
        self.weight = weight

class Tool:
    def __init__(self, name, weight, cost, category):
        self.name = name
        self.weight = weight
        self.cost = cost
        self.category = category