-- drop database dungeons_and_dragons;
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

INSERT INTO Backgrounds(background_name, background_description)
VALUES
("Acolyte","You have spent your life in the service of a temple to a specific god or pantheon of gods. You act as an intermediary between the realm of the holy and the mortal world, performing sacred rites and offering sacrifices in order to conduct worshipers into the presence of the divine. You are not necessarily a cleric—performing sacred rites is not the same thing as channeling divine power. Choose a god, a pantheon of gods, or some other quasi-divine being, and work with your DM to detail the nature of your religious service. Were you a lesser functionary in a temple, raised from childhood to assist the priests in the sacred rites? Or were you a high priest who suddenly experienced a call to serve your god in a different way? Perhaps you were the leader of a small cult outside of any established temple structure, or even an occult group that served a fiendish master that you now deny."),
("Charlatan","You have always had a way with people. You know what makes them tick, you can tease out their hearts’ desires after a few minutes of conversation, and with a few leading questions you can read them like they were children’s books. It’s a useful talent, and one that you’re perfectly willing to use for your advantage. You know what people want and you deliver, or rather, you promise to deliver. Common sense should steer people away from things that sound too good to be true, but common sense seems to be in short supply when you’re around. The bottle of pink-colored liquid will surely cure that unseemly rash, this ointment—nothing more than a bit of fat with a sprinkle of silver dust—can restore youth and vigor, and there’s a bridge in the city that just happens to be for sale. These marvels sound implausible, but you make them sound like the real deal."),
("Criminal","You are an experienced criminal with a history of breaking the law. You have spent a lot of time among other criminals and still have contacts within the criminal underworld. You’re far closer than most people to the world of murder, theft, and violence that pervades the underbelly of civilization, and you have survived up to this point by flouting the rules and regulations of society."),
("Folk Hero","You come from a humble social rank, but you are destined for so much more. Already the people of your home village regard you as their champion, and your destiny calls you to stand against the tyrants and monsters that threaten the common folk everywhere."),
("Guild Artisan","You are a member of an artisan’s guild, skilled in a particular field and closely associated with other artisans. You are a well-established part of the mercantile world, freed by talent and wealth from the constraints of a feudal social order. You learned your skills as an apprentice to a master artisan, under the sponsorship of your guild, until you became a master in your own right."),
("Hermit","You lived in seclusion—either in a sheltered community such as a monastery, or entirely a lone—for a formative part of your life. In your time apart from the clamor of society, you found quiet, solitude, and perhaps some of the answers you were looking for."),
("Noble","You understand wealth, power, and privilege. You carry a noble title, and your family owns land, collects taxes, and wields significant political influence. You might be a pampered aristocrat unfamiliar with work or discomfort, a former merchant just elevated to the nobility, or a disinherited scoundrel with a disproportionate sense of entitlement. Or you could be an honest, hard-working landowner who cares deeply about the people who live and work on your land, keenly aware of your responsibility to them. Work with your DM to come up with an appropriate title and determine how much authority that title carries. A noble title doesn’t stand on its own—it’s connected to an entire family, and whatever title you hold, you will pass it down to your own children. Not only do you need to determine your noble title, but you should also work with the DM to describe your family and their influence on you."),
("Outlander","You grew up in the wilds, far from civilization and the comforts of town and technology. You’ve witnessed the migration of herds larger than forests, survived weather more extreme than any city-dweller could comprehend, and enjoyed the solitude of being the only thinking creature for miles in any direction. The wilds are in your blood, whether you were a nomad, an explorer, a recluse, a hunter-gatherer, or even a marauder. Even in places where you don’t know the specific features of the terrain, you know the ways of the wild."),
("Sage","You spent years learning the lore of the multiverse. You scoured manuscripts, studied scrolls, and listened to the greatest experts on the subjects that interest you. Your efforts have made you a master in your fields of study."),
("Sailor","You sailed on a seagoing vessel for years. In that time, you faced down mighty storms, monsters of the deep, and those who wanted to sink your craft to the bottomless depths. Your first love is the distant line of the horizon, but the time has come to try your hand at something new.Discuss the nature of the ship you previously sailed with your Dungeon Master. Was it a merchant ship, a naval vessel, a ship of discovery, or a pirate ship? How famous (or infamous) is it? Is it widely traveled? Is it still sailing, or is it missing and presumed lost with all hands?What were your duties on board—boatswain, captain, navigator, cook, or some other position? Who were the captain and first mate? Did you leave your ship on good terms with your fellows, or on the run?"),
("Soldier","War has been your life for as long as you care to remember. You trained as a youth, studied the use of weapons and armor, learned basic survival techniques, including how to stay alive on the battlefield. You might have been part of a standing national army or a mercenary company, or perhaps a member of a local militia who rose to prominence during a recent war. When you choose this background, work with your DM to determine which military organization you were a part of, how far through its ranks you progressed, and what kind of experiences you had during your military career. Was it a standing army, a town guard, or a village militia? Or it might have been a noble’s or merchant’s private army, or a mercenary company."),
("Urchin","You grew up on the streets alone, orphaned, and poor. You had no one to watch over you or to provide for you, so you learned to provide for yourself. You fought fiercely over food and kept a constant watch out for other desperate souls who might steal from you. You slept on rooftops and in alleyways, exposed to the elements, and endured sickness without the advantage of medicine or a place to recuperate. You’ve survived despite all odds, and did so through cunning, strength, speed, or some combination of each. You begin your adventuring career with enough money to live modestly but securely for at least ten days. How did you come by that money? What allowed you to break free of your desperate circumstances and embark on a better life?");

