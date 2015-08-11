-- Eye tentacle correct model, tentacle portal change back to right model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15882 WHERE  `entry`=15904;
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15788 WHERE  `entry`=15726;

-- SQL from muggle, jubling corrected model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`='14938' WHERE (`entry`='14878') limit 1;
