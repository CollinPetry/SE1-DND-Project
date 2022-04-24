create table IF NOT EXISTS Races(
	race_id int(15) NOT NULL AUTO_INCREMENT,
    race_name varchar(20) Not Null,
    native_language_id int(15) Not Null,
    size varchar(20) not Null,
    base_speed int(15) not null,
	FOREIGN KEY (native_language_id) REFERENCES Languages(language_id),
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
	ability_id INT(14) NOT NULL,
    bonus_amount int(5),
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (ability_id) REFERENCES Abilities(ability_id),
	UNIQUE (race_id, ability_id)
);

CREATE TABLE IF NOT EXISTS Race_Grants_Skills(
	race_id INT(15) NOT NULL,
	skill_id INT(14) NOT NULL,
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (race_id, skill_id)
);

CREATE TABLE IF NOT EXISTS Race_Grants_Tools(
	race_id INT(15) NOT NULL,
	tool_id INT(14) NOT NULL,
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (tool_id) REFERENCES Tools(tool_id),
	UNIQUE (race_id, tool_id)
);

CREATE TABLE IF NOT EXISTS Race_Grants_Weapons(
	race_id INT(15) NOT NULL,
	weapon_id INT(14) NOT NULL,
	FOREIGN KEY (race_id) REFERENCES Races(race_id),
	FOREIGN KEY (weapon_id) REFERENCES Weapons(weapon_id),
	UNIQUE (race_id, weapon_id)
);

ALTER TABLE Races
ADD race_description text(50000);