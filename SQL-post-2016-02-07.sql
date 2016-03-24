-- naxx noth SQL for spell positions, may need tweaking
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29216, 533, 2633.49, -3529.56, 274.111, 0);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29247, 533, 2646.37, -3466.23, 263.098, 5.46297);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29248, 533, 2704.86, -3458.79, 264.067, 4.31236);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29249, 533, 2724.76, -3514.27, 263.067, 3.09084);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29255, 533, 2704.22, -3461.86, 262.546, 4.37027);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29258, 533, 2722.03, -3514.3, 262.354, 2.84269);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29231, 533, 2685.06, -3502.37, 261.315, 0);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29225, 533, 2725.71, -3463.45, 263.415, 5.45017);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29226, 533, 2724.76, -3514.27, 263.067, 2.87018);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29267, 533, 2711.72, -3458.56, 262.384, 4.02864);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29262, 533, 2727.58, -3535.23, 263.012, 2.60314);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29238, 533, 2684.95, -3457.55, 262.578, 4.62159);
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (29227, 533, 2663.92, -3464.7, 262.574, 5.15958);

-- add two elders and link them to the festival, elder in sepulcher and searing gorge
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3508', '15567', '0', '0', '0', '-7274.25', '-797.791', '296.816', '5.6489', '25', '5', '0', '3857', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('3508', '7');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3509', '15561', '0', '0', '0', '519.542', '1557.8', '130.833', '4.43688', '25', '5', '0', '3857', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('3509', '7');

-- Added doors for the Twin Emps
REPLACE INTO `zp_mangosd`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180634, 0, 6470, 'Twin Emps Entry Door', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180635, 0, 6470, 'Twin Emps Exit Door', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (7001, 180634, 531, -8929.94, 1344.66, -104.246, 0.7171, 0, 0, 0, 0, 25, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (7002, 180635, 531, -9016.38, 1330.49, -104.246, 2.79, 0, 0, 0, 0, 25, 100, 1);

-- NEW QUEST EXP MULTIPLIER COMMAND TABLE

DROP TABLE IF EXISTS `zp_charactersd`.`character_questexprate`;
CREATE TABLE `zp_charactersd`.`character_questexprate` (
 	`guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
 	`rate` INT(10) UNSIGNED NULL DEFAULT NULL,
 	PRIMARY KEY (`guid`)
);

-- Theramore Practicing Guard should be fighting, they fight 24/7 but should sit down every 20~~ sec, oh well can't get it to work
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (30654, 0, 0, 1, 16, 36, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (30657, 0, 0, 1, 16, 36, 0, NULL);

-- Remove AI to summon deathguards as it screws up the events where mobs spawn in UC
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5665;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5664;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5663;

UPDATE `zp_mangosd`.`creature_template` SET `armor`=850, `AIName`='', `ScriptName`='' WHERE  `entry`=5679;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5656;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5655;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5659;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5660;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5658;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=780, `AIName`='', `ScriptName`='' WHERE  `entry`=5657;

-- edward and tyler faction + armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=750, `faction_A`=68, `faction_H`=68 WHERE  `entry`=5654;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=750, `faction_A`=68, `faction_H`=68 WHERE  `entry`=5653;

-- text for houser
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5662, 'Alright you sorry sack of bones. Let\'s see what you\'ve got. Strike your opponent, and don\'t stop till I say so.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 1, 'Sergeant Houser - Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5663, 'Can you see yourselves? That is the most pathetic excuse for sword slinging I have ever seen!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 2');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5664, 'The sword isn\'t a tool, it\'s an extension of you. I expect better!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 3');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5665, 'Stop! You maggots call that fighting? That is pathetic! Now put your hearts in it, you don\'t need them anymore anyway!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 4');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5666, 'You\'re dead, not buried. Now show me your best!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 5');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5667, 'You sorry sacks of maggot flesh can do better than that, now prove it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 6');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5668, 'You don\'t fight for yourselves anymore maggots! You fight for the Queen now so show me something worthy of her!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 7');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5669, 'What do you call that? If that\'s fighting then I\'m Lothar himself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 8');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-5670, 'These piles of wood and straw may show mercy, but the Lich King won\'t!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 5, 'Sergeant Houser - Say 9');

-- houser AI
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (566202, 5662, 1, 0, 25, 1, 0, 0, 60000, 65000, 1, -5662, -5663, -5664, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (566203, 5662, 1, 0, 25, 1, 30000, 32000, 60000, 62000, 1, -5665, -5666, -5667, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say 2');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (566204, 5662, 1, 0, 25, 1, 45000, 50000, 60000, 62000, 1, -5668, -5669, -5670, 0, 0, 0, 0, 0, 0, 0, 0, 'Sergeant Houser - Say 3');

-- AI for malach event
UPDATE `zp_mangosd`.`creature_template` SET `armor`=950, `AIName`='', `ScriptName`='npc_brother_malach' WHERE  `entry`=5661;

-- delete old brother malach event mobs
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45211;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45212;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45221;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45222;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45223;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=45224;

-- add DM arena bosses to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (3493, 11447, 1, 0, 0, -3706.7, 1091.58, 131.969, 3.07796, 25, 5, 0, 60811, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3494, 11497, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 74479, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3495, 11498, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 59085, 0, 0, 1);

-- Add missing ally metal resource.
REPLACE INTO `event_resource_gameobject` (`id`, `event_id`, `resource_id`, `resource_limit`, `object_guid`) VALUES (150, 1, 5, 22400, 29901);
REPLACE INTO `event_resource_gameobject` (`id`, `event_id`, `resource_id`, `resource_limit`, `object_guid`) VALUES (151, 1, 0, 72000, 29901);
