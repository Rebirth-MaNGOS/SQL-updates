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