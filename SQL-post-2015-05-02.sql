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

-- Add Sacrifice (warlock) spell chain, so we can loop through it to find the right rank when checking daze
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (7812, 0, 7812, 1, 0);
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (19438, 7812, 7812, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (19440, 19438, 7812, 3, 0);
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (19441, 19440, 7812, 4, 0);
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (19442, 19441, 7812, 5, 0);
REPLACE INTO `zp_mangosd`.`spell_chain` VALUES (19443, 19442, 7812, 6, 0);

-- Linking for the horde Dreak'thar in AV
REPLACE INTO zp_mangosd.creature_formations (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('150143', '150150', '5', '0', '2'), ('150143', '150151', '5', '0', '2'), ('150143', '150153', '5', '0', '2'), ('150143', '150152', '5', '0', '2'), ('150143', '3000730', '5', '0', '2'), ('150143', '54299', '5', '0', '2'), ('150143', '3000732', '5', '0', '2'), ('150143', '300731', '5', '0', '2'),('150143', '150143', '5', '0', '2');

-- Linking for the alliance Vanndaran in AV
REPLACE INTO zp_mangosd.creature_formations (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('150142', '150147', '5', '0', '2'), ('150142', '150146', '5', '0', '2'), ('150142', '150148', '5', '0', '2'), ('150142', '150149', '5', '0', '2'), ('150142', '3000729', '5', '0', '2'), ('150142', '54296', '5', '0', '2'), ('150142', '54294', '5', '0', '2'), ('150142', '53621', '5', '0', '2'),('150142', '54295', '5', '0', '2'), ('150142', '150142', '5', '0', '2');

-- add armor to Hinterland's ED trash (SQL from muggle)
UPDATE `zp_mangosd`.`creature_template` SET `armor`='4391' WHERE (`entry`='12477') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3316' WHERE (`entry`='12478') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3791' WHERE (`entry`='12479') limit 1;

-- increase respawn timer of ED trash to 30min
update `zp_mangosd`.`creature` set `spawntimesecs`='1800' where id in ('5317','5319','5320') or id between '12474' and '12479';

-- add area req for all items saying they're only usable in WSG
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23540, 3277, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23541, 3277, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23542, 3277, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23567, 3277, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23568, 3277, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (23569, 3277, 0, 0, 0, 0, 0, 2, 0);

-- add area req for all items saying they're only usable in AB
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24409, 3358, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24410, 3358, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24411, 3358, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24412, 3358, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24413, 3358, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (24414, 3358, 0, 0, 0, 0, 0, 2, 0);

-- Baron Kazum armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5840 WHERE  `entry`=15205;
-- Prince Skaldrenox armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=15203;
-- High Marshal Whirlaxis
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=15204;

-- Bloodsail Warlock, removed defias quote
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=156404;

/************* Added Sonic Burst to 10 mobs that SOMEONE had changed their spell to Dualwield (674) ***********/
-- Subterranean Diemetradon
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=1332301;
-- Shrike Bat
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=486101;
-- Putrid Shrieker
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=853501;
-- Dark Screecher
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=892702;
-- Hatecrest Screamer
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=533501;
-- Monstrous Plaguebat
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=860201;
-- Vale Screecher
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=530701;
-- Greater Kraul Bat
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=453901;
-- Rogue Vale Screecher
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=530801;
-- Ressan the Needler
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=8281 WHERE  `id`=1035701;

/***************** Spellpower scaling *************/
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (7712, 0, 0, 0, 0, 'Items - Fire Strike');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (6297, 0, 0, 0, 0, 'Items - Fiery Blaze');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (16614, 0, 0, 0, 0, 'Storm Gauntlets - Lightning Strike');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (27860, 0, 0, 0, 0, 'Blade of Eternal Darkness - Engulfing Shadows');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (13897, 0, 0, 0, 0, 'Enchant - Fiery Weapon');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (20004, 0, 0, 0, 0, 'Enchant - Life Steal');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (18818, 0, 0, 0, 0, 'Skullflame Shield - Flamestrike');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (23781, 0, 0, 0, 0, 'Aegis of Preservation - Aegis Heal');

-- Drain life should have 1:1 coef from spelldmg
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (16414, 1, 0, 0, 0, 'Item - Wraith Scythe');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (26693, 1, 0, 0, 0, 'Item - Neretzek, The Blood Drinker');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (18817, 1, 0, 0, 0, 'Item - Skullflame Shield, Drain Life');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (24585, 1, 0, 0, 0, 'Item - Ancient Hakkari Manslayer');
-- Doesn't get 100% more dmg/heal but it's more than before
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (16375, 1, 0, 0, 0, 'Item - Faintly Glowing Skull');
-- drains 4times so 25% coef each tick
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (16608, 0, 0.25, 0, 0, 'Item - Demon Forged Breastplate');

-- Rogue poisons should have 5% sp coef
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (2818, 0, 0.05, 0, 0, 'Rogue - Deadly Poison Rank 1');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (2819, 0, 0.05, 0, 0, 'Rogue - Deadly Poison Rank 2');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (11353, 0, 0.05, 0, 0, 'Rogue - Deadly Poison Rank 3');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (11354, 0, 0.05, 0, 0, 'Rogue - Deadly Poison Rank 4');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (25349, 0, 0.05, 0, 0, 'Rogue - Deadly Poison Rank 5');

REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (8680, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 1');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (8685, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 2');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (8689, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 3');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (11335, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 4');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (11336, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 5');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (11337, 0.05, 0, 0, 0, 'Rogue - Instant Poison Rank 6');

-- Hunter Arcane shot
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (3044, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 1');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14281, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 2');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14282, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 3');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14283, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 4');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14284, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 5');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14285, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 6');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14286, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 7');
REPLACE INTO `zp_mangosd`.`spell_bonus_data` VALUES (14287, 0.4285, 0, 0, 0, 'Hunter - Arcane Shot Rankt 8');

-- should be 100% drop, Nightmare Engulfed Object
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `item`=20644;

-- BURU Egg should be damageable and the trigger not
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=15514;
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=35, `faction_H`=35, `flags_extra`=128 WHERE  `entry`=15964;
-- update some armor hp for buru, p2 buru animation and egg
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=666250, `maxhealth`=666250, `armor`=3795 WHERE  `entry`=15370;
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=63, `maxlevel`=63`armor`=3795 WHERE  `entry`=15507;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=26650, `maxhealth`=26699 WHERE  `entry`=15514;
-- buru hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2.3, `combat_reach`=2.3 WHERE  `modelid`=15654;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2, `combat_reach`=2 WHERE  `modelid`=15655;

-- Reins of the Winterspring Frostsaber should req 75 riding skill, sql from muggle
UPDATE `zp_mangosd`.`item_template` SET `RequiredSkillRank`='75' WHERE (`entry`='13086') limit 1;

-- spirit shades on lethon should no longer have loot, so no more glowing in the ground
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15261;

/************** AQ20 Ossirian, add tornadoes *************/
-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (85300, 15428, 509, 0, 0, -9468.76, 1871.84, 85.5561, 5.91717, 600, 0, 0, 100000, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85301, 15428, 509, 0, 0, -9343.47, 2022.6, 85.5567, 6.00355, 600, 0, 0, 100000, 0, 0, 2);

-- update stats
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=100000, `maxhealth`=100000, `speed_run`=1, `mingold`=0, `maxgold`=0, `ScriptName`='npc_sand_vortex' WHERE  `entry`=15428;

-- First tornado wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 1, -9454.04, 1865.3, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07818, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 2, -9442.67, 1844.05, 85.5886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5649, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 3, -9441.76, 1819.8, 85.5562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.82939, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 4, -9432.41, 1805.59, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41058, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 5, -9420.77, 1802.16, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 6, -9396.82, 1796.99, 85.575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 7, -9383.69, 1788.87, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55588, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 8, -9363.27, 1784.12, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.28237, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 9, -9335.17, 1776.64, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.6462, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 10, -9311.03, 1756.15, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.57944, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 11, -9275.23, 1769.81, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.639286, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 12, -9262.4, 1797.45, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.27939, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 13, -9269.4, 1824.96, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04908, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 14, -9277.56, 1853.09, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 15, -9267.48, 1870.75, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.906321, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 16, -9256.75, 1886.65, 85.5886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.21263, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 17, -9225.32, 1919.4, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.576453, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 18, -9223.23, 1937.88, 85.5558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.85804, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 19, -9249.29, 1956.67, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36716, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 20, -9246.76, 1979.08, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38149, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 21, -9260.86, 2000.79, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25721, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 22, -9241.67, 2023.53, 85.5575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.615724, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 23, -9207.23, 1978.17, 87.6141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.32811, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 24, -9194.8, 1950.87, 85.5563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07286, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 25, -9221.84, 1922.32, 85.6234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.7691, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 26, -9224.34, 1900.81, 85.8488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.68802, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 27, -9270.35, 1879.06, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60024, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 28, -9282.21, 1866, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.32673, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 29, -9290.11, 1846.54, 85.5562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.32673, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 30, -9321.48, 1839.07, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10544, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 31, -9335.23, 1828.28, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90654, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 32, -9365.13, 1828.25, 86.9004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.30178, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 33, -9379.31, 1816.75, 85.6471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.88298, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 34, -9395.1, 1806.44, 85.8304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35676, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 35, -9424.39, 1805.82, 85.6733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94442, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 36, -9481.95, 1814.3, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.03474, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 37, -9497.92, 1833.39, 85.5565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.214, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85300, 38, -9482.27, 1874.33, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.965219, 0, 0);

-- second tornado wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 1, -9327.1, 2037.17, 85.5567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89592, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 2, -9347.7, 2070.73, 85.9153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.36323, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 3, -9375.91, 2063.03, 85.9142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.71411, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 4, -9333.02, 2071.17, 85.9283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.144478, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 5, -9335.47, 2009.84, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.94974, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 6, -9322.93, 2005.88, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.24957, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 7, -9308.13, 1984.03, 85.556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.07285, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 8, -9272.36, 2007.09, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.572523, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 9, -9252.8, 1983.64, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30062, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 10, -9260.37, 1955.28, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63696, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 11, -9233.51, 1915.48, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30062, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 12, -9229.46, 1871.93, 85.5567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.53624, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 13, -9219.15, 1845.94, 85.5567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.81761, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 14, -9237.82, 1822.64, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92618, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 15, -9278.4, 1834.16, 85.5559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72844, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 16, -9233.65, 1835.05, 85.7234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.128775, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 17, -9288.21, 1747.7, 85.5564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09504, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 18, -9319.99, 1761.88, 85.5564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4457, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 19, -9336.31, 1792.69, 85.5564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00588, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 20, -9371.05, 1768.11, 85.5564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.75731, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 21, -9379.09, 1804.39, 85.5657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.77418, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 22, -9430.18, 1792.6, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36854, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 23, -9421.24, 1758.83, 85.5597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.97076, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 24, -9395.85, 1739.83, 85.6389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.6462, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 25, -9365.52, 1765.72, 85.5558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.02413, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 26, -9357, 1779.71, 85.5558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.16063, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 27, -9307.43, 1762.88, 85.5562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.94072, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 28, -9245.71, 1813.56, 85.5558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.804221, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 29, -9227.75, 1854.62, 85.7822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4129, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 30, -9258.3, 1880.71, 85.5563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.83055, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 31, -9227.62, 1905.45, 85.5563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.678558, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 32, -9263.01, 1994.87, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.98232, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 33, -9307.44, 1998.82, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10544, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 34, -9338.27, 2012.79, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.70096, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85301, 35, -9321.63, 2048.44, 85.5561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.13409, 0, 0);