INSERT INTO Gear(gear_name,gear_description,gear_category,cost,weight)
VALUES
("Abacus","A standard tool used to make calculations.","Adventuring Gear",2.00,2),
("Acid (vial)","As an action, you can splash the contents of this vial onto a creature within 5 feet of you or throw the vial up to 20 feet, shattering it on impact. In either case, make a ranged attack against a creature or object, treating the acid as an improvised weapon. On a hit, the target takes 2d6 acid damage.","Adventuring Gear",25.00,1),
("Alchemist's Fire (flask)","This sticky, adhesive fluid ignites when exposed to air. As an action, you can throw this flask up to 20 feet, shattering it on impact. Make a ranged attack against a creature or object, treating the alchemist's fire as an improvised weapon. On a hit, the target takes 1d4 fire damage at the start of each of its turns. A creature can end this damage by using its action to make a DC 10 Dexterity check to extinguish the flames.","Adventuring Gear",50.00,1),
("Antitoxin (vial)","A creature that drinks this vial of liquid gains advantage on saving throws against poison for 1 hour. It confers no benefit to undead or constructs.","Adventuring Gear",50.00,Null),
("Backpack","A backpack is a leather pack carried on the back, typically with straps to secure it. A backpack can hold 1 cubic foot/ 30 pounds of gear. You can also strap items, such as a bedroll or a coil of rope, to the outside of a backpack.","Adventuring Gear",2.00,5),
("Ball Bearings (bag of 1,000)","As an action, you can spill these tiny metal balls from their pouch to cover a level, square area that is 10 feet on a side. A creature moving across the covered area must succeed on a DC 10 Dexterity saving throw or fall prone. A creature moving through the area at half speed doesn't need to make the save.","Adventuring Gear",1.00,2),
("Barrel",Null,"Adventuring Gear",2.00,70),
("Basket",Null,"Adventuring Gear",0.40,2),
("Bedroll",Null,"Adventuring Gear",1.00,7),
("Bell",Null,"Adventuring Gear",1.00,Null),
("Blanket",Null,"Adventuring Gear",0.50,3),
("Block and Tackle","A set of pulleys with a cable threaded through them and a hook to attach to objects, a block and tackle allows you to hoist up to four times the weight you can normally lift. ","Adventuring Gear",1.00,5),
("Book","A book might contain poetry, historical accounts, information pertaining to a particular field of lore, diagrams and notes on gnomish contraptions, or just about anything else that can be represented using text or pictures. A book of spells is a spellbook (described later in this section).","Adventuring Gear",25.00,5),
("Bottle, Glass",Null,"Adventuring Gear",2.00,2),
("Bucket",Null,"Adventuring Gear",0.05,2),
("Caltrops (bag of 20)","As an action, you can spread a bag of caltrops to cover a square area that is 5 feet on a side. Any creature that enters the area must succeed on a DC 15 Dexterity saving throw or stop moving this turn and take 1 piercing damage. Taking this damage reduces the creature's walking speed by 10 feet until the creature regains at least 1 hit point. A creature moving through the area at half speed doesn't need to make the save.","Adventuring Gear",1.00,2),
("Candle","For 1 hour, a candle sheds bright light in a 5-foot radius and dim light for an additional 5 feet.","Adventuring Gear",0.01,Null),
("Case, Crossbow Bolt","This wooden case can hold up to twenty crossbow bolts.","Adventuring Gear",1.00,1),
("Case, Map or Scroll","This cylindrical leather case can hold up to ten rolled-up sheets of paper or five rolled-up sheets of parchment. ","Adventuring Gear",1.00,1),
("Chain (10 feet)","A chain has 10 hit points. It can be burst with a successful DC 20 Strength check. ","Adventuring Gear",5.00,10),
("Chalk",Null,"Adventuring Gear",0.01,Null),
("Chest",Null,"Adventuring Gear",5.00,25),
("Climber's Kit","A climber's kit includes special pitons, boot tips, gloves, and a harness. You can use the climber's kit as an action to anchor yourself; when you do, you can't fall more than 25 feet from the point where you anchored yourself, and you can't climb more than 25 feet away from that point without undoing the anchor.","Adventuring Gear",25.00,12),
("Clothes, Common",Null,"Adventuring Gear",0.50,3),
("Clothes, Costume",Null,"Adventuring Gear",5.00,4),
("Clothes, Fine",Null,"Adventuring Gear",15.00,6),
("Clothes, Traveler's",Null,"Adventuring Gear",2.00,4),
("Component Pouch","A component pouch is a small, watertight leather belt pouch that has compartments to hold all the material components and other special items you need to cast your spells, except for those components that have a specific cost (as indicated in a spell's description).","Adventuring Gear",25.00,2),
("Crowbar","Using a crowbar grants advantage to Strength checks where the crowbar's leverage can be applied.","Adventuring Gear",2.00,5),
("Fishing Tackle","This kit includes a wooden rod, silken line, corkwood bobbers, steel hooks, lead sinkers, velvet lures, and narrow netting.","Adventuring Gear",1.00,4),
("Flask or Tankard",Null,"Adventuring Gear",0.02,1),
("Grappling Hook",Null,"Adventuring Gear",2.00,4),
("Hammer",Null,"Adventuring Gear",1.00,3),
("Hammer, Sledge",Null,"Adventuring Gear",2.00,10),
("Healer's Kit","This kit is a leather pouch containing bandages, salves, and splints. The kit has ten uses. As an action, you can expend one use of the kit to stabilize a creature that has 0 hit points, without needing to make a Wisdom (Medicine) check. ","Adventuring Gear",5.00,3),
("Holy Water (flask)","As an action, you can splash the contents of this flask onto a creature within 5 feet of you or throw it up to 20 feet, shattering it on impact. In either case, make a ranged attack against a target creature, treating the holy water as an improvised weapon. If the target is a fiend or undead, it takes 2d6 radiant damage. A cleric or paladin may create holy water by performing a special ritual. The ritual takes 1 hour to perform, uses 25 gp worth of powdered silver, and requires the caster to expend a 1st-level spell slot.","Adventuring Gear",25.00,1),
("Hourglass",Null,"Adventuring Gear",25.00,1),
("Hunting Trap","When you use your action to set it, this trap forms a saw-toothed steel ring that snaps shut when a creature steps on a pressure plate in the center. The trap is affixed by a heavy chain to an immobile object, such as a tree or a spike driven into the ground. A creature that steps on the plate must succeed on a DC 13 Dexterity saving throw or take 1d4 piercing damage and stop moving. Thereafter, until the creature breaks free of the trap, its movement is limited by the length of the chain (typically 3 feet long). A creature can use its action to make a DC 13 Strength check, freeing itself or another creature within its reach on a success. Each failed check deals 1 piercing damage to the trapped creature.","Adventuring Gear",5.00,25),
("Ink (1 ounce bottle)",Null,"Adventuring Gear",10.00,Null),
("Ink Pen",Null,"Adventuring Gear",0.02,Null),
("Jug or Pitcher",Null,"Adventuring Gear",0.02,4),
("Ladder (10 foot)",Null,"Adventuring Gear",0.10,25),
("Lamp","A lamp casts bright light in a 15-foot radius and dim light for an additional 30 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil.","Adventuring Gear",0.50,1),
("Lantern, Bullseye","A bullseye lantern casts bright light in a 60-foot cone and dim light for an additional 60 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil.","Adventuring Gear",10.00,2),
("Lantern, Hooded","A hooded lantern casts bright light in a 30-foot radius and dim light for an additional 30 feet. Once lit, it burns for 6 hours on a flask (1 pint) of oil. As an action, you can lower the hood, reducing the light to dim light in a 5-foot radius. ","Adventuring Gear",5.00,2),
("Lock","A key is provided with the lock. Without the key, a creature proficient with thieves' tools can pick this lock with a successful DC 15 Dexterity check. Your GM may decide that better locks are available for higher prices. ","Adventuring Gear",10.00,1),
("Magnifying Glass","This lens allows a closer look at small objects. It is also useful as a substitute for flint and steel when starting fires. Lighting a fire with a magnifying glass requires light as bright as sunlight to focus, tinder to ignite, and about 5 minutes for the fire to ignite. A magnifying glass grants advantage on any ability check made to appraise or inspect an item that is small or highly detailed. ","Adventuring Gear",100.00,Null),
("Manacles","These metal restraints can bind a Small or Medium creature. Escaping the manacles requires a successful DC 20 Dexterity check. Breaking them requires a successful DC 20 Strength check. Each set of manacles comes with one key. Without the key, a creature proficient with thieves' tools can pick the manacles' lock with a successful DC 15 Dexterity check. Manacles have 15 hit points.","Adventuring Gear",2.00,6),
("Mess Kit","This tin box contains a cup and simple cutlery. The box clamps together, and one side can be used as a cooking pan and the other as a plate or shallow bowl. ","Adventuring Gear",0.20,1),
("Mirror, Steel",Null,"Adventuring Gear",5.00,0.5),
("Oil (flask)","Oil usually comes in a clay flask that holds 1 pint. As an action, you can splash the oil in this flask onto a creature within 5 feet of you or throw it up to 20 feet, shattering it on impact. Make a ranged attack against a target creature or object, treating the oil as an improvised weapon. On a hit, the target is covered in oil. If the target takes any fire damage before the oil dries (after 1 minute), the target takes an additional 5 fire damage from the burning oil. You can also pour a flask of oil on the ground to cover a 5-foot-square area, provided that the surface is level. If lit, the oil burns for 2 rounds and deals 5 fire damage to any creature that enters the area or ends its turn in the area. A creature can take this damage only once per turn. ","Adventuring Gear",0.10,1),
("Paper (one sheet)",Null,"Adventuring Gear",0.20,Null),
("Parchment (one sheet)",Null,"Adventuring Gear",0.10,Null),
("Perfume (vial)",Null,"Adventuring Gear",5.00,Null),
("Pick, Miner's",Null,"Adventuring Gear",2.00,10),
("Piton",Null,"Adventuring Gear",0.05,0.25),
("Poison, Basic (vial)","You can use the poison in this vial to coat one slashing or piercing weapon or up to three pieces of ammunition. Applying the poison takes an action. A creature hit by the poisoned weapon or ammunition must make a DC 10 Constitution saving throw or take 1d4 poison damage. Once applied, the poison retains potency for 1 minute before drying.","Adventuring Gear",100.00,Null),
("Pole (10 foot)",Null,"Adventuring Gear",0.05,7),
("Pot, Iron",Null,"Adventuring Gear",2.00,10),
("Potion of Healing","A character who drinks the magical red fluid in this vial regains 2d4 + 2 hit points. Drinking or administering a potion takes an action.","Adventuring Gear",50.00,0.5),
("Pouch","A cloth or leather pouch can hold up to 20 sling bullets or 50 blowgun needles, among other things.","Adventuring Gear",0.50,1),
("Quiver","A quiver can hold up to 20 arrows.","Adventuring Gear",1.00,1),
("Ram, Portable","You can use a portable ram to break down doors. When doing so, you gain a +4 bonus on the Strength check. One other character can help you use the ram, giving you advantage on this check.","Adventuring Gear",4.00,35),
("Rations (1 day)","Rations consist of dry foods suitable for extended travel, including jerky, dried fruit, hardtack, and nuts.","Adventuring Gear",0.50,2),
("Robes",Null,"Adventuring Gear",1.00,4),
("String (10 feet)",Null,"Adventuring Gear",0.00,0),
("Rope, Hempen (50 feet)","Rope, whether made of hemp or silk, has 2 hit points and can be burst with a DC 17 Strength check. ","Adventuring Gear",1.00,10),
("Rope, Silk (50 feet)","Rope, whether made of hemp or silk, has 2 hit points and can be burst with a DC 17 Strength check. ","Adventuring Gear",10.00,5),
("Sack",Null,"Adventuring Gear",0.01,0.5),
("Scale, Merchant's","A scale includes a small balance, pans, and a suitable assortment of weights up to 2 pounds. With it, you can measure the exact weight of small objects, such as raw precious metals or trade goods, to help determine their worth.","Adventuring Gear",5.00,3),
("Sealing Wax",Null,"Adventuring Gear",0.50,Null),
("Shovel",Null,"Adventuring Gear",2.00,5),
("Signal Whistle",Null,"Adventuring Gear",0.05,Null),
("Signet Ring",Null,"Adventuring Gear",5.00,Null),
("Soap",Null,"Adventuring Gear",0.02,Null),
("Spellbook","Essential for wizards, a spellbook is a leather-bound tome with 100 blank vellum pages suitable for recording spells.","Adventuring Gear",50.00,3),
("Spikes, Iron (10)",Null,"Adventuring Gear",1.00,5),
("Spyglass","Objects viewed through a spyglass are magnified to twice their size.","Adventuring Gear",1000.00,1),
("Tent, TwoNullPerson","A simple and portable canvas shelter, a tent sleeps two.","Adventuring Gear",2.00,20),
("Tinderbox","This small container holds flint, fire steel, and tinder (usually dry cloth soaked in light oil) used to kindle a fire. Using it to light a torchNullor anything else with abundant, exposed fuelNulltakes an action. Lighting any other fire takes 1 minute.","Adventuring Gear",0.50,1),
("Torch","A torch burns for 1 hour, providing bright light in a 20-foot radius and dim light for an additional 20 feet. If you make a melee attack with a burning torch and hit, it deals 1 fire damage.","Adventuring Gear",0.01,1),
("Vial",Null,"Adventuring Gear",1.00,Null),
("Waterskin",Null,"Adventuring Gear",0.20,5),
("Whetstone",Null,"Adventuring Gear",0.01,1),
("Arrow","Arrows are used with a bow to make a ranged attack.","Ammunition",0.05,0.05),
("Blowgun Needle (50)","Blowgun needles are used with a blowgun to make a ranged attack.","Ammunition",2,0.02),
("Crossbow Bolt","Crossbow bolts are used with a crossbow to make a ranged attack.","Ammunition",0.05,0.05),
("Sling Bullet (5)","Sling bullets are used with a sling to make a ranged attack.","Ammunition",0.01,0.075),
("Crystal","An arcane focus is a special itemNull an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.","Arcane Focus",10.00,1),
("Orb","An arcane focus is a special item-an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.","Arcane Focus",20.00,3),
("Rod","An arcane focus is a special item-an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.","Arcane Focus",1.00,2),
("Staff","An arcane focus is a special item-an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.","Arcane Focus",5.00,4),
("Wand","An arcane focus is a special item-an orb, a crystal, a rod, a specially constructed staff, a wand-like length of wood, or some similar item designed to channel the power of arcane spells. A sorcerer, warlock, or wizard can use such an item as a spellcasting focus.","Arcane Focus",10.00,1),
("Sprig of Mistletoe","A druidic focus might be a sprig of mistletoe or holly, a wand or scepter made of yew or another special wood, a staff drawn whole out of a living tree, or a totem object incorporating feathers, fur, bones, and teeth from sacred animals. A druid can use such an object as a spellcasting focus.","Druidic Focus",1.00,Null),
("Totem","A druidic focus might be a sprig of mistletoe or holly, a wand or scepter made of yew or another special wood, a staff drawn whole out of a living tree, or a totem object incorporating feathers, fur, bones, and teeth from sacred animals. A druid can use such an object as a spellcasting focus.","Druidic Focus",1.00,Null),
("Wooden Staff","A druidic focus might be a sprig of mistletoe or holly, a wand or scepter made of yew or another special wood, a staff drawn whole out of a living tree, or a totem object incorporating feathers, fur, bones, and teeth from sacred animals. A druid can use such an object as a spellcasting focus.","Druidic Focus",5.00,4),
("Yew Wand","A druidic focus might be a sprig of mistletoe or holly, a wand or scepter made of yew or another special wood, a staff drawn whole out of a living tree, or a totem object incorporating feathers, fur, bones, and teeth from sacred animals. A druid can use such an object as a spellcasting focus.","Druidic Focus",10.00,1),
("Amulet","A holy symbol is a representation of a god or pantheon. It might be an amulet depicting a symbol representing a deity, the same symbol carefully engraved or inlaid as an emblem on a shield, or a tiny box holding a fragment of a sacred relic. A cleric or paladin can use a holy symbol as a spellcasting focus. To use the symbol in this way, the caster must hold it in hand, wear it visibly, or bear it on a shield.","Holy Symbol",5.00,1),
("Emblem","A holy symbol is a representation of a god or pantheon. It might be an amulet depicting a symbol representing a deity, the same symbol carefully engraved or inlaid as an emblem on a shield, or a tiny box holding a fragment of a sacred relic. A cleric or paladin can use a holy symbol as a spellcasting focus. To use the symbol in this way, the caster must hold it in hand, wear it visibly, or bear it on a shield.","Holy Symbol",5.00,Null),
("Reliquary","A holy symbol is a representation of a god or pantheon. It might be an amulet depicting a symbol representing a deity, the same symbol carefully engraved or inlaid as an emblem on a shield, or a tiny box holding a fragment of a sacred relic. A cleric or paladin can use a holy symbol as a spellcasting focus. To use the symbol in this way, the caster must hold it in hand, wear it visibly, or bear it on a shield.","Holy Symbol",5.00,2);

