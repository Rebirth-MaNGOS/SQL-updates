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

-- add rare Korvok, add equip and remove special drop from reference loot table(SQL from muggle)
REPLACE INTO `zp_mangosd`.`creature` VALUES ('1550', '2603', '0', '0', '0', '-1190.8', '-1958.86', '25.4792', '5.78396', '18000', '0', '0', '4295', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES ('2603', '5256', '0', '0');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24052') AND (`item`='5256') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_kovork', `armor`='1340', `AIName`='', `equipment_id`='2603', `speed_walk`='1.05', `speed_run`='0.95' WHERE (`entry`='2603');

-- Ol'Sooty, added pathing
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='8877') limit 1;
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '1', '-5718.38', '-3097.07', '322.946', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '3035010', '4.65068', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '2', '-5720.21', '-3122.21', '314.933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035011', '4.99233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '3', '-5712.19', '-3136.48', '313.718', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035012', '5.21617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '4', '-5700.46', '-3157.75', '316.471', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035013', '5.21617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '5', '-5697.52', '-3176.19', '315.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035014', '4.86431', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '6', '-5699.04', '-3192.5', '316.334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035015', '4.61927', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '7', '-5696.6', '-3204.7', '315.916', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '3035016', '4.93735', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '8', '-5689.58', '-3218.18', '318.163', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035017', '5.60494', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '9', '-5679.42', '-3217.96', '318.944', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035018', '0.044318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '10', '-5666.29', '-3210.58', '319.469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035019', '0.535192', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '11', '-5663.73', '-3200.42', '321.051', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035020', '1.32452', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '12', '-5666.14', '-3183.91', '318.223', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035021', '1.77612', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '13', '-5673.79', '-3165.53', '317.691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035022', '2.10599', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '14', '-5690.41', '-3141.59', '314.102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035023', '2.21987', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '15', '-5711.39', '-3113.18', '316.514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035024', '1.99917', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '16', '-5715.83', '-3100.87', '320.736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035025', '1.91671', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '17', '-5716.29', '-3094', '324.997', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035026', '1.61433', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '18', '-5714.59', '-3090.09', '327.467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035027', '0.913753', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '19', '-5708.83', '-3088.9', '329.229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035028', '6.07225', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '20', '-5702.85', '-3092.92', '330.405', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035029', '5.68348', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '21', '-5661.12', '-3121.7', '343.887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035030', '5.7738', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '22', '-5652.5', '-3123.65', '345.736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035031', '6.06046', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '23', '-5643.99', '-3123.54', '347.469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035032', '0.012898', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '24', '-5630.71', '-3121.55', '350.957', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035033', '0.221028', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '25', '-5621.87', '-3118.42', '355.859', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035034', '0.605873', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '26', '-5618.48', '-3111.69', '360.137', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035035', '1.13602', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '27', '-5617.1', '-3103.82', '364.709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035036', '1.80753', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '28', '-5622.84', '-3093.33', '369.542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035037', '2.22772', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '29', '-5628.02', '-3086.55', '372.739', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035038', '2.08635', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '30', '-5631.84', '-3076.48', '375.946', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035039', '1.88057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '31', '-5630.84', '-3069.01', '379.641', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035040', '1.43761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '32', '-5629.67', '-3060.25', '383.261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035041', '1.43761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '33', '-5632.53', '-3048.93', '384.672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035042', '1.98739', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '34', '-5638.86', '-3038.38', '385.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035043', '2.2827', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '35', '-5636.98', '-3030.04', '386.795', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035044', '0.641216', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '36', '-5606.52', '-3004.42', '386.882', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035045', '0.676559', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '37', '-5609.73', '-3006.69', '386.277', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '3035046', '3.77103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '38', '-5633.06', '-3026.74', '387.213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035047', '3.84171', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '39', '-5646.75', '-3029.99', '385.586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035048', '3.3744', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '40', '-5659.15', '-3034.93', '386.59', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '3035049', '3.94382', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '41', '-5647.06', '-3046.08', '386.188', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035050', '5.67011', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '42', '-5632.09', '-3058.43', '384.298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035051', '5.10855', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '43', '-5631.9', '-3069.22', '379.289', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035052', '4.62554', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '44', '-5634.13', '-3078.12', '374.778', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035053', '4.46453', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '45', '-5627.92', '-3088.92', '371.743', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035054', '5.23422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '46', '-5620.35', '-3102.07', '364.334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035055', '5.23422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '47', '-5620.03', '-3115.76', '357.826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035056', '4.23912', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '48', '-5629.09', '-3120.84', '351.625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035057', '3.49378', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '49', '-5646.88', '-3124.62', '346.905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035058', '2.95578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '50', '-5660.31', '-3120.97', '344.033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035059', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '51', '-5677.18', '-3110.23', '339.523', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035060', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '52', '-5700.95', '-3095.1', '330.656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035061', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '53', '-5710.23', '-3089.79', '328.49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035062', '2.97149', '0', '0');

-- 2 more Lord Condar and pooling
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3500', '14268', '0', '14313', '0', '-5709.27', '-4039.54', '366.639', '3.51105', '14400', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3501', '14268', '0', '14313', '0', '-5657.67', '-4127.93', '394.216', '2.86703', '14400', '0', '0', '600000', '0', '0', '0');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2111, 1, 'Lord Condar, rare spawn Loch Modan');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (8690, 2111, 0, 'Lord Condar');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3500, 2111, 0, 'Lord Condar');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3501, 2111, 0, 'Lord Condar');

-- prevent George Candarte from becoming invisible
UPDATE `zp_mangosd`.`creature_model_info` SET `modelid_other_gender`='0' WHERE (`modelid`='3680') limit 1;

-- add 4 additional Baron Longshores
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3496', '3467', '1', '797', '660', '-1504.23', '-3817.61', '23.3975', '4.7697', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3497', '3467', '1', '797', '660', '-1360.36', '-3907.34', '9.7931', '1.30924', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3498', '3467', '1', '797', '660', '-1709.7', '-3827.2', '12.492', '2.6562', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3499', '3467', '1', '797', '660', '-1744.62', '-3725.99', '13.9455', '4.09741', '275', '0', '0', '600000', '0', '0', '0');

-- add pooling to Baron Longshore
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2110, 1, 'Baron Longshore - questmob, The Barrens');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3496, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3497, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3498, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3499, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (15066, 2110, 0, 'Baron Longshore');
