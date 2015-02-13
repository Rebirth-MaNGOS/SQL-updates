/************* Updated timers for Pyrewood Village event *****************/
UPDATE `zp_mangosd`.`game_event` SET `length`=900 WHERE  `entry`=50;
UPDATE `zp_mangosd`.`game_event` SET `length`=540 WHERE  `entry`=51;

/****************** Gordok Bushwacker Event *******************/
-- Add right spawn point
UPDATE `zp_mangosd`.`event_scripts` SET `x`=508.011, `y`=535.82, `z`=27.91, `o`=0.07, `comments`= 'Spawn Gordok Bushwacker' WHERE `id`=8175 LIMIT 1;
-- Delete mob that shouldn't be there
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=125637;

UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.11286, `speed_run`=1.43, `MovementType`=2 WHERE  `entry`=14351;

REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (1, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Make Creature Run');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (2, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Make Creature Walk');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (3, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop Movement');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (4, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Creature');
-- Waypoints
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 1, 507, 535, 27.91, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 2, 586, 535.8, 27.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 3, 587, 576, -4.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 4, 597, 601.25, -4.75, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 5, 581, 571.18, -4.75, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 6, 551.87, 604, -4.75, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 7, 546, 584, -4.75, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 8, 581, 571.18, -4.75, 4000, 2, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 9, 576, 595, -4.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 10, 555, 601, -4.75, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 11, 577, 577, -4.75, 900000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 12, 535, 591, -4.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (14351, 13, 477.91, 591, -25.4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Dire Maul West Instance port, no longer face the wrong way when entering
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=3.14 WHERE  `id`=3186;

-- Woo Ping, Weapon master added missing text for bow + guns, SW
REPLACE INTO `zp_mangosd`.`npc_text` VALUES (10748, 'Ilyenia Moonfire, the night elf weapon master who resides at the Warrior\'s Terrace in Darnassus, can train you in the use of bows.', 'NULL', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`npc_text` VALUES (10751, 'Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.', 'NULL', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Fiora Longears, moved to pre-tbc location(Theramore)
REPLACE INTO zp_mangosd.`creature` VALUES (37087, 4456, 1, 4691, 0, -3612.95, -4463.9, 13.6223, 2.80631, 275, 0, 0, 600000, 0, 0, 0);

-- Update text for Fiora Longears since she's no longer in auberdine
UPDATE zp_mangosd.`quest_template` SET `Objectives`='Speak with Fiora Longears on the docks at Theramore in Dustwallow Marsh.' WHERE (`entry`='1132');
UPDATE zp_mangosd.`quest_template` SET `Details`='Oh, to be at sea once again! To feel the kiss of the wind, and to have the waves rock me like my blessed mother, long ago!$B$BOh, I wish I had your fortune, good $c, for I see the sea in your future!$B$BIt\'s my job to tell eager souls of the land of Kalimdor, the land of opportunity! If you\'re willing to try your luck across the sea, then take a ship from here to the lovely port of Theramore. Speak 
there with my partner, the elf, Fiora Longears.$B$BShe\'ll start you on your Kalimdor adventure!' WHERE (`entry`='1132');

-- AQ20 + 40, no longer facing the wrong way when entering/exiting
-- AQ20
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=2.697 WHERE  `id`=4008;
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=5.7967 WHERE  `id`=4006;
-- AQ40
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=0.958183 WHERE  `id`=4010;
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.12491 WHERE  `id`=4012;

-- Faction for Spawn of Marli
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=28, `faction_H`=28 WHERE  `entry`=15041;

/*********** Lady Hederine AI + loot ***************/
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=10201;

REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (1020101, 10201, 0, 0, 100, 1, 8000, 13000, 17000, 30000, 11, 7645, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lady Hederine - Cast Dominate Mind');
REPLACE INTO zp_mangosd.`creature_loot_template` VALUES (10201, 10267, 44, 0, 1, 1, 0, 0, 0);

-- Lord Valthalak armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4861 WHERE  `entry`=16042;

/*************** Tome of Valor, quest ******************/
-- add missing text
REPLACE INTO zp_scriptdevzerod.`script_texts` VALUES (-1000099, 'You won\'t ruin my lands, you scum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Daphne Stillwell Yell');
REPLACE INTO zp_scriptdevzerod.`script_texts` VALUES (-1001000, 'Kill them! Take the farm!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Defias Raider Tome of Valor');

-- remove random mob inside dwarven inn in SW
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=54621;

/************ Ol' Emma, Npc SW *****************/
-- add texts/correct
UPDATE `zp_mangosd`.`creature_ai_texts` SET `content_default`='Where\'s the water, Emma? Get the water, Emma? If\'n it weren\'t fer me, that lot wouldn\'t know what water looks like.' WHERE  `entry`=-426;
REPLACE INTO zp_mangosd.`creature_ai_texts` VALUES (-421, 'Deja vu. For a moment I thought I was back home... before the plague...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '3520');

-- add chanced missing text
REPLACE INTO zp_mangosd.`creature_ai_scripts` VALUES (352002, 3520, 1, 0, 100, 33, 0, 0, 180000, 180000, 1, -423, -424, -425, 1, -421, 0, 0, 0, 0, 0, 0, 'Ol\' Emma - Random Say 1 OOC');

/************* Emerald Dragons hitbox ***************/
-- Taerar
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=6 WHERE  `modelid`=15363;

-- Ysondre
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=6 WHERE  `modelid`=15364;

-- Lethon
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=6 WHERE  `modelid`=15365;

-- Emeriss
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=6 WHERE  `modelid`=15366;

-- Onyxia Whelps no longer skinnable
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=0 WHERE  `entry`=11262;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=0 WHERE  `entry`=100001;

/******************* Guardians of the Altar ********************/
-- Add AI scripts
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_ranshalla' WHERE  `entry`=10300;
UPDATE `zp_mangosd`.`gameobject_template` SET `ScriptName`='go_elune_fire' WHERE  `entry`=177417;
UPDATE `zp_mangosd`.`gameobject_template` SET `ScriptName`='go_elune_fire' WHERE  `entry`=177404;

-- Add Gem
UPDATE `zp_mangosd`.`gameobject_template` SET `size`=5 WHERE  `entry`=177414;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712705, 177414, 1, 5514.26, -4917.21, 847.759, 5.59888, 0, 0, 0.335514, -0.942035, -90, 100, 1);

-- lights
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712716, 177415, 1, 5506.72, -4900.74, 848.771, 3.70608, 0, 0, 0.960433, -0.278511, -115, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712715, 177415, 1, 5527.94, -4913.11, 843.228, 2.19418, 0, 0, 0.889885, 0.456186, -115, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712714, 177415, 1, 5508.66, -4931.78, 845.809, 6.2704, 0, 0, 0.00639187, -0.99998, -115, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712717, 177415, 1, 5499.47, -4912.69, 850.103, 4.57787, 0, 0, 0.753033, -0.657983, -115, 100, 1);

-- Priestess of Elune
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=35, `faction_H`=35 WHERE  `entry`=12116;
-- Guardian of Elune
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=35, `faction_H`=35 WHERE  `entry`=12140;

-- Respawn updated, Ranshalla
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=120 WHERE  `guid`=41759;

-- Add all text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000807, 'This blue light... It\'s strange. What do you think it means?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_ENTER_OWL_THICKET');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000808, 'We\'ve found it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_REACH_TORCH_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000809, 'Please, light this while I am channeling.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_REACH_TORCH_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000810, 'This is the place. Let\'s light it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_REACH_TORCH_3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000811, 'Let\'s find the next one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_AFTER_TORCH_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000812, 'We must continue on now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_AFTER_TORCH_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000813, 'It is time for the final step; we must activate the altar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_REACH_ALTAR_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000814, 'I will read the words carved into the stone, and you must find a way to light it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_REACH_ALTAR_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000815, 'The altar is glowing! We have done it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_RANSHALLA_ALTAR_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000816, 'What is happening? Look!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_RANSHALLA_ALTAR_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000817, 'It has been many years...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000818, 'Who has disturbed the altar of the goddess?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000819, 'Please, priestesses, forgive us for our intrusion. We do not wish any harm here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_RANSHALLA_ALTAR_5');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000820, 'We only wish to know why the wildkin guard this area...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_RANSHALLA_ALTAR_6');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000821, 'Enu thora\'serador. This is a sacred place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_7');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000822, 'We will show you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_8');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000823, 'Look above you; thara dormil dorah...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_9');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000824, 'This gem once allowed direct communication with Elune, herself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_10');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000825, 'Through the gem, Elune channeled her infinite wisdom...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_11');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000826, 'Realizing that the gem needed to be protected, we turned to the goddess herself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_12');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000827, 'Soon after, we began to have visions of a creature... A creature with the feathers of an owl, but the will and might of a bear...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_13');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000828, 'It was on that day that the wildkin were given to us. Fierce guardians, the goddess assigned the wildkin to protect all of her sacred places.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_14');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000829, 'Anu\'dorini Talah, Ru shallora enudoril.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Voice of Elune SAY_VOICE_ALTAR_15');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000830, 'But now, many years later, the wildkin have grown more feral, and without the guidance of the goddess, they are confused...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_16');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000831, 'Without a purpose, they wander... But many find their way back to the sacred areas that they once were sworn to protect.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_17');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000832, 'Wildkin are inherently magical; this power was bestowed upon them by the goddess.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_18');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000833, 'Know that wherever you might find them in the world, they are protecting something of importance, as they were entrusted to do so long ago.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_19');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000834, 'Please, remember what we have shown you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_20');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000835, 'Farewell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Priestess of Elune SAY_PRIESTESS_ALTAR_21');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000836, 'Thank you for you help, $n. I wish you well in your adventures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_QUEST_END_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000837, 'I want to stay here and reflect on what we have seen. Please see Erelas and tell him what we have learned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_QUEST_END_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000838, '%s begins chanting a strange spell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Ranshalla EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000839, 'Remember, I need your help to properly channel. I will ask you to aid me several times in our path, so please be ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Ranshalla SAY_QUEST_START');

