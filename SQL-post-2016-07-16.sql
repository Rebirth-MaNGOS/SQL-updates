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