INSERT INTO background_features(background_feat_name,feat_description)
VALUES
("City Secrets","You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow."),
("Shelter of the Faithful","As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity. You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells. Those who share your religion will support you (but only you) at a modest lifestyle. You might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there. This could be the temple where you used to serve, if you remain on good terms with it, or a temple where you have found a new home. While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple."),
("False Identity","You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona. Additionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy."),
("Criminal Contact","You have a reliable and trustworthy contact who acts as your liaison to a network of other criminals. You know how to get messages to and from your contact, even over great distances; specifically, you know the local messengers, corrupt caravan masters, and seedy sailors who can deliver messages for you."),
("Rustic Hospitality","Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you."),
("Guild Membership","As an established and respected member of a guild, you can rely on certain benefits that membership provides. Your fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings. Guilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful political figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild’s coffers. You must pay dues of 5 gp per month to the guild. If you miss payments, you must make up back dues to remain in the guild’s good graces."),
("Discovery","The quiet seclusion of your extended hermitage gave you access to a unique and powerful discovery. The exact nature of this revelation depends on the nature of your seclusion. It might be a great truth about the cosmos, the deities, the powerful beings of the outer planes, or the forces of nature. It could be a site that no one else has ever seen. You might have uncovered a fact that has long been forgotten, or unearthed some relic of the past that could rewrite history. It might be information that would be damaging to the people who or consigned you to exile, and hence the reason for your return to society."),
("Position of Privilege","Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to."),
("Retainers","If your character has a noble background, you may select this background feature instead of Position of Privilege. You have the service of three retainers loyal to your family. These retainers can be attendants or messengers, and one might be a majordomo. Your retainers are commoners who can perform mundane tasks for you, but they do not fight for you, will not follow you into obviously dangerous areas (such as dungeons), and will leave if they are frequently endangered or abused."),
("Wanderer","You have an excellent memory for maps and geography, and you can always recall the general layout of terrain, settlements, and other features around you. In addition, you can find food and fresh water for yourself and up to five other people each day, provided that the land offers berries, small game, water, and so forth."),
("Researcher","When you attempt to learn or recall a piece of lore, if you do not know that information, you often know where and from whom you can obtain it. Usually, this information comes from a library, scriptorium, university, or a sage or other learned person or creature. Your DM might rule that the knowledge you seek is secreted away in an almost inaccessible place, or that it simply cannot be found. Unearthing the deepest secrets of the multiverse can require an adventure or even a whole campaign"),
("Ship’s Passage","When you need to, you can secure free passage on a sailing ship for yourself and your adventuring companions. You might sail on the ship you served on, or another ship you have good relations with (perhaps one captained by a former crewmate). Because you’re calling in a favor, you can’t be certain of a schedule or route that will meet your every need. Your Dungeon Master will determine how long it takes to get where you need to go. In return for your free passage, you and your companions are expected to assist the crew during the voyage."),
("Military Rank","You have a military rank from your career as a soldier. Soldiers loyal to your former military organization still recognize your authority and influence, and they defer to you if they are of a lower rank. You can invoke your rank to exert influence over other soldiers and requisition simple equipment or horses for temporary use. You can also usually gain access to friendly military encampments and fortresses where your rank is recognized."),
("City Secrets","You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow.");

