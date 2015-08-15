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

