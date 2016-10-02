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