INSERT INTO tools(tool_name, cost,weight,tool_category)
VALUES
("Alchemists Supplies",50.00,8,"Artisans Tools"),
("Brewers Supplies",20.00,9,"Artisans Tools"),
("Calligraphers Supplies",10.00,5,"Artisans Tools"),
("Carpenters Tools",8.00,6,"Artisans Tools"),
("Cartographers Tools",15.00,6,"Artisans Tools"),
("Cobblers Tools",5.00,5,"Artisans Tools"),
("Cooks Utensils",1.00,8,"Artisans Tools"),
("Glassblowers Tools",30.00,5,"Artisans Tools"),
("Jewelers Tools",25.00,2,"Artisans Tools"),
("Leatherworkers Tools",5.00,5,"Artisans Tools"),
("Masons Tools",10.00,8,"Artisans Tools"),
("Painters Supplies",10.00,5,"Artisans Tools"),
("Potters Tools",10.00,3,"Artisans Tools"),
("Smiths Tools",20.00,8,"Artisans Tools"),
("Tinkers Tools",50.00,10,"Artisans Tools"),
("Weavers Tools",1.00,5,"Artisans Tools"),
("Woodcarvers Tools",1.00,5,"Artisans Tools"),
("Gaming Set",null,Null,"Gaming Set"),
("Musical Instrument",Null,null,"Musical Instrument"),
("Disguise Kit",25.00,3,"Miscellaneous"),
("Forgery Kit",15.00,5,"Miscellaneous"),
("Herbalism Kit",5.00,3,"Miscellaneous"),
("Navigators Tools",25.00,2,"Miscellaneous"),
("Poisoners Kit",50.00,2,"Miscellaneous"),
("Thieves Tools",25.00,1,"Miscellaneous"),
("Vehicles (Land)",null,null,"Miscellaneous"),
("Vehicles (Water)",null,null,"Miscellaneous");

