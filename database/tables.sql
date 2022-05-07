
-- build class tables
create table IF NOT EXISTS Classes(
	class_id int(15) NOT NULL AUTO_INCREMENT,
    class_name varchar(50),
    class_class_proficency_skills varchar(50) Not Null,
	hit_die int(3),
    class_description text(50000),
    primary key (class_id)
);	

create table IF NOT EXISTS Paths(
	path_id int(15) NOT NULL AUTO_INCREMENT,
    class_id int(15) Not Null,
	path_name varchar(100) Not Null,
	path_description text(50000),
    primary key (path_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

create table IF NOT EXISTS Class_Features(
	feat_id int(15) NOT NULL AUTO_INCREMENT,
	feat_name varchar(20) Not Null,
    path_description text(50000),
    primary key (feat_id)
);

create table IF NOT EXISTS Weapons(
	weapon_id int(15) NOT NULL AUTO_INCREMENT,
	weapon_name varchar(100) Not Null,
    weapon_category varchar(50),
	cost float(4),
	damage_die int(2),
    num_die int(2),
    damage_type varchar(20),
    weight float(4),
    primary key (weapon_id)
);

create table IF NOT EXISTS Armor(
	armor_id int(15) NOT NULL AUTO_INCREMENT,
	armor_name varchar(50) Not Null,
    armor_category varchar(50),
	cost float(4),
	armor_class int(10),
    strength int(10),
    stealth bool,
    weight float(4),
    primary key (armor_id)
);

create table IF NOT EXISTS Abilities(
	ability_id int(15) NOT NULL AUTO_INCREMENT,
	ability_name varchar(100) Not Null,
    ability_description text(1000),
    primary key (ability_id)
);

-- 1 to many table
-- many skills per ability
create table IF NOT EXISTS Skills(
	skill_id int(15) NOT NULL AUTO_INCREMENT,
	skill_name varchar(20) Not Null,
    ability_id int(15),
    primary key (skill_id),
    foreign key (ability_id) references Abilities(ability_id)
);

create table IF NOT EXISTS Tools(
	tool_id int(15) NOT NULL AUTO_INCREMENT,
	tool_name varchar(100) Not Null,
    weight float(4),
    cost float(4),
    tool_category varchar(100),
    primary key (tool_id)
);

create table IF NOT EXISTS Gear(
	gear_id int(15) NOT NULL AUTO_INCREMENT,
	gear_name varchar(100) Not Null,
    gear_description text(50000),
    gear_category varchar(100),
    weight float(4),
    cost float(4),
    primary key (gear_id)
);

create table IF NOT EXISTS Packs(
	pack_id int(15) NOT NULL AUTO_INCREMENT,
	pack_name varchar(100) Not Null,
    description text(5000),
    weight float(4),
    cost float(4),
    primary key (pack_id)
);

-- many to many relations
CREATE TABLE IF NOT EXISTS Gear_in_Pack(
gear_id INT(15) NOT NULL,
pack_id INT(15) NOT NULL,
FOREIGN KEY (gear_id) REFERENCES Gear(gear_id),
FOREIGN KEY (pack_id) REFERENCES Packs(pack_id),
UNIQUE (gear_id, pack_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Saving_Throws(
	class_id INT(15) NOT NULL,
	ability_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (class_id, ability_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Armor(
	class_id INT(15) NOT NULL,
	armor_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (armor_id) REFERENCES Armor(armor_id),
	UNIQUE (class_id, armor_id)
);
CREATE TABLE IF NOT EXISTS Class_Proficency_Skills(
	class_id INT(15) NOT NULL,
	skill_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (class_id, skill_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Tools(
	class_id INT(15) NOT NULL,
	tool_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (class_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Weapons(
	class_id INT(15) NOT NULL,
	weapon_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id),
	UNIQUE (class_id, weapon_id)
);

CREATE TABLE IF NOT EXISTS Class_Has_Feats(
	class_id INT(15) NOT NULL,
	feat_id INT(15) NOT NULL,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (feat_id) REFERENCES Class_Features(feat_id),
	UNIQUE (class_id, feat_id)
);

-- build background tables

create table IF NOT EXISTS Backgrounds(
	background_id int(15) NOT NULL AUTO_INCREMENT,
    background_name varchar(20) Not Null,
	background_description text(50000),
    starting_gold int(15),
    primary key (background_id)
);

create table IF NOT EXISTS Alignments(
	alignment_id int(15) NOT NULL AUTO_INCREMENT,
    alignment_name varchar(50),
    alignment_description text(50000),
    primary key (alignment_id)
);

create table IF NOT EXISTS Languages(
	language_id int(15) NOT NULL AUTO_INCREMENT,
    language_name varchar(50),
    typical_speaker varchar(20),
    script varchar(20),
    primary key (language_id)
);

-- 1 (background) to many (suggestions)
create table IF NOT EXISTS Suggested_Bonds(
	bond_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    bond_description text(50000),
    bond_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (bond_id)
);
create table IF NOT EXISTS Suggested_Traits(
	trait_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    trait_description text(50000),
    trait_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (trait_id)
);

create table IF NOT EXISTS Suggested_Ideals(
	ideals_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    alignment_id int(15),
    ideal_name varchar(15),
    ideals_description text(50000),
    ideals_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    foreign key (alignment_id) references Alignments(alignment_id),
    primary key (ideals_id)
);

create table IF NOT EXISTS Suggested_Flaws(
	flaw_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    flaw_description text(50000),
    flaw_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (flaw_id)
);

create table IF NOT EXISTS Specialty_Personalities(
	specialty_personality_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    specialty_personality_name varchar(20),
    specialty_personality_die int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (specialty_personality_id)
);

create table IF NOT EXISTS Suggested_Specialty_Traits(
	specialty_trait_id int(15) NOT NULL AUTO_INCREMENT,
    specialty_personality_id int(15),
    specialty_trait_description text(50000),
    specialty_trait_roll int(2),
    foreign key (specialty_personality_id) references Specialty_Personalities(specialty_personality_id),
    primary key (specialty_trait_id)
);
-- many to many association
CREATE TABLE IF NOT EXISTS Background_Proficency_Tools(
	background_id INT(15) NOT NULL,
	tool_id INT(14) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (background_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Languages(
	background_id INT(15) NOT NULL,
	language_id INT(14) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (language_id) REFERENCES Languages(language_id),
	UNIQUE (background_id, language_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Skills(
	background_id INT(15) NOT NULL,
	skill_id INT(14) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (background_id, skill_id)
);
-- 1 to 1
CREATE TABLE IF NOT EXISTS Background_Features(
	background_id INT(15) NOT NULL,
	background_feat_id INT(14) NOT NULL AUTO_INCREMENT,
    background_feat_name varchar(50),
    feat_description text(50000),  
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	primary key (background_feat_id)
);

-- build race tables
create table IF NOT EXISTS Races(
	race_id int(15) NOT NULL AUTO_INCREMENT,
    race_name varchar(100) Not Null,
    size varchar(50) not Null,
    base_speed int(15) not null,
    race_description text(10000),
	alignment_tendency text(10000),
	age text(1000),
    primary key (race_id)
);

create table IF NOT EXISTS Subraces(
	subrace_id int(15) NOT NULL AUTO_INCREMENT,
    race_id int(15) Not Null,
	subrace_name varchar(20) Not Null,
	subrace_description text(50000),
    primary key (subrace_id),
    FOREIGN KEY (race_id) REFERENCES Races(race_id)
);
create table IF NOT EXISTS Racial_Traits(
	racial_trait_id int(15) NOT NULL AUTO_INCREMENT,
	trait_name varchar(20) Not Null,
    trait_description text(50000),
    primary key (racial_trait_id)
);

-- many to many
CREATE TABLE IF NOT EXISTS Race_Grants_Abilities(
	race_id INT(15) NOT NULL,
	ability_id INT(15) NOT NULL,
    bonus_amount int(5),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (race_id, ability_id)
);

CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Skills(
	racial_trait_id INT(15) NOT NULL,
	skill_id INT(15) NOT NULL,
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (racial_trait_id, skill_id)
);

CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Tools(
	racial_trait_id INT(15) NOT NULL,
	tool_id INT(15) NOT NULL,
	FOREIGN KEY (racial_trait_id) REFERENCES Racial_traits(racial_trait_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (racial_trait_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Weapons(
	racial_trait_id INT(15) NOT NULL,
	weapon_id INT(15) NOT NULL,
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id),
	UNIQUE (racial_trait_id, weapon_id)
);

CREATE TABLE IF NOT EXISTS Race_Grants_Traits(
	race_id INT(15) NOT NULL,
	racial_trait_id INT(15) NOT NULL,
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	UNIQUE (race_id, racial_trait_id)
);
CREATE TABLE IF NOT EXISTS Race_Tends_Alignment(
	race_id INT(15) NOT NULL,
	alignment_id INT(15) NOT NULL,
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (alignment_id) REFERENCES Alignments(alignment_id),
	UNIQUE (race_id, alignment_id)
);

CREATE TABLE IF NOT EXISTS Race_Speaks_Language(
	race_id INT(15) NOT NULL,
	language_id INT(15),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (language_id) REFERENCES Languages(language_id),
	UNIQUE (race_id, language_id)
);



-- temp user table
create table IF NOT EXISTS user(
	user_id int(15) not null auto_increment,
    user_name varchar(50),
    primary key(user_id)
);
-- build character tables

-- users character
CREATE TABLE IF NOT EXISTS Characters(
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

create table IF NOT EXISTS char_powers(
	power_id int(15),
    char_id int(15),
    category varchar(50),
	FOREIGN KEY (char_id) REFERENCES Characters(char_id)
);

CREATE TABLE IF NOT EXISTS user_characters(
	user_id INT(15) NOT NULL,
	char_id INT(15) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES User(user_id),
	FOREIGN KEY (char_id) REFERENCES Characters(char_id),
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
select * from Items;
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
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
	FOREIGN KEY (language_id) REFERENCES languages(language_id),
	UNIQUE (char_id, language_id)
);

CREATE TABLE IF NOT EXISTS char_inventory(
char_id INT(15) NOT NULL,
item_id INT(15) NOT NULL,
FOREIGN KEY (char_id) REFERENCES characters(char_id),
FOREIGN KEY (item_id) REFERENCES items(item_id),
UNIQUE (char_id, item_id)
);

CREATE TABLE IF NOT EXISTS Class_grants_items(
	class_id INT(15) NOT NULL,
	item_id INT(15) NOT NULL,
    group_number int(15),
    option_number int(15),
	quantity int(15),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
