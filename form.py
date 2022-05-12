from flask_wtf import FlaskForm
from wtforms import SelectField


class RaceForm(FlaskForm):
    race = SelectField('race', choices=[(1, 'Dwarf'), (2, 'Elf'), (3, 'Halfling'), (4, 'Human'), (5, 'Dragonborn'),
                                        (6, 'Gnome'), (7, 'Half-Elf'), (8, 'Half-Orc'), (9, 'Tiefling')])
    subrace = SelectField('subrace', choices=[])