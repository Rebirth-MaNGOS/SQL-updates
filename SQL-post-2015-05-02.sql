-- remove low lvl loot from blackhand veteran's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=9819 AND `item`=24075;

-- ai and armor for Mistress Natalia Mar'alith
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2950, `baseattacktime`=1600, `AIName`='', `ScriptName`='npc_mistress_natalia_maralith' WHERE  `entry`=15215;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720120, 'C\'Thun will retake this world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mistress - Say on Death');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720119, 'You will make a fitting sacrifice!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mistress - Say on Aggro');

-- Message in a Bottle quest (to slay king mukla) changed exp reward to vanilla value, up to 7350 from 4800
UPDATE `zp_mangosd`.`quest_template` SET `RewMoneyMaxLevel`=4410 WHERE  `entry`=630;

-- Fix typos in The Calling RP text(SQL from muggle)
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='The night elf army was pushed back through Un\'Goro, to the borders of the Tanaris desert. Something in Un\'Goro prevented the Qiraji from being able to take the land. I do not quite understand this word but I believe it to mean \'God Lands.\' It is stated that they could not \'take the God Lands.\'' WHERE (`entry`='-1720107') limit 1;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='Valstann, eager to please his father, convinced Fandral to allow him to take a small battalion to the defense of Southwind. Surely with the tide of battle turning their way, no harm could come to his beloved child. The trap was missed. Valstann was captured by the hiding Qiraji and Southwind Village obliterated. Rajaxx himself would take the captive Valstann to the front lines of the battle where - in front of Staghelm and the night elf forces - he would brutally execute the young night elf.' WHERE (`entry`='-1720104') limit 1;

-- Flagongut's Fossil (fix from muggle)
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='1020') AND (`item`='5234') limit 1;

-- Blue-feathered Amulet drop rate corrected (SQL from muggle)
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry`='7452') AND (`item`='12524') limit 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE (`entry`='7453') AND (`item`='12524') limit 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='-8' WHERE (`entry`='7454') AND (`item`='12524') limit 1;

-- Silvermane stalker added missing spell stealth
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (292602, 2926, 1, 0, 100, 0, 1000, 1000, 0, 0, 11, 6920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Silvermane Stalker - Cast Hide on OOC');

-- armor and such for Skul stratholme rare
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=13065, `maxhealth`=13065, `minmana`=10922, `maxmana`=10922, `armor`=2438, `speed_walk`=0.95, `rank`=2, `baseattacktime`=2000 WHERE  `entry`=10393;

-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034003, 10393, 329, 0, 0, 3474.98, -3306.73, 131.581, 0.0444913, 604800, 0, 0, 13065, 10922, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034004, 10393, 329, 0, 0, 3606.65, -3467.87, 135.823, 3.95555, 604800, 0, 0, 13065, 10922, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034005, 10393, 329, 0, 0, 3628.57, -3480.72, 138.093, 5.17449, 604800, 0, 0, 13065, 10922, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034006, 10393, 329, 0, 0, 3682, -3505.87, 135.855, 2.31407, 604800, 0, 0, 13065, 10922, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034007, 10393, 329, 0, 0, 3492.28, -3334.58, 131.098, 1.22787, 604800, 0, 0, 13065, 10922, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3034008, 4075, 329, 0, 0, 4060.09, -3631.62, 126.612, 3.33507, 7200, 5, 0, 1, 0, 0, 1);

-- add pool
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2106, 1, 'Stratholme - Skul Rare Spawn');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034003, 2106, 1, 'Skul - Spawn 1');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034004, 2106, 1, 'Skul - Spawn 2');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034005, 2106, 1, 'Skul - Spawn 3');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034006, 2106, 1, 'Skul - Spawn 4');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034007, 2106, 1, 'Skul - Spawn 5');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3034008, 2106, 95, 'Rat');

-- add blizzard spell
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1039315, 10393, 0, 0, 100, 3, 10000, 30000, 20000, 30000, 11, 27618, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skul - Cast Blizzard');

-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.2 WHERE  `modelid`=2606;

-- remove zanzil's secret rp (it's double)
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=621 LIMIT 6;

-- add the rp again
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (621, 1, 0, 0, 0, 0, 0, 0, 2000006010, 0, 0, 0, 0, 0, 0, 0, 'Zanzil\'s Secret - quest end say 1');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (621, 5, 0, 0, 0, 0, 0, 0, 2000006011, 0, 0, 0, 0, 0, 0, 0, 'Zanzil\'s Secret - quest end say 2');