-- Waypoints
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 1, 5728.81, -4801.15, 778.18, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 2, 5730.22, -4818.34, 777.11, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 3, 5728.12, -4835.76, 778.15, 1000, 'SAY_ENTER_OWL_THICKET');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 4, 5718.85, -4865.62, 787.56, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 5, 5697.13, -4909.12, 801.53, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 6, 5684.2, -4913.75, 801.6, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 7, 5674.67, -4915.78, 802.13, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 8, 5665.61, -4919.22, 804.85, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 9, 5638.22, -4897.58, 804.97, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 10, 5632.67, -4892.05, 805.44, 0, 'Cavern 1 - EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 11, 5664.58, -4921.84, 804.91, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 12, 5684.21, -4943.81, 802.8, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 13, 5724.92, -4983.69, 808.25, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 14, 5753.39, -4990.73, 809.84, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 15, 5765.62, -4994.89, 809.42, 0, 'Cavern 2 - EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 16, 5724.94, -4983.58, 808.29, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 17, 5699.61, -4989.82, 808.03, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 18, 5686.8, -5012.17, 807.27, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 19, 5691.43, -5037.43, 807.73, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 20, 5694.24, -5054.123, 807.9, 0, 'Cavern 3 - EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 21, 5686.88, -5012.18, 807.23, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 22, 5664.94, -5001.12, 807.78, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 23, 5647.12, -5002.84, 807.54, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 24, 5629.23, -5014.88, 807.94, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 25, 5611.26, -5025.62, 808.36, 0, 'Cavern 4 - EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 26, 5647.13, -5002.85, 807.57, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 27, 5641.12, -4973.22, 809.39, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 28, 5622.97, -4953.58, 811.12, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 29, 5601.52, -4939.49, 820.77, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 30, 5571.87, -4936.22, 831.35, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 31, 5543.23, -4933.67, 838.33, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 32, 5520.86, -4942.05, 843.02, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 33, 5509.15, -4946.31, 849.36, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 34, 5498.45, -4950.08, 849.98, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 35, 5485.78, -4963.4, 850.43, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 36, 5467.92, -4980.67, 850.94, 0, 'Cavern 5 - EMOTE_CHANT_SPELL');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 37, 5498.68, -4950.45, 849.96, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 38, 5518.68, -4921.94, 844.65, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 39, 5517.66, -4920.82, 845.12, 0, 'SAY_REACH_ALTAR_1');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 40, 5518.87, -4911.99, 845.49, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 41, 5511.31, -4913.82, 847.17, 5000, 'light the spotlights');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 42, 5511.31, -4913.82, 847.17, 0, 'start altar cinematic - SAY_RANSHALLA_ALTAR_2');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 43, 5509.49, -4922.29, 846.33, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 44, 5517.66, -4920.82, 845.12, 0, 'escort paused');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (10300, 45, 5510, -4921, 845, 0, 'Make sure Ranshalla doesn\'t despawn because getting to last WP');

