from flask import current_app
from flask_wtf import FlaskForm
from wtforms import SelectField


class RaceForm(FlaskForm):
    #db = current_app.config["db"]
    race = SelectField('race', choices=[(1, 'Dwarf'), (2, 'Elf'), (3, 'Halfling'), (4, 'Human'), (5, 'Dragonborn'),
                                        (6, 'Gnome'), (7, 'Half-Elf'), (8, 'Half-Orc'), (9, 'Tiefling')])

    subrace = SelectField('subrace', choices=[])

    subrace_desc = ""

class ClassForm(FlaskForm):
    classes = SelectField('class', choices=[(1, 'Barbarian'), (2, 'Bard'), (3, 'Cleric'), (4, 'Druid'), (5, 'Fighter'),
                                            (6, 'Monk'), (7, 'Paladin'), (8, 'Ranger'), (9, 'Rogue'), (10, 'Sorcerer'),
                                            (11, 'Warlock'), (12, 'Wizard')])

    subclass = SelectField('subclass', choices=[])