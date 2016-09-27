-- change the walking/running speed of trolls in ZF
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.32' where entry in ('5649','7246','5648','10082','7247','7272','5650','7274','7795','7267','7797','7271','8127');

-- Giant Eye Tentacle updated damage to same as giant claw and size
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=3800, `maxdmg`=4000, `scale`=3 WHERE  `entry`=15334;

-- Thaddius spell
REPLACE INTO `zp_mangosd`.`spell_script_target` VALUES (28159, 1, 15928);

-- Huntsman Radley remove duplicate wolf spawn
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=1161302;

-- Add traps to Blood of Heroes
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1272, 176214, 0, 2192.74, -4479.21, 87.66, 3.03687, 0, 0, 0.99863, 0.052336, 1200, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1273, 176214, 0, 2888.38, -4086.29, 101.381, -2.19912, 0, 0, 0.891007, -0.45399, 1200, 100, 1);

-- Panzor Rare BRD
-- add spell reflect
REPLACE INTO `zp_mangosd`.`creature_template_addon` VALUES (8923, 0, 0, 0, 0, 0, 0, '9941');

-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (3547, 8923, 230, 8270, 0, 1125.21, -196.285, -65.3843, 2.41971, 43200, 5, 0, 600000, 0, 0, 2);

-- add wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 1, 1126.31, -196.965, -65.4542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.61502, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 2, 1132.73, -202.077, -65.4324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01557, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 3, 1141.28, -202.919, -65.3523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.011198, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 4, 1155.45, -202.22, -65.4537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.070103, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 5, 1165.3, -198.824, -65.4431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.655225, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 6, 1173.75, -189.67, -65.4511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.828012, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 7, 1159.55, -202.35, -65.4465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.87928, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 8, 1146.49, -202.87, -65.3364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16457, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 9, 1131.33, -201.13, -65.4354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.78365, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 10, 1113.76, -186.654, -65.3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44986, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3547, 11, 1124.89, -196.636, -65.456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55218, 0, 0);

-- add pools
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2128, 1, 'Blackrock Depths - Panzor the Invincible Rare Spawn');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3547, 2128, 50, 'Panzor The Invinzible');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (47777, 2128, 50, 'Molten War Golem');

-- add armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3971 WHERE  `entry`=8923;

-- Make the mages in Tyr's Hand run towards the player if they're not casting.
UPDATE `zp_mangosd`.`creature_ai_scripts` SET action1_param1 = 1, comment = "Scarlet Enchanter - Allow Combat Movement and Set Phase to 0 on Spawn" WHERE id = 945201 LIMIT 1;

-- Skul (rare) in Stratholme - increased spawn rate
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='90' WHERE (`guid`='3034008');
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='2' WHERE (`guid`='3034003');
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='2' WHERE (`guid`='3034004');
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='2' WHERE (`guid`='3034005');
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='2' WHERE (`guid`='3034006');
UPDATE `zp_mangosd`.`pool_creature` SET `chance`='2' WHERE (`guid`='3034007');