-- Shade of Taerar misc updates
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=66620, `maxhealth`=66620, `armor`=4351, `speed_run`=1.8, `scale`=0.8, `minmana`=0, `maxmana`=0, `maxgold`=0 WHERE `entry`=15302;

-- Demented druid hp and dream fog speed + drop no gold
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=0.75, `maxgold`=0 WHERE  `entry`=15224;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=2441, `maxhealth`=2441, `armor`=1342 WHERE  `entry`=15260;

-- SQL for setting the correct number of starting players for AV.
UPDATE `zp_mangosd`.`battleground_template` SET `MinPlayersPerTeam`=20 WHERE  `id`=1;

-- Adjusted damage for Lethon
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=1435, `maxdmg`=1785 WHERE  `entry`=14888;

/***************** precarious-predicament, quest ******************/
-- Add AI
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_grark_lorkrub' WHERE  `entry`=9520;

-- Waypoints
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 1, -7699.62, -1444.29, 139.87, 4000, 'SAY_START');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 2, -7670.67, -1458.25, 140.74, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 3, -7675.26, -1465.58, 140.74, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 4, -7685.84, -1472.66, 140.75, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 5, -7700.08, -1473.41, 140.79, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 6, -7712.55, -1470.19, 140.79, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 7, -7717.27, -1481.7, 140.72, 5000, 'SAY_PAY');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 8, -7726.23, -1500.78, 132.99, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 9, -7744.61, -1531.61, 132.69, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 10, -7763.08, -1536.22, 131.93, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 11, -7815.32, -1522.61, 134.16, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 12, -7850.26, -1516.87, 138.17, 0, 'SAY_FIRST_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 13, -7850.26, -1516.87, 138.17, 3000, 'SAY_FIRST_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 14, -7881.01, -1508.49, 142.37, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 15, -7888.91, -1458.09, 144.79, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 16, -7889.18, -1430.21, 145.31, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 17, -7900.53, -1427.01, 150.26, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 18, -7904.15, -1429.91, 150.27, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 19, -7921.48, -1425.47, 140.54, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 20, -7941.43, -1413.1, 134.35, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 21, -7964.85, -1367.45, 132.99, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 22, -7989.95, -1319.12, 133.71, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 23, -8010.43, -1270.23, 133.42, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 24, -8025.62, -1243.78, 133.91, 0, 'SAY_SEC_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 25, -8025.62, -1243.78, 133.91, 3000, 'SAY_SEC_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 26, -8015.22, -1196.98, 146.76, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 27, -7994.68, -1151.38, 160.7, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 28, -7970.91, -1132.81, 170.16, 0, 'summon Searscale Drakes');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 29, -7927.59, -1122.79, 185.86, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 30, -7897.67, -1126.67, 194.32, 0, 'SAY_THIRD_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 31, -7897.67, -1126.67, 194.32, 3000, 'SAY_THIRD_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 32, -7864.11, -1135.98, 203.29, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 33, -7837.31, -1137.73, 209.63, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 34, -7808.72, -1134.9, 214.84, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 35, -7786.85, -1127.24, 214.84, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 36, -7746.58, -1125.16, 215.08, 5000, 'EMOTE_LAUGH');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 37, -7746.41, -1103.62, 215.62, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 38, -7740.25, -1090.51, 216.69, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 39, -7730.97, -1085.55, 217.12, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 40, -7697.89, -1089.43, 217.62, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 41, -7679.3, -1059.15, 220.09, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 42, -7661.39, -1038.24, 226.24, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 43, -7634.49, -1020.96, 234.3, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 44, -7596.22, -1013.16, 244.03, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 45, -7556.53, -1021.74, 253.21, 0, 'SAY_LAST_STAND');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (9520, 46, -7596.22, -1013.16, 244.03, 0, 'Grark, make sure he doesn\'t despawn');

