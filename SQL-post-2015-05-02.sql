-- remove low lvl loot from blackhand veteran's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=9819 AND `item`=24075;