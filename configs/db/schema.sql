CREATE DATABASE IF NOT EXISTS beers;
GRANT SELECT ON beers.* TO 'beer'@'%' IDENTIFIED BY 'drunk';

use beers;
CREATE TABLE IF NOT EXISTS beers (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description blob,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS drunkers (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS rating (
    beer_id int NOT NULL,
    drunker_id int NOT NULL,
    rate int,
    PRIMARY KEY(beer_id, drunker_id),
    FOREIGN KEY (beer_id) REFERENCES beers(id),
    FOREIGN KEY (drunker_id) REFERENCES drunkers(id)
);

LOAD DATA INFILE '/tmp/beers.txt' IGNORE INTO TABLE beers;
LOAD DATA INFILE '/tmp/drunkers.txt' IGNORE INTO TABLE drunkers;
LOAD DATA INFILE '/tmp/rating.txt' IGNORE INTO TABLE rating;