-- Add texts
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000873, 'I know the way, insect. There is no need to prod me as if I were cattle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'grark SAY_START');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000874, 'Surely you do not think that you will get away with this incursion. They will come for me and you shall pay for your insolence.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'grark SAY_PAY');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000875, 'RUN THEM THROUGH BROTHERS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'grark SAY_FIRST_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000876, 'I doubt you will be so lucky the next time you encounter my brethren.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'grark SAY_FIRST_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000877, 'They come for you, fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'grark SAY_SEC_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000878, 'What do you think you accomplish from this, fool? Even now, the Blackrock armies make preparations to destroy your world.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'grark SAY_SEC_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000879, 'On darkest wing they fly. Prepare to meet your end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'grark SAY_THIRD_AMBUSH_START');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000880, 'The worst is yet to come!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'grark SAY_THIRD_AMBUSH_END');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000881, '%s laughs.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 11, 'grark EMOTE_LAUGH');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000882, 'Time to make your final stand, Insect.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'grark SAY_LAST_STAND');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000883, 'Kneel, Grark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'lexlort SAY_LEXLORT_1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000884, 'Grark Lorkrub, you have been charged and found guilty of treason against Horde. How you plead is unimportant. High Executioner Nuzrak, step forward.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'lexlort SAY_LEXLORT_2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000885, '%s raises his massive axe over Grark.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 27, 'nuzark EMOTE_RAISE_AXE');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000886, '%s raises his hand and then lowers it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'lexlort EMOTE_LOWER_HAND');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000887, 'End him...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'lexlort SAY_LEXLORT_3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000888, 'You, soldier, report back to Kargath at once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'lexlort SAY_LEXLORT_4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000889, '%s submits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'grark EMOTE_SUBMIT');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1000890, 'You have come to play? Then let us play!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'grark SAY_AGGRO');

