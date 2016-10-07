-- AQ Idols, 2% for pool to drop idol
-- Add reference pool
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20874, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20875, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20876, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20877, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20878, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20879, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20880, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20881, 0, 1, 1, 1, 0, 0, 0);

-- replace first idol with pool
UPDATE `zp_mangosd`.`creature_loot_template` SET `item`=152290, `ChanceOrQuestChance`=2, `mincountOrRef`=-152290 WHERE `item`=20874;

-- remove old drop rates
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20875;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20876;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20877;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20878;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20879;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20880;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20881;

-- Maraudine Scout increased ranged damage, spell 6660 before
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=15620 WHERE  `id`=465402;

-- Cthun, adjusted drop rate in pool to 100%, slightly more for weapons than before
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21839;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21134;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21126;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22732;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22731;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22730;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21596;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21586;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21585;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21583;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21582;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21581;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21579;

-- add missing rep for trash post twins AQ40
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15246, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15250, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15252, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15312, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15311, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Soldier of the Frozen Wastes speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.25, `speed_run`=0.285715 WHERE  `entry`=16427;

-- Unstoppable Abomination
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.7, `speed_run`=0.800002 WHERE  `entry`=16428;

-- Soul Weaver
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.1, `speed_run`=0.114286 WHERE  `entry`=16429;

-- Shadow Fissure
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_shadow_fissure' WHERE  `entry`=16129;

-- BRD Pats p1
-- add new dummies
REPLACE INTO `zp_mangosd`.`creature` VALUES (3518, 800008, 230, 0, 0, 574.35, -123.871, -65.2878, 6.05668, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3519, 800008, 230, 0, 0, 631.117, -254.792, -83.5667, 0.900594, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3520, 800008, 230, 0, 0, 606.21, -173.291, -84.4873, 2.31432, 25, 5, 0, 646473, 0, 0, 2);

-- formation for 3001293
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001293, 3001293, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001293, 45915, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001293, 45916, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001293, 45917, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=45915;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=45916;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=45917;

-- formation for 3001294
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001294, 3001294, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001294, 47825, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001294, 47826, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001294, 47827, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=47825;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=47826;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=47827;

-- Formations for 3518
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3518, 3518, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3518, 90916, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3518, 90917, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3518, 90918, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90916;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90917;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90918;

-- Formations for 3519
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3519, 3519, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3519, 90866, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3519, 90867, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3519, 90868, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90866;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90867;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90868;

-- Formations for 3520
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3520, 3520, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3520, 46284, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3520, 46271, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3520, 46272, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=46824;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=46271;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=46272;

-- Formations for 3001297
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001297, 3001297, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001297, 91099, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001297, 91100, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001297, 91101, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=91100;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=91101;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=91099;

-- delete old wp
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=91100;
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=91101;

-- Formations for 3001299
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001299, 3001299, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001299, 90686, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001299, 90687, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001299, 90688, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90686;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90687;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90688;

-- Formations for 3001300
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001300, 3001300, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001300, 90855, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001300, 90856, 3, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3001300, 90857, 3, 210, 2);

-- don't move when dummy
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90855;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90856;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=90857;

-- delete old mobs
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=46269;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91032;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91033;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91034;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3001296;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3001298;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91084;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91085;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=91086;

-- wp movement for dummies
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3001293;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3001294;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3001297;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3001299;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3001300;

