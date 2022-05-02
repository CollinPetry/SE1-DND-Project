-- link abilities with skills
SET SQL_SAFE_UPDATES = 0;
UPDATE skills SET ability_id=( 
SELECT ability_id FROM abilities
WHERE  ability_name="Strength")
WHERE skill_name='Athletics';

UPDATE skills SET ability_id=( 
SELECT ability_id FROM abilities
WHERE  ability_name="Dexterity")
WHERE skill_name='Athletics';

UPDATE skills SET ability_id=( 
SELECT ability_id FROM abilities
WHERE  ability_name="Intelligence")
WHERE skill_name='Religion' or skill_name='Nature' or skill_name='Investigation' or skill_name='History' or skill_name='Arcana';

UPDATE skills SET ability_id=( 
SELECT ability_id FROM abilities
WHERE  ability_name="Wisdom")
WHERE skill_name='Animal Handling'or skill_name='Insight' or skill_name='Medicine' or skill_name='Perception' or skill_name='Survival';

UPDATE skills SET ability_id=( 
SELECT ability_id FROM abilities
WHERE  ability_name="Charisma")
WHERE skill_name='Persuasion'or skill_name='Deception' or skill_name='Intimidation' or skill_name='Performance';