INSERT INTO packs(pack_name, description, cost,weight)
VALUES
("Burglar’s Pack","Includes a backpack, a bag of 1,000 ball bearings, 10 feet of string, a bell, 5 candles, a crowbar, a hammer, 10 pitons, a hooded lantern, 2 flasks of oil, 5 days rations, a tinderbox, and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.",16,10),
("Diplomat’s Pack","Includes a chest, 2 cases for maps and scrolls, a set of fine clothes, a bottle of ink, an ink pen, a lamp, 2 flasks of oil, 5 sheets of paper, a vial of perfume, sealing wax, and soap.",39,10),
("Dungeoneer’s Pack","Includes a backpack, a crowbar, a hammer, 10 pitons, 10 torches, a tinderbox, 10 days of rations, and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.",12,10),
("Entertainer’s Pack","Includes a backpack, a bedroll, 2 costumes, 5 candles, 5 days of rations, a waterskin, and a disguise kit.",40,10),
("Explorer’s Pack","Includes a backpack, a bedroll, a mess kit, a tinderbox, 10 torches, 10 days of rations, and a waterskin. The pack also has 50 feet of hempen rope strapped to the side of it.",10,10),
("Priest’s Pack","Includes a backpack, a blanket, 10 candles, a tinderbox, an alms box, 2 blocks of incense, a censer, vestments, 2 days of rations, and a waterskin.",19,10),
("Scholar’s Pack","Includes a backpack, a book of lore, a bottle of ink, an ink pen, 10 sheets of parchment, a little bag of sand, and a small knife.",40,10);

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

