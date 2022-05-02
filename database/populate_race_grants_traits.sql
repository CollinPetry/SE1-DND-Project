truncate table race_grants_traits;

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Dragonborn' and (racial_traits.trait_name='Draconic Ancestry' or racial_traits.trait_name='Breath Weapon' or racial_traits.trait_name='Damage Resistance');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Dwarf' and (racial_traits.trait_name='Darkvision' 
or racial_traits.trait_name='Stonecunning' 
or racial_traits.trait_name='Dwarven Resilience'
or racial_traits.trait_name='Dwarven Combat Training'
or racial_traits.trait_name='Tool Proficency');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Elf' and (racial_traits.trait_name='Darkvision' 
or racial_traits.trait_name='Keen Senses' 
or racial_traits.trait_name='Trance'
or racial_traits.trait_name='Fey Ancestry');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Gnome' and (racial_traits.trait_name='Darkvision' 
or racial_traits.trait_name='Gnome Cunning');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Half-Elf' and (racial_traits.trait_name='Darkvision' 
or racial_traits.trait_name='Fey Ancestry');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Halfling' and (racial_traits.trait_name='Lucky' 
or racial_traits.trait_name='Brave'
or racial_traits.trait_name='Halfling Nimbleness');

INSERT INTO race_grants_traits(race_id, racial_trait_id)
SELECT races.race_id, racial_traits.racial_trait_id
FROM races,racial_traits
WHERE races.race_name='Half-Orc' and (racial_traits.trait_name='Darkvision' 
or racial_traits.trait_name='Infernal Legacy'
or racial_traits.trait_name='Hellish Resistance');



