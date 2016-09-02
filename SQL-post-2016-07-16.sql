-- Corrected required levels for Enchanted Thorium Platemail quests, volume I-III
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='52' WHERE (`entry`='7649');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='58' WHERE (`entry`='7650');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='60' WHERE (`entry`='7651');

-- Corrected text in Bolvar's decree
UPDATE `zp_mangosd`.`page_text` SET `text`='Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $g him:her; to find proof of the black dragonflight\'s involvement with the Blackrock orcs. $BShould such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient millitary force to aid Lakeshire.$B$BRegards,$B$BHighlord Bolvar Fordragon' WHERE `entry` in ('1471','1490');

-- adjusted money drop for Stonard Grunts' 
UPDATE `zp_mangosd`.`creature_template` SET `mingold`='400', `maxgold`='700' WHERE (`entry`='866');

-- Fix to make the quest The Ultimate Deception repeatable (already changed on live server)
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`='1' WHERE (`entry`='8829');

-- Quest: Stealing Supplies should now award correct amount of silver star item
UPDATE `zp_mangosd`.`quest_template` SET `RewChoiceItemCount3`=200 WHERE  `entry`=1370;

-- Corruptor's Scourgestones fixed typo
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5508;
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5404;
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5406;

-- Enchanted South Seas Kelp, Pebble of Kajaro, Vision of Voodress - fixed NULL typo
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='' WHERE  `entry`=8110;
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='' WHERE  `entry`=8101;
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='' WHERE  `entry`=8116;

-- Prince Nazjak correct respawn time
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=129600 WHERE  `guid`=84713;

-- Tyrant Devilsaur fear cd
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_param3`=10000, `event_param4`=20000 WHERE  `id`=650001;

-- Jailor Marlgen remove wrong text and lower chance of net
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=242802;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_chance`=10 WHERE  `id`=242807;

-- Venture Co Mechanic removed wrong say
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=109702;

-- The Rescue RP
-- remove old sql
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=312 LIMIT 4;
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=313 LIMIT 4;

-- Drull
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (312, 2, 0, 0, 2239, 10, 1, 0, 2000006038, 0, 0, 0, 0, 0, 0, 0, 'Drull - say 1');
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (312, 6, 0, 0, 2239, 10, 1, 0, 2000006039, 0, 0, 0, 0, 0, 0, 0, 'Drull - say 2');

-- Tog'thar
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (313, 2, 0, 0, 2238, 10, 1, 0, 2000006040, 0, 0, 0, 0, 0, 0, 0, 'Drull - say 1');
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (313, 6, 0, 0, 2238, 10, 1, 0, 2000006041, 0, 0, 0, 0, 0, 0, 0, 'Drull - say 2');

-- add text
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006038, 'Ah, it is good to be free of my bonds! Have you freed Tog\'thar yet? The humans split us up after our capture.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006039, 'Go on ahead without me! I will make my own way to Tarren Mill.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006040, 'Have you freed Drull yet? I don\'t know where he\'s being held.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006041, 'I will only slow you down, but no pink-skinned humans will keep me from freedom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- gobj template
UPDATE `zp_mangosd`.`gameobject_template` SET `data1`=498 WHERE  `entry`=1722;

-- Number Two, buff damage a bit
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=2200, `maxdmg`=2800 WHERE  `entry`=15554;

-- Fix for Arena Master, shouldn't lose the quest item at delivery
UPDATE `zp_mangosd`.`quest_template` SET `SrcItemId`='18706', `ReqItemId1`='0', `ReqItemCount1`='0' WHERE (`entry`='7810');

-- SQL for mandokir fight
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_chained_spirit' WHERE  `entry`=15117;

-- Demon forge quest
-- anvilcrack ai
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='boss_goraluk_anvilcrack' WHERE  `entry`=10899;

-- move gobj
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (35792, 175970, 229, 147.224, -240.436, 112.2, 4.66086, 0, 0, 0.72509, -0.688654, 250, 0, 1);

-- Item Troll Tribal Necklace, increased drop chance and should always drop (independent of being on the quest)
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='25.33' WHERE (`entry`='10802') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='31.14' WHERE (`entry`='8636') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='27.96' WHERE (`entry`='8216') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='31.17' WHERE (`entry`='2648') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.75' WHERE (`entry`='2639') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.38' WHERE (`entry`='2646') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='30.82' WHERE (`entry`='2644') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='31.88' WHERE (`entry`='2645') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.54' WHERE (`entry`='4467') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='32.15' WHERE (`entry`='4465') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.91' WHERE (`entry`='2654') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.71' WHERE (`entry`='2653') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.62' WHERE (`entry`='2652') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='35.34' WHERE (`entry`='8218') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='24.51' WHERE (`entry`='8217') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='17.1' WHERE (`entry`='7996') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='24.36' WHERE (`entry`='7995') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.25' WHERE (`entry`='7809') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='31.98' WHERE (`entry`='2643') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='30.86' WHERE (`entry`='2641') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='34.03' WHERE (`entry`='4466') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='32.68' WHERE (`entry`='2642') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.81' WHERE (`entry`='2647') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.26' WHERE (`entry`='2640') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.35' WHERE (`entry`='2651') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.92' WHERE (`entry`='2649') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='33.76' WHERE (`entry`='2650') AND (`item`='9259');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='30.27' WHERE (`entry`='8219') AND (`item`='9259');

-- Followup assignments shouldn't be emopty anymore
UPDATE `zp_mangosd`.`item_loot_template` SET `groupid`='1' WHERE entry in ('20805','21386','21133','21131');

-- fix for speed of npcs at Razorgore
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='0.95' WHERE entry in ('12420', '12416', '14456', '12557');

-- Q: Sweet Amber, adjusted respawn timer for an object to be the same as two other objects for the quest have
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`='2' WHERE (`guid`='29680');

