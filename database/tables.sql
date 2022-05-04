-- drop database if exists dungeons_and_dragons;
-- create database IF NOT EXISTS dungeons_and_dragons;

create table IF NOT EXISTS Classes(
	class_id int(15) NOT NULL AUTO_INCREMENT,
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

create table IF NOT EXISTS Backgrounds(
	background_id int(15) NOT NULL AUTO_INCREMENT,
    background_name varchar(100) Not Null,
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
    typical_speaker varchar(50),
    script varchar(50),
    primary key (language_id)
);
-- 1 (background) to many (suggestions)
create table IF NOT EXISTS Suggested_Bonds(
    background_id int(15),
    bond_description text(50000),
    bond_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (background_id,bond_roll)
);
create table IF NOT EXISTS Suggested_Traits(
    background_id int(15),
    trait_description text(50000),
    trait_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (background_id,trait_roll)
);

create table IF NOT EXISTS Suggested_Ideals(
    background_id int(15),
    alignment_id int(15),
    ideal_name varchar(15),
    ideals_description text(50000),
    foreign key (background_id) references Backgrounds(background_id),
    foreign key (alignment_id) references Alignments(alignment_id),
    primary key (background_id,ideals_roll)
);

create table IF NOT EXISTS Suggested_Flaws(
    background_id int(15),
    flaw_description text(50000),
    flaw_roll int(2),
    foreign key (background_id) references Backgrounds(background_id),
    primary key (background_id,flaw_roll)
);

create table IF NOT EXISTS Specialty_Personalities(
	specialty_personality_id int(15) NOT NULL AUTO_INCREMENT,
    background_id int(15),
    specialty_personality_name varchar(50),
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
	tool_id INT(15) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (background_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Languages(
	background_id INT(15) NOT NULL,
	language_id INT(15) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (language_id) REFERENCES Languages(language_id),
	UNIQUE (background_id, language_id)
);

CREATE TABLE IF NOT EXISTS Background_Proficency_Skills(
	background_id INT(15) NOT NULL,
	skill_id INT(15) NOT NULL,
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (background_id, skill_id)
);

-- CREATE TABLE IF NOT EXISTS Background_Grants_Equipment (
--     background_id INT(15) NOT NULL,
--     tool_id INT(15) NOT NULL,
--     FOREIGN KEY (background_id)
--         REFERENCES Backgrounds (background_id),
--     FOREIGN KEY (tool_id)
--         REFERENCES Equipment (equipment_id),
--     UNIQUE (background_id , equipment_id)
-- );

-- 1 to 1
CREATE TABLE IF NOT EXISTS Background_Features(
	background_feat_id INT(15) NOT NULL AUTO_INCREMENT,
    background_feat_name varchar(100) NOT NULL,
    feat_description text(50000),  
	background_id INT(15),
	primary key (background_feat_id),
	FOREIGN KEY (background_id) REFERENCES Backgrounds(background_id)
);

create table IF NOT EXISTS Races(
	race_id int(15) NOT NULL AUTO_INCREMENT,
    race_name varchar(100) Not Null,
    size varchar(50) not Null,
    base_speed int(15) not null,
    race_description text(10000),
	alignment_tendency text(10000),
	age text(1000),
    subrace_id int(15) default 0,
    FOREIGN KEY (subrace_id) REFERENCES Subraces(subrace_id),
    primary key (race_id,subrace_id)
);	

create table IF NOT EXISTS Subraces(
	subrace_id int(15) NOT NULL AUTO_INCREMENT,
	subrace_name varchar(100) Not Null,
    primary key (subrace_id)
);
create table IF NOT EXISTS Racial_Traits(
	racial_trait_id int(15) NOT NULL AUTO_INCREMENT,
	trait_name varchar(250) Not Null,
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


