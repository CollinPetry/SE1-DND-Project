create table IF NOT EXISTS users(
	id int(11) NOT NULL AUTO_INCREMENT,
    email varchar(50) Not Null,
	username varchar(50),
    password varchar(50),
    primary key (id)
);

create table IF NOT EXISTS campaign(
	id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(50) Not Null,
	players int(10),
    role varchar(50),
    primary key (id)
);

CREATE TABLE IF NOT EXISTS usercampaign(
    id int(11) NOT NULL AUTO_INCREMENT,
    userid int(11) NOT NULL,
    campaignid int(11) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(userid) REFERENCES users(id),
    FOREIGN KEY(campaignid) REFERENCES campaign(id)
    )