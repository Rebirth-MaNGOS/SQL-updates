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