-- Morrowgrain chain of Feathermoon Strongold fixed
UPDATE `zp_mangosd`.`quest_template` SET `ExclusiveGroup`='3787', `NextQuestId`='3791' WHERE `entry`in ('3787','3788');
UPDATE `zp_mangosd`.`quest_template` SET `NextQuestInChain`='3792' WHERE (`entry`='3791');
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`='3791' WHERE (`entry`='3792');

-- (A) Meeting with the Master, chain fixed
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`='3381' WHERE (`entry`='3503');
UPDATE `zp_mangosd`.`quest_template` SET `NextQuestId`='3503' WHERE (`entry`='3381');

-- Fix for vendor/questgiver Dirge Quikcleave
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`='7' WHERE (`entry`='8125');


-- Reworked pathing for Fozruk and his adds in the Arathi Highlands
-- new patrol dummy
REPLACE INTO `zp_mangosd`.`creature` VALUES ('5726', '800008', '0', '0', '0', '-1037.92', '-3307.1', '53.5731', '2.07016', '25', '0', '0', '646473', '0', '0', '2');

-- update movement type for Fozruk and his 3 adds
UPDATE `zp_mangosd`.`creature` SET `MovementType`='0' WHERE guid in ('14514','14517','14516','14515');

-- delete old group formation
delete from `zp_mangosd`.`creature_formations` where leaderGUID='14514';

-- define new group formation
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('5726', '5726', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('5726', '14514', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('5726', '14517', '7', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('5726', '14516', '7', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('5726', '14515', '7', '45', '2');

-- delete old pathings of Fozruk and his adds
delete from `zp_mangosd`.`creature_movement` where id in ('14514','14517','14516','14515');

-- movement for dummy
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '1', '-1037.21', '-3307.37', '53.5088', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048223', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '2', '-1048.82', '-3288.66', '48.6723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048224', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '3', '-1073.23', '-3253.1', '37.0307', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048225', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '4', '-1094.85', '-3222.42', '42.1703', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048226', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '5', '-1118.37', '-3208.69', '42.74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048227', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '6', '-1123.45', '-3195.33', '43.5411', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048228', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '7', '-1170.9', '-3154.64', '40.2437', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048229', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '8', '-1136.86', '-3158.37', '45.2407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048230', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '9', '-1149.08', '-3137.2', '43.0738', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048231', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '10', '-1162.23', '-3106.34', '45.4955', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048232', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '11', '-1174.66', '-3081.08', '43.07', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048233', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '12', '-1197.75', '-3044.21', '41.4495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048234', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '13', '-1220.09', '-3014.79', '45.2755', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048235', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '14', '-1237.33', '-2985.51', '43.344', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048236', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '15', '-1277.17', '-2965.47', '36.0117', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048237', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '16', '-1277.83', '-2923.27', '38.1163', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048238', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '17', '-1270.58', '-2875.39', '46.0177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048239', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '18', '-1279.56', '-2837.33', '47.8551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048240', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '19', '-1300.01', '-2799.75', '53.7776', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048241', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '20', '-1332.31', '-2766.11', '57.9763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048242', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '21', '-1369', '-2755.86', '58.0465', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048243', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '22', '-1397.65', '-2753.82', '46.8239', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048244', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '23', '-1427.63', '-2749.06', '36.4506', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048245', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '24', '-1453.37', '-2732.16', '35.7495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048246', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '25', '-1484.42', '-2724.33', '32.4738', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048247', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '26', '-1513.38', '-2718.78', '34.7095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048248', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '27', '-1537.44', '-2698.84', '37.693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048249', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '28', '-1562.95', '-2672.3', '36.1169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048250', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '29', '-1583.17', '-2626.89', '47.7523', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048251', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '30', '-1617.02', '-2604.77', '45.5596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048252', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '31', '-1615.62', '-2553.93', '52.0574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048253', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '32', '-1607.86', '-2521.7', '54.5609', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048254', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '33', '-1586.79', '-2490.82', '58.9497', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048255', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '34', '-1567.6', '-2457.82', '69.495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048256', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '35', '-1553.81', '-2408.76', '79.1364', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048257', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '36', '-1545.95', '-2375.38', '76.3069', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048258', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '37', '-1537.81', '-2335.75', '64.2025', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048259', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '38', '-1529.6', '-2314.8', '56.6238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048260', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '39', '-1484.56', '-2291.47', '50.5475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048261', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '40', '-1478.75', '-2262.76', '44.4466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048262', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '41', '-1480', '-2226.7', '26.3076', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048263', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '42', '-1469.79', '-2166.86', '18.7986', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048264', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '43', '-1466.5', '-2118.99', '18.2136', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048265', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '44', '-1468.44', '-2075.35', '21.5552', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048266', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '45', '-1471.53', '-2023.79', '27.3488', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048267', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '46', '-1466.11', '-1987.79', '34.0753', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048268', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '47', '-1444.81', '-1958.99', '44.0863', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048269', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '48', '-1426.67', '-1954.06', '45.1213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048270', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '49', '-1383.74', '-1946.21', '52.5549', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048271', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '50', '-1359.07', '-1943.37', '58.4543', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048272', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '51', '-1322.98', '-1840.85', '63.4091', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048273', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '52', '-1287.63', '-1802.4', '66.8075', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048274', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '53', '-1229.54', '-1767.59', '62.9898', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048275', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '54', '-1168.07', '-1718.18', '53.6048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048276', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '55', '-1172.52', '-1725.8', '54.2722', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048277', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '56', '-1145.35', '-1716.33', '50.3387', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048278', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '57', '-1116.73', '-1707.05', '45.1749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048279', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '58', '-1085.79', '-1699.26', '40.4028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048280', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '59', '-1058.13', '-1693.62', '38.2212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048281', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '60', '-1019.35', '-1692.31', '37.0114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048282', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '61', '-992.015', '-1701.93', '36.736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048283', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '62', '-979.55', '-1707.77', '39.4038', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048284', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '63', '-966.88', '-1714.73', '44.3679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048285', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '64', '-939.484', '-1728.29', '47.4089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048286', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '65', '-923.314', '-1738.7', '51.3079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048287', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '66', '-894.044', '-1752.16', '45.9302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048288', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '67', '-870.981', '-1747.47', '45.8708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048289', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '68', '-866.382', '-1768.73', '41.5854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048290', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '69', '-858.822', '-1788.21', '39.7526', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048291', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '70', '-852.519', '-1786.92', '39.8992', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048292', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '71', '-850.24', '-1825.77', '43.8158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048293', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '72', '-839.333', '-1833.48', '46.1189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048294', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '73', '-818.414', '-1861.71', '51.0462', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048295', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '74', '-828.701', '-1878.64', '50.525', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048296', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '75', '-844.305', '-1903.4', '50.1699', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048297', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '76', '-875.649', '-1934.77', '51.9587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048298', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '77', '-899.781', '-1939.61', '53.3515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048299', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '78', '-934.156', '-2010.29', '50.5569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048300', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '79', '-937.234', '-2041.93', '49.3899', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048301', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '80', '-934.608', '-2078.91', '49.1065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048302', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '81', '-913.07', '-2099.95', '47.258', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048303', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '82', '-876.733', '-2124', '44.7319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048304', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '83', '-852.214', '-2146.3', '47.1362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048305', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '84', '-830.645', '-2161.83', '45.9767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048306', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '85', '-822.685', '-2180.52', '45.638', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048307', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '86', '-813.684', '-2205.8', '43.11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048308', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '87', '-808.31', '-2236.27', '49.9925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048309', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '88', '-813.901', '-2264.01', '53.9196', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048310', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '89', '-826.329', '-2281.27', '53.734', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048311', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '90', '-834.167', '-2303.35', '54.6962', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048312', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '91', '-844.476', '-2329.6', '58.4594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048313', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '92', '-853.193', '-2349.09', '58.397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048314', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '93', '-863.051', '-2374.93', '58.9085', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048315', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '94', '-881.701', '-2393.32', '56.1658', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048316', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '95', '-901.778', '-2412.07', '55.0185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048317', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '96', '-917.241', '-2442.9', '53.4407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048318', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '97', '-935.352', '-2463.57', '55.0377', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048319', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '98', '-947.759', '-2484.64', '58.1722', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048320', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '99', '-953.293', '-2504.37', '59.9719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048321', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '100', '-956.382', '-2519.4', '61.6465', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048322', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '101', '-960.349', '-2544.8', '61.7079', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048323', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '102', '-970.66', '-2579.93', '62.353', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048324', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '103', '-979.323', '-2612.3', '59.8321', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048325', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '104', '-988.632', '-2627.97', '61.5536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048326', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '105', '-1007.72', '-2641.81', '56.3424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048327', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '106', '-1023.12', '-2661.41', '53.9583', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048328', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '107', '-1024.6', '-2679.12', '51.1048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048329', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '108', '-1027.14', '-2711.01', '46.9469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048330', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '109', '-1026.26', '-2739.73', '44.2671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048331', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '110', '-1001.41', '-2781.31', '52.3579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048332', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '111', '-979.154', '-2802.21', '59.093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048333', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '112', '-961.908', '-2828.55', '59.7389', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048334', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '113', '-957.571', '-2852.5', '62.5084', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048335', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '114', '-955.55', '-2880.98', '64.5275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048336', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '115', '-953.45', '-2900.92', '66.8111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048337', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '116', '-948.289', '-2927.21', '69.3605', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048338', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '117', '-956.577', '-2941.33', '70.0848', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048339', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '118', '-971.588', '-2961.33', '63.6569', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048340', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '119', '-1000.28', '-3001.66', '58.8591', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048341', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '120', '-998.923', '-3035.69', '54.8486', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048342', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '121', '-976.291', '-3053.86', '57.4746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048343', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '122', '-966.778', '-3062.54', '49.5543', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048344', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '123', '-953.437', '-3077.22', '50.6209', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048345', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '124', '-942.237', '-3103.61', '48.1587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048346', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '125', '-959.184', '-3119.86', '49.5978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048347', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '126', '-981.925', '-3148.81', '45.7158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048348', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '127', '-995.525', '-3167.68', '44.1623', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048349', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '128', '-1007.99', '-3200.59', '46.4547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048350', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '129', '-1019.88', '-3232.19', '44.0253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048351', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '130', '-1031.13', '-3261.18', '43.2576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048352', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '131', '-1039.76', '-3280.35', '46.3643', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048353', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('5726', '132', '-1052.61', '-3295.11', '51.2955', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3048354', '0', '0', '0');

-- Fix to make Q Winterfall Activity preQ of Q Beads for Salfa
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`='6241' WHERE (`entry`='8469');
UPDATE `zp_mangosd`.`quest_template` SET `NextQuestId`='8469' WHERE (`entry`='6241');

