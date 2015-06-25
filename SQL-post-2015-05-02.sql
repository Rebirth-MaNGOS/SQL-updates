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

-- Tables for defining and keeping track of event resources.
CREATE TABLE `zp_mangosd`.`event_resource` (
    `id` INT NOT NULL,
    `event_id` INT NOT NULL,
    `resource_id` INT NOT NULL,
    `resource_full_count` INT NOT NULL,
    `resource_description` VARCHAR(250) NULL,
    PRIMARY KEY (`id`, `resource_id`, `event_id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC));

CREATE TABLE `zp_charactersd`.`event_resource_count` (
      `id` INT NOT NULL,
      `event_id` INT NOT NULL,
      `resource_count` INT NOT NULL,
      PRIMARY KEY (`id`, `event_id`));

ALTER TABLE `zp_charactersd`.`event_resource_count` 
CHANGE COLUMN `id` `id` INT(11) UNSIGNED NOT NULL ,
CHANGE COLUMN `event_id` `event_id` INT(11) UNSIGNED NOT NULL ,
CHANGE COLUMN `resource_count` `resource_count` INT(11) UNSIGNED NOT NULL ;

ALTER TABLE `zp_mangosd`.`event_resource` 
CHANGE COLUMN `id` `id` INT(11) UNSIGNED NOT NULL ,
CHANGE COLUMN `event_id` `event_id` INT(11) UNSIGNED NOT NULL ,
CHANGE COLUMN `resource_id` `resource_id` INT(11) UNSIGNED NOT NULL ,
CHANGE COLUMN `resource_full_count` `resource_full_count` INT(11) UNSIGNED NOT NULL ;

ALTER TABLE `zp_charactersd`.`event_resource_count` 
ADD COLUMN `resource_id` INT(11) UNSIGNED NOT NULL AFTER `event_id`;


-- Defines for the different resources needed during AQ.
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('0', '1', '0', '90000', 'Copper Bar');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('1', '1', '1', '26000', 'Purple Lotus');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('2', '1', '2', '80000', 'Thick Leather');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('3', '1', '3', '17000', 'Spotted Yellowtail');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('4', '1', '4', '400000', 'Runecloth Bandage');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('5', '1', '5', '28000', 'Iron Bar');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('6', '1', '6', '24000', 'Thorium Bar');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('7', '1', '7', '20000', 'Artha\'s Tears');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('8', '1', '8', '33000', 'Stranglekelp');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('9', '1', '9', '180000', 'Light Leather');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('10', '1', '10', '110000', 'Medium Leather');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('11', '1', '11', '20000', 'Roast Raptor');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('12', '1', '12', '14000', 'Rainbow Fin Albacore');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('13', '1', '13', '800000', 'Linen Bandage');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('14', '1', '14', '600000', 'Silk Bandage');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('15', '1', '15', '22000', 'Tin Bar');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('16', '1', '16', '18000', 'Mithril Bar');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('17', '1', '17', '96000', 'Peacebloom');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('18', '1', '18', '19000', 'Firebloom');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('19', '1', '19', '60000', 'Heavy Leather');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('20', '1', '20', '60000', 'Rugged Leather');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('21', '1', '21', '10000', 'Lean Wolf Steak');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('22', '1', '22', '10000', 'Baked Salmon');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('23', '1', '23', '250000', 'Wool Bandage');
INSERT INTO `zp_mangosd`.`event_resource` (`id`, `event_id`, `resource_id`, `resource_full_count`, `resource_description`) VALUES ('24', '1', '24', '250000', 'Mageweave Bandage');

-- Set the AI-scripts for the AQ turnin NPCs
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sgt_stonebrow' WHERE `entry`='15383';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_cpr_carnes' WHERE `entry`='15431';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_dame_twinbraid' WHERE `entry`='15432';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_pvt_draxlegauge' WHERE `entry`='15434';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_master_nightsong' WHERE `entry`='15437';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_bonnie_stoneflayer' WHERE `entry`='15446';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_pvt_porter' WHERE `entry`='15448';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_marta_finespindle' WHERE `entry`='15450';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sent_silversky' WHERE `entry`='15451';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_nrs_stonefield' WHERE `entry`='15452';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_kpr_moonshade' WHERE `entry`='15453';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_slicky' WHERE `entry`='15455';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sarah_sadwhistle' WHERE `entry`='15456';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_hntr_swiftriver' WHERE `entry`='15457';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_miner_cromwell' WHERE `entry`='15459';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_grunt_maug' WHERE `entry`='15460';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_snr_srg_tkelah' WHERE `entry`='15469';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_hrb_proudfeather' WHERE `entry`='15477';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_batrdr_pelikeiki' WHERE `entry`='15508';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_apo_jezel' WHERE `entry`='15512';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sknr_jamani' WHERE `entry`='15515';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sgt_umala' WHERE `entry`='15522';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_dr_serratus' WHERE `entry`='15525';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_hlr_longrunner' WHERE `entry`='15528';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_ldy_callow' WHERE `entry`='15529';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_grd_clayhoof' WHERE `entry`='15532';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_grd_rawtar' WHERE `entry`='15533';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_fish_lindo' WHERE `entry`='15534';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_chief_sharpclaw' WHERE `entry`='15535';
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sgt_maj_germaine' WHERE `entry`='15445';


-- Alliance AQ opening event quests made repeatable

UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8493 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8495 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8518 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8506 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8504 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8527 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8525 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8500 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8529 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8521 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8510 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8514 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8516 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8523 LIMIT 1;

-- Update to the index of the event_resource_count table

ALTER TABLE `zp_charactersd`.`event_resource_count` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `event_id`, `resource_id`);

-- Horde AQ opening event quests made repeatable

UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8610 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8591 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8589 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8533 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8583 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8605 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8608 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8543 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8601 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8581 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8612 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8614 LIMIT 1;
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=1 WHERE  `entry`=8616 LIMIT 1;