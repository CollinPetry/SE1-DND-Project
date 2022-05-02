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

