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

