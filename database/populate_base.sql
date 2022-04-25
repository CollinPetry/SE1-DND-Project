INSERT INTO Languages(language_name, typical_speaker,script)
VALUES
("Common", "Humans", "Common"),
("Dwarvish", "Dwarves", "Dwarvish"),
("Elvish", "Elves", "Elvish"),
("Giant", "Ogres, giants", "Dwarvish"),
("Gnomish", "Gnomes", "Dwarvish"),
("Goblin", "Goblinoids", "Dwarvish"),
("Halfling", "Halflings", "Common"),
("Orc", "Orcs", "Dwarvish"),
("Abyssal", "Demons", "Infernal"),
("Celestial", "Celestials", "Celestial"),
("Draconic", "Dragons, Dragonborn", "Draconic"),
("Deep Speech", "Mind Flayers, Beholders", Null),
("Infernal", "Devils", "Infernal"),
("Primordial", "Elementals", "Dwarvish"),
("Sylvan", "Fey Creatures", "Elvish"),
("Undercommon", "Underdark Traders", "Elvish");

INSERT INTO abilities(ability_name,ability_description)
VALUES
("Strength", "measuring physical power"),
("Dexterity", "measuring agility"),
("Constitution", "measuring endurance"),
("Intelligence", "measuring reasoning and memory"),
("Wisdom", "measuring Perception and Insight"),
("Charisma", "measuring force of Personality");

INSERT INTO Skills(skill_name)
VALUES
("Athletics"),
("Acrobatics"),
("Sleight of Hand"),
("Stealth"),
("Arcana"),
("History"),
("Investigation"),
("Nature"),
("Religion"),
("Animal Handling"),
("Insight"),
("Medicine"),
("Perception"),
("Survival"),
("Deception"),
("Intimidation"),
("Performance"),
("Persuasion");

INSERT INTO armor(armor_name,cost,armor_class,strength,stealth,weight, armor_category)
VALUES
("Padded", 5.0, 11, Null, False, 8.0, "Light"),
("Leather", 10.0, 11, Null, True, 10.0, "Light"),
("Studded leather", 45.0, 12, Null, True, 13.0, "Light"),
("Hide", 10.0, 12, Null, True, 12.0, "Medium"),
("Chain shirt", 50.0, 13, Null, True, 20.0, "Medium"),
("Scale mail", 50.0, 14, Null, False, 45.0, "Medium"),
("Breastplate", 400.0, 14, Null, True, 20.0, "Medium"),
("Half plate", 750.0, 15, Null, False, 40.0, "Medium"),
("Ring mail", 30.0, 14, Null, False, 40.0, "Heavy"),
("Chain mail", 75.0, 16, 13, False, 55.0, "Heavy"),
("Splint", 200.0, 17, 15, False, 60.0, "Heavy"),
("Plate", 1500.0, 18, 15, False, 65.0, "Heavy"),
("Shield", 10.0, 2, Null, False, 6.0, "shield");

INSERT INTO weapons(weapon_name,cost,num_die,damage_die,damage_type,weight,weapon_category)
VALUES
("Club",0.1,1,4,"bludgeoning",2.0,"Simple Melee"),
("Dagger",2.0,1,4,"piercing",1.0,"Simple Melee"),
("Greatclub",0.2,1,8,"bludgeoning",10.0,"Simple Melee"),
("Handaxe",5.0,1,6,"slashing",2.0,"Simple Melee"),
("javelin",0.5,1,6,"piercing",2.0,"Simple Melee"),
("Light hammer",2.0,1,4,"bludgeoning",2.0,"Simple Melee"),
("Mace",5.0,1,6,"bludgeoning",4.0,"Simple Melee"),
("Quarterstaff",0.2,1,6,"bludgeoning",4.0,"Simple Melee"),
("Sickle",1.0,1,4,"slashing",2.0,"Simple Melee"),
("Spear",1.0,1,6,"piercing",3.0,"Simple Melee"),
("Unarmed strike",0.0,Null,Null,"bludgeoning",0.0,"Simple Melee"),
("Crossbow,light",25.0,1,8,"piercing",5.0,"Simple Ranged"),
("Dart",0.05,1,4,"piercing",0.25,"Simple Ranged"),
("Shortbow",25.0,1,6,"piercing",2.0,"Simple Ranged"),
("Sling",0.1,1,4,"bludgeoning",0.0,"Simple Ranged"),
("Battleaxe",10.0,1,8,"slashing",4.0,"Martial Melee"),
("Flail",10.0,1,8,"bludgeoning",2.0,"Martial Melee"),
("Glaive",20.0,1,10,"slashing",6.0,"Martial Melee"),
("Greataxe",30.0,1,12,"slashing",7.0,"Martial Melee"),
("Greatsword",50.0,2,6,"slashing",6.0,"Martial Melee"),
("Halberd",20.0,1,10,"slashing",6.0,"Martial Melee"),
("Lance",10.0,1,12,"piercing",6.0,"Martial Melee"),
("Longsword",15.0,1,8,"slashing",3.0,"Martial Melee"),
("Maul",10.0,2,6,"bludgeoning",10.0,"Martial Melee"),
("Morningstar",15.0,1,8,"piercing",4.0,"Martial Melee"),
("Pike",5.0,1,10,"piercing",18.0,"Martial Melee"),
("Rapier",25.0,1,8,"piercing",2.0,"Martial Melee"),
("Scimitar",25.0,1,6,"slashing",3.0,"Martial Melee"),
("Shortsword",10.0,1,6,"piercing",2.0,"Martial Melee"),
("Trident",5.0,1,6,"piercing",4.0,"Martial Melee"),
("Warpick",5.0,1,8,"piercing",2.0,"Martial Melee"),
("Warhammer",15.0,1,8,"bludgeoning",2.0,"Martial Melee"),
("Whip",2.0,1,4,"slashing",3.0,"Martial Melee"),
("Blowgun",10.0,null,null,"piercing",1.0,"Martial Ranged"),
("Crossbow,hand",75.0,1,6,"piercing",3.0,"Martial Ranged"),
("Crossbow,heavy",50.0,1,10,"piercing",18.0,"Martial Ranged"),
("Longbow",50.0,1,8,"piercing",2.0,"Martial Ranged"),
("Net",1.0,Null,null,Null,3.0,"Martial Ranged");

