-- Eye tentacle correct model, tentacle portal change back to right model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15882 WHERE  `entry`=15904;
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15788 WHERE  `entry`=15726;

-- SQL from muggle, jubling corrected model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`='14938' WHERE (`entry`='14878') limit 1;

-- Remove Spotted Yellowtails from vendors, adjust stock and respawn timer of Peacebloom for some vendors
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1678') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1684') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='2834') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3086') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3178') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3497') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3540') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4200') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4221') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4305') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4307') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='6727') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='7943') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='8931') AND (`item`='6887') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3' WHERE (`entry`='1313') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3490') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3548') AND (`item`='2447') limit 1;

/********* Dire Maul Arena, rares SQL. COMMENTED OUT ADDING THEM FOR NOW **********/
-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=14382;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=10169;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=10807;

-- add to world, SKIP THIS FOR NOW SINCE HERBS WON'T WORK
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3493, 11447, 1, 0, 0, -3706.7, 1091.58, 131.969, 3.07796, 25, 5, 0, 60811, 0, 0, 1);
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3494, 11497, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 74479, 0, 0, 1);
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3495, 11498, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 59085, 0, 0, 1);

-- skarr weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11498, 3855, 0, 0);

-- add scripts
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4250, `speed_walk`=1, `rank`=2, `baseattacktime`=2000, `AIName`='', `ScriptName`='boss_mushgog' WHERE `entry`=11447;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4791, `rank`=2, `baseattacktime`=1800, `AIName`='', `equipment_id`=11498, `ScriptName`='boss_skarr_the_unbreakable' WHERE `entry`=11498;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=24340, `maxmana`=24340, `armor`=3745, `rank`=2,`speed_run`=1.08, `rank`=2, `baseattacktime`=1600, `AIName`='', `ScriptName`='boss_the_razza' WHERE `entry`=11497;

-- add pool
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2108, 1, 'Dire Maul Arena - Rare Spawns');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3494, 2108, 0, 'The Razza');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3495, 2108, 0, 'Skarr the Unbreakable');

REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720209, 'This will teach you to lay off the herb, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mushgog - Say Kill');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720210, 'Can that be the Razza down there in the Maul? This is going to be exciting!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 22, 'Griniblix - The Razza Spawn Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720211, 'Woohoo! They are into it now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 5, 'Griniblix - The Razza Aggro Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720212, 'It\'s time for the main event! Skarr the Unbreakable is in the maul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 22, 'Griniblix - Skarr Spawn Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720213, 'Looks like Skarr has found his next challenger! Wouldn\'t want to be in that poor fool\'s shoes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 5, 'Griniblix - Skarr Aggro Yell');

-- add the loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11498, 996304, 100, 0, -996304, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11498, 1973, 0.12, 0, 0, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11497, 996304, 100, 0, -996304, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11447, 996304, 100, 0, -996304, 1, 0, 0, 0);

-- new ref. loot group, almost same as 996302 but no orb of deception
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 1203, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 2564, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 4696, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 5266, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 6622, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 7734, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 9402, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 11302, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13000, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13001, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13002, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13003, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13004, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13007, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13008, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13009, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13013, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13015, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13030, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13036, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13040, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13047, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13053, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13060, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13066, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13067, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13070, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13072, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13073, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13075, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13077, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13083, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13085, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13091, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13096, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13107, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13111, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13113, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13116, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13118, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13120, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13123, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13125, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13126, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13130, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13133, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13135, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13144, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13146, 0, 1, 1, 1, 0, 0, 0);

/***********  A King's Tribute quest chain, quest end RP **********/
-- waterlogged envelope 5 sec respawn instead of 5min
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=5 WHERE  `guid`=14656;

-- add script for Sully Balloo's Letter
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=637 WHERE  `entry`=637;

-- delete old sql so we can run this more than once
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=637 LIMIT 6;

REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 0, 0, 2, 0, 0, 0, 0, 2000006016, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Text Emote on Quest Complete');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 5, 0, 0, 0, 0, 0, 0, 2000006017, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Say on Quest Complete');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 5, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Emote on Quest Complete');

REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006016, 'Sara Balloo reads Sully\'s letter page by page.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006017, 'This isn\'t fair! My dearest Sully! Come back to me! No, $N! Why did you bring me such news!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- add script for Sara Balloo's Plea
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=683 WHERE  `entry`=683;

-- delete old sql so we can run this more than once
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=683 LIMIT 2;
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (683, 0, 0, 2, 0, 0, 0, 0, 2000006018, 0, 0, 0, 0, 0, 0, 0, 'King Magni Bronzebeard Text Emote on Quest Complete');
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006018, 'King Magni Bronzebeard carefully studies Sara Balloo\'s note and lets out a long, solemn sigh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- scripted A King's Tribute (2)
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_grand_mason_marblesten' WHERE  `entry`=2790;

REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720214, 'I\'ll get to work right away, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 5, 'Marblesten - Say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720215, 'There you have it! The King should be quite pleased, if I do say so myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'Marblesten - Say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720216, 'The King\'s guards should be along shortly to pick up the Memorial. In the mean time, come join me upstairs and let\'s finish our little chat, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'Marblesten - Say 3');

-- hitbox for ouro
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2.2, `combat_reach`=2.3 WHERE  `modelid`=15509;
-- update dirt mounds for ouro encounter
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=63, `maxlevel`=63, `minhealth`=999999, `maxhealth`=999999,`faction_A`=14, `faction_H`=14,`speed_run`=0.75, `ScriptName`='mob_dirt_mound' WHERE  `entry`=15712;

-- pooling for the rare  spawn Lady Vespia (Ashenvale)
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2109, 1, 'Lady Vespia - Rare Spawns');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (32384, 2109, 0, 'Lady Vespia');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (51887, 2109, 0, 'Lady Vespia');

-- wp for Scarlet High Clerist(wpl rare)
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 1, 2690.82, -1953.37, 107.239, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.690716, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 2, 2688.7, -1948.48, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55858, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 3, 2690.63, -1944.29, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.836015, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 4, 2693.44, -1942.4, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.529709, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 5, 2697.19, -1941.65, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.18458, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 6, 2699.47, -1942.38, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.8822, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 7, 2702.18, -1944.55, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.26567, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 8, 2703.62, -1947.61, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0811, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 9, 2703.44, -1949.99, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.51169, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 10, 2702.01, -1953.02, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.0915, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 11, 2699.83, -1954.81, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72237, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 12, 2697.6, -1955.66, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35323, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 13, 2695.11, -1955.49, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.93697, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 14, 2691.9, -1953.68, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.47358, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 15, 2691.04, -1953, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.32574, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 16, 2689.92, -1953.89, 107.239, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.91086, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 17, 2700.96, -1945.14, 101.656, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.710363, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 18, 2694.77, -1950.19, 105.542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89123, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 19, 2690.37, -1954.28, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89123, 0, 0);

-- stats
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=67, `faction_H`=67, `speed_walk`=0.95, `rank`=2, `baseattacktime`=1500, `equipment_id`=18390 WHERE  `entry`=1839;

-- move to right spot and wp movement
REPLACE INTO `zp_mangosd`.`creature` VALUES (49764, 1839, 0, 0, 0, 2690.57, -1953.58, 107.239, 0.612176, 72000, 0, 0, 7635, 2620, 0, 2);

-- loot 
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24036;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24029;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24024;
-- add real loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1839, 24020, 100, 1, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1839, 996203, 100, 1, -996203, 1, 0, 0, 0);

-- add weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (18390, 1207, 0, 0);

-- Scarlet Hunter, should not summon a pet, they're already out in the world
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=183102;

-- Slaves in BRD shouldn't be so noisy anymore
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_chance`=10 WHERE  `id`=1011601;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_chance`=10 WHERE  `id`=1011602;

/******** Scarlet Executioner (rare wpl) ************/
-- delete shit
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1841 AND `item`=24036;

-- add real loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 24020, 100, 1, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 996203, 100, 1, -996203, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 24033, 100, 1, -24033, 1, 0, 0, 0);

-- stats
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=67, `faction_H`=67, `speed_walk`=0.95, `rank`=2, `baseattacktime`=1800, `equipment_id`=18410 WHERE  `entry`=1841;

-- weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (18410, 3191, 0, 0);

-- wp movement
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=49764;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 1, 2827.47, -1550.89, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.66054, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 2, 2827.81, -1553.61, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67486, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 3, 2824.65, -1554.53, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.506, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 4, 2827.13, -1553.37, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.439016, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 5, 2830.23, -1555.78, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.66192, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 6, 2833.8, -1557.25, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026682, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 7, 2835.33, -1557.21, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026682, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 8, 2837.06, -1560.31, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10428, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 9, 2835.84, -1556.93, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94698, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 10, 2837.8, -1555.75, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.541119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 11, 2839.36, -1551.43, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 12, 2839.27, -1549.48, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75849, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 13, 2843.05, -1548.04, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.352624, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 14, 2839.57, -1549.27, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43924, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 15, 2838.01, -1547.3, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23365, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 16, 2834.64, -1545.52, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7795, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 17, 2832.03, -1545.55, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2743, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 18, 2830.66, -1542.05, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.96269, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 19, 2831.8, -1545.46, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.03359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 20, 2829.33, -1547.27, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.76911, 0, 0);

