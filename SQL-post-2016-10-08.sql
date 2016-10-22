-- Alliance and horde battle standard added missing aura spell
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14465;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14466;

-- AV battle standards
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23574 WHERE  `entry`=14752;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23576 WHERE  `entry`=14751;

-- usable multiple times
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=19046;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0, `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=19045;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18607;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18606;