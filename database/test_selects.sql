insert into user (user_name)
values
("caden"),
("Zach"),
("Kaia");


-- 1: create new character
insert into characters (user_id)
select user_id from user where user_name="Caden";
insert into characters (user_id)
(select user_id from user where user_name="Kaia");
insert into characters (user_id)
(select user_id from user where user_name="Zach");

-- front end: gather the inputed level and name (should be a fork)
-- 2: add the name and level

update characters
set char_name= "aahil",
char_lvl = 1
where char_id =(select char_id from user_chars where user_name="CADEN");

UPDATE characters
SET 
    char_name = 'Zorn',
    char_lvl = 3
WHERE
    char_id = (select char_id from user_chars where user_name="Zach");
    
UPDATE characters
SET 
    char_name = 'alfred',
    char_lvl = 10
WHERE char_id=(select char_id from user_chars where user_name="kaia");

-- post races
select rgt.race_id, r.race_name, rgt.racial_trait_id,rt.trait_name, rt.trait_description
from race_grants_traits as rgt
join races as r on (r.race_id=rgt.race_id)
join racial_traits as rt on (rt.racial_trait_id=rgt.racial_trait_id);

-- replace ="race" with race_name=$input
UPDATE characters
SET
	char_race_id = (select race_id from races as r where race_name="Gnome"),
    size=(select size from races as r where race_name="Gnome"),
    speed=(select base_speed from races as r where race_name="Gnome")
WHERE char_id= 1 and user_id=1;


-- update racial traits
insert into char_powers (power_id, char_id, category)
select rt.racial_trait_id, c.char_id as char_id, "racial trait"
from race_grants_traits as rt, characters as c
where rt.race_id = c.char_race_id and c.user_id=1 and c.char_id=1 ;

insert into char_proficency_tools (tool_id, char_id)
select rtgt.tool_id, c.char_id as char_id
from characters as c,racial_trait_grants_tools as rtgt
join race_grants_traits as rgt on (rgt.racial_trait_id=rtgt.racial_trait_id)
where rgt.race_id = c.char_race_id and c.char_id=(select char_id from characters where user_id=1);


insert into char_proficency_weapons(weapon_id, char_id)
select rtgw.weapon_id, c.char_id as char_id
from characters as c,racial_trait_grants_weapons as rtgw
join race_grants_traits as rgt on (rgt.racial_trait_id=rtgw.racial_trait_id)
where rgt.race_id = c.char_race_id and c.char_id=(select char_id from characters where user_id=1);


insert into char_Languages (language_id, char_id)
select rsl.language_id, c.char_id as char_id
from characters as c,race_speaks_language as rsl
where rsl.race_id = c.char_race_id and c.char_id=(select char_id from characters where user_id=1);


-- increase lvl
update characters
set char_lvl = 5
where char_id =(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");
select * from characters;
-- Display subraces
select r.race_name,sr.subrace_name, sr.subrace_description
from subraces as sr, Races as r
where sr.race_id=r.race_id and r.race_id = (select char_race_id from Characters as c where c.user_id=1 and c.char_name="aahil");

UPDATE characters
SET
	pk_subrace = (select pk_subrace from subraces as sr where subrace_name="Rock Gnome")
WHERE char_id= (select char_id from Characters as c where c.user_id=1 and c.char_name="aahil");

insert into char_powers (power_id, char_id, category)
select srt.racial_trait_id, c.char_id as char_id, "subrace trait"
from subrace_grants_traits srt, characters as c
where srt.pk_subrace = c.pk_subrace and c.user_id=1 and c.char_id=1 ;

-- from classes
select class_name, class_description from classes;

UPDATE characters
SET
	char_class_id= (select class_id from Classes as r where class_name="Ranger")
WHERE char_id =(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_proficency_weapons(weapon_id, char_id)
select cpw.weapon_id, c.char_id as char_id
from characters as c,class_proficency_weapons as cpw
where cpw.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_proficency_armor(armor_id, char_id)
select cpa.armor_id, c.char_id as char_id
from characters as c,class_proficency_armor as cpa
where cpa.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_proficency_saving_throws(ability_id, char_id)
select cpst.ability_id, c.char_id as char_id
from characters as c,class_proficency_saving_throws as cpst
where cpst.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_proficency_skills(skill_id, char_id)
select cps.skill_id, c.char_id as char_id
from characters as c,class_proficency_skills as cps
where cps.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_proficency_tools(tool_id, char_id)
select cpt.tool_id, c.char_id as char_id
from characters as c,class_proficency_tools as cpt
where cpt.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_powers (power_id, char_id, category)
select chf.feat_id, c.char_id as char_id, "class feature"
from class_has_feats chf, characters as c
where chf.class_id = c.char_class_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

-- if item quantity> count(group,option) then the user needs to select quanity amount 
select c.class_name,i.item_name, i.category, group_number,option_number, quantity, select_num, cgts.cgi_id
from class_grants_items as cgts
join items as i on (cgts.item_name=i.item_name)
join classes as c on (cgts.class_id=c.class_id)
where cgts.class_id= (select c.char_class_id from Characters as c  where c.user_id=1 and c.char_name="aahil")
order by cgts.class_id, cgts.group_number,cgts.group_number, cgts.option_number;

-- need to get user input back as item name, group number, and option number or just item name and quanity
insert into char_inventory(char_id,item_name,quantity,category,weight,item_id)
select c.char_id,i.item_name, quantity,i.category,i.weight, i.item_id
from Characters as c, class_grants_items as cgi, items as i
where cgi_id in (380,401,401,413,415,416,417) and i.item_name=cgi.item_name and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil")
ON DUPLICATE KEY UPDATE quantity = char_inventory.quantity+ cgi.quantity;

select * from char_inventory where char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

-- get subraces
select path_name,path_description, class_id
from paths
where class_id=(select char_class_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

UPDATE characters
SET
	path_id= (select path_id from paths  where path_name="Beast Master")
WHERE char_id =(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_powers (power_id, char_id, category)
select pf.path_feat_id as power_id, c.char_id as char_id, "path feature"
from path_feats pf, characters as c
where pf.path_id= c.path_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

-- get backgrounds
select bg.background_id, bg.background_name, bg.starting_gold,bf.background_feat_id, bf.background_feat_name, bf.feat_description
from backgrounds as bg,background_features as bf 
where (bg.background_id=bf.background_id);

alter table characters add column gold float(8);
UPDATE backgrounds
SET
	background_id= (select background_id from backgrounds where background_name="Guild Artisan")
WHERE char_id =(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");

insert into char_powers (power_id, char_id, category)
select bf.path_feat_id as power_id, c.char_id as char_id, "background feature"
from path_feats pf, characters as c
where pf.path_id= c.path_id and c.char_id=(select char_id from Characters as c  where c.user_id=1 and c.char_name="aahil");



