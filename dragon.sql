CREATE DATABASE pokemon;

-- create connection with database
USE pokemon; 

CREATE TABLE dragon(
	`ID` INT PRIMARY KEY NOT NULL,
    `Pokemon` VARCHAR(20) NOT NULL,
    `Fast move` VARCHAR(20) NOT NULL,
    `Charge move` VARCHAR(20) NOT NULL,
    `DPS` FLOAT NOT NULL,
    `TDO` FLOAT NOT NULL,
    `Total` FLOAT NOT NULL
);

-- to check the constraints and configurations of the table
DESCRIBE dragon;

INSERT INTO dragon (`ID`, `Pokemon`, `Fast move`, `Charge move`, `DPS`, `TDO`, `Total`)
VALUES (1, "Latos", "Dragon Breathe", "Dragon Claw", 23.91, 1243.90,17007.26),
	   (2, "Mega Latias", "Dragon Breathe", "Outrage", 21.52, 1365.17, 13601.14),
       (3, "Shadow Salamence", "Dragon Tail", "Outrage", 19.98, 836.20, 6665.55),
       (4, "Mega X Charizard", "Dragon Breathe", "Dragon Claw",19.52, 886.26, 6592.82),
       (5, "Shadow Dragonite", "Dragon Tail", "Outrage", 18.29, 864.49, 5285.85);

UPDATE dragon
SET Pokemon="Mega Latios"
WHERE ID =1;

DELETE FROM dragon 
WHERE ID=4 OR ID=5;

UPDATE dragon
SET `Fast move` = REPLACE(`Fast move`, "Breathe", "Breath");

SELECT * FROM dragon;

SELECT * FROM dragon_pokemon;