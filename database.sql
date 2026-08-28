-- Pokémon Database
-- MySQL 8+

CREATE DATABASE IF NOT EXISTS pokemon_db;
USE pokemon_db;

DROP TABLE IF EXISTS pokemon_moves;
DROP TABLE IF EXISTS moves;
DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS types;

CREATE TABLE types (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE pokemon (
    pokemon_id INT PRIMARY KEY,
    pokemon_name VARCHAR(50) NOT NULL UNIQUE,
    type_id INT NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    speed INT NOT NULL,
    height_m DECIMAL(4,2),
    weight_kg DECIMAL(6,2),
    FOREIGN KEY (type_id) REFERENCES types(type_id)
);

CREATE TABLE moves (
    move_id INT PRIMARY KEY AUTO_INCREMENT,
    move_name VARCHAR(50) NOT NULL UNIQUE,
    power INT,
    accuracy INT,
    move_type_id INT NOT NULL,
    FOREIGN KEY (move_type_id) REFERENCES types(type_id)
);

CREATE TABLE pokemon_moves (
    pokemon_id INT NOT NULL,
    move_id INT NOT NULL,
    PRIMARY KEY (pokemon_id, move_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id),
    FOREIGN KEY (move_id) REFERENCES moves(move_id)
);

INSERT INTO types (type_name) VALUES
('Normal'), ('Fire'), ('Water'), ('Electric'), ('Grass'),
('Ice'), ('Fighting'), ('Poison'), ('Ground'), ('Flying');

INSERT INTO pokemon
(pokemon_id, pokemon_name, type_id, hp, attack, defense, speed, height_m, weight_kg)
VALUES
(1, 'Bulbasaur', 5, 45, 49, 49, 45, 0.70, 6.90),
(4, 'Charmander', 2, 39, 52, 43, 65, 0.60, 8.50),
(7, 'Squirtle', 3, 44, 48, 65, 43, 0.50, 9.00),
(25, 'Pikachu', 4, 35, 55, 40, 90, 0.40, 6.00),
(39, 'Jigglypuff', 1, 115, 45, 20, 20, 0.50, 5.50),
(52, 'Meowth', 1, 40, 45, 35, 90, 0.40, 4.20),
(54, 'Psyduck', 3, 50, 52, 48, 55, 0.80, 19.60),
(58, 'Growlithe', 2, 55, 70, 45, 60, 0.70, 19.00),
(66, 'Machop', 7, 70, 80, 50, 35, 0.80, 19.50),
(95, 'Onix', 9, 35, 45, 160, 70, 8.80, 210.00);

INSERT INTO moves (move_name, power, accuracy, move_type_id) VALUES
('Tackle', 40, 100, 1),
('Ember', 40, 100, 2),
('Water Gun', 40, 100, 3),
('Thunder Shock', 40, 100, 4),
('Vine Whip', 45, 100, 5),
('Karate Chop', 50, 100, 7),
('Mud-Slap', 20, 100, 9);

INSERT INTO pokemon_moves (pokemon_id, move_id) VALUES
(1, 5), (1, 1),
(4, 2), (4, 1),
(7, 3), (7, 1),
(25, 4), (25, 1),
(39, 1),
(66, 6),
(95, 7);
