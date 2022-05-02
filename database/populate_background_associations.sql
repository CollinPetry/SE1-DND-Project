-- acolyte
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Acolyte' and (skills.skill_name='Insight' or skills.skill_name='Religion');

-- two of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Acolyte' and (languages.language_name=null or languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Acolyte")
WHERE background_feat_name='Shelter of The Faithful';

-- charlatan
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Charlatan' and (skills.skill_name='Deception' or skills.skill_name='Slight of Hand');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Charlatan' and (tools.tool_name='Disguise Kit' or tools.tool_name='Forgery Kit');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Charlatan")
WHERE background_feat_name='False Identity';

-- criminal
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Criminal' and (skills.skill_name='Deception' or skills.skill_name='Stealth');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Criminal' and (tools.tool_name='Gaming Set' or tools.tool_name='Thieves Tools');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Criminal")
WHERE background_feat_name='Criminal Contact';

-- Entertainer
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Entertainer' and (skills.skill_name='Acrobatics' or skills.skill_name='Preformance');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Entertainer' and (tools.tool_name='Disguise Kit' or tools.tool_name='Musical Instrument');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Entertainer")
WHERE background_feat_name='By Popular Demand';

-- Folk Hero
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Folk Hero' and (skills.skill_name='Animal Handling' or skills.skill_name='Survival');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Folk Hero' and (tools.tool_name='Artisians Tools' or tools.tool_name='Vehicles (Land)');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Folk Hero")
WHERE background_feat_name='Rustic Hospitality';

-- Guild Artisan
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Guild Artisan' and (skills.skill_name='Insight' or skills.skill_name='Persuasion');

-- any artisian
-- INSERT INTO background_proficency_tools(background_id, tool_id)
-- SELECT backgrounds.background_id, tools.tool_id
-- FROM backgrounds,tools
-- WHERE backgrounds.background_name='Guild Artisan' and (tools.tool_name='Artisians Tools');

-- one of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Guild Artisan' and (languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Guild Artisan")
WHERE background_feat_name='Guild Membership';

-- Hermit
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Hermit' and (skills.skill_name='Medicine' or skills.skill_name='Religion');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Hermit' and (tools.tool_name='Herbalism Kit');

-- one of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Hermit' and (languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Hermit")
WHERE background_feat_name='Discovery';

-- Noble
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Noble' and (skills.skill_name='History' or skills.skill_name='Persuasion');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Noble' and (tools.tool_name='Gaming Set');

-- one of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Noble' and (languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Noble")
WHERE background_feat_name='Position Of Privilege';

-- Outlander
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Outlander' and (skills.skill_name='Athletics' or skills.skill_name='Survival');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Outlander' and (tools.tool_name='Musical Instrument');

-- one of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Outlander' and (languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Outlander")
WHERE background_feat_name='Wanderer';

-- Sage
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Sage' and (skills.skill_name='Arcana' or skills.skill_name='History');

-- two of choice
-- INSERT INTO background_proficency_languages(background_id, language_id)
-- SELECT backgrounds.background_id, languages.language_id
-- FROM backgrounds,languages
-- WHERE backgrounds.background_name='Sage' and (languages.language_name=null);

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Sage")
WHERE background_feat_name='Researcher';

-- Sailor
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Sailor' and (skills.skill_name='Athletics' or skills.skill_name='Perception');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Sailor' and (tools.tool_name='Navigators Tools' or tools.tool_name='Vehicles (Water)');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Sailor")
WHERE background_feat_name="Ship’s Passage";

-- Soldier
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Soldier' and (skills.skill_name='Athletics' or skills.skill_name='Intimidation');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Soldier' and (tools.tool_name='Gaming Set' or tools.tool_name='Vehicles (Land)');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Soldier")
WHERE background_feat_name='Military Rank';

-- Urchin
INSERT INTO background_proficency_skills(background_id, skill_id)
SELECT backgrounds.background_id, skills.skill_id
FROM backgrounds,skills
WHERE backgrounds.background_name='Urchin' and (skills.skill_name='Slight Of Hand' or skills.skill_name='Stealth');

INSERT INTO background_proficency_tools(background_id, tool_id)
SELECT backgrounds.background_id, tools.tool_id
FROM backgrounds,tools
WHERE backgrounds.background_name='Urchin' and (tools.tool_name='Disguise Kit' or tools.tool_name='Thieves Tools');

UPDATE background_features SET background_id=( 
SELECT background_id FROM backgrounds
WHERE  background_name="Urchin")
WHERE background_feat_name='City Secrets';


