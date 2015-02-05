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
REPLACE INTO `creature` VALUES (37087, 4456, 1, 4691, 0, -3612.95, -4463.9, 13.6223, 2.80631, 275, 0, 0, 600000, 0, 0, 0);

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
