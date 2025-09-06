START TRANSACTION;

DROP TABLE IF EXISTS urban_eats, east_restaraunt, west_restaraunt, north_restaraunt, south_restaraunt;

create table urban_eats (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  slogan VARCHAR(100),
  classic_burger VARCHAR(30),
  classic_chicken_sandwitch VARCHAR(30),
  fries VARCHAR(30),
  soda VARCHAR(30),
  count_old_items INT
);


create table east_restaraunt (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL REFERENCES users(id),
  classic_burger VARCHAR(30),
  classic_chicken_sandwitch VARCHAR(30),
  fries VARCHAR(30),
  soda VARCHAR(30),
  count_old_items INT,
  count_new_item INT
);

create table west_restaraunt (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL REFERENCES users(id),
  classic_burger VARCHAR(30),
  classic_chicken_sandwitch VARCHAR(30),
  fries VARCHAR(30),
  soda VARCHAR(30),
  salad VARCHAR(30),
  count_old_items INT,
  count_new_item INT
);

create table north_restaraunt (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL REFERENCES users(id),
  classic_burger VARCHAR(30),
  classic_chicken_sandwitch VARCHAR(30),
  fries VARCHAR(30),
  soda VARCHAR(30),
  pasta VARCHAR(30),
  count_old_items INT,
  count_new_item INT
);
east_restaraunteast_restaraunt
create table south_restaraunt (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL REFERENCES users(id),
  classic_burger VARCHAR(30),
  classic_chicken_sandwitch VARCHAR(30),
  fries VARCHAR(30),
  soda VARCHAR(30),
  taco VARCHAR(30),
  count_old_items INT,
  count_new_item INT
);

ROLLBACK;
-- COMMIT;