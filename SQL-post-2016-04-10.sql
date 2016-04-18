-- Recipe: Greater Fire Protection Potion corrected drop rate
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=2.4 WHERE `item`=13494;

-- LBRS gemstones corrected drop rate
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=20 WHERE `item`=12335;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=20 WHERE `item`=12336;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE `item`=12337;

-- Argus Shadow Mage corrected grammar
UPDATE `zp_mangosd`.`creature_ai_texts` SET `content_default`='I\'m tired of this nonsense! Prepare to die!' WHERE  `entry`=-365;

-- Burning Blade Apprentice remove defias quote
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=319803;

-- Southshore crier corrected text
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='Help me! Help! Assassins in the hills! To arms! To arms!' WHERE  `entry`=-1720024;