-- Changes Lookout's Spyglass droprate from 100% to 10%
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry`='8566') AND (`item`='18960');

-- Changes Smithing Tuyere droprate from 100% to 10%
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry`='5840') AND (`item`='18959');

-- Dusty tomes adjusted drop rate for class books
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=13 WHERE  `entry`=16563 AND `item`=36079;
DELETE FROM `zp_mangosd`.`gameobject_loot_template` WHERE  `entry`=16563 AND `item`=18364;

-- Large scarab coffers should always drop 1 idol
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20874;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20875;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20876;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20877;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20878;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20879;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20880;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0, `groupid`=1 WHERE  `entry`=17533 AND `item`=20881;

-- Added missing aura to Fetid zombie
UPDATE `zp_mangosd`.`creature_addon` SET `auras`='8713' WHERE  `guid`=46609;
UPDATE `zp_mangosd`.`creature_addon` SET `auras`='8713' WHERE  `guid`=46685;

-- Stonard Grunt armor and no loot
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791, `lootid`=0, `mingold`=0, `maxgold`=0 WHERE  `entry`=866;

-- Vekniss Hatchling should no longer have mana
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=15962;

-- The quest Eranikus, Tyrant of the Dream should now have pre quest
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`=8555 WHERE  `entry`=8733;

-- Anub'Rekhan Add dummy
REPLACE INTO `zp_mangosd`.`creature` VALUES (88349, 800108, 533, 0, 0, 3294.63, -3476.64, 287.077, 0.0510492, 25, 0, 0, 646473, 0, 0, 0);

-- Add link for Anub'rekhan and adds
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (88349, 88349, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (88349, 88346, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (88349, 88347, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (88349, 88348, 0, 0, 2);

-- Mossflayer scout added missing emote
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-8560, '%s searches for help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Mossflayer Scout');

-- add text to AI
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action2_type`=1, `action2_param1`=-8560 WHERE  `id`=856002;