-- High executioner Nuzrak add weapon
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=9538 WHERE  `entry`=9538;
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (9538, 11607, 0, 0);

-- Armor for Jeklik
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3961 WHERE  `entry`=14517;

-- Adjust text for Quest Hemet Nesingwary (ID: 5762)
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (5762, 2, 400, 28, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14542, 1, 0, 'Hemet Nesingwary', 'I have a package for an old customer of mine, a dwarf named Hemet Nesingwary.  The package took weeks to arrive, and Hemet\'s long gone by now.  He said he was going to Stranglethorn to hunt the beasts there, but he left me some money to send his delivery when I could.  $B$BHemet\'s a rich dwarf and it\'s a good idea to keep up relations with the rich ones, yeah?  So... you want to deliver the package for me?$B$BI heard Hemet has a camp in Stranglethorn, north of Grom\'gol.', 'Take Kravel\'s Crate to Hemet Nesingwary in Stranglethorn.', 'Great, my package from Koalbeard! Thank you $N. This crate holds special-gauge ammunition, and it\'ll serve us well out in the jungle!$B$BHere\'s your pay, and tell me, how is crusty old Kravel these days? Still up to no good I\'d wager...', 'Is that desert dust on your collar?$B$BHm... if my nose tells true, I\'d say it\'s not desert dust, it\'s desert salt!  Been to the Shimmering Flats, have you?', '', '', '', '', '', 14542, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 780, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Gurubashi Champion added missing spell Berserker Charge
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action2_type`=0, `action2_param1`=0, `action2_param2`=0, `comment`='Gurubashi Champion - Cast Battle Shout' WHERE  `id`=1135601;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1135604, 11356, 0, 0, 100, 3, 1000, 10000, 8000, 18000, 11, 22886, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gurubashi Champion - Cast Berserker Charge');

-- 3 drakes BWL hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2, `combat_reach`=2 WHERE  `modelid`=6377;

-- Ony Hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=5, `combat_reach`=6 WHERE  `modelid`=8570;

-- Missing AI for the Goblin Engi Trainer in Ratchet.
update zp_mangosd.creature_template set ScriptName = "npc_prof_engineering" where entry = 8738;

-- Remove the Inlaid Mithril recipe from the engineering trainer in Ratchet.
DELETE FROM zp_mangosd.npc_trainer WHERE entry = 8738 AND spell = 12909 LIMIT 1;

/****************** Should no longer face the wrong way if entering/exiting instance ***********/
-- bfd
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.4217 WHERE  `id`=259;
--brd
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=1.886 WHERE  `id`=1472;
-- BRS
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=2.202 WHERE  `id`=1470;
-- deadmines
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.618 WHERE  `id`=119;
-- deadmines exit
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=1.6681 WHERE  `id`=121;
-- Dire maul
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=2.4944 WHERE  `id`=3197;
-- gnomer
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.7186 WHERE  `id`=322;
-- gnomer backdoor
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.6181 WHERE  `id`=525;
-- maraudon
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=1.753 WHERE  `id`=3126;
-- rfd
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=1.124 WHERE  `id`=444;
--rfk
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=4.332 WHERE  `id`=242;
-- scholo
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=3.587 WHERE  `id`=2568;
-- stockades
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=3.779 WHERE  `id`=503;
-- strat ud
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=2.007 WHERE  `id`=2221;
-- ST
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=28996 WHERE  `id`=448;
-- ulda
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=1.682 WHERE  `id`=286;
-- ulda
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=3.1478 WHERE  `id`=288;
-- ulda backdoor
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=2.8996 WHERE  `id`=882;
-- ZF
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=3.088 WHERE  `id`=922;
-- SW Wizard sanctum
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_position_x`=-9016.95, `target_position_y`=885.755, `target_orientation`=5.411 WHERE  `id`=704;
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `target_orientation`=5.350132 WHERE  `id`=702;


-- Muggle's SQL
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21740', '21724', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21740', '21725', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21740', '21726', '100', '0', '1', '1', '0', '0', '0');


REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21741', '21730', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21741', '21731', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21741', '21732', '100', '0', '1', '1', '0', '0', '0');


REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21742', '21727', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21742', '21728', '100', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('21742', '21729', '100', '0', '1', '1', '0', '0', '0');


