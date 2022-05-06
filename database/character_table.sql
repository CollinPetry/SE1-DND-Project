-- users character
CREATE TABLE Characters(
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
    speed int(15),
    size varchar(50),
    char_lvl int(15),
	FOREIGN KEY (char_background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (char_class_id) REFERENCES classes(class_id),
    FOREIGN KEY (char_race_id) REFERENCES races(race_id),
    primary key(char_id)
);

create view user_chars as 
select u.user_id, u.user_name, c.char_name, c.char_id
from user as u
join Characters as c on (c.user_id= u.user_id);

select * from user_chars;

create table char_powers(
	power_id int(15),
    char_id int(15),
    category varchar(50),
	FOREIGN KEY (char_id) REFERENCES Characters(char_id)
);


CREATE TABLE IF NOT EXISTS Class_Proficency_Armor(
	user_id INT(15) NOT NULL,
	char_id INT(15) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (char_id) REFERENCES User_Character(char_id),
	UNIQUE (user_id, char_id)
);

create view Items as
select 'Gear' as category, gear_id as item_id , gear_name as item_name, weight, cost
from Gear
Union
select 'Tool' as category, tool_id, tool_name, weight,cost
from Tools
Union
select 'Weapon' as category, weapon_id, weapon_name, weight, cost
from Weapons
union
select 'Armor' as category, armor_id, armor_name, weight,cost
from armor
union
select 'Pack' as category, pack_id, pack_name, weight,cost
from packs;

CREATE TABLE IF NOT EXISTS char_proficency(
	char_id INT(15) NOT NULL,
	prof_id INT(15) NOT NULL,
    category varchar(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
	UNIQUE (char_id, prof_id)
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
