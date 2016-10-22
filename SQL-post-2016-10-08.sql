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

-- Cursed Justicar updated stats
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=57, `maxlevel`=58, `minhealth`=6891, `maxhealth`=7107, `armor`=3799, `rank`=1, `mindmg`=406, `maxdmg`=495, `attackpower`=250 WHERE  `entry`=7072;

-- Emeriss, change gold drop to same as the other dragons
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=71655, `maxgold`=93753 WHERE  `entry`=14889;

-- Enchanted Moonstalker Cloak should only work in darkshore
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (6298, 148, 0, 0, 0, 0, 0, 2, 0);
