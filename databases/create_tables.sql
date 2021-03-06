
-- build class tables
create table IF NOT EXISTS Classes(
	class_id integer,
    class_name varchar(50),
	hit_die int(30),
    class_description text(50000),
    primary key (class_id AUTOINCREMENT)
);

create table IF NOT EXISTS Paths(
	path_id integer,
    class_id integer,
	path_name varchar(100),
	path_description text(50000),
    primary key (path_id AUTOINCREMENT),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

create table IF NOT EXISTS Class_Features(
	feat_id integer,
	feat_name varchar(20),
    path_description text(50000),
    primary key (feat_id AUTOINcREMENT)
);

create table IF NOT EXISTS Weapons(
	weapon_id integer,
	weapon_name varchar(100),
    weapon_category varchar(50),
	cost float(4),
	damage_die int(30),
    num_die int(30),
    damage_type varchar(20),
    weight float(4),
    primary key (weapon_id AUTOINCREMENT)
);

create table IF NOT EXISTS Armor(
	armor_id integer,
	armor_name varchar(50),
    armor_category varchar(50),
	cost float(4),
	armor_class int(10),
    strength int(10),
    stealth bool,
    weight float(4),
    primary key (armor_id AUTOINCREMENT)
);

create table IF NOT EXISTS Abilities(
	ability_id integer,
	ability_name varchar(100),
    ability_description text(1000),
    primary key (ability_id AUTOINCREMENT)
);

-- 1 to many table
-- many skills per ability
create table IF NOT EXISTS Skills(
	skill_id integer,
	skill_name varchar(20),
    ability_id int(100),
    primary key (skill_id AUTOINCREMENT),
    foreign key (ability_id) references Abilities(ability_id)
);

create table IF NOT EXISTS Tools(
	tool_id integer,
	tool_name varchar(100),
    weight float(4),
    cost float(4),
    tool_category varchar(100),
    primary key (tool_id AUTOINCREMENT)
);

create table IF NOT EXISTS Gear(
	gear_id integer,
	gear_name varchar(100),
    gear_description text(50000),
    gear_category varchar(100),
    weight float(4),
    cost float(4),
    primary key (gear_id AUTOINCREMENT)
);

create table IF NOT EXISTS Packs(
	pack_id integer,
	pack_name varchar(100),
    description text(5000),
    weight float(4),
    cost float(4),
    primary key (pack_id AUTOINCREMENT)
);

-- many to many relations
CREATE TABLE IF NOT EXISTS Gear_in_Pack(
gear_id int(100),
pack_id int(100),
FOREIGN KEY (gear_id) REFERENCES Gear(gear_id),
FOREIGN KEY (pack_id) REFERENCES Packs(pack_id),
UNIQUE (gear_id, pack_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Saving_Throws(
	class_id int(100),
	ability_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (class_id, ability_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Armor(
	class_id int(100),
	armor_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (armor_id) REFERENCES Armor(armor_id),
	UNIQUE (class_id, armor_id)
);
CREATE TABLE IF NOT EXISTS Class_Proficency_Skills(
	class_id int(100),
	skill_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (class_id, skill_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Tools(
	class_id int(100),
	tool_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (class_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Class_Proficency_Weapons(
	class_id int(100),
	weapon_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id),
	UNIQUE (class_id, weapon_id)
);

CREATE TABLE IF NOT EXISTS Class_Has_Feats(
	class_id int(100),
	feat_id int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
	FOREIGN KEY (feat_id) REFERENCES Class_Features(feat_id),
	UNIQUE (class_id, feat_id)
);

-- build background tables

create table IF NOT EXISTS Backgrounds(
	background_id integer,
    background_name varchar(20),
	background_description text(50000),
    starting_gold float(8),
    primary key (background_id AUTOINCREMENT)
);

create table IF NOT EXISTS Alignments(
	alignment_id integer,
    alignment_name varchar(50),
    alignment_description text(50000),
    primary key (alignment_id AUTOINCREMENT)
);

create table IF NOT EXISTS Languages(
	language_id integer,
    language_name varchar(50),
    typical_speaker varchar(50),
    script varchar(50),
    primary key (language_id AUTOINCREMENT)
);

-- 1 (background) to many (suggestions)
create table IF NOT EXISTS Suggested_Bonds(
	bond_id integer,
    background_id int(100),
    bond_description text(50000),
    bond_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (bond_id AUTOINCREMENT)
);
create table IF NOT EXISTS Suggested_Traits(
	trait_id integer,
    background_id int(100),
    trait_description text(50000),
    trait_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (trait_id AUTOINCREMENT)
);

create table IF NOT EXISTS Suggested_Ideals(
	ideals_id integer,
    background_id int(100),
    alignment_id int(100),
    ideal_name varchar(15),
    ideals_description text(50000),
    ideals_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    foreign key (alignment_id) references Alignments(alignment_id),
    primary key (ideals_id AUTOINCREMENT)
);

create table IF NOT EXISTS Suggested_Flaws(
	flaw_id integer,
    background_id int(100),
    flaw_description text(50000),
    flaw_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (flaw_id AUTOINCREMENT)
);

create table IF NOT EXISTS Specialty_Personalities(
	specialty_personality_id integer,
    background_id int(100),
    specialty_personality_name varchar(20),
    specialty_personality_die int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (specialty_personality_id AUTOINCREMENT)
);

create table IF NOT EXISTS Suggested_Specialty_Traits(
	specialty_trait_id integer,
    specialty_personality_id int(100),
    specialty_trait_description text(50000),
    specialty_trait_roll int(2),
    foreign key (specialty_personality_id) references Specialty_Personalities(specialty_personality_id),
    primary key (specialty_trait_id AUTOINCREMENT)
);
-- many to many association
CREATE TABLE IF NOT EXISTS Background_Proficency_Tools(
	background_id int(100),
	tool_id INT(14),
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (background_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Languages(
	background_id int(100),
	language_id INT(14),
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (language_id) REFERENCES Languages(language_id),
	UNIQUE (background_id, language_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Skills(
	background_id int(100),
	skill_id INT(14),
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (background_id, skill_id)
);
-- 1 to 1
CREATE TABLE IF NOT EXISTS Background_Features(
	background_feat_id INTeger,
    background_id int(100),
    background_feat_name varchar(50),
    feat_description text(50000),
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	primary key (background_feat_id AUTOINCREMENT)
);

-- build race tables
create table IF NOT EXISTS Races(
	race_id integer,
    race_name varchar(100),
    size varchar(50),
    base_speed int(100),
    race_description text(10000),
	alignment_tendency text(10000),
	age text(1000),
    primary key (race_id AUTOINCREMENT)
);
create table IF NOT EXISTS Subraces(
	pk_subrace integer,
    subrace_id int(100),
    subrace_name varchar(50),
	subrace_description text(10000),
    race_id int(100),
    FOREIGN KEY (race_id) REFERENCES Races(race_id),
    unique (subrace_id,race_id),
    primary key (pk_subrace AUTOINCREMENT)
);

create table IF NOT EXISTS Racial_Traits(
	racial_trait_id integer,
	trait_name varchar(50),
    trait_description text(50000),
    primary key (racial_trait_id AUTOINCREMENT)
);

-- many to many
CREATE TABLE IF NOT EXISTS Race_Grants_Abilities(
	race_id int(100),
	ability_id int(100),
    bonus_amount int(5),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (race_id, ability_id)
);

CREATE TABLE IF NOT EXISTS subrace_Grants_Abilities(
	pk_subrace int(100),
	ability_id int(100),
    bonus_amount int(5),
	FOREIGN KEY (pk_subrace) REFERENCES subraces(pk_subrace),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (pk_subrace, ability_id)
);
CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Skills(
	racial_trait_id int(100),
	skill_id int(100),
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (racial_trait_id, skill_id)
);

CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Tools(
	racial_trait_id int(100),
	tool_id int(100),
	FOREIGN KEY (racial_trait_id) REFERENCES Racial_traits(racial_trait_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (racial_trait_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Racial_Trait_Grants_Weapons(
	racial_trait_id int(100),
	weapon_id int(100),
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id),
	UNIQUE (racial_trait_id, weapon_id)
);

CREATE TABLE IF NOT EXISTS Race_Grants_Traits(
	race_id int(100),
	racial_trait_id int(100),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	UNIQUE (race_id, racial_trait_id)
);
CREATE TABLE IF NOT EXISTS Subrace_Grants_Traits(
	pk_subrace int(100),
	racial_trait_id int(100),
	FOREIGN KEY (pk_subrace) REFERENCES Subraces(pk_subrace),
	FOREIGN KEY (racial_trait_id) REFERENCES racial_traits(racial_trait_id),
	UNIQUE (pk_subrace, racial_trait_id)
);

CREATE TABLE IF NOT EXISTS Path_Feats(
	path_feat_id integer,
    path_id int(100),
	feat_name varchar(60),
    feat_description text(50000),
	FOREIGN KEY (path_id) REFERENCES Paths(path_id),
	primary key (path_feat_id AUTOINCREMENT)
);
alter table path_feats add column lvl int(100);
CREATE TABLE IF NOT EXISTS Race_Tends_Alignment(
	race_id int(100),
	alignment_id int(100),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (alignment_id) REFERENCES Alignments(alignment_id),
	UNIQUE (race_id, alignment_id)
);

CREATE TABLE IF NOT EXISTS Race_Speaks_Language(
	race_id int(100),
	language_id int(100),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (language_id) REFERENCES Languages(language_id),
	UNIQUE (race_id, language_id)
);



-- temp user table
create table IF NOT EXISTS user(
	user_id integer,
    user_name varchar(50),
    primary key(user_id AUTOINCREMENT)
);
-- build character tables

-- users character
CREATE TABLE IF NOT EXISTS Characters(
	user_id int(100),
    char_id integer,
    char_name varchar(100),
    char_exp int(100),
    char_race_id int(100),
    char_class_id int(100),
    char_background_id int(100),
    char_alignment_id int(100),
	char_bonds text(50000),
    char_personality text(50000),
    char_ideal text(50000),
    speed int(100),
    size varchar(50),
    char_lvl int(100),
    pk_subrace int(100),
    path_id int(100),
	FOREIGN KEY (char_background_id) REFERENCES Backgrounds(background_id),
    FOREIGN KEY (pk_subrace) REFERENCES Subraces(pk_subrace),
	FOREIGN KEY (char_class_id) REFERENCES classes(class_id),
    FOREIGN KEY (char_race_id) REFERENCES races(race_id),
    FOREIGN KEY (path_id) REFERENCES Paths(path_id),
    primary key(char_id AUTOINCREMENT)
);

create view user_chars as
select u.user_id, u.user_name, c.char_name, c.char_id
from user as u
join Characters as c on (c.user_id= u.user_id);

create table IF NOT EXISTS char_powers(
	power_id int(100),
    char_id int(100),
    category varchar(50),
	FOREIGN KEY (char_id) REFERENCES Characters(char_id)
);

CREATE TABLE IF NOT EXISTS user_characters(
	user_id int(100),
	char_id int(100),
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
	char_id int(100),
	prof_id int(100),
    category varchar(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
	UNIQUE (char_id, prof_id)
);

CREATE TABLE IF NOT EXISTS char_languages(
	char_id int(100),
	language_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
	FOREIGN KEY (language_id) REFERENCES languages(language_id),
	UNIQUE (char_id, language_id)
);

-- CREATE TABLE IF NOT EXISTS char_inventory(
-- char_id int(100),
-- item_id int(100),
-- quantity float,
-- category varchar(50),
-- weight float,
-- FOREIGN KEY (char_id) REFERENCES Characters(char_id),
-- UNIQUE (char_id, category, item_id)
-- );

CREATE TABLE IF NOT EXISTS char_proficency_skills(
	char_id int(100),
	skill_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id),
	UNIQUE (char_id, skill_id)
);
CREATE TABLE IF NOT EXISTS char_proficency_tools(
	char_id int(100),
	tool_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
    FOREIGN KEY (tool_id) REFERENCES tools(tool_id),
	UNIQUE (char_id, tool_id)
);
CREATE TABLE IF NOT EXISTS char_proficency_weapons(
	char_id int(100),
	weapon_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
	FOREIGN KEY (weapon_id) REFERENCES weapons(weapon_id),
    UNIQUE (char_id, weapon_id)
);
CREATE TABLE IF NOT EXISTS char_proficency_armor(
	char_id int(100),
	armor_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
    FOREIGN KEY (armor_id) REFERENCES armor(armor_id),
	UNIQUE (char_id, armor_id)
);
CREATE TABLE IF NOT EXISTS char_proficency_saving_throws(
	char_id int(100),
	ability_id int(100),
	FOREIGN KEY (char_id) REFERENCES characters(char_id),
    FOREIGN KEY (ability_id) REFERENCES abilities(ability_id),
	UNIQUE (char_id, ability_id)
);

CREATE TABLE IF NOT EXISTS Class_grants_items(
	cgi_id integer,
	class_id int(100),
	item_id INT(100),
    item_name varchar(50),
    category varchar(50),
    group_number int(100),
    option_number int(100),
	quantity int(100),
    select_num int(100),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id),
    primary Key(cgi_id AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS char_inventory(
item_name varchar(100),
char_id int(100),
item_id int(100),
quantity float,
category varchar(50),
weight float,
FOREIGN KEY (char_id) REFERENCES Characters(char_id),
primary key (item_name)
);

create table IF NOT EXISTS users(
	id int(11) NOT NULL,
    email varchar(50) Not Null,
	username varchar(50),
    password varchar(50),
    primary key (id)
);

create table IF NOT EXISTS campaign(
	id int(11) NOT NULL,
    name varchar(50) Not Null,
	players int(10),
    role varchar(50),
    primary key (id)
);

CREATE TABLE IF NOT EXISTS usercampaign(
    id int(11) NOT NULL,
    userid int(11) NOT NULL,
    campaignid int(11) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(userid) REFERENCES users(id),
    FOREIGN KEY(campaignid) REFERENCES campaign(id)
    )