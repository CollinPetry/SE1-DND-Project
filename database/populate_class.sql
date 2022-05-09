-- Cleric --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Cleric' and (armor.armor_name='Shield' or armor_name in(select armor_name from armor where armor_category in('Light', 'Medium')));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Cleric' and (abilities.ability_name='Wisdom' or abilities.ability_name='Charisma');

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Cleric' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%')));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Cleric' and (skills.skill_name in ("History", "Insight", "Medicine", "Persuasion", "Religion") );

-- Wizard --

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Wizard' and abilities.ability_name in ("Intelligence", "Wisdom");

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Wizard' and (weapon_name in(select weapon_name from weapons where weapon_name in ("Dagger", "Dart", "Sling", "Quarterstaff", "Crossbow,light")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Wizard' and (skills.skill_name in ("Arcana", "History", "Insight", "Investigation", "Medicine", "Religion") );

-- Warlock --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Warlock' and (armor_name in(select armor_name from armor where armor_category='Light'));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Warlock' and (abilities.ability_name in ("Wisdom", "Charisma"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Warlock' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%')));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Warlock' and (skills.skill_name in ("Arcana", "Deception", "History", "Intimidation", "Investigation", "Nature", "Religion") );

-- Sorcerer --

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Sorcerer' and (abilities.ability_name in ("Constitution", "Charisma"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Sorcerer' and (weapon_name in(select weapon_name from weapons where weapon_name in ("Dagger", "Dart", "Sling", "Quarterstaff", "Crossbow,light")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Sorcerer' and (skills.skill_name in ("Arcana", "Deception", "Insight", "Intimidation", "Persuasion", "Religion") );

-- Rouge --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Rouge' and (armor_name in(select armor_name from armor where armor_category='Light'));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Rouge' and (abilities.ability_name in ("Dexterity", "Intelligence"));

INSERT INTO class_proficency_tools(class_id, tool_id)
SELECT classes.class_id, tools.tool_id
FROM classes,tools
WHERE classes.class_name='Rouge' and (tools.tool_name= "Thieves Tools");

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Rogue' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_name in ("Hand Crossbow", "Longsword", "Rapier", "Shortsword")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Rouge' and (skills.skill_name in ("Acrobatics", "Athletics", "Deception", "Insight", "Intimidation", "Investigation", "Perception", "Performance", "Persuasion", "Slight of Hand", "Stealth") );

-- Ranger --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Ranger' and (armor_name in(select armor_name from armor where armor_category in ('Light', 'Medium', 'Shield')));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Ranger' and (abilities.ability_name in ("Strength", "Dexterity"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Ranger' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_category like('Martial%') ));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Ranger' and (skills.skill_name in ("Animal Handling", "Athletics", "Insight", "Investigation", "Nature", "Perception", "Stealth", "Survival") );

-- Paladin --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Paladin' and (armor_name in(select armor_name from armor));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Paladin' and (abilities.ability_name in ("Wisdom", "Charisma"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Paladin' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_category like('Martial%') ));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Paladin' and (skills.skill_name in ("Athletics", "Insight", "Intimidation", "Medicine", "Persuasion", "Religion") );

-- Monk --
INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Monk' and (abilities.ability_name in ("Strength", "Dexterity"));

INSERT INTO class_proficency_tools(class_id, tool_id)
SELECT classes.class_id, tools.tool_id
FROM classes,tools
WHERE classes.class_name='Monk' and (tools.tool_name in (select tool_name from tools where tool_category in('Musical Instrument','Artisans Tools')));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Monk' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_name like ("%Shortsword%")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Monk' and (skills.skill_name in ("Acrobatics", "Athletics", "History", "Insight", "Religion", "Stealth") );

-- Fighter --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Fighter' and (armor_name in(select armor_name from armor));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Fighter' and (abilities.ability_name in ("Strength", "Constitution"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Fighter' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_category like('Martial%') ));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Fighter' and (skills.skill_name in ("Acrobatics", "Animal Handling", "Athletics", "History", "Insight", "Intimidation", "Perception", "Survival") );

-- Druid --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Druid' and (armor_name in(select armor_name from armor where armor_category in ('Light', 'Medium', 'Shield')));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Druid' and (abilities.ability_name in ("Intelligence", "Wisdom"));

INSERT INTO class_proficency_tools(class_id, tool_id)
SELECT classes.class_id, tools.tool_id
FROM classes,tools
WHERE classes.class_name='Druid' and (tools.tool_name= "Herbalism Kit");

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Druid' and (weapon_name in(select weapon_name from weapons where weapon_name in ("Club", "Dagger", "Dart", "Javelin", "Mace", "Quarterstaff", "Scimitar", "Sickle", "Sling", "Spear")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Druid' and (skills.skill_name in ( "Arcana", "Animal Handling", "Insight", "Medicine", "Nature", "Perception", "Religion", "Survival") );

-- bard --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Bard' and (armor_name in(select armor_name from armor where armor_category ='Light'));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Bard' and (abilities.ability_name in ("Dexterity", "Charisma"));

INSERT INTO class_proficency_tools(class_id, tool_id)
SELECT classes.class_id, tools.tool_id
FROM classes,tools
WHERE classes.class_name='Bard' and (tools.tool_name in (select tool_name from tools where tool_category ='Musical Instrument'));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Bard' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_name in ("Hand Crossbow", "Longsword", "Rapier", "Shortsword")));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Bard' and (skills.skill_name in (select skill_name from skills));

-- Fighter --
INSERT INTO class_proficency_armor(class_id, armor_id)
SELECT Classes.class_id, armor.armor_id
FROM classes,armor
WHERE Classes.class_name='Barbarian' and (armor_name in(select armor_name from armor where armor_category in ('Light', 'Medium', 'Shield')));

INSERT INTO class_proficency_saving_throws(class_id, ability_id)
SELECT classes.class_id, abilities.ability_id
FROM classes,abilities
WHERE classes.class_name='Barbarian' and (abilities.ability_name in ("Strength", "Constitution"));

INSERT INTO class_proficency_weapons(class_id, weapon_id)
SELECT Classes.class_id, weapons.weapon_id
FROM classes,weapons
WHERE Classes.class_name='Barbarian' and (weapon_name in(select weapon_name from weapons where weapon_category like('Simple%') or weapon_category like('Martial%') ));

INSERT INTO class_proficency_skills(class_id, skill_id)
SELECT Classes.class_id, skills.skill_id
FROM classes,skills
WHERE Classes.class_name='Barbarian' and (skills.skill_name in ("Animal Handling", "Athletics", "Intimidation", "Nature", "Perception", "Survival") );