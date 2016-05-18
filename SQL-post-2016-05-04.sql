-- Obsidian Sentinel should no longer be immune to snare and root
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617298843 WHERE  `entry`=7023;

-- Scarlet Sentry, Crimson Gallant, Crimson Battle Mage, Crimson Inquisitor, Crimson Defender, Crimson Sorcerer, Crimson Priest, Crimson Monk, Crimson Guardsman, Crimson Conjuror, Crimson Initiate and Anvilrage Overseer should no longer be immune to MC
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=4283;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10424;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=8889;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10425;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10426;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10421;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10422;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10423;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=11043;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10418;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10419;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10420;

-- Eranikus, Tyrant of the Dream added armor and taunt immune
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691, `flags_extra`=259 WHERE  `entry`=15491;

-- Nightmare Phantasm immune fear and horror
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=8388624 WHERE  `entry`=15629;

-- Fix loot of Scalebane Royal Guards (dropped too many and good stuff)
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='3.1' WHERE (`entry`='1050') AND (`item`='24033');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='0.1' WHERE (`entry`='1050') AND (`item`='24034');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('1050', '24024', '5.68', '0', '-24024', '1', '0', '0', '0');

-- updated respawn timer for Dented Footlockers in SG
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`='600' WHERE (`id`='179494');

-- updated respawn timer for Scarlet Footlockers in Tyr's Hand
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`='600' WHERE (`id`='179498');

-- AQ 40 linking of trash groups

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3517, 800108, 531, 0, 0, -8354.95, 1814.69, -0.29713, 5.14984, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3516, 800108, 531, 0, 0, -8340.58, 1902.52, -2.36139, 5.62501, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3515, 800108, 531, 0, 0, -8400.53, 1922.69, 2.40221, 4.92522, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3514, 800108, 531, 0, 0, -8383.18, 2060.51, 9.06895, 0.658938, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3513, 800108, 531, 0, 0, -8545.22, 2116.36, -1.15782, 1.56057, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3512, 800108, 531, 0, 0, -8627.37, 2101.34, -1.93687, 2.49127, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3511, 800108, 531, 0, 0, -8587.16, 1974.21, -1.34179, 4.20501, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3510, 800108, 531, 0, 0, -8400.29, 2060.08, 116.129, 0.371486, 25, 0, 0, 646473, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 3510, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87596, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87597, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87595, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 3511, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87600, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87599, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87671, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87598, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 3512, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87606, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87607, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87608, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87610, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87609, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 3513, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87612, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87604, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87605, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87611, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87613, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 3514, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87620, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 10513, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87618, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87619, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87621, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87617, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 3515, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87627, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87623, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87624, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87622, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87626, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87625, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 3516, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87631, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87630, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87633, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87632, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87628, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87629, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 3517, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87642, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87644, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87639, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87641, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87643, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87640, 0, 0, 2);

-- Bug trio linking

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (320, 800108, 531, 0, 0, -8577.76, 2168.59, -4.86372, 1.75536, 25, 5, 0, 646473, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 320, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87603, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87601, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87602, 0, 0, 2);

-- Pattern: Runed Stygian Leggings should no longer drop from Twilight Geolord
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=11881 AND `item`=20546;