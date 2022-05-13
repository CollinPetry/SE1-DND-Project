from flask import current_app
from flask_wtf import FlaskForm
from wtforms import SelectField


class RaceForm(FlaskForm):
    #db = current_app.config["db"]
    race = SelectField('race', choices=[(1, 'Dwarf'), (2, 'Elf'), (3, 'Halfling'), (4, 'Human'), (5, 'Dragonborn'),
                                        (6, 'Gnome'), (7, 'Half-Elf'), (8, 'Half-Orc'), (9, 'Tiefling')])

    subrace = SelectField('subrace', choices=[])

    subrace_desc = ""

    classes = SelectField('classes', choices=[(1, 'Barbarian'), (2, 'Bard'), (3, 'Cleric'), (4, 'Druid'), (5, 'Fighter'),
                                            (6, 'Monk'), (7, 'Paladin'), (8, 'Ranger'), (9, 'Rogue'), (10, 'Sorcerer'),
                                            (11, 'Warlock'), (12, 'Wizard')])

    background = SelectField('background', choices=[(1, 'Acolyte'), (2, 'Charlatan'), (3, 'Criminal'), (4, 'Folk Hero'),
                                                    (5, 'Guild Artisan'), (6, 'Hermit'), (7, 'Noble'), (8, 'Outlander'),
                                                    (9, 'Sage'), (10, 'Sailor'), (11, 'Soldier'), (12, 'Urchin'), (13, 'Entertainer')])


    alignment = SelectField('alignment', choices = [(1, 'Lawful Good'), (2, 'Neutral Good'), (3, 'Chaotic Good'),
                            (4, 'Lawful Neutral'), (5, 'Neutral'), (6, 'Chaotic Neutral'),
                            (7, 'Lawful Evil'), (8, 'Neutral Evil'), (9, 'Chaotic Evil')])

    equipment1 = SelectField('equipment1', choices=[])

    equipment2 = SelectField('equipment2', choices=[])

    equipment3 = SelectField('equipment3', choices=[])

    equipment4 = SelectField('equipment4', choices=[])
