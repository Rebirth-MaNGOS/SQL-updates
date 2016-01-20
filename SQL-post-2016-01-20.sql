/******** AV misc *********/
-- remove Druid of the Grove that shouldn't be up
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=53641;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=53642;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=53643;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=53644;

-- Druid of the Grove armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2500 WHERE  `entry`=13443;

-- armor and mana for balinda
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=85200, `maxmana`=85350, `armor`=2250 WHERE  `entry`=11949;

-- armor for galvangar
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4650 WHERE  `entry`=11947;

-- horde mine sql, alliance should now be able to cap the mine
UPDATE `zp_mangosd`.`creature_battleground` SET `guid`=49817 WHERE  `guid`=150707;

-- lieutenants should dismount
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13300;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13138;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13298;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13296;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13297;

-- horde
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13147;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13144;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13143;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4500, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13137;

-- commanders for ally / horde, should have another script?
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4750, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13318;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4750, `speed_run`=1.1, `ScriptName`='mob_av_mount_lieutenant' WHERE  `entry`=13152;