INSERT INTO racial_traits(trait_name, trait_description)
VALUES
("Dwarven Resilience","You have advantage on saving throws against poison, and you have resistance against poison damage."),
("Dwarven Combat Training","You have proficiency with the battleaxe, handaxe, light hammer, and warhammer."),
("Tool Proficiency","You gain proficiency with the artisan’s tools of your choice: smith’s tools, brewer’s supplies, or mason’s tools."),
("Stonecunning","Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus."),
("Dwarven Toughness","Your hit point maximum increases by 1, and it increases by 1 every time you gain a level."),
("Keen Senses","You have proficiency in the Perception skill."),
("Elf Weapon Training","You have proficiency with the longsword, shortsword, shortbow, and longbow"),
("Trance","Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep."),
("Cantrip","You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it."),
("Lucky","When you roll a 1 on the d20 for an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll."),
("Brave","You have advantage on saving throws against being frightened."),
("Halfling Nimbleness","You can move through the space of any creature that is of a size larger than yours."),
("Naturally Stealthy","You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you."),
("Draconic Ancestry","You have draconic ancestry.  Choose one type of dragon from the Draconic  Ancestry table. Your breath weapon and damage  resistance are determined by the dragon type, as  shown in the table."),
("Breath Weapon","You can use your action to  exhale destructive energy. Your draconic ancestry  determines the size, shape, and damage type of the  exhalation. When you use your breath weapon, each creature  in the area of the exhalation must make a saving  throw, the type of which is determined by your  draconic ancestry. The DC for this saving throw  equals 8 + your Constitution modifier + your  proficiency bonus. A creature takes 2d6 damage on a  failed save, and half as much damage on a successful  one. The damage increases to 3d6 at 6th level, 4d6 at  11th level, and 5d6 at 16th level. After you use your breath weapon, you can’t use it  again until you complete a short or long rest."),
("Damage Resistance","You have resistance to the  damage type associated with your draconic ancestry."),
("Gnome Cunning","You have advantage on all  Intelligence, Wisdom, and Charisma saving throws  against magic."),
("Artificer’s Lore","Whenever you make an  Intelligence (History) check related to magic items,  alchemical objects, or technological devices, you can  add twice your proficiency bonus, instead of any  proficiency bonus you normally apply."),
("Tinker","You have proficiency with artisan’s tools  (tinker’s tools). Using those tools, you can spend 1  hour and 10 gp worth of materials to construct a  Tiny clockwork device (AC 5, 1 hp). The device  ceases to function after 24 hours (unless you spend  1 hour repairing it to keep the device functioning),  or when you use your action to dismantle it; at that  time, you can reclaim the materials used to create it.  You can have up to three such devices active at a  time. When you create a device, choose one of the  following options:"),
("Fey Ancestry","You have advantage on saving throws against being charmed, and magic can’t put you to sleep."),
("Menacing","You gain proficiency in the  Intimidation skill."),
("Savage Attacks","When you score a critical hit with  a melee weapon attack, you can roll one of the  weapon’s damage dice one additional time and add it  to the extra damage of the critical hit."),
("Relentless Endurance","When you are reduced to 0  hit points but not killed outright, you can drop to 1  hit point instead. You can’t use this feature again  until you finish a long rest."),
("Hellish Resistance","You have resistance to fire  damage."),
("Infernal Legacy","You know the thaumaturgy cantrip. When you reach 3rd level, you can cast the  hellish rebuke spell as a 2nd-level spell once with this  trait and regain the ability to do so when you finish a  long rest. When you reach 5th level, you can cast the  darkness spell once with this trait and regain the  ability to do so when you finish a long rest. Charisma  is your spellcasting ability for these spells."),
("Darkvision","You have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.");

