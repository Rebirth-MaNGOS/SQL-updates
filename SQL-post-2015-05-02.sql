-- remove low lvl loot from blackhand veteran's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=9819 AND `item`=24075;

-- ai and armor for Mistress Natalia Mar'alith
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2950, `baseattacktime`=1600, `AIName`='', `ScriptName`='npc_mistress_natalia_maralith' WHERE  `entry`=15215;

-- add text
REPLACE INTO `script_texts` VALUES (-1720120, 'C\'Thun will retake this world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mistress - Say on Death');
REPLACE INTO `script_texts` VALUES (-1720119, 'You will make a fitting sacrifice!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mistress - Say on Aggro');

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