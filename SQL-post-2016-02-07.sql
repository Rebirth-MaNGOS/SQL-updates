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

CREATE TABLE `zp_charactersd`.`character_questexprate` (
	`guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`rate` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`guid`)
)

-- Theramore Practicing Guard should be fighting, they fight 24/7 but should sit down every 20~~ sec, oh well can't get it to work
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (30654, 0, 0, 1, 16, 36, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (30657, 0, 0, 1, 16, 36, 0, NULL);