-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 1, 503.197, -79.6983, -62.7571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61934, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 2, 502.368, -90.2358, -62.6651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.91386, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 3, 504.813, -97.6892, -62.6353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.11413, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 4, 517.457, -113.708, -62.5579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.36153, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 5, 525.736, -127.703, -62.8877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1966, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 6, 519.62, -113.084, -62.3862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.98825, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 7, 509.564, -101.001, -62.1571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21994, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 8, 504.503, -91.7239, -62.6183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.02359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 9, 501.794, -83.2395, -62.7765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.70943, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 10, 510.005, -55.8542, -63.475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.26175, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001293, 11, 505.87, -68.8947, -62.9419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.39943, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 1, 477.031, -67.2826, -62.3862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.107227, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 2, 491.322, -67.6979, -62.2825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.091519, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 3, 504.171, -65.7944, -63.2813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.052249, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 4, 516.586, -68.1623, -61.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85635, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 5, 528.964, -77.326, -62.6175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.27909, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 6, 532.487, -89.0219, -63.9893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.78036, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 7, 530.496, -101.26, -62.6661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45443, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 8, 524.712, -119.646, -62.8065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.26594, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 9, 512.301, -128.569, -62.6341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.64941, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 10, 502.951, -133.494, -62.1289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.42949, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 11, 492.678, -132.244, -63.1343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73442, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 12, 480.654, -125.132, -62.098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.54985, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 13, 473.409, -118.623, -62.5314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00007, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 14, 467.084, -102.316, -62.7571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.90582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 15, 461.317, -82.1362, -62.9709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79194, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 16, 463.742, -72.5137, -63.9833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.916218, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001294, 17, 466.947, -69.5527, -63.5122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.700234, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 1, 377.554, -129.532, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.40602, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 2, 359.244, -133.617, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.42958, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 3, 332.898, -140.739, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.4178, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 4, 342.265, -138.524, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.240864, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 5, 379.439, -128.521, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.252645, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 6, 406.387, -120.924, -65.4414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.276207, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 7, 424.53, -130.167, -65.3616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.77792, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 8, 409.294, -120.195, -65.5902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.57743, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001297, 9, 387.077, -126.413, -64.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.41387, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 1, 409.027, -75.7607, -62.2023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88766, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 2, 392.037, -71.5642, -62.3826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.89944, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 3, 371.452, -67.5109, -64.7702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02903, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 4, 350.523, -65.8703, -68.141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.08401, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 5, 341.406, -67.2515, -69.8761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.42565, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 6, 318.051, -74.6491, -75.2556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45314, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 7, 308.711, -78.9724, -76.4348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67305, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 8, 303.099, -82.7218, -76.9156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.83013, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 9, 297.601, -88.5611, -75.5867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17178, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 10, 286.2, -110.236, -71.1993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.25032, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 11, 279.959, -122.768, -69.7938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.25032, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 12, 272.157, -138.433, -70.5974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.25032, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 13, 271.469, -147.631, -71.3183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85507, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 14, 274.324, -159.129, -72.647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07498, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 15, 279.596, -168.265, -74.2764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.31059, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 16, 283.755, -173.887, -75.4233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.40877, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 17, 298.246, -187.871, -76.2032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55014, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 18, 284.441, -175.804, -75.6049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4164, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 19, 278.475, -169.112, -74.4742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.11009, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 20, 274.261, -157.739, -72.2402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.7331, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 21, 272.102, -143.906, -70.8611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.72525, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 22, 278.047, -126.744, -69.6882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.11264, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 23, 288.303, -108.43, -71.3322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.04195, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 24, 300.665, -87.2771, -75.6906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.04195, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 25, 305.699, -80.5495, -76.8621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.751353, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 26, 312.777, -75.6988, -76.2576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.448975, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 27, 334.82, -68.589, -71.6236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.299749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 28, 343.501, -66.8671, -69.4678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.28056, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 29, 374.999, -67.1926, -64.3398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.2727, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 30, 389.432, -69.4921, -62.6196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01746, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 31, 423.335, -78.177, -64.0541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.99389, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 32, 439.913, -83.1114, -64.1501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.99389, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001299, 33, 425.484, -79.1764, -64.3888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88765, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 1, 406.214, -186.733, -64.3067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.74372, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 2, 392.069, -197.038, -67.0167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.77121, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 3, 384.274, -201.948, -68.7162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45705, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 4, 367.833, -206.358, -71.9639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.25678, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 5, 353.887, -207.59, -74.7332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.22929, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 6, 341.94, -208.215, -76.4247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.00938, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 7, 327.173, -203.231, -77.6275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74234, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 8, 311.289, -195.942, -76.6414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58919, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 9, 299.426, -188.51, -76.1286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.53028, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 10, 284.696, -174.526, -75.5042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.27896, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 11, 277.953, -165.98, -73.7492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04334, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 12, 273.353, -152.798, -71.5054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79986, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 13, 272.792, -139.32, -70.4716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.40716, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 14, 278.465, -124.467, -69.796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.10478, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 15, 274.537, -131.258, -70.1299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.1914, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 16, 271.415, -138.52, -70.809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55661, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 17, 273.461, -154.495, -71.7277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.01606, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 18, 276.131, -161.517, -72.9879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.22026, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 19, 285.075, -175.594, -75.5927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.42446, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 20, 297.807, -187.569, -76.2261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55405, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 21, 310.224, -194.428, -76.502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.86428, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 22, 326.211, -201.546, -77.4371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.86428, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 23, 337.135, -205.437, -77.379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.08419, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 24, 348.711, -206.404, -75.5607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.056254, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 25, 373.172, -205.027, -70.8266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.056254, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 26, 384.07, -203.442, -68.8053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.460734, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 27, 395.534, -195.477, -66.4739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.680646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 28, 413.785, -179.136, -62.9534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.770967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 29, 419.382, -172.093, -62.9634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.943754, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 30, 429.346, -160.469, -63.4943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.680646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 31, 452.204, -142.924, -64.2697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.641376, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 32, 442.384, -151.225, -64.892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79868, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 33, 431.399, -159.894, -63.6199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89685, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3001300, 34, 418.216, -174.246, -62.5961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03037, 0, 0);

-- Fix for the d2 event in BRD
REPLACE INTO `zp_mangosd`.`gameobject` VALUES ('500364', '181074', '230', '596.82', '-188.77', '-54.1544', '6.20586', '0', '0', '0.038653', '-0.999253', '-7200', '0', '1');
REPLACE INTO `zp_mangosd`.`gameobject` VALUES ('99906', '300065', '230', '596.82', '-188.77', '-54.15', '0', '0', '0', '0', '0', '180', '0', '1');
