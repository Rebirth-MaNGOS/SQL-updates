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

-- 15543 - yauj opt should be interuptable
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=616775679, `flags_extra`=769 WHERE  `entry`=15543;

-- mana fiend immunities
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650198975 WHERE  `entry`=15527;

-- fankriss adds stats
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='33310', `maxhealth`='33310' WHERE (`entry`='15630');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2856', `maxdmg`='3786' WHERE (`entry`='15630');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='15630');
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='9284', `maxhealth`='9284' WHERE (`entry`='15962');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='817', `maxdmg`='1139' WHERE (`entry`='15962');

-- spawn of fankriss faster enrage
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_param1`=10000, `event_param2`=10000 WHERE  `id`=1563001;

-- bug trio speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.45 WHERE  `entry`=15544;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.25 WHERE  `entry`=15543;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.25 WHERE  `entry`=15511;

UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=4 WHERE  `entry`=15544;

-- aggro range sartura
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40 WHERE  `entry`=15516;

-- gauntlet mobs dig
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87678, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87679, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87680, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87735, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87728, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87725, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87710, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87690, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87866, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87865, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87716, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87815, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87821, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87823, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87825, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87810, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87834, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87835, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87836, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87841, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87840, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87844, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87895, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87869, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87898, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87727, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87847, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87900, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87878, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87880, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87885, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87888, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87892, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87858, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87861, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87862, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87863, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87818, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87864, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87723, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87805, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87779, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87685, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87707, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87705, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87696, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87699, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87804, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87702, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87732, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87704, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87752, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87756, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87765, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87803, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87792, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87747, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87749, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87776, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87783, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87798, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87806, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87887, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87883, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87709, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87830, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87857, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87807, 0, 0, 0, 0, 28, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (87700, 0, 0, 0, 0, 28, 0, NULL);

-- add gauntlet mobs again
REPLACE INTO `zp_mangosd`.`creature` VALUES (87678, 15300, 531, 15362, 0, -8160.78, 1681.57, -33.85, 1.26, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87679, 15300, 531, 15362, 0, -8151.02, 1679.31, -35.87, 1.23, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87680, 15300, 531, 15362, 0, -8142.85, 1677.14, -38.21, 1.2, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87681, 15300, 531, 15362, 0, -8115.78, 1669.96, -45.61, 6.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87682, 15300, 531, 15362, 0, -8088.72, 1662.78, -51.97, 6.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87683, 15300, 531, 15362, 0, -8061.66, 1655.6, -56.68, 6.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87684, 15300, 531, 15362, 0, -8034.81, 1645.37, -58.55, 4.44, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87685, 15300, 531, 15362, 0, -8045.12, 1624.98, -58.6565, 3.69348, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87686, 15300, 531, 15362, 0, -8036.26, 1618.6, -59.15, 0.98, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87687, 15300, 531, 15362, 0, -8022.72, 1630.44, -58.67, 5.06, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87688, 15300, 531, 15362, 0, -8024.18, 1612.72, -59.4128, 5.32318, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87689, 15300, 531, 15362, 0, -8010.87, 1597.98, -59.45, 5.06, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87690, 15300, 531, 15362, 0, -7996.76, 1607.22, -56.9392, 1.4708, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87691, 15300, 531, 15362, 0, -7990.34, 1600.79, -57.52, 5.06, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87692, 15300, 531, 15362, 0, -7991.6, 1594.38, -59.46, 2.46, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87693, 15300, 531, 15362, 0, -8013.33, 1612.04, -58.37, 2.46, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87694, 15300, 531, 15362, 0, -8035.06, 1629.7, -59.55, 2.46, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87695, 15300, 531, 15362, 0, -8057.95, 1646.73, -57.8, 3.4, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87696, 15300, 531, 15362, 0, -8081.43, 1647.53, -54.3059, 4.41605, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87697, 15300, 531, 15362, 0, -8076.69, 1659.74, -54.26, 1.21, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87698, 15300, 531, 15362, 0, -8081.15, 1663.23, -53, 3.74, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87699, 15300, 531, 15362, 0, -8100.87, 1649.09, -50.9676, 4.85587, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87700, 15300, 531, 15362, 0, -8114.93, 1648.38, -48.0073, 4.80481, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87701, 15300, 531, 15362, 0, -8117.99, 1665.7, -46.03, 3.72, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87702, 15300, 531, 15362, 0, -8145.66, 1654.83, -39.4766, 4.67913, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87703, 15300, 531, 15362, 0, -8160.02, 1671.33, -35.83, 4.34, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87704, 15300, 531, 15362, 0, -8171.09, 1658.37, -33.2638, 4.69484, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87705, 15300, 531, 15362, 0, -8073.19, 1643.16, -55.5513, 4.23933, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87706, 15300, 531, 15362, 0, -8065.73, 1643.49, -56.93, 5.83, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87707, 15300, 531, 15362, 0, -8057.56, 1634.89, -57.5429, 4.31787, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87708, 15300, 531, 15362, 0, -8033.03, 1625.16, -59.45, 4.56, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87709, 15300, 531, 15362, 0, -8022.93, 1598.85, -59.5508, 4.43568, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87710, 15300, 531, 15362, 0, -8008.15, 1622.4, -56.4663, 0.194523, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87711, 15300, 531, 15362, 0, -8007.49, 1609.89, -57.76, 5.31, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87712, 15300, 531, 15362, 0, -7991.75, 1586.73, -61.15, 5.31, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87713, 15300, 531, 15362, 0, -7980.23, 1569.78, -61.83, 5.31, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87714, 15300, 531, 15362, 0, -7973.92, 1547.3, -61.48, 4.98, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87715, 15300, 531, 15362, 0, -7961.75, 1552.58, -60.31, 2.31, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87716, 15300, 531, 15362, 0, -7957.29, 1565.91, -60.1972, 0.045298, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87717, 15300, 531, 15362, 0, -7980.85, 1563.88, -62.12, 3.34, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87718, 15300, 531, 15362, 0, -7978.25, 1582.37, -61.07, 1.43, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87719, 15300, 531, 15362, 0, -7998.23, 1581.87, -61.74, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87720, 15300, 531, 15362, 0, -8009.9, 1590.47, -60.39, 2.49, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87721, 15300, 531, 15362, 0, -7974.49, 1568.4, -61.69, 5.98, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87722, 15300, 531, 15362, 0, -7968.51, 1556.35, -61.08, 5.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87723, 15300, 531, 15362, 0, -8007.44, 1573.46, -63.0767, 4.60453, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87724, 15300, 531, 15362, 0, -8005.48, 1580.47, -61.73, 1.01, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87725, 15300, 531, 15362, 0, -8020.32, 1642.32, -57.2586, 0.756083, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87726, 15300, 531, 15362, 0, -8048.98, 1640.34, -58.9, 3.08, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87727, 15300, 531, 15362, 0, -8050.88, 1655.72, -57.11, 2.42, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87728, 15300, 531, 15362, 0, -8064.97, 1668.11, -53.46, 1.22, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87729, 15300, 531, 15362, 0, -8069.51, 1664.41, -54.07, 5.23, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87730, 15300, 531, 15362, 0, -8089.15, 1652.74, -52.79, 2.85, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87731, 15300, 531, 15362, 0, -8115.99, 1660.71, -46.23, 2.85, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87732, 15300, 531, 15362, 0, -8156.52, 1658.27, -36.3387, 4.54561, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87733, 15300, 531, 15362, 0, -8128.47, 1657.52, -43.24, 6.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87735, 15300, 531, 15362, 0, -8109.49, 1672.16, -46.38, 1.3, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87737, 15300, 531, 15362, 0, -8109.65, 1664.65, -47.99, 0.21, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87738, 15300, 531, 15362, 0, -8026.11, 1622.76, -59.33, 5.49, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87739, 15300, 531, 15362, 0, -8031.18, 1616.07, -59.38, 3.57, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87740, 15300, 531, 15362, 0, -7964.36, 1539.26, -61.93, 2.64, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87741, 15300, 531, 15362, 0, -7990.48, 1563.91, -61.7, 5.17, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87742, 15300, 531, 15362, 0, -7999.86, 1598.48, -59.04, 2.09, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87743, 15300, 531, 15362, 0, -8040.85, 1642.97, -59.28, 2.55, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87744, 15300, 531, 15362, 0, -8103.89, 1658.96, -49.09, 3.33, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87745, 15300, 531, 15362, 0, -8140.07, 1663.2, -40.14, 2.96, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87746, 15300, 531, 15362, 0, -8143.1, 1668.36, -39.92, 2.9, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87747, 15300, 531, 15362, 0, -8178.84, 1615.2, -36.1544, 3.90551, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87748, 15300, 531, 15362, 0, -8160.99, 1619.96, -40.12, 3.07, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87749, 15300, 531, 15362, 0, -8150.81, 1615.36, -41.6574, 4.64379, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87750, 15300, 531, 15362, 0, -8141.03, 1618.59, -44.34, 3.07, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87751, 15300, 531, 15362, 0, -8130.19, 1617.41, -46.72, 2.13, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87752, 15300, 531, 15362, 0, -8122.24, 1607.65, -48.085, 4.65557, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87753, 15300, 531, 15362, 0, -8112.38, 1613.35, -50.65, 2.77, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87754, 15300, 531, 15362, 0, -8103.06, 1609.74, -52.67, 2.77, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87755, 15300, 531, 15362, 0, -8095.2, 1605.92, -54.28, 1.53, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87756, 15300, 531, 15362, 0, -8094.09, 1597.4, -54.4342, 4.51813, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87757, 15300, 531, 15362, 0, -8080.17, 1598.66, -57.67, 2.47, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87758, 15300, 531, 15362, 0, -8070.33, 1592.21, -59.53, 4.05, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87759, 15300, 531, 15362, 0, -8064.32, 1597.69, -60.26, 2.17, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87760, 15300, 531, 15362, 0, -8055.07, 1585.42, -61.63, 3.43, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87761, 15300, 531, 15362, 0, -8044.79, 1587.4, -62.53, 1.89, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87762, 15300, 531, 15362, 0, -8042.51, 1580.38, -63.17, 1.89, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87763, 15300, 531, 15362, 0, -8038.89, 1569.28, -64.13, 2.04, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87764, 15300, 531, 15362, 0, -8034.82, 1560.26, -65.05, 1.1, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87765, 15300, 531, 15362, 0, -8036.98, 1554.07, -65.3273, 3.99977, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87766, 15300, 531, 15362, 0, -8024.97, 1549.15, -66.98, 0.79, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87767, 15300, 531, 15362, 0, -8027.18, 1537.44, -68.36, 1.78, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87768, 15300, 531, 15362, 0, -8021.48, 1546.03, -67.57, 0.97, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87769, 15300, 531, 15362, 0, -8022.89, 1557.23, -66.61, 5.54, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87770, 15300, 531, 15362, 0, -8030.24, 1564.01, -65.43, 5.54, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87771, 15300, 531, 15362, 0, -8044.95, 1577.56, -63.03, 5.54, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87772, 15300, 531, 15362, 0, -8061.9, 1594.19, -60.7, 4.28, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87773, 15300, 531, 15362, 0, -8067.61, 1608.07, -59.78, 5.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87774, 15300, 531, 15362, 0, -8076.65, 1612.36, -58.39, 5.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87775, 15300, 531, 15362, 0, -8085.68, 1616.64, -56.72, 5.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87776, 15300, 531, 15362, 0, -8061.01, 1613.11, -59.4021, 1.01135, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87777, 15300, 531, 15362, 0, -8043.54, 1592.71, -61.76, 3, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87778, 15300, 531, 15362, 0, -8035.3, 1589.39, -61.5, 0.18, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87779, 15300, 531, 15362, 0, -8033.64, 1582.46, -62.22, 1.44, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87780, 15300, 531, 15362, 0, -8097.85, 1619.2, -54.15, 4.86, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87781, 15300, 531, 15362, 0, -8099.21, 1626.79, -53.56, 4.23, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87782, 15300, 531, 15362, 0, -8098.85, 1632.59, -53.1497, 3.84271, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87783, 15300, 531, 15362, 0, -8088.87, 1630.02, -55.1255, 0.791438, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87784, 15300, 531, 15362, 0, -8090.1, 1621, -55.73, 2.99, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87785, 15300, 531, 15362, 0, -8080.21, 1619.5, -57.34, 2.99, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87786, 15300, 531, 15362, 0, -8077.41, 1610.69, -58.17, 1.5, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87787, 15300, 531, 15362, 0, -8059.5, 1602.8, -60.76, 2.76, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87788, 15300, 531, 15362, 0, -8052.81, 1608.32, -60.28, 2.44, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87789, 15300, 531, 15362, 0, -8047.33, 1603.15, -61, 6.26, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87790, 15300, 531, 15362, 0, -8049.15, 1570.87, -62.86, 2.23, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87791, 15300, 531, 15362, 0, -8043, 1562.98, -63.96, 2.23, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87792, 15300, 531, 15362, 0, -8178.09, 1627.46, -38.42, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87793, 15300, 531, 15362, 0, -8168.1, 1627.91, -39.33, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87794, 15300, 531, 15362, 0, -8158.11, 1628.36, -41.32, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87795, 15300, 531, 15362, 0, -8148.12, 1628.8, -43.44, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87796, 15300, 531, 15362, 0, -8138.13, 1629.25, -45.84, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87797, 15300, 531, 15362, 0, -8128.14, 1629.7, -47.94, 3.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87798, 15300, 531, 15362, 0, -8117.08, 1631.85, -49.7986, 1.73392, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87799, 15300, 531, 15362, 0, -8159.57, 1637.01, -40.34, 2.46, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87800, 15300, 531, 15362, 0, -8151.83, 1630.68, -42.75, 2.46, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87801, 15300, 531, 15362, 0, -8122.87, 1618.01, -48.39, 3.4, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87802, 15300, 531, 15362, 0, -8113.2, 1620.55, -50.67, 3.4, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87803, 15300, 531, 15362, 0, -8147.56, 1640.94, -43.1115, 1.84384, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87804, 15300, 531, 15362, 0, -8124.46, 1641.33, -46.8243, 5.9515, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87805, 15300, 531, 15362, 0, -8023.01, 1581.33, -62.37, 2.19, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87806, 15300, 531, 15362, 0, -8018.51, 1570.16, -64.5925, 5.86509, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87807, 15300, 531, 15362, 0, -7978.27, 1268.48, -71.9231, 5.064, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87808, 15300, 531, 15362, 0, -7904.82, 1452.81, -66.05, 2.91, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87809, 15300, 531, 15362, 0, -7930.93, 1465.95, -65.37, 0.4, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87810, 15300, 531, 15362, 0, -7905.12, 1476.49, -62.9145, 0.481194, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87811, 15300, 531, 15362, 0, -7918.76, 1478.38, -65.0916, 0.677544, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87812, 15300, 531, 15362, 0, -7935.29, 1502.75, -63.88, 1.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87813, 15300, 531, 15362, 0, -7938.6, 1518.94, -61.87, 3.85, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87814, 15300, 531, 15362, 0, -7944.63, 1522.61, -62.02, 1.34, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87815, 15300, 531, 15362, 0, -7951.26, 1546.36, -58.7802, 1.2391, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87816, 15300, 531, 15362, 0, -7960.83, 1529.94, -61.33, 3.95, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87817, 15300, 531, 15362, 0, -7956.56, 1530.73, -61.45, 2.7, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87818, 15300, 531, 15362, 0, -7970.76, 1526.16, -61.3147, 3.19867, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87819, 15300, 531, 15362, 0, -7969.12, 1536.97, -61.81, 2.83, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87820, 15300, 531, 15362, 0, -7961.1, 1545.83, -61.12, 5.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87821, 15300, 531, 15362, 0, -7942.23, 1536.15, -58.9445, 0.583295, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87822, 15300, 531, 15362, 0, -7949.41, 1530.81, -60.9, 0.04, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87823, 15300, 531, 15362, 0, -7935.79, 1528.94, -59.6975, 0.520463, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87824, 15300, 531, 15362, 0, -7939.57, 1512.25, -63, 4.08, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87825, 15300, 531, 15362, 0, -7928.33, 1516.06, -60.567, 0.787499, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87826, 15300, 531, 15362, 0, -7932.13, 1509.46, -62.41, 2.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87827, 15300, 531, 15362, 0, -7929.72, 1504.74, -62.79, 1.25, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87828, 15300, 531, 15362, 0, -7923.17, 1504.91, -61.53, 3.54, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87829, 15300, 531, 15362, 0, -7927.93, 1495.63, -63.81, 6.06, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87830, 15300, 531, 15362, 0, -7910.41, 1489.27, -62.2411, 0.555806, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87831, 15300, 531, 15362, 0, -7925.08, 1469.64, -65.77, 1.95, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87832, 15300, 531, 15362, 0, -7914.35, 1462.48, -66.34, 5.08, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87833, 15300, 531, 15362, 0, -7904.84, 1471.89, -63.36, 1.3, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87834, 15300, 531, 15362, 0, -7899.41, 1467.3, -63.8455, 0.516538, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87835, 15300, 531, 15362, 0, -7896.62, 1451.71, -64.8492, 0.112057, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87836, 15300, 531, 15362, 0, -7895.22, 1429.2, -66.002, 6.27743, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87837, 15300, 531, 15362, 0, -7898.25, 1421.52, -66.25, 2.91, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87838, 15300, 531, 15362, 0, -7917.27, 1419.82, -66.14, 5.14, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87839, 15300, 531, 15362, 0, -7902.73, 1396.55, -64.15, 0.12, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87840, 15300, 531, 15362, 0, -7894.33, 1400.57, -62.07, 0.42, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87841, 15300, 531, 15362, 0, -7894.35, 1409.48, -63.748, 6.24597, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87842, 15300, 531, 15362, 0, -7893.5, 1418.98, -64.6, 3.93, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87843, 15300, 531, 15362, 0, -7909.95, 1397.14, -67.69, 5.5, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87844, 15300, 531, 15362, 0, -7901.16, 1382, -63.9756, 6.02218, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87845, 15300, 531, 15362, 0, -7979.7, 1285.51, -73.08, 3.77, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87846, 15300, 531, 15362, 0, -7985.84, 1285.6, -73.07, 2.21, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87847, 15300, 531, 15362, 0, -7994.95, 1292.76, -73.134, 2.54287, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87848, 15300, 531, 15362, 0, -7915.34, 1442.12, -67.19, 2.91, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87849, 15300, 531, 15362, 0, -7908.44, 1469.28, -64.67, 2.44, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87850, 15300, 531, 15362, 0, -7935.18, 1491.87, -64.38, 2.44, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87851, 15300, 531, 15362, 0, -7955.46, 1517.25, -61.99, 1.8, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87852, 15300, 531, 15362, 0, -7949.68, 1522.02, -62.7, 5.58, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87853, 15300, 531, 15362, 0, -7936.43, 1496.16, -64.22, 5.05, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87854, 15300, 531, 15362, 0, -7924.99, 1463.08, -65.94, 5.05, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87855, 15300, 531, 15362, 0, -7913.56, 1430, -67.41, 5.05, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87856, 15300, 531, 15362, 0, -7911.99, 1414.17, -66.44, 3.48, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87857, 15300, 531, 15362, 0, -7969.49, 1275.66, -72.3539, 5.75122, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87858, 15300, 531, 15362, 0, -7923.2, 1406.91, -65.4481, 3.02982, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87859, 15300, 531, 15362, 0, -7900.67, 1408.52, -65.1, 1.47, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87860, 15300, 531, 15362, 0, -7905.13, 1438.64, -67.31, 1.7, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87861, 15300, 531, 15362, 0, -7929.19, 1451.81, -66.0953, 3.90161, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87862, 15300, 531, 15362, 0, -7942.21, 1479.62, -64.3773, 3.99585, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87863, 15300, 531, 15362, 0, -7951.6, 1501.43, -63.0026, 3.91731, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87864, 15300, 531, 15362, 0, -7984.5, 1547.04, -62.0053, 4.39248, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87865, 15300, 531, 15362, 0, -7966.02, 1579.01, -60.4556, 0.76001, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87866, 15300, 531, 15362, 0, -7976.08, 1589.76, -59.5882, 0.932797, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87867, 15300, 531, 15362, 0, -7988.2, 1574.81, -62.23, 2.97, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87868, 15300, 531, 15362, 0, -7956.72, 1294.14, -79.23, 3.76, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87869, 15300, 531, 15362, 0, -7946.74, 1301.79, -84.4877, 5.73551, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87870, 15300, 531, 15362, 0, -7946.93, 1311.58, -88.43, 4.7, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87871, 15300, 531, 15362, 0, -7948.22, 1324.28, -90.55, 0.32, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87872, 15300, 531, 15362, 0, -7959.05, 1319.87, -89.19, 1.59, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87873, 15300, 531, 15362, 0, -7958.89, 1309.87, -84.1, 1.59, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87874, 15300, 531, 15362, 0, -7956.86, 1302.5, -82.3, 5.36, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87875, 15300, 531, 15362, 0, -7965.25, 1315.48, -86.53, 3.77, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87876, 15300, 531, 15362, 0, -7954.11, 1324.55, -90.62, 5.04, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87878, 15300, 531, 15362, 0, -7960.68, 1334.98, -92.7264, 2.18944, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87879, 15300, 531, 15362, 0, -7944.17, 1337.58, -91.33, 5.04, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87880, 15300, 531, 15362, 0, -7952.62, 1348.79, -90.8608, 3.14763, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87881, 15300, 531, 15362, 0, -7945.99, 1330.29, -91.05, 1.57, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87882, 15300, 531, 15362, 0, -7936.13, 1335.16, -91.18, 3.75, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87883, 15300, 531, 15362, 0, -7923.28, 1342.11, -87.2313, 5.763, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87884, 15300, 531, 15362, 0, -7932.44, 1351.29, -85.77, 5.34, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87885, 15300, 531, 15362, 0, -7943.12, 1363.12, -83.7688, 2.79027, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87886, 15300, 531, 15362, 0, -7927.55, 1369.71, -78.05, 2.17, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87887, 15300, 531, 15362, 0, -7913.59, 1359.35, -76.8918, 5.97898, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87888, 15300, 531, 15362, 0, -7932.03, 1379.05, -74.7803, 2.90808, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87889, 15300, 531, 15362, 0, -7914.19, 1369.53, -73.668, 1.05846, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87890, 15300, 531, 15362, 0, -7909.9, 1386.58, -67.6084, 0.940653, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87891, 15300, 531, 15362, 0, -7917.4, 1381.68, -71.31, 0.02, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87892, 15300, 531, 15362, 0, -7923.27, 1394.39, -67.4339, 2.99448, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87893, 15300, 531, 15362, 0, -7940.38, 1315.54, -90.46, 4.45, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87894, 15300, 531, 15362, 0, -7937.46, 1325.11, -92.51, 4.42, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87895, 15300, 531, 15362, 0, -7931.69, 1327.61, -90.9404, 5.83368, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87896, 15300, 531, 15362, 0, -7970.43, 1307.61, -81.35, 1.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87897, 15300, 531, 15362, 0, -7967.81, 1297.96, -77.02, 1.84, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87898, 15300, 531, 15362, 0, -7958.64, 1285.67, -76.0573, 5.83761, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87899, 15300, 531, 15362, 0, -7973.01, 1293.27, -74.48, 5.86, 30, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87900, 15300, 531, 15362, 0, -7987.73, 1300.45, -74.6716, 2.5468, 30, 0, 0, 600000, 0, 0, 0);
