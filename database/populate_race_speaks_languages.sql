truncate table race_speaks_language;
INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Dwarf' and (languages.language_name = "Dwarvish" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Elf' and (languages.language_name = "Elvish" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Dragonborn' and (languages.language_name = "Draconic" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Gnome' and (languages.language_name = "Gnomish" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Half-Elf' and (languages.language_name = "Elvish" or languages.language_name="Common" or languages.language_name=Null);

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Halfling' and (languages.language_name = "Halfling" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Half-Orc' and (languages.language_name = "Orc" or languages.language_name="Common");

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Human' and (languages.language_name="Common" or languages.language_name=null);

INSERT INTO race_speaks_language(race_id, language_id)
SELECT races.race_id, languages.language_id
FROM races,languages
WHERE races.race_name='Tiefling' and (languages.language_name="Common" or languages.language_name='Infernal');


select * from race_speaks_language;

select r.race_id as race_id, r.race_name, rsl.language_id, l.language_name
from races r
join race_speaks_language rsl on (r.race_id = rsl.race_id)
join languages l on (rsl.language_id = l.language_id);

