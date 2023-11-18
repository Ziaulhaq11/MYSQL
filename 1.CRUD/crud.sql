
# curd_operations Database
CREATE TABLE cats (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
# Challenges
SELECT cat_id FROM cats;
SELECT name,breed FROM cats;

SELECT name,age FROM cats WHERE breed = "Tabby";

SELECT cat_id,age FROM cats WHERE cat_id = age;
       

UPDATE cats SET name="Jack" WHERE name="Jackson";
       
UPDATE cats SET breed="British Shorthair" WHERE name="Ringo";

SELECT * FROM cats WHERE breed="Maine Coon";
UPDATE cats SET age=12 WHERE breed = "Maine Coon";


DELETE FROM cats WHERE age = 4;
DELETE FROM cats WHERE age = cat_id;


# String Cleaning Annual Closet Inventory
# Create new database shirts_db
# Create new table shirts

CREATE TABLE shirts (
    shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(2),
    last_worn INT
);

INSERT INTO shirts (article,color,shirt_size,last_worn) 
VALUES 
    ("t-shirt", "white", "S", 10),
    ("t-shirt", "green", "S", 200),
    ("polo shirt", "black", "M", 10),
    ("tank top", "blue", "S", 50),
    ("t-shirt", "pink", "S", 0),
    ("polo shirt", "red", "M", 5),
    ("tank top", "white", "S", 200),
    ("tank top", "blue", "S", 15);
    
INSERT INTO shirts (article,color,shirt_size,last_worn) VALUES ("polo shirt", 'purple', 'M', 50);

SELECT article,color from shirts;

SELECT article,color,shirt_size,last_worn from shirts where shirt_size="M";


SELECT * FROM shirts WHERE article="polo shirt";
UPDATE shirts SET shirt_size = "L" WHERE article = "polo shirt";
UPDATE shirts SET last_worn=0 WHERE last_worn =15;
UPDATE shirts SET shirt_size="XS",color="off white" WHERE color="white";  

DELETE FROM shirts WHERE last_worn=200;
DELETE FROM shirts WHERE article="tank top";

