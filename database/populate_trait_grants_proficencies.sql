truncate table racial_trait_grants_weapons;
truncate table racial_trait_grants_skills;

INSERT INTO racial_trait_grants_weapons(racial_trait_id, weapon_id)
SELECT racial_traits.racial_trait_id, weapons.weapon_id
FROM racial_traits,weapons
WHERE racial_traits.trait_name='Dwarven Combat Training' and (weapons.weapon_name='Handaxe' 
or weapons.weapon_name='Light Hammer' 
or weapons.weapon_name='Warhammer'
or weapons.weapon_name='Battleaxe');

INSERT INTO racial_trait_grants_weapons(racial_trait_id, weapon_id)
SELECT racial_traits.racial_trait_id, weapons.weapon_id
FROM racial_traits,weapons
WHERE racial_traits.trait_name='Elf Weapon Training' and (weapons.weapon_name='Longbow' 
or weapons.weapon_name='Shortbow' 
or weapons.weapon_name='Shortsword'
or weapons.weapon_name='Longsword');

INSERT INTO racial_trait_grants_skills(racial_trait_id, skill_id)
SELECT racial_traits.racial_trait_id, skills.skill_id
FROM racial_traits,skills
WHERE racial_traits.trait_name='Keen Senses' and (skills.skill_name='Perception');

INSERT INTO racial_trait_grants_skills(racial_trait_id, skill_id)
SELECT racial_traits.racial_trait_id, skills.skill_id
FROM racial_traits,skills
WHERE racial_traits.trait_name='Menacing' and (skills.skill_name='Intimidation');
