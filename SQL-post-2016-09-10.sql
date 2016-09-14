-- change the walking/running speed of trolls in ZF
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.32' where entry in ('5649','7246','5648','10082','7247','7272','5650','7274','7795','7267','7797','7271','8127');

-- Giant Eye Tentacle updated damage to same as giant claw and size
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=3800, `maxdmg`=4000, `scale`=3 WHERE  `entry`=15334;

-- Thaddius spell
REPLACE INTO `zp_mangosd`.`spell_script_target` VALUES (28159, 1, 15928);
