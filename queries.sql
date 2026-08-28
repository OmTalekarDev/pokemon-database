USE pokemon_db;

-- 1. Display all Pokémon
SELECT * FROM pokemon;

-- 2. Display Pokémon with HP above 50
SELECT pokemon_name, hp
FROM pokemon
WHERE hp > 50;

-- 3. Sort Pokémon by attack (highest first)
SELECT pokemon_name, attack
FROM pokemon
ORDER BY attack DESC;

-- 4. Find Electric-type Pokémon
SELECT p.pokemon_name, t.type_name
FROM pokemon p
JOIN types t ON p.type_id = t.type_id
WHERE t.type_name = 'Electric';

-- 5. Average HP
SELECT ROUND(AVG(hp), 2) AS average_hp
FROM pokemon;

-- 6. Count Pokémon by type
SELECT t.type_name, COUNT(*) AS pokemon_count
FROM pokemon p
JOIN types t ON p.type_id = t.type_id
GROUP BY t.type_name
ORDER BY pokemon_count DESC;

-- 7. Types with more than one Pokémon
SELECT t.type_name, COUNT(*) AS pokemon_count
FROM pokemon p
JOIN types t ON p.type_id = t.type_id
GROUP BY t.type_name
HAVING COUNT(*) > 1;

-- 8. Heaviest Pokémon
SELECT pokemon_name, weight_kg
FROM pokemon
ORDER BY weight_kg DESC
LIMIT 1;

-- 9. Show Pokémon and their moves
SELECT p.pokemon_name, m.move_name, m.power
FROM pokemon_moves pm
JOIN pokemon p ON pm.pokemon_id = p.pokemon_id
JOIN moves m ON pm.move_id = m.move_id
ORDER BY p.pokemon_name;

-- 10. Total move count
SELECT COUNT(*) AS total_moves
FROM moves;

-- 11. Update example
UPDATE pokemon
SET attack = attack + 5
WHERE pokemon_name = 'Pikachu';

-- 12. Delete example (use carefully)
-- DELETE FROM pokemon WHERE pokemon_id = 95;

-- 13. Find Pokémon between two HP values
SELECT pokemon_name, hp
FROM pokemon
WHERE hp BETWEEN 40 AND 70;

-- 14. Find Pokémon whose name starts with P
SELECT pokemon_name
FROM pokemon
WHERE pokemon_name LIKE 'P%';
