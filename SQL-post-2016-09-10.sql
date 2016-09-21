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
