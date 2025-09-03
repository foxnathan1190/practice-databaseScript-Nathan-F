START TRANSACTION;

DROP TABLE IF EXISTS users, characters, gear;

CREATE TABLE users (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NULL DEFAULT 'N/A',
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table characters (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL REFERENCES users(id),
  char_name VARCHAR(30) NOT NULL,
  race VARCHAR(30) NOT NULL,
  class VARCHAR(30) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table gear (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL REFERENCES users(id),
weapon VARCHAR(30) NOT NULL,
clothes VARCHAR(30) NOT NULL,
item VARCHAR(30) NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, password) VALUES ('alice', 'alice@test.com', 'password123');
INSERT INTO users (username, email, password) VALUES ('bob', 'bob@test.com', 'password456');
INSERT INTO users (username, email, password) VALUES ('charlie', 'charlie@test.com', 'password789');

INSERT INTO characters (user_id, char_name, race, class) VALUES (1, 'Aragorn', 'Human', 'Ranger');
INSERT INTO characters (user_id, char_name, race, class) VALUES (2, 'Gimli', 'Dwarf', 'Fighter');
INSERT INTO characters (user_id, char_name, race, class) VALUES (3, 'Gandolf', 'Celestial', 'Wizard');

INSERT INTO gear (user_id, weapon, clothes, item) VALUES (1, 'sword', 'leather armor', 'elf necklace');
INSERT INTO gear (user_id, weapon, clothes, item) VALUES (2, 'axe', 'steel armor', 'crest of Durin');
INSERT INTO gear (user_id, weapon, clothes, item) VALUES (3, 'staff', 'white cloak', 'elf magic fire ring');

ROLLBACK;