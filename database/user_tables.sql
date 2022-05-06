create table IF NOT EXISTS Users(
	user_id int(15) NOT NULL AUTO_INCREMENT,
    username varchar(50) Not Null,
    password varchar(50) Not Null,
    email varchar(20) not Null,
    primary key (user_id)
);	
create table IF NOT EXISTS Campaign(
	campaign_id int(15) NOT NULL AUTO_INCREMENT,
    campaign_name varchar(50) Not Null,
    dm_id int(15) Not Null,
    FOREIGN KEY (dm_id) REFERENCES Users(user_id),
    primary key (campaign_id)
);
-- 1(user) to many (chars)
create table IF NOT EXISTS Charatcers(
	character_id int(15) NOT NULL AUTO_INCREMENT,
    character_name varchar(50) Not Null,
    exp int(15) not null,
    bonds text(50000),
	personality_trait text(50000),
	alignment varchar(50),
    user_id int(15) Not Null,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    primary key (character_id)
);
-- association table for chars in a camapign (join with users on char id)
CREATE TABLE IF NOT EXISTS Players_in_Campaign(
	campaign_id INT(15) NOT NULL,
	character_id INT(15) NOT NULL,
	FOREIGN KEY (campaign_id) REFERENCES Campaigns(campaign_id),
	FOREIGN KEY (character_id) REFERENCES Characters(character_id),
	UNIQUE (campaign_id, character_id)
);



