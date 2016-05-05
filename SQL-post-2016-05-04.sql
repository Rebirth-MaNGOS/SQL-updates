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
