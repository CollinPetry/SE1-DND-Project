truncate table race_grants_abilities;

-- const bonus=2
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Dwarf' and (abilities.ability_name='Constitution');

-- need to update bonus amounts idk how
-- UPDATE race_grants_abilities SET bonus_amount=2
-- where race_id=(select race_id from races where race_name='Dawrf') and ability_id=(select ability_id from abilities where ability_name='Constitution');

-- dex bonus=2
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Elf' and (abilities.ability_name='Dexterity');
-- high elf: intel=1

-- stren=2 char=1
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Dragonborn' and (abilities.ability_name='Strength'or abilities.ability_name='Charisma');

-- intel=2 rock gnome="const" const=1
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Gnome' and (abilities.ability_name='Intelligence');

-- two of choice char=2
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Half-Elf' and (abilities.ability_name='Charisma');

INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Halfling' and (abilities.ability_name='Dexterity');

-- stren=2 const=1
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Half-Orc' and (abilities.ability_name='Constitution' or abilities.ability_name='Strength');

-- 1 each
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Human' and (abilities.ability_name='Intelligence' or abilities.ability_name='Charisma' or abilities.ability_name='Dexterity' or abilities.ability_name='Wisdom' or abilities.ability_name='Constitution' or abilities.ability_name='Strength');

-- intell=1 charisma =2
INSERT INTO race_grants_abilities(race_id, ability_id)
SELECT races.race_id, abilities.ability_id
FROM races,abilities
WHERE races.race_name='Tiefling' and (abilities.ability_name='Intelligence' or abilities.ability_name='Charisma');

select * from race_grants_abilities;

select r.race_id as race_id, r.race_name, rga.ability_id, a.ability_name
from races r
join race_grants_abilities rga on (r.race_id = rga.race_id)
join abilities a on (rga.ability_id= a.ability_id);
