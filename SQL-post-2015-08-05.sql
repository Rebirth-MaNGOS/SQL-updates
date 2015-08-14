-- Eye tentacle correct model, tentacle portal change back to right model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15882 WHERE  `entry`=15904;
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15788 WHERE  `entry`=15726;

-- SQL from muggle, jubling corrected model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`='14938' WHERE (`entry`='14878') limit 1;

-- Remove Spotted Yellowtails from vendors, adjust stock and respawn timer of Peacebloom for some vendors
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1678') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1684') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='2834') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3086') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3178') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3497') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3540') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4200') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4221') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4305') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4307') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='6727') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='7943') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='8931') AND (`item`='6887') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3' WHERE (`entry`='1313') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3490') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3548') AND (`item`='2447') limit 1;
