create table IF NOT EXISTS users(
	id int(11) NOT NULL AUTO_INCREMENT,
    email varchar(50) Not Null,
	username varchar(50),
    password varchar(50),
    primary key (id)
);