-- All healthstones should now share CD
UPDATE `zp_mangosd`.`item_template` SET `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=19008;
UPDATE `zp_mangosd`.`item_template` SET `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=19010;
UPDATE `zp_mangosd`.`item_template` SET `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=5510;

-- Corrects dropchance for Larval Acid from Silicate Feeder
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='15.865' WHERE (`entry`='15333') AND (`item`='18512');

-- Corrected text for anub'rekhan
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='Which one shall I eat first? So difficult to choose. They all smell so delicious...' WHERE  `entry`=-1533006;

-- reduced melee damage of Emperor Vek'lor
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=550, `maxdmg`=790 WHERE  `entry`=15276;

-- web wrap, Maexxna and spiderling faction
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=16486;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=15952;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=17055;

-- delete web wraps from world
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=16486;

-- New pathing for Commander Amaren (Arathi Highlands, Refuge Point)
-- delete old pathing
DELETE FROM `zp_mangosd`.`creature_movement` WHERE (`id`='11825');
-- insert new pathing
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '1', '-1255.31', '-2521.46', '20.6115', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '3052211', '1.61889', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '2', '-1257.08', '-2503.05', '20.9982', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052212', '2.36894', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '3', '-1269.51', '-2487.1', '24.5464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052213', '2.52995', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '4', '-1282.42', '-2473.87', '31.2434', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052214', '2.54566', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '5', '-1299.87', '-2462.93', '38.0559', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052215', '2.67918', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '6', '-1310.31', '-2459.36', '41.2319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052228', '0', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '7', '-1323.59', '-2449.31', '44.4532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052216', '2.83233', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '8', '-1328.98', '-2448.83', '45.1848', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '3052217', '3.73162', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '9', '-1331.71', '-2452.92', '45.1628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052218', '5.0982', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '10', '-1326.24', '-2458.07', '44.0032', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052219', '6.13492', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '11', '-1317', '-2455.75', '42.9396', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052220', '6.15063', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '12', '-1303.96', '-2460.88', '39.6683', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052221', '5.66369', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '13', '-1294.12', '-2468.61', '35.2084', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052222', '5.58121', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '14', '-1281.89', '-2479.69', '29.1093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052223', '5.6087', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '15', '-1265.31', '-2498.29', '21.5653', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052224', '5.35345', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '16', '-1259.7', '-2511.54', '20.7318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052225', '4.80368', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '17', '-1262.1', '-2523.18', '20.7719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052226', '4.72513', '0', '0');
INSERT INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('11825', '18', '-1257.39', '-2525.9', '21.0632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3052227', '0.83348', '0', '0');
