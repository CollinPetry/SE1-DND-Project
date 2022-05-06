
create view class_skills as
select c.class_id as class_id, c.class_name, cps.skill_id, s.skill_name
from classes c
join class_proficency_skills cps on (c.class_id= cps.class_id)
join skills s on (cps.skill_id = s.skill_id);

create view class_tools as
select c.class_id as class_id, c.class_name, cpt.tool_id, t.tool_name
from classes c
join class_proficency_tools cpt on (c.class_id= cpt.class_id)
join tools t on (cpt.tool_id = t.tool_id);

create view class_armor as
select c.class_id as class_id, c.class_name, cpa.armor_id, a.armor_name
from classes c
join class_proficency_armor cpa on (c.class_id= cpa.class_id)
join armor a on (cpa.armor_id= a.armor_id);

create view class_weapons as
select c.class_id as class_id, c.class_name, cpw.weapon_id, w.weapon_name
from classes c
join class_proficency_weapons cpw on (c.class_id= cpw.class_id)
join weapons w on (cpw.weapon_id= w.weapon_id);

create view class_saving_throws as
select c.class_id as class_id, c.class_name, cpst.ability_id, st.ability_name
from classes c
join class_proficency_saving_throws cpst on (c.class_id= cpst.class_id)
join abilities st on (cpst.ability_id= st.ability_id);

select a.armor_id, a.armor_name, t.tool_name, t.tool_id, s.skill_id,s.skill_name, st.ability_name, st.ability_id, w.weapon_name, w.weapon_id, a.class_name 
from class_saving_throws as st, class_weapons as w, class_armor as a, class_tools as t, class_skills as s
where class_id = (select char_class_id from  User_Character);


select * from class_saving_armor;

select * from class_saving_tools;

select * from class_saving_skills;

select * from class_saving_weapons;
