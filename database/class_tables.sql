-- drop database if exists dungeons_and_dragons;
-- create database IF NOT EXISTS dungeons_and_dragons;

create table IF NOT EXISTS Classes(
	class_id int(15) NOT NULL AUTO_INCREMENT,
    class_name varchar(50) Not Null,
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
    tool_description text(50000),
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

