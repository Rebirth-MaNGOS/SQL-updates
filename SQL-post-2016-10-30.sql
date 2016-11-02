-- fankriss update loot template to exactly 100 instead of 100.0008
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`='9.4' WHERE  `entry`=34048 AND `ChanceOrQuestChance` >=10;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`='5' WHERE  `entry`=34048 AND `item`=21635;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`='5' WHERE  `entry`=34048 AND `item`=21650;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`='5.4' WHERE  `entry`=34048 AND `item`=22402;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`='5.4' WHERE  `entry`=34048 AND `item`=22396;

-- armor for Thistleshrub Dew Collector and Thistleshrub Rootshaper
UPDATE `zp_mangosd`.`creature_template` SET `armor`='4344' WHERE `entry` in ('5481','5485');