INSERT INTO Races(race_name,age, alignment_tendency,size,base_speed)
VALUES
("Dwarf","Dwarves mature at the same rate as humans, but they’re considered young until they reach the age of 50. On average, they live about 350 years.","Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.","Medium",25 ),
("Elf","Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.","Elves love freedom, variety, and selfexpression, so they lean strongly toward the gentler aspects of chaos. They value and protect others’ freedom as well as their own, and they are more often good than not.","Medium",30),
("Halfling","A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.", "Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.","Small",25),
("Human","Humans reach adulthood in their late teens and live less than a century.","Humans tend toward no particular alignment. The best and the worst are found among them.","Medium",30),
("Dragonborn","Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 10-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.","Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil. Most dragonborn are good, but those who side with evil can be terrible villains.","Medium", 30),
("Gnome","Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.","Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.","Small", 25),
("Half-Elf","Half-elves mature at the same rate humans  do and reach adulthood around the age of 20. They  live much longer than humans, however, often  exceeding 180 years.","Half-elves share the chaotic bent of  their elven heritage. They value both personal  freedom and creative expression, demonstrating  neither love of leaders nor desire for followers. They  chafe at rules, resent others’ demands, and  sometimes prove unreliable, or at least unpredictable.","Medium", 30),
("Half-Orc","Half-orcs mature a little faster than humans,  reaching adulthood around age 14. They age  noticeably faster and rarely live longer than 75 years.","Half-orcs inherit a tendency toward  chaos from their orc parents and are not strongly  inclined toward good. Half-orcs raised among orcs  and willing to live out their lives among them are  usually evil.","Medium", 30),
("Tiefling","Tieflings mature at the same rate as humans  but live a few years longer.","Tieflings might not have an innate  tendency toward evil, but many of them end up  there. Evil or not, an independent nature inclines  many tieflings toward a chaotic alignment.","Medium", 30);

INSERT INTO Alignments(alignment_name,alignment_description)
VALUES
("Lawful Good", "creatures can be counted on to do the right thing as expected by society. Gold dragons, paladins, and most dwarves are lawful good."),
("Neutral Good", "folk do the best they can to help others according to their needs. Many celestials, some cloud giants, and most gnomes are neutral good."),
("Chaotic Good", "creatures act as their conscience directs, with little regard for what others expect. Copper dragons, many elves, and unicorns are chaotic good."),
("Lawful Neutral", "individuals act in accordance with law, tradition, or personal codes. Many monks and some wizards are lawful neutral."),
("Neutral", "is the alignment of those who prefer to steer clear of moral questions and don’t take sides, doing what seems best at the time. Lizardfolk, most druids, and many humans are neutral."),
("Chaotic Neutral", "creatures follow their whims, holding their personal freedom above all else. Many barbarians and rogues, and some bards, are chaotic neutral."),
("Lawful Evil", "creatures methodically take what they want, within the limits of a code of tradition, loyalty, or order. Devils, blue dragons, and hobgoblins are lawful evil."),
("Neutral Evil", "is the alignment of those who do whatever they can get away with, without com passion or qualms. Many drow, some cloud giants, and yugoloths are neutral evil."),
("Chaotic Evil", "creatures act with arbitrary violence, spurred by their greed, hatred, or bloodlust. Demons, red dragons, and orcs are chaotic evil.");

INSERT INTO Classes(class_name, class_description,hit_die)
VALUES
("Barbarian","A fierce warrior of primitive background who can enter a battle rage",12),
("Bard","An inspiring magician whose power echoes the music of creation",8),
("Cleric","A priestly champion who wields divine magic in service of a higher power",8),
("Druid","A priest of the Old Faith, wielding the powers of nature and adopting animal forms",8),
("Fighter","A master of martial combat, skilled with a variety of weapons and armor",10),
("Monk","A master of martial arts, harnessing the power of the body in pursuit of physical and spiritual perfection",8),
("Paladin","A holy warrior bound to a sacred oath",10),
("Ranger","A warrior who combats threats on the edges of civilization",10),
("Rogue","A scoundrel who uses stealth and trickery to overcome obstacles and enemies",8),
("Sorcerer","A spellcaster who draws on inherent magic from a gift or bloodline",6),
("Warlock","A wielder of magic that is derived from a bargain with an extraplanar entity",8),
("Wizard","A scholarly magic-user capable of manipulating the structures of reality",6);
