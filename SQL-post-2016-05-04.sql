-- Obsidian Sentinel should no longer be immune to snare and root
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617298843 WHERE  `entry`=7023;