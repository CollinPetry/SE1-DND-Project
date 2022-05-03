
-- users character
CREATE TABLE User_Character(
	user_id int(15) not null,
    char_id int(15) not null auto_increment,
    char_name varchar(100),
    char_exp int(15),
    char_race_id int(15),
    char_class_id int(15),
    char_background_id int(15),
    char_alignment_id int(15),
	char_bonds text(50000),
    char_personality text(50000),
    char_ideal text(50000),
	FOREIGN KEY (char_background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (char_class_id) REFERENCES classes(class_id),
    FOREIGN KEY (char_race_id) REFERENCES races(race_id),
    primary key(char_id)
);

CREATE TABLE IF NOT EXISTS char_proficency(
	char_id INT(15) NOT NULL,
	prof_id INT(15) NOT NULL,
    category varchar(100),
	FOREIGN KEY (char_id) REFERENCES user_character(char_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (user_id, skill_id)
);

CREATE TABLE IF NOT EXISTS char_languages(
	char_id INT(15) NOT NULL,
	language_id INT(15) NOT NULL,
	FOREIGN KEY (char_id) REFERENCES user_character(char_id),
	FOREIGN KEY (language_id) REFERENCES languages(language_id),
	UNIQUE (user_id, language_id)
);

CREATE TABLE char_inventory(
char_id INT(15) NOT NULL,
item_id INT(15) NOT NULL,
FOREIGN KEY (char_id) REFERENCES user_character(char_id),
FOREIGN KEY (item_id) REFERENCES items(item_id),
UNIQUE (char_id, item_id)
);

