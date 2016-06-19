-- Qiraji gladiator aggro range 1yrd over charge
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.7 WHERE  `entry`=15324;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.7 WHERE  `entry`=153240;

-- feeder ai
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action2_type`=2, `action2_param1`=14 WHERE  `id`=1533301;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1533302, 15333, 11, 0, 100, 0, 0, 0, 0, 0, 2, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silicate Feeder - set faction on spawn');

-- anubisath swarmguard update
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=6288, `maxhealth`=6288, `mindmg`=1469, `maxdmg`=1504, `attackpower`=686, `baseattacktime`=1000 WHERE  `entry`=15538;

-- qiraji swarmguard speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2 WHERE  `entry`=15343;

-- aq lvl req
UPDATE `zp_mangosd`.`instance_template` SET `levelMin`=60 WHERE  `map`=509;
UPDATE `zp_mangosd`.`instance_template` SET `levelMin`=60 WHERE  `map`=531;

UPDATE `zp_mangosd`.`areatrigger_teleport` SET `required_level`=60 WHERE  `id`=4008;
UPDATE `zp_mangosd`.`areatrigger_teleport` SET `required_level`=60 WHERE  `id`=4010;

-- new dummy for sartura
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (8000008, 0, 0, 870, 0, 'Sartura Patrol Dummy', NULL, 0, 62, 62, 646473, 646473, 0, 0, 0, 35, 35, 0, 1, 2.14, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_patrol');
UPDATE `zp_mangosd`.`creature` SET `id`=8000008 WHERE  `guid`=10515;

-- scorpion pats
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87952;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87939;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87960;

-- wasps and stingers, 45 angle before
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87967;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87989;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=88009;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=88005;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87984;
UPDATE `zp_mangosd`.`creature_formations` SET `angle`=270 WHERE  `memberGUID`=87982;

-- vekniss warriors speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2 WHERE  `entry`=15230;

UPDATE `zp_mangosd`.`creature` SET `id`=8000008 WHERE  `guid`=5230;
UPDATE `zp_mangosd`.`creature` SET `id`=8000008 WHERE  `guid`=10514;
UPDATE `zp_mangosd`.`creature_movement` SET `script_id`=1 WHERE  `id`=5230;
UPDATE `zp_mangosd`.`creature_movement` SET `script_id`=1 WHERE  `id`=10514;

-- 10h war mobs immune
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650330111 WHERE  `entry`=15743;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650330111 WHERE  `entry`=15755;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650330111 WHERE  `entry`=15758;


-- lagt in i aq hotpatch filen
-- Anubisath sentinels aggro range and eradicator
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.7 WHERE  `entry`=15264;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.7 WHERE  `entry`=15262;

-- veknis guardian brainwasher warrior soldier hive crawler, stinger, wasp, lasher defender, 
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15233;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15247;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.2 WHERE  `entry`=15230;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.2 WHERE  `entry`=15229;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15240;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15236;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15235;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15249;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.6 WHERE  `entry`=15277;

-- post twins champion mindslayer slayer
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.4 WHERE  `entry`=15252;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.4 WHERE  `entry`=15246;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.4 WHERE  `entry`=15250;

-- nullifier warder
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.4 WHERE  `entry`=15312;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2.4 WHERE  `entry`=15311;

-- stinger AI
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_vekniss_stinger' WHERE  `entry`=15235;

-- huhuran speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=2, `speed_run`=1.41 WHERE  `entry`=15509;

-- add dummies
REPLACE INTO `zp_mangosd`.`creature` VALUES (8045, 800108, 531, 0, 0, -8900.87, 1860.02, -21.9142, 2.77942, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8044, 800108, 531, 0, 0, -9001.91, 1918.91, -44.0053, 4.07926, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8043, 800108, 531, 0, 0, -9128.55, 1802.68, -42.7085, 4.91178, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (8042, 800108, 531, 0, 0, -9093.99, 1765.93, -42.7213, 2.73623, 25, 5, 0, 646473, 0, 0, 0);

-- link warder nullifier packs
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8042, 8042, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8042, 85349, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8042, 85350, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8042, 85351, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8043, 8043, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8043, 85346, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8043, 85347, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8043, 85348, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8044, 8044, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8044, 85352, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8044, 85353, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8044, 85354, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8045, 8045, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8045, 85355, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8045, 85356, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (8045, 85357, 0, 0, 2);

-- AQ20 boss taunt immune, buru, ayamiss ossirian
UPDATE `zp_mangosd`.`creature_template` SET `flags_extra`=769 WHERE  `entry`=15370;
UPDATE `zp_mangosd`.`creature_template` SET `flags_extra`=769 WHERE  `entry`=15369;
UPDATE `zp_mangosd`.`creature_template` SET `flags_extra`=769 WHERE  `entry`=15339;

-- aq20 aggro range
-- stinger wasp swarmguard destroyer flesh hunter guardian
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.8 WHERE  `entry`=15327;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.8 WHERE  `entry`=15325;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.8 WHERE  `entry`=15343;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2 WHERE  `entry`=15338;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=2 WHERE  `entry`=15335;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.8 WHERE  `entry`=15335;

-- collector drone tail lasher sandstalker soldier
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.5 WHERE  `entry`=15319;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.5 WHERE  `entry`=15318;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.5 WHERE  `entry`=15336;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.7 WHERE  `entry`=15323;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=1.7 WHERE  `entry`=15320;

-- twin emp attack speed
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE  `entry`=15276;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE  `entry`=15275;