-- after pop skills
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


create view Items as
select 'Gear' as category, gear_id as item_id , gear_name as item_name, weight, cost
from Gear
Union
select 'Tool' as category, tool_id, tool_name, weight,cost
from Tools
Union
select 'Weapon' as category, weapon_id, weapon_name, weight, cost
from Weapons
union
select 'Armor' as category, armor_id, armor_name, weight,cost
from armor
union
select 'Pack' as category, pack_id, pack_name, weight,cost
from packs;


-- users character
CREATE TABLE User_Character(
	user_id int(15) not null,
    char_id int(15) not null auto_increment,
    char_name varchar(100),
    char_exp int(15),
    char_race_id int(15),
    char_class_id int(15),
    char_background_id int(15),
    char_alignment_id int(15),
	char_bonds text(50000),
    char_personality text(50000),
    char_ideal text(50000),
	FOREIGN KEY (char_background_id) REFERENCES Backgrounds(background_id),
	FOREIGN KEY (char_class_id) REFERENCES classes(class_id),
    FOREIGN KEY (char_race_id) REFERENCES races(race_id),
    primary key(char_id)
);


CREATE TABLE IF NOT EXISTS char_proficency(
	char_id INT(15) NOT NULL,
	prof_id INT(15) NOT NULL,
    category varchar(100),
	FOREIGN KEY (char_id) REFERENCES user_character(char_id),
	FOREIGN KEY (skill_id) REFERENCES Skills(skill_id),
	UNIQUE (user_id, skill_id)
);

CREATE TABLE IF NOT EXISTS char_languages(
	char_id INT(15) NOT NULL,
	language_id INT(15) NOT NULL,
	FOREIGN KEY (char_id) REFERENCES user_character(char_id),
	FOREIGN KEY (language_id) REFERENCES languages(language_id),
	UNIQUE (user_id, language_id)
);

CREATE TABLE char_inventory(
char_id INT(15) NOT NULL,
item_id INT(15) NOT NULL,

FOREIGN KEY (char_id) REFERENCES user_character(char_id),
FOREIGN KEY (item_id) REFERENCES items(item_id),
UNIQUE (char_id, item_id)
);
ALTER TABLE packs
ADD COLUMN description TEXT(5000) NULL AFTER cost;