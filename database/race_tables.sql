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


