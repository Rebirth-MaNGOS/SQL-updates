-- Obsidian Sentinel should no longer be immune to snare and root
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617298843 WHERE  `entry`=7023;

-- Scarlet Sentry, Crimson Gallant, Crimson Battle Mage, Crimson Inquisitor, Crimson Defender, Crimson Sorcerer, Crimson Priest, Crimson Monk, Crimson Guardsman, Crimson Conjuror, Crimson Initiate and Anvilrage Overseer should no longer be immune to MC
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=4283;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10424;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=8889;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10425;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10426;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10421;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10422;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10423;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=11043;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10418;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10419;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=0 WHERE  `entry`=10420;

-- Eranikus, Tyrant of the Dream added armor and taunt immune
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691, `flags_extra`=259 WHERE  `entry`=15491;

-- Nightmare Phantasm immune fear and horror
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=8388624 WHERE  `entry`=15629;

-- Fix loot of Scalebane Royal Guards (dropped too many and good stuff)
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='3.1' WHERE (`entry`='1050') AND (`item`='24033');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='0.1' WHERE (`entry`='1050') AND (`item`='24034');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('1050', '24024', '5.68', '0', '-24024', '1', '0', '0', '0');

-- updated respawn timer for Dented Footlockers in SG
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`='600' WHERE (`id`='179494');

-- updated respawn timer for Scarlet Footlockers in Tyr's Hand
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`='600' WHERE (`id`='179498');

-- AQ 40 linking of trash groups

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3517, 800108, 531, 0, 0, -8354.95, 1814.69, -0.29713, 5.14984, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3516, 800108, 531, 0, 0, -8340.58, 1902.52, -2.36139, 5.62501, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3515, 800108, 531, 0, 0, -8400.53, 1922.69, 2.40221, 4.92522, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3514, 800108, 531, 0, 0, -8383.18, 2060.51, 9.06895, 0.658938, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3513, 800108, 531, 0, 0, -8545.22, 2116.36, -1.15782, 1.56057, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3512, 800108, 531, 0, 0, -8627.37, 2101.34, -1.93687, 2.49127, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3511, 800108, 531, 0, 0, -8587.16, 1974.21, -1.34179, 4.20501, 25, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3510, 800108, 531, 0, 0, -8400.29, 2060.08, 116.129, 0.371486, 25, 0, 0, 646473, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 3510, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87596, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87597, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3510, 87595, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 3511, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87600, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87599, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87671, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3511, 87598, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 3512, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87606, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87607, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87608, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87610, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3512, 87609, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 3513, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87612, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87604, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87605, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87611, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3513, 87613, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 3514, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87620, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 10513, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87618, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87619, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87621, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3514, 87617, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 3515, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87627, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87623, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87624, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87622, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87626, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3515, 87625, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 3516, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87631, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87630, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87633, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87632, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87628, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3516, 87629, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 3517, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87642, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87644, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87639, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87641, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87643, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (3517, 87640, 0, 0, 2);

-- Bug trio linking

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (320, 800108, 531, 0, 0, -8577.76, 2168.59, -4.86372, 1.75536, 25, 5, 0, 646473, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 320, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87603, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87601, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (320, 87602, 0, 0, 2);

-- Pattern: Runed Stygian Leggings should no longer drop from Twilight Geolord
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=11881 AND `item`=20546;

-- C'Thun stomach trigger code.
replace into zp_mangosd.scripted_areatrigger values ('4033', 'area_trigger_cthun_stomach_knockback');
replace into zp_mangosd.scripted_areatrigger values ('4034', 'area_trigger_cthun_stomach_teleport');

-- vekniss drone respawn 
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=30 WHERE  `id`=15300;

-- Sartura run on all waypoints in case reset after combat
UPDATE `zp_mangosd`.`creature_movement` SET `script_id`=1 WHERE  `id`=10515;

-- respawn time 30min for Obsidian Eradicator
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=1800 WHERE  `id`=15262;

-- qiraji scorpions and scarabs should have aura 22413
REPLACE INTO `zp_mangosd`.`creature_template_addon` VALUES (15316, 0, 0, 0, 0, 0, 0, '22413');
REPLACE INTO `zp_mangosd`.`creature_template_addon` VALUES (15317, 0, 0, 0, 0, 0, 0, '22413');

-- Greater scarab coffer should need key to be unlocked
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=94, `flags`=2 WHERE  `entry`=180690;

-- Amulet of Draconic Subversion area requirement
REPLACE INTO `zp_mangosd`.`spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (19937, 2158, 0, 0, 0, 0, 0, 2, 0);

-- AQ40 trash hp/armor/damage

-- Anubisath Sentinel
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15264, 0, 0, 15347, 0, 'Anubisath Sentinel', NULL, 0, 61, 61, 93728, 111388, 0, 0, 4091, 14, 14, 0, 1, 1.11286, 0, 1, 1799, 2385, 0, 2000, 1, 1500, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 800, 950, 100, 10, 8, 15264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 423, 0, 0, 1, 0, 'mob_anubisath_sentinel');

-- Anubisath Defender
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15277, 0, 0, 15351, 0, 'Anubisath Defender', NULL, 0, 62, 62, 482657, 482657, 0, 0, 4391, 14, 14, 0, 1.3, 1.11286, 0, 1, 3237, 4294, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 800, 100, 10, 8, 15277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_anubisath_defender');

-- Qiraji Brainwasher
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15247, 0, 0, 15360, 0, 'Qiraji Brainwasher', NULL, 0, 61, 61, 78361, 78361, 0, 0, 4091, 14, 14, 0, 1.5, 1.11286, 0, 1, 1270, 1684, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15247, 0, 0, 0, 0, 0, 0, 0, 0, 26079, 26046, 26044, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Vekniss Guardian
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15233, 0, 0, 14521, 0, 'Vekniss Guardian', NULL, 0, 61, 61, 62609, 62609, 0, 0, 4091, 14, 14, 0, 2, 1.11286, 0, 1, 1587, 2105, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15233, 0, 0, 0, 0, 0, 0, 0, 0, 8599, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Vekniss Warrior
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15230, 0, 0, 15334, 0, 'Vekniss Warrior', NULL, 0, 60, 61, 49490, 50438, 0, 0, 4091, 14, 14, 0, 2, 1.11286, 0, 1, 1270, 1684, 0, 247, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Vekniss Drone
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15300, 0, 0, 15362, 0, 'Vekniss Drone', NULL, 0, 60, 60, 6018, 6018, 0, 0, 3791, 14, 14, 0, 2, 0.95, 0, 0, 208, 276, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, '');

-- Vekniss Soldier
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15229, 0, 0, 15434, 0, 'Vekniss Soldier', NULL, 0, 61, 61, 81360, 81360, 0, 0, 4091, 14, 14, 0, 2, 1.11286, 0, 1, 847, 1122, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15229, 0, 0, 0, 0, 0, 0, 0, 0, 1906, 0, 25801, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Vekniss Hive Crawler
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15240, 0, 0, 15533, 0, 'Vekniss Hive Crawler', NULL, 0, 62, 62, 96681, 96681, 0, 0, 4391, 14, 14, 0, 2, 1.11286, 0, 1, 2158, 2862, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 10, 8, 15240, 0, 0, 0, 0, 0, 0, 0, 0, 25809, 25810, 26601, 25051, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Vekniss Stinger
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15235, 0, 0, 15338, 0, 'Vekniss Stinger', NULL, 0, 62, 62, 64474, 64474, 0, 0, 4391, 14, 14, 0, 2, 1.11286, 0, 1, 1295, 1717, 0, 247, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 10, 8, 15235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, '');

-- Vekniss Wasp
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15236, 0, 0, 15335, 0, 'Vekniss Wasp', NULL, 0, 60, 60, 30149, 30149, 0, 0, 3791, 14, 14, 0, 2, 1.11286, 0, 1, 831, 1103, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 15236, 0, 0, 0, 0, 0, 0, 0, 0, 26077, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Anubisath Swarmguard
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15538, 0, 0, 15546, 0, 'Anubisath Swarmguard', NULL, 0, 62, 62, 6245, 6245, 0, 0, 4091, 14, 14, 0, 1.14, 1.11286, 0, 1, 1032, 1368, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 387, 510, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Anubisath Warrior
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15537, 0, 0, 15545, 0, 'Anubisath Warrior', NULL, 0, 61, 61, 38354, 38354, 0, 0, 4091, 14, 14, 0, 1.14, 1.11286, 0, 1, 317, 421, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Qiraji Champion
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15252, 0, 0, 15340, 0, 'Qiraji Champion', NULL, 0, 63, 63, 264706, 264706, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 0, 1, 2746, 3640, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 8, 15252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19134, 11130, 25164, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Qiraji Lasher
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15249, 0, 0, 15465, 0, 'Qiraji Lasher', NULL, 0, 61, 61, 94255, 94255, 0, 0, 4091, 14, 14, 0, 1.5, 1.11286, 0, 1, 1524, 2020, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15249, 0, 0, 0, 0, 0, 0, 0, 0, 26027, 26038, 26686, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Qiraji Slayer
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15250, 0, 0, 15354, 0, 'Qiraji Slayer', NULL, 0, 61, 61, 99968, 99968, 2486, 2486, 3316, 14, 14, 0, 1.5, 1.11286, 0, 1, 1971, 2607, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15250, 0, 0, 0, 0, 0, 0, 0, 0, 26043, 26041, 10101, 15589, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Qiraji Mindslayer
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15246, 0, 0, 15740, 0, 'Qiraji Mindslayer', NULL, 0, 61, 61, 124911, 124911, 0, 0, 4091, 14, 14, 0, 1.5, 1.11286, 1.5, 1, 2116, 2806, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15246, 0, 0, 0, 0, 0, 0, 0, 0, 26079, 26049, 26048, 26044, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- Anubisath Warder
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15311, 0, 0, 15351, 0, 'Anubisath Warder', NULL, 0, 63, 63, 298587, 298587, 0, 0, 4691, 14, 14, 0, 1, 1.11286, 0, 1, 3075, 4077, 0, 2000, 1, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 8, 15311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');

-- AQ40 bosses hp/armor/damage

-- Skeram
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15263, 0, 0, 15345, 0, 'The Prophet Skeram', NULL, 0, 63, 63, 466375, 466375, 393000, 393000, 3795, 73, 73, 0, 1.75, 1.11286, 0, 3, 2045, 2707, 0, 1069, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15263, 0, 0, 0, 0, 0, 0, 0, 0, 26192, 26194, 0, 0, 0, 504000, 609840, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_skeram');

-- Bug trio
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15543, 0, 0, 15657, 0, 'Princess Yauj', NULL, 0, 63, 63, 299790, 299790, 0, 0, 4691, 14, 14, 0, 2.9, 1.11286, 0, 3, 2197, 2912, 0, 1150, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15543, 0, 0, 0, 0, 0, 0, 0, 0, 25807, 25808, 3242, 26580, 0, 28305, 36968, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_yauj');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15544, 0, 0, 15658, 0, 'Vem', NULL, 0, 63, 63, 433030, 433030, 0, 0, 4691, 14, 14, 0, 2.9, 5, 0, 3, 2471, 3276, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15544, 0, 0, 0, 0, 0, 0, 0, 0, 18670, 26561, 19128, 26662, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_vem');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15511, 0, 0, 15656, 0, 'Lord Kri', NULL, 0, 63, 63, 266480, 266480, 48984, 48984, 4691, 14, 14, 0, 2.9, 1.11286, 0, 3, 3432, 4550, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24055, 31418, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_kri');

-- Huhuran
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15509, 0, 0, 15739, 0, 'Princess Huhuran', NULL, 0, 63, 63, 999300, 999300, 0, 0, 4691, 14, 14, 0, 1.9, 1.11286, 0, 3, 2746, 3640, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15509, 0, 0, 0, 0, 0, 0, 0, 0, 26050, 26051, 26053, 26180, 0, 724999, 886110, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_huhuran');

-- Viscidous
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15299, 0, 0, 15686, 0, 'Viscidus', NULL, 0, 63, 63, 1998600, 1998600, 0, 0, 4691, 14, 14, 0, 2.5, 1.11286, 0, 3, 2356, 3123, 0, 1228, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 72, 15299, 0, 0, 0, 0, 0, 0, 0, 0, 25991, 25993, 0, 0, 0, 630000, 770000, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_viscidus');

-- Sartura
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15516, 0, 0, 15583, 0, 'Battleguard Sartura', NULL, 0, 63, 63, 749475, 749475, 0, 0, 4691, 14, 14, 0, 3.3, 1.11286, 0, 3, 1977, 2621, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15516, 0, 0, 0, 0, 0, 0, 0, 0, 8269, 25174, 26084, 27680, 0, 532499, 650832, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_sartura');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15984, 0, 0, 15465, 0, 'Sartura\'s Royal Guard', NULL, 0, 61, 61, 94320, 94320, 0, 0, 4091, 168, 168, 0, 1.1, 1.11286, 0, 1, 1524, 2020, 0, 2000, 1, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26038, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_sartura_royal_guard');

-- Fankriss
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15510, 0, 0, 15743, 0, 'Fankriss the Unyielding', NULL, 0, 63, 63, 999300, 999300, 0, 0, 4691, 14, 14, 0, 1.64, 1.11286, 0, 3, 2197, 2912, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15510, 0, 0, 0, 0, 0, 0, 0, 0, 25646, 25831, 22994, 0, 0, 644999, 788332, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_fankriss');

-- Emperor Vek'Lor
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15276, 0, 0, 15778, 0, 'Emperor Vek\'lor', NULL, 0, 63, 63, 1732250, 1732250, 471600, 471600, 4656, 14, 14, 0, 2, 1.11286, 0, 3, 3067, 4060, 0, 2000, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15276, 0, 0, 0, 0, 0, 0, 0, 0, 26607, 26006, 568, 7393, 0, 720000, 880000, '', 0, 3, 0, 0, 1, 1337, 0, 0, 617299803, 513, 'boss_veklor');

-- Emperor Vek'nilash
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15275, 0, 0, 15761, 0, 'Emperor Vek\'nilash', NULL, 0, 63, 63, 2165150, 2165150, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 0, 3, 3295, 4368, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15275, 0, 0, 0, 0, 0, 0, 0, 0, 26613, 26007, 7393, 27680, 0, 0, 0, '', 0, 3, 0, 0, 1, 1480, 0, 0, 617299803, 513, 'boss_veknilash');

-- Ouro
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15517, 0, 0, 15509, 0, 'Ouro', NULL, 0, 63, 63, 1998600, 1998600, 0, 0, 4691, 14, 14, 0, 2.1, 1.11286, 0, 3, 5190, 6880, 0, 2716, 1, 1750, 1750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_ouro');

-- AQ40 boss respawn time
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88075, 15263, 531, 15345, 0, -8327.62, 2089.35, 125.76, 0.4, 604800, 0, 0, 600000, 393000, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87938, 15299, 531, 15686, 0, -7992.36, 908.19, -52.62, 1.68, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87601, 15543, 531, 15657, 0, -8587.73, 2175.61, -4.18675, 4.90201, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87603, 15544, 531, 0, 0, -8547.74, 2161.5, -3.62916, 3.63439, 604800, 0, 0, 430338, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87602, 15511, 531, 15656, 0, -8567.49, 2174.4, -4.07939, 4.30511, 604800, 0, 0, 600000, 48984, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87648, 15516, 531, 15583, 0, -8335.63, 1649.1, -28.86, 0.22, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87651, 15984, 531, 15465, 0, -8335.08, 1642.69, -30.11, 0.51, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87650, 15984, 531, 15465, 0, -8341.23, 1647.01, -27.68, 0.36, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87649, 15984, 531, 15465, 0, -8341.32, 1653.26, -26.6, 0.01, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87911, 15510, 531, 15743, 0, -8085.39, 1196.72, -91.97, 0.62, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88014, 15509, 531, 0, 0, -8532.09, 1696.53, -90.26, 1.57, 604800, 0, 0, 989973, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88077, 15276, 531, 15778, 0, -8874.06, 1204.74, -104.17, 2.77, 604800, 0, 0, 600000, 471600, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88076, 15275, 531, 15761, 0, -9019.14, 1180.07, -104.17, 0.72, 604800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88073, 15517, 531, 0, 0, -9186.93, 2088.43, -64.1258, 0.300496, 604800, 5, 0, 1934097, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87560, 15589, 531, 15556, 0, -8570.3, 1991.26, 100.4, 3.44, 604800, 0, 0, 600000, 80992, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (87559, 15727, 531, 15787, 0, -8570.25, 1991.36, 100.4, 3.47, 604800, 0, 0, 600000, 0, 0, 0);

-- AQ20 trash mobs armor/health/damage
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15343, 0, 0, 15546, 0, 'Qiraji Swarmguard', NULL, 0, 61, 61, 25026, 25026, 0, 0, 4091, 73, 73, 0, 1.5, 1.11286, 1.5, 1, 1587, 2105, 0, 211, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 15343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_qiraji_swarmguard');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (153240, 0, 0, 15741, 0, 'Qiraji Gladiator', NULL, 0, 61, 61, 50304, 50304, 0, 0, 4091, 14, 14, 0, 1.94, 1.11286, 0, 2, 2540, 3367, 0, 468, 1, 1500, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 918, 100, 10, 8, 15324, 0, 0, 0, 0, 0, 0, 0, 0, 5568, 10966, 25164, 0, 0, 0, 0, '', 1, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_qiraji_gladiator');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15387, 0, 0, 15437, 0, 'Qiraji Warrior', NULL, 0, 61, 61, 31440, 31440, 0, 0, 4091, 14, 14, 0, 1.5, 1.11286, 1.25, 1, 635, 842, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 15387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15325, 0, 0, 11142, 0, 'Hive\'Zara Wasp', NULL, 0, 61, 61, 25152, 25152, 0, 0, 4091, 14, 14, 0, 1.6, 1.35, 0, 1, 1058, 1403, 0, 349, 1, 1500, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15325, 0, 15325, 0, 0, 0, 0, 0, 0, 25185, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15327, 0, 0, 9229, 0, 'Hive\'Zara Stinger', NULL, 0, 61, 61, 50304, 50304, 0, 0, 4091, 14, 14, 0, 1.6, 1.35, 0, 1, 529, 702, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 8, 15327, 0, 15327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_hivezara_stinger');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15521, 0, 0, 11095, 0, 'Hive\'Zara Hatchling', NULL, 0, 59, 60, 15260, 15260, 0, 0, 3791, 14, 14, 0, 1.5, 1.11286, 2, 1, 624, 827, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15546, 0, 0, 482, 0, 'Hive\'Zara Swarmer', NULL, 0, 60, 60, 305, 305, 0, 0, 3791, 14, 14, 0, 1.71, 0.95, 0, 0, 98, 103, 0, 610, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 610, 910, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 876, '', 1, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15555, 0, 0, 15554, 0, 'Hive\'Zara Larva', NULL, 0, 59, 60, 3052, 3052, 0, 0, 3791, 14, 14, 0, 1.5, 1.11286, 0, 1, 10, 14, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 173, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_hivezara_larva');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15344, 0, 0, 15354, 0, 'Swarmguard Needler', NULL, 0, 61, 61, 12576, 12576, 0, 0, 4091, 14, 14, 0, 1.5, 1.11286, 0, 1, 619, 821, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15461, 0, 0, 12151, 0, 'Shrieker Scarab', NULL, 0, 60, 60, 12208, 12208, 0, 0, 3791, 14, 14, 0, 1.5, 1.11286, 1.2, 1, 353, 469, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 0, 15461, 0, 0, 0, 0, 0, 0, 0, 0, 22886, 26379, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15391, 0, 0, 15738, 0, 'Captain Qeez', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 2, 1977, 2621, 0, 686, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 15391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15389, 0, 0, 15738, 0, 'Captain Drenn', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 15389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15392, 0, 0, 15738, 0, 'Captain Tuubid', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 15392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15390, 0, 0, 15738, 0, 'Captain Xurrem', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 15390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15386, 0, 0, 15738, 0, 'Major Yeggeth', NULL, 0, 62, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 15386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15388, 0, 0, 15738, 0, 'Major Pakkon', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 15388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15385, 0, 0, 15738, 0, 'Colonel Zerran', NULL, 0, 63, 63, 56627, 56627, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 2, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 15385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15355, 0, 0, 15347, 0, 'Anubisath Guardian', NULL, 0, 62, 62, 61503, 61503, 0, 0, 4391, 14, 14, 0, 1.5, 1.11286, 0, 1, 1295, 1717, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 10, 8, 15355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 1, 0, 'mob_anubisath_guardian');

-- AI for the exit trigger in C'Thun's stomach.
update zp_mangosd.creature_template set ScriptName = "npc_cthun_stomach_exit_trigger" where entry = 15800;

-- AQ20 boss armor / health / damage
-- Kurinaxx
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15348, 0, 0, 15742, 0, 'Kurinnaxx', NULL, 0, 63, 63, 333100, 333100, 0, 0, 4691, 73, 73, 0, 5, 1.11286, 2, 3, 1757, 2330, 0, 920, 1, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 76, 15348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364950, 446062, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 769, 'boss_kurinnaxx');

-- General Rajaxx
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15341, 0, 0, 15376, 0, 'General Rajaxx', NULL, 0, 63, 63, 416375, 416375, 0, 0, 4691, 14, 14, 0, 5, 1.11286, 0, 1, 1977, 2621, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364999, 446110, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_rajaxx');

-- Buru the gorger
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15370, 0, 0, 15654, 0, 'Buru the Gorger', NULL, 0, 63, 63, 666250, 666250, 471600, 471600, 3795, 14, 14, 0, 1.5, 1.11286, 2, 3, 767, 1015, 0, 2000, 1, 1500, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15370, 0, 0, 0, 0, 0, 0, 0, 0, 20512, 96, 1557, 25640, 0, 365625, 446875, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 769, 'boss_buru');

-- Ayamiss
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15369, 0, 0, 15431, 0, 'Ayamiss the Hunter', NULL, 0, 63, 63, 333100, 333100, 0, 0, 4691, 14, 14, 0, 1.5, 1.11286, 0, 3, 1318, 1747, 0, 2000, 1, 1500, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344999, 421666, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 769, 'boss_ayamiss');

-- Ossirian the unscarred
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15339, 0, 0, 15432, 0, 'Ossirian the Unscarred', NULL, 0, 63, 63, 499650, 499650, 0, 0, 4691, 14, 14, 0, 5.5, 1.3, 0, 1, 2372, 3145, 0, 2000, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15339, 0, 0, 1000, 1000, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, 740454, 963110, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 769, 'boss_ossirian');

-- Moam
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15340, 0, 0, 15392, 0, 'Moam', NULL, 0, 63, 63, 346450, 346450, 26200, 26200, 3795, 14, 14, 0, 2.3, 1.11286, 0, 1, 1738, 2301, 0, 2000, 1, 2000, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 10, 76, 15340, 0, 0, 0, 0, 0, 0, 0, 0, 25672, 15550, 25685, 0, 0, 564999, 690554, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 513, 'boss_moam');

-- Add AI for the new portal AI at C'Thun.
update zp_mangosd.creature_template set ScriptName = "mob_tentacle_portal" where entry in (15904, 15910);

-- Change the scale for C'Thun's eye.
update zp_mangosd.creature_template set scale = 1 where entry = 15589;

-- Qiraji mounts only usable in AQ40

REPLACE INTO `zp_mangosd`.`spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (26056, 3428, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (25953, 3428, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (26054, 3428, 0, 0, 0, 0, 0, 2, 0);
REPLACE INTO `zp_mangosd`.`spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (26055, 3428, 0, 0, 0, 0, 0, 2, 0);


-- Fix typo in quest Highperch Venom
UPDATE `zp_mangosd`.`quest_template` SET `Objectives`='Bring 10 Highperch Venom Sacs to Fiora Longears in Theramore.' WHERE (`entry`='1135');

-- AQ40 change entry of one idol
UPDATE `zp_mangosd`.`item_template` SET `entry`=20880 WHERE  `entry`=20882;
Update `zp_mangosd`.`creature_loot_template` SET `item` = 20880 where `item` = 20882;
Update `zp_mangosd`.`gameobject_loot_template` SET `item` = 20880 where `item` = 20882;
Update `zp_mangosd`.`item_loot_template` SET `item` = 20880 where `item` = 20882;

-- AQ40 change swarmguards to qiraji lashers
UPDATE `zp_mangosd`.`creature` SET `id`=15249 WHERE  `guid`=88008;
UPDATE `zp_mangosd`.`creature` SET `id`=15249 WHERE  `guid`=88003;
UPDATE `zp_mangosd`.`creature` SET `id`=15249 WHERE  `guid`=87999;

-- AQ20
-- coffer respawn, 21600 förut, nu 7 dagar för att inte kunna farm loot
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=604800 WHERE  `id`=180691;

-- add large coffers to world AQ40
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10256, 180690, 531, -8551.57, 1983.16, -3.05227, 0.843439, 0, 0, 0.40933, 0.912386, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10257, 180690, 531, -8583.23, 1288.77, -68.8623, 4.81208, 0, 0, 0.670997, -0.74146, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10258, 180690, 531, -8684.67, 1608.26, -86.6851, 1.49376, 0, 0, 0.679352, 0.733812, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10259, 180690, 531, -8881.29, 1362.69, -98.9149, 4.21124, 0, 0, 0.86036, -0.509687, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10260, 180690, 531, -9093.74, 1515.52, -98.3209, 1.93435, 0, 0, 0.823285, 0.567628, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10261, 180690, 531, -9206.27, 1487.27, -94.4021, 3.97639, 0, 0, 0.914147, -0.405382, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10262, 180690, 531, -9159.24, 1583.67, -78.7985, 0.1829, 0, 0, 0.0913225, 0.995821, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10263, 180690, 531, -9243.85, 1578.06, -74.2997, 2.44564, 0, 0, 0.940064, 0.340998, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10264, 180690, 531, -9204.45, 1960.49, -49.9113, 4.50338, 0, 0, 0.777012, -0.629486, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10265, 180690, 531, -8927.32, 1822.98, -18.9925, 4.00074, 0, 0, 0.909144, -0.416482, 604800, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (10266, 180690, 531, -8144.86, 1128.44, -85.7327, 3.88139, 0, 0, 0.932364, -0.36152, 604800, 100, 1);

-- add GY for aq, get rooted and can't move when spawning there tho
REPLACE INTO `zp_mangosd`.`game_graveyard_zone` VALUES (913, 3429, 0);
REPLACE INTO `zp_mangosd`.`game_graveyard_zone` VALUES (913, 3428, 0);

-- small scarab coffer loot
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=17532 AND `item`<> 21156 LIMIT 10;

-- large scarab coffer loot, higher drop bag in aq40
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=14 WHERE  `entry`=17533 AND `item`<> 21156 LIMIT 10;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=17533 AND `item`=21156;
-- chance for 2nd bag
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (211560, 21156, 40, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`gameobject_loot_template` VALUES (17533, 211560, 100, 0, -211560, 1, 0, 0, 0);

-- 1-4 all items in scarab bag
UPDATE `zp_mangosd`.`item_loot_template` SET `maxcount`=4 WHERE  `entry`=21156 AND `item`=20862;
UPDATE `zp_mangosd`.`item_loot_template` SET `maxcount`=4 WHERE  `entry`=21156 AND `item`=20864;

-- Delete old loot tables AQ20 bosses
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15348;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15341;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15340;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15370;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15369;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15339;

-- swarmguard
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15343;

-- add scarabs
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20865, 1.7, 0, 1, 1, 0, 0, 0);
-- idols
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- gladiator
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15324;

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20858, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20859, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20860, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20861, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20862, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20863, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20864, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20865, 1.7, 0, 1, 1, 0, 0, 0);   
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20866, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20867, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20868, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20869, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20870, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20871, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20872, 0.4, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 20873, 0.4, 0, 1, 1, 0, 0, 0);    


-- hive'zara stinger
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15327;

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20858, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20859, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20860, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20861, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20862, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20863, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20864, 1.7, 0, 1, 1, 0, 0, 0);                                                                                                                                                                                            
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 20873, 0.4, 0, 1, 1, 0, 0, 0);


-- hive zara wasp
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15325;

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- qiraji warrior
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15387;
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=0 WHERE  `entry`=15387;

-- qiraji needler
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15344;
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=0 WHERE  `entry`=15344;

-- obsidian destroyer
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15338;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- spitting scarab
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15462;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20858, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20859, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20860, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20861, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20862, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20863, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20864, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20865, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20866, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20867, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20868, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20869, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20870, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20871, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20872, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 20873, 0.2, 0, 1, 1, 0, 0, 0);

-- shrieking scarab
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15461;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20858, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20859, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20860, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20861, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20862, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20863, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20864, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20865, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20866, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20867, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20868, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20869, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20870, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20871, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20872, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 20873, 0.2, 0, 1, 1, 0, 0, 0);

-- flesh hunter
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15335;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20858, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20859, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20860, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20861, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20862, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20863, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20864, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20865, 2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20866, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20867, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20868, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20869, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20870, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20871, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20872, 0.6, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20873, 0.6, 0, 1, 1, 0, 0, 0);

-- silicate feeder
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15333;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20858, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20859, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20860, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20861, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20862, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20863, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20864, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20865, 0.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20866, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20867, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20868, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20869, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20870, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20871, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20872, 0.1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 20873, 0.1, 0, 1, 1, 0, 0, 0);

-- hive'zara larva
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15555;

-- hive'zara soldier
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15320;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- zara sandstalker
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15323;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- collector
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15319;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20858, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20859, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20860, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20861, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20862, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20863, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20864, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20865, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20866, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20867, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20868, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20869, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20870, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20871, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20872, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 20873, 0.2, 0, 1, 1, 0, 0, 0);

-- drone
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15318;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20858, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20859, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20860, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20861, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20862, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20863, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20864, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20865, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20866, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20867, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20868, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20869, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20870, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20871, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20872, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 20873, 0.2, 0, 1, 1, 0, 0, 0);

-- tail lasher
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15336;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20858, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20859, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20860, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20861, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20862, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20863, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20864, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20865, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20866, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20867, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20868, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20869, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20870, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20871, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20872, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 20873, 0.2, 0, 1, 1, 0, 0, 0);

-- anubisat guardian
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15355;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20858, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20859, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20860, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20861, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20862, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20863, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20864, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20865, 1.7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20866, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20867, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20868, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20869, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20870, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20871, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20872, 0.4, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 20873, 0.4, 0, 1, 1, 0, 0, 0);

-- canal frenzy
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=0 WHERE  `entry`=15505;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15505;

-- rajaxx bosses
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15385;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15386;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15388;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15389;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15390;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15391;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15392;

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 20873, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20866, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20867, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20868, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20869, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20870, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20871, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20872, 0.3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 20873, 0.3, 0, 1, 1, 0, 0, 0);


-- AQ40

-- anubisath defender
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15264;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- eradicator
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15262;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss guardian
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15233;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- brainwasher
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15247;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss warrior
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15230;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss soldier
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15229;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss hive crawler
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15240;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss wasp
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15236;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- vekniss stinger
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15235;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- anubisath swarmguard no gold
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15538;

-- anubisath defender
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15277;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- qiraji scarab no loot
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=0 WHERE  `entry`=15316;

-- qiraji slayer
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15250;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- qiraji lasher
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15249;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- qiraji champion
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15252;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- nullifier
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15312;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- anubisath warden
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15311;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- qiraji mindslayer
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15246;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20858, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20859, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20860, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20861, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20862, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20863, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20864, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20865, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20874, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20875, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20876, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20877, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20878, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20879, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20880, 0.25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 20881, 0.25, 0, 1, 1, 0, 0, 0);

-- ouro scarab no skinning
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=0 WHERE  `entry`=15718;


-- AQ40 mount drops

-- aubisath Defender
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15264 - anubisath sentinel beefn'
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15311 - anubisath warder
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15262 - obsidian eradicator beefn
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15312 - obsidian nullifier beefn
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15247 - brainwasher, halvnoob
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15252 - qiraji champion
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15249 - qiraji lasher
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15246 - qiraji mindslayer
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21218, 9, 0, 1, 1, 0, 0, 0);

-- 15250 - qiraji slayer
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21321, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21323, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21324, 9, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21218, 9, 0, 1, 1, 0, 0, 0);


-- AQ20 captain blue zone drop

-- qeez, tuubid, drenn, xurrem
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21806, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21809, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21810, 1, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21806, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21809, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21810, 1, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21806, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21809, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21810, 1, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21806, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21809, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21810, 1, 0, 1, 1, 0, 0, 0);

-- yeggeth, pakkon
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21806, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21809, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21810, 1.5, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21806, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21809, 1.5, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21810, 1.5, 0, 1, 1, 0, 0, 0);

-- zerran
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21806, 3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21809, 3, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21810, 3, 0, 1, 1, 0, 0, 0);

-- add aq20 reference pool zone drops
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21800, 0, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21801, 0, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21802, 0, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21803, 0, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21804, 0, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218000, 21805, 0, 8, 1, 1, 0, 0, 0);

-- add blue pool to aq20 mobs
/*
anubisath guardian
qeez
zerran
collector
sandstalker
stinger
pakkon
destrojer
qiraju swarmguard
silicate feeder
drenn
xurrem
flesh hunter
drone
soldier
wasp
yeggeth
gladiator
shrieker scarab
spitting scarab
*/
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 218000, 0.03, 0, -218000, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 218000, 0.03, 0, -218000, 1, 0, 0, 0);

-- AQ40 add epic zone drops
-- shard of the fallen star
/* anubisath defender
anubisath warder 
obsidian nullifier
qiraji mindslayer
qiraji champion
vekniss hive crawler */
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21891, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21891, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21891, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21891, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21891, 0.2, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 21891, 0.2, 0, 1, 1, 0, 0, 0);

-- epic zone drops, add loot template
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218360, 21836, 0, 7, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218360, 21837, 0, 7, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218360, 21838, 0, 7, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218360, 21856, 0, 7, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (218360, 21888, 0, 7, 1, 1, 0, 0, 0);

/*
anubisath sentinel
wiraji brainwasher
qiraji slayer
vekniss soldier
vekniss warrior
obsidian eradicator
qiraji lasher
vekniss guardian
vekniss stinger
vekniss wasp
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 218360, 0.1, 0, -218360, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 218360, 0.1, 0, -218360, 1, 0, 0, 0);

-- Keys AQ20 21761
/*
15391 - captain queez
15392 - captain tuubid
15389 - captain drenn
15390 - captain xurrem
15386 - major yeggeth
15388 - major pakkon
15385 - colonel zerran
15343 - qiraji swarmguard
15324 - qiraji gladiator
15338 - obsidian destroyer
15355 - anubisath guardian
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 21761, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 21761, 7, 0, 1, 1, 0, 0, 0);

-- Keys AQ40 21762
/*
15264 - anubisath sentinel beefn'
15262 - obsidian eradicator beefn
15247 - qiraji brainwasher, halvnoob?
15277 - anubisath defender beefn'
15250 - qiraji slayer
15249 - qiraji lasher
15252 - qiraji champion
15312 - obsidian nullifier beefn'
15311 - anubisath warder
15246 - qiraji mindslayer
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21762, 7, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21762, 7, 0, 1, 1, 0, 0, 0);

-- AQ20 and 40 keys shouldn't be bound to map, revert old fix
UPDATE `zp_mangosd`.`item_template` SET `Map`=0 WHERE  `entry`=21761;
UPDATE `zp_mangosd`.`item_template` SET `Map`=0 WHERE  `entry`=21762;

-- AQ40 artifact drops 21230
/*
15264 - anubisath sentinel beefn'
15262 - obsidian eradicator beefn
15233 - vekniss guardian noob?
15247 - qiraji brainwasher, halvnoob?
15230 - vekniss warrior
15229 - vekniss soldier
15240 - vekniss hive crawler
15236 - vekniss wasp
15235 - vekniss stinger
15277 - anubisath defender beefn'
15250 - qiraji slayer
15249 - qiraji lasher
15252 - qiraji champion
15312 - obsidian nullifier beefn'
15311 - anubisath warder
15246 - qiraji mindslayer
*/
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21230, 1, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21230, 1, 0, 1, 1, 0, 0, 0);

-- AQ20 vile scarab loot and remove rep
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15168;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15168, 21222, 30, 0, 1, 1, 0, 0, 0);
DELETE FROM `zp_mangosd`.`creature_onkill_reputation` WHERE  `creature_id`=15168;

-- add armored chitin 21222 40% drop 1-2
/*
15343 - swarmguard
15324 - gladiator
15327 - hive'zara stinger
15325 - hive'zara wasp
15462 - spitting scarab - lägre, 1 och 0.2
15461 - shrieker scarab - lägre, 1 och 0.2
15320 - hive'zara soldier
15323 - hive'zara sandstalker
15319 - hive'zara collector - lägre, 1 och 0.2
15318 - hive'zara drone - lägre, 1 och 0.2
15336 - hive'zara tail lasher - lägre, 1 och 0.2

15391 - qeez
15392 - tuubid
15390 - xurrem
15388 - pakkon
15385 - zerran
15386 - yeggeth
15389 - drenn

15233 - vekniss guardian noob?
15247 - brainwasher, halvnoob?
15230 - vekniss warrior
15229 - vekniss soldier
15240 - vekniss hive crawler
15236 - vekniss wasp
15235 - vekniss stinger
15250 - qiraji slayer
15249 - qiraji lasher
15252 - qiraji champion
15246 - qiraji mindslayer
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 21222, 40, 0, 1, 2, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21222, 40, 0, 1, 2, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21222, 40, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21222, 40, 0, 1, 2, 0, 0, 0);

-- aq ancient armor fragment 21224
/*
15391 - qeez
15392 - tuubid
15390 - xurrem
15388 - pakkon
15385 - zerran
15386 - yeggeth
15389 - drenn

15247 - qiraji brainwasher, halvnoob?
15250 - qiraji slayer
15249 - qiraji lasher
15252 - qiraji champion
15246 - qiraji mindslayer
15343 - qiraji swarmguard
15324 - qiraji gladiator
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 21224, 30, 0, 1, 2, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 21224, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 21224, 30, 0, 1, 2, 0, 0, 0);

-- heavy silithid husk 21225
/*
15327 - hive'zara stinger
15325 - hive'zara wasp
15320 - hive'zara soldier
15323 - hive'zara sandstalker
15319 - hive'zara collector
15318 - hive'zara drone

15233 - vekniss guardian noob?
15230 - vekniss warrior
15229 - vekniss soldier
15236 - vekniss wasp
15235 - vekniss stinger
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 21225, 30, 0, 1, 2, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 21225, 30, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 21225, 30, 0, 1, 2, 0, 0, 0);

-- black stone 21223
/*
15338 - obsidian destroyer
15355 - anubisath guardian

15264 - anubisath sentinel beefn'
15262 - obsidian eradicator beefn
15277 - anubisath defender beefn'
15312 - obsidian nullifier beefn'
15311 - anubisath warder
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 21223, 50, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21223, 50, 0, 1, 2, 0, 0, 0);

-- add huge venom sack 19441
/*
15462 - spitting scarab
15461 - shrieker scarab
15168 - vile scarab
15240 - vekniss hive crawler
15336 -hive'zara tail lasher
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 19441, 15, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 19441, 15, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15168, 19441, 15, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 19441, 15, 0, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 19441, 15, 0, 1, 1, 0, 0, 0);

-- flesh hunter add hero skull, random grey pool and oozing bag
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 21227, 12, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24024, 15, 0, -24024, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 20768, 12, 0, 1, 1, 0, 0, 0);

-- silicate feeder add larval acid and lower chance in epl
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 18512, 5, 0, 1, 1, 0, 0, 0);
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5.92 WHERE  `entry`=8605 AND `item`=18512;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=3.75 WHERE  `entry`=8603 AND `item`=18512;

-- runic stone 21226 
/*
15355 - anubisath guardian
15264 - anubisath sentinel
15277 - anubisath defender
15311 - anubisath warder
*/

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 21226, 20, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 21226, 20, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 21226, 20, 0, 1, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 21226, 20, 0, 1, 2, 0, 0, 0);

-- Random drops from all mobs
-- epic pooler 24089 24090 0.01%
-- blåa pooler 24019 24017 0.02%
-- gröna pooler 24016 24018 24020 0.02%

-- AQ20

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15343, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15324, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15327, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24016, 0.02, 0, -24016, 1, 0, 0, 0);                                                                                 
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24017, 0.02, 0, -24017, 1, 0, 0, 0);                                                                                 
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24018, 0.02, 0, -24018, 1, 0, 0, 0);                                                                                 
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24019, 0.02, 0, -24019, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24020, 0.02, 0, -24020, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24089, 0.01, 0, -24089, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15325, 24090, 0.01, 0, -24090, 1, 0, 0, 0);  

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24016, 0.02, 0, -24016, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24017, 0.02, 0, -24017, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24018, 0.02, 0, -24018, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24019, 0.02, 0, -24019, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24020, 0.02, 0, -24020, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24089, 0.01, 0, -24089, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15338, 24090, 0.01, 0, -24090, 1, 0, 0, 0); 

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24016, 0.02, 0, -24016, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24017, 0.02, 0, -24017, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24018, 0.02, 0, -24018, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24019, 0.02, 0, -24019, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24020, 0.02, 0, -24020, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24089, 0.01, 0, -24089, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15462, 24090, 0.01, 0, -24090, 1, 0, 0, 0); 

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24016, 0.02, 0, -24016, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24017, 0.02, 0, -24017, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24018, 0.02, 0, -24018, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24019, 0.02, 0, -24019, 1, 0, 0, 0);                                                                                                                                                                              
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15461, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15335, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15333, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15320, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15323, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15319, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15318, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15336, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15355, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15391, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15392, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15390, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15388, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15385, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15386, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15389, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

-- AQ40

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15264, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15262, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15233, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15247, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15230, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15229, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15240, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15236, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15235, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15277, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15250, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15249, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15252, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15312, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15311, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24016, 0.02, 0, -24016, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24017, 0.02, 0, -24017, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24018, 0.02, 0, -24018, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24019, 0.02, 0, -24019, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24020, 0.02, 0, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24089, 0.01, 0, -24089, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15246, 24090, 0.01, 0, -24090, 1, 0, 0, 0);

-- AQ40 Enchants
-- Twins
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15276, 20735, 4, 8, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15275, 20726, 4, 8, 1, 1, 0, 0, 0);

-- reference for all enchants
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20727, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20734, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20728, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20736, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20730, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20731, 0, 6, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (207270, 20729, 0, 6, 1, 1, 0, 0, 0);

-- AQ40 enchants
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15263, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15511, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15543, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15544, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15516, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15510, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15299, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15509, 207270, 1, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15517, 207270, 1, 8, -207270, 1, 0, 0, 0);

-- AQ20
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 207270, 0.5, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 207270, 0.5, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 207270, 0.5, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 207270, 0.5, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 207270, 0.5, 8, -207270, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 207270, 0.5, 8, -207270, 1, 0, 0, 0);

-- Main Pool for books
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21294, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21295, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21296, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21304, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21306, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21307, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21214, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21279, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21280, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21288, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21289, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21290, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21284, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21285, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21287, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21300, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21302, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21303, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21291, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21292, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21293, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21281, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21282, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21283, 0, 5, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21297, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21298, 0, 5, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212940, 21299, 0, 5, 1, 1, 0, 0, 0);

-- add book drops to bosses
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 212940, 100, 7, -212940, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 212940, 100, 7, -212940, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 212940, 100, 7, -212940, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 212940, 100, 7, -212940, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 212940, 100, 7, -212940, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 212940, 100, 7, -212940, 3, 0, 0, 0);

-- AQ20 boss loot

-- Boss loot Kurinnaxx 22217 q item
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 22217, -100, 9, 1, 1, 0, 0, 0);
-- boss loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 20884, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 20885, 40, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 20888, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 20889, 40, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21498, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21499, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21500, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21501, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21502, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15348, 21503, 20, 1, 1, 1, 0, 0, 0);

-- rajaxx
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 20884, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 20885, 40, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 20888, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 20889, 40, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21492, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21493, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21494, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21495, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21496, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15341, 21497, 20, 1, 1, 1, 0, 0, 0);

-- moam
-- BS plans
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 22220, 10, 0, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 20884, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 20886, 40, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 20888, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 20890, 40, 1, 1, 1, 0, 0, 0);

-- reference loot template for loot
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21472, 5, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21479, 5, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21471, 5, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21467, 5, 1, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21477, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21476, 10, 1, 1, 1, 6, 67, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21475, 10, 1, 1, 1, 6, 469, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21474, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21473, 10, 1, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21470, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21469, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21468, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (208840, 21455, 10, 1, 1, 1, 0, 0, 0);

-- add loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15340, 208840, 100, 2, -208840, 2, 0, 0, 0);

-- update group ids
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15340 AND `item`=20884;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15340 AND `item`=20886;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15340 AND `item`=20888;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15340 AND `item`=20890;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15340 AND `item`=208840;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=9 WHERE  `entry`=15340 AND `item`=22220;

-- Buru
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20884, 30, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20885, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20886, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20888, 30, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20889, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 20890, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21485, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21486, 10, 1, 1, 1, 6, 469, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21487, 10, 1, 1, 1, 6, 67, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21488, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21489, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21490, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15370, 21491, 20, 1, 1, 1, 0, 0, 0);

-- ayamiss
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20884, 30, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20885, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20886, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20888, 30, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20889, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 20890, 10, 2, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21466, 6, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21478, 7, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21479, 7, 1, 1, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21480, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21481, 20, 1, 1, 1, 6, 469, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21482, 20, 1, 1, 1, 6, 67, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21483, 20, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15369, 21484, 20, 1, 1, 1, 0, 0, 0);

-- Ossirian
-- new pool for drops
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21452, 4, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21453, 10, 1, 1, 1, 6, 469, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21454, 10, 1, 1, 1, 6, 67, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21456, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21457, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21458, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21459, 3, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21460, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21461, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21462, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21463, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21464, 10, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (214520, 21715, 3, 1, 1, 1, 0, 0, 0);

-- loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 214520, 100, 1, -214520, 2, 0, 0, 0);

-- hilt and rings
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 20884, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 20888, 10, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 20886, 40, 2, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 20890, 40, 2, 1, 1, 0, 0, 0);

-- add head
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15339, 21220, 100, 3, 1, 1, 0, 0, 0);

-- remove some gold from rajaxx event mobs
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15387;
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15344;

-- Loot for AQ40 bosses

-- q item should drop last
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=9 WHERE `item`=21229;

-- 15263 Skeram
-- update pool 
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=9.4 WHERE  `entry`=34046;
-- lower for weapons
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34046 AND `item`=21128;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34046 AND `item`=21703;

-- pool shaman/paladin
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=34046 AND `item`=21704;
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=34046 AND `item`=21705;

-- pattern drop
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10, `groupid`=7 WHERE  `entry`=15263 AND `item`=22222;

-- remove old loot
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15263 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15263 AND `item`=190045;

-- gold drop
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=450000, `maxgold`=550000 WHERE  `entry`=15263;

-- 15516 sartura
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=9.4 WHERE  `entry`=34047;
-- lower for weapons
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34047 AND `item`=21673;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34047 AND `item`=21666;

-- paladin/shaman
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=34047 AND `item`=21667;
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=34047 AND `item`=21668;

-- delete old
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15516 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15516 AND `item`=190045;

-- 15510 Fankriss
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=34048 AND `item`=22396;
UPDATE `zp_mangosd`.`reference_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=34048 AND `item`=22402;

UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=10.1112 WHERE  `entry`=34048;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34048 AND `item`=22396;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34048 AND `item`=22402;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34048 AND `item`=21650;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34048 AND `item`=21635;

-- delete old
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15510 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15510 AND `item`=190045;

-- 15509 hurhuran
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15509 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15509 AND `item`=190045;

-- loot drop chance
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15509 AND `item`=21616;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15509 AND `item`=21617;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15509 AND `item`=21618;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15509 AND `item`=21619;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15509 AND `item`=21620;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15509 AND `item`=21621;

UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15509 AND `item`=20928;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=3 WHERE  `entry`=15509 AND `item`=20932;

-- 15276 Vek'lor
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15276 AND `item`=21597;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15276 AND `item`=20930;

-- chance for loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15276 AND `item`=21598;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15276 AND `item`=21599;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15276 AND `item`=21600;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15276 AND `item`=21601;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15276 AND `item`=21602;
-- delete old
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15276 AND `item`=34045;

-- 15275 vek'nilash
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15275 AND `item`=20926;
-- paladin / shaman
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=15275 AND `item`=21606;
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=15275 AND `item`=21607;

-- drop chances
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21604;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21605;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21606;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21607;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21608;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15275 AND `item`=21679;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15275 AND `item`=21609;

-- delete old
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15275 AND `item`=34045;

-- C'thun
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=10.1112 WHERE  `entry`=34049;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34049 AND `item`=21134;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34049 AND `item`=21126;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=3 WHERE  `entry`=34049 AND `item`=21839;

-- organize loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15727 AND `item`=34049;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15727 AND `item`=20929;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=3 WHERE  `entry`=15727 AND `item`=20933;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=4 WHERE  `entry`=15727 AND `item`=21221;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=5 WHERE  `entry`=15727 AND `item`=22734;

-- viscidus
-- remove old loot
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15299 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15299 AND `item`=190045;

UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15299 AND `item`=20928;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=3 WHERE  `entry`=15299 AND `item`=20932;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15299 AND `item`=21622;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=21623;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=21624;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=21625;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=21626;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=21677;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE  `entry`=15299 AND `item`=22399;

-- paladin/shaman
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=15299 AND `item`=21623;
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=15299 AND `item`=21624;

-- Ouro
-- remove old
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15517 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15517 AND `item`=90045;

UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15517 AND `item`=20927;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=3 WHERE  `entry`=15517 AND `item`=20931;

-- drop chances
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=16 WHERE  `entry`=15517 AND `item`=21610;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=16 WHERE  `entry`=15517 AND `item`=23557;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=17 WHERE  `entry`=15517 AND `item`=21611;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=17 WHERE  `entry`=15517 AND `item`=21615;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=17 WHERE  `entry`=15517 AND `item`=23558;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=17 WHERE  `entry`=15517 AND `item`=23570;

-- bug trio

-- yauj
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15543 AND `item`=34045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15543 AND `item`=190045;

-- Paladin/shaman
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=469 WHERE  `entry`=15543 AND `item`=21683;
UPDATE `zp_mangosd`.`creature_loot_template` SET `lootcondition`=6, `condition_value1`=67 WHERE  `entry`=15543 AND `item`=21684;

-- vem
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15544 AND `item`=190045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15544 AND `item`=34045;

-- kri
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15511 AND `item`=190045;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=15511 AND `item`=34045;

-- imperial qiraji regalia and armaments 4% alla utom skeram 1%
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212320, 21232, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (212320, 21237, 0, 1, 1, 1, 0, 0, 0);

-- add to bosses
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15263, 212320, 1, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15516, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15510, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15509, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15276, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15275, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15299, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15517, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15543, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15544, 212320, 4, 6, -212320, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (15511, 212320, 4, 6, -212320, 1, 0, 0, 0);

-- Rep aq40
-- c'thun cc and brood
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15727, 910, 609, 7, 0, 500, 7, 0, 500, 0);

-- trash rep
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15264, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15262, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15230, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15229, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15240, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15236, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15235, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15277, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15249, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- no rep from twins
DELETE FROM `zp_mangosd`.`creature_onkill_reputation` WHERE  `creature_id`=15276;
DELETE FROM `zp_mangosd`.`creature_onkill_reputation` WHERE  `creature_id`=15275;

-- Quests
-- mortal champions
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`=8579 WHERE  `entry`=8595;
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8579, 2, 3428, 60, 60, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 8595, 0, 0, 0, 0, 0, 'Mortal Champions', 'I see that you\'re no ordinary mortal, $n. Your chances against the Old God, however infinitely small, are greater than ours at this point. After all, while he expects dragons at his doorstep, he is not prepared for someone like you.$b$bJust as Anachronos and Staghelm defeated the Qiraji a thousand years ago through the alliance of mortal and dragon races, we too shall form a pact. Gain the trust of the Bronze Dragonflight and you\'ll gain our trust. Only then we shall make a true champion out of you.', 'Bring a Qiraji Lord\'s Insignia to Kandrostrasz.', 'I see that you\'re no ordinary mortal, $n. Your chances against the Old God, however infinitely small, are greater than ours at this point. After all, while he expects dragons at his doorstep, he is not prepared for someone like you.$b$bJust as Anachronos and Staghelm defeated the Qiraji a thousand years ago through the alliance of mortal and dragon races, we too shall form a pact. Gain the trust of the Bronze Dragonflight and you\'ll gain our trust. Only then we shall make a true champion out of you.', 'We sense the presence of our enslaved brethren deeper inside Ahn\'Qiraj; yet not even an army of dragons would be enough to rescue them, $r. The same spell that imprisoned them would place us firmly under C\'Thun\'s control should we come any closer to him. The Old God has foreseen our arrival.  All hope is lost.  What difference could a mere mortal like you possibly make?', '', '', '', '', '', 21229, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 910, 609, 0, 0, 0, 500, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15503, 8579);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15503, 8579);

UPDATE `zp_mangosd`.`quest_template` SET `Details`='' WHERE  `entry`=8595;

-- c'thun eye quest
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction2`=910, `RewRepValue2`=200 WHERE  `entry`=8802;
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8801, 2, 3428, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 8802, 21221, 1, 0, 'C\'Thun\'s Legacy', 'The walls of Ahn\'Qiraj tremble. A force of evil, older than the world itself, has been destroyed.$B$BAs you look at the remnants of the colossal abomination your heart nearly freezes. Even in death you can feel the legacy of C\'Thun\'s evil around you.$B$BYou have done what was thought to be impossible.$B$BYou grab at an eye stalk of the fiend, stowing it safely in your pack.$B$BTake the Eye of C\'Thun to the dragons in the next chamber. ', 'Take the Eye of C\'Thun to Caelestrasz in the Temple of Ahn\'Qiraj.', 'We will leave this place on our own, $gLord:Lady; $N - once we are certain that the evil within has been wholly destroyed. Your journey of legend is almost at an end.', '$gLord:Lady; $N, you have freed us of its grasp.', '', '', '', '', '', 21221, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 910, 0, 0, 0, 200, 200, 0, 0, 0, 0, 8580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='$gLord:Lady; $N! It is over...' WHERE  `entry`=8802;

-- ossirian head quest
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepFaction2`=910 WHERE  `entry`=8791;
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=8791 WHERE  `entry`=8791;

REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006037, 'Soldiers of Kalimdor! Heroes of Silithus! One among you has dealt a vicious blow to our mortal enemies! $N and $ghis:her; allies have relieved the Ruins of Ahn\'Qiraj of its merciless leader! Ossirian the Unscarred, scourge of Silithus, has finally been destroyed and his armies wholly dismantled!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- delete old to run it again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=8791 LIMIT 5;
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (8791, 3, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Fall of Ossirian - yell emote');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (8791, 3, 0, 6, 0, 0, 0, 0, 2000006037, 0, 0, 0, 0, 0, 0, 0, 'The Fall of Ossirian - yell');

-- armaments quests
UPDATE `zp_mangosd`.`quest_template` SET  `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `entry`=8790;
UPDATE `zp_mangosd`.`quest_template` SET  `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `entry`=8789;

-- rep AQ20 class quests
-- druid
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8708;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8700;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8692;

-- mage
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8691;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8707;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8699;

-- rogue
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8709;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8693;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8701;

-- paladin
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8703;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8711;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8695;

-- shaman
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8698;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8706;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8690;


-- hunter
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8704;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8712;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8696;

-- priest
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8689;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8697;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8705;

-- warlock
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8694;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8702;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8710;

-- warrior
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8556;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8558;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=100 WHERE  `entry`=8557;

-- AQ40 class quests
-- paladin
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Avenger\'s%' Limit 5;

-- warrior
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Conqueror\'s%' Limit 5;

-- rogue
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Deathdealer\'s%' Limit 5;

-- warlock
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Doomcaller\'s%' Limit 5;

-- mage
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Enigma%' Limit 5;

-- druid
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Genesis%' Limit 5;

-- shaman
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Stormcaller\'s%' Limit 5;

-- hunter
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like 'Striker\'s%' Limit 5;

-- priest
UPDATE `zp_mangosd`.`quest_template` SET `RewRepFaction1`=910, `RewRepValue1`=200 WHERE  `Title` Like '%of the Oracle' Limit 5;

-- Skinning 
-- AQ20
/*
15327 - hive'zara stinger ok
15325 - hive'zara wasp ok
15320 - hive'zara soldier ok
15323 - hive'zara sandstalker ok
15319 - hive'zara collector ok
15318 - hive'zara drone ok
15336 - hive'zara tail lasher - lägre, 1 och 0.2
*/
-- loot for drone
REPLACE INTO `zp_mangosd`.`skinning_loot_template` VALUES (15318, 20499, 100, 1, 1, 1, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=0 WHERE  `entry`=15338;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=15318 WHERE  `entry`=15318;

-- AQ40 no skinnable mobs

-- Misc

-- qiraji warrior stats
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=61, `minhealth`=50304, `maxhealth`=50304, `mindmg`=2540, `maxdmg`=3367 WHERE  `entry`=15324;

-- hive'zara stinger
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=50304, `maxhealth`=50304, `mindmg`=529, `maxdmg`=702 WHERE  `entry`=153270;

-- hive'zara swarmer
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=4, `speed_run`=1.17, `mindmg`=98, `attackpower`=610, `minrangedmg`=610, `maxrangedmg`=910 WHERE  `entry`=155460;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=4, `speed_run`=1.17, `mingold`=0, `maxgold`=0, `MovementType`=2, `InhabitType`=4, `ScriptName`='mob_hivezara_swarmer' WHERE  `entry`=15546;

-- hive'zara wasp
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=25152, `maxhealth`=25152, `mindmg`=1058, `maxdmg`=1403 WHERE  `entry`=153250;
-- add AI again in case it wasn't there
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (15325001, 153250, 9, 0, 100, 3, 0, 40, 5000, 7000, 11, 25185, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zara Wasp - Cast Itch');

-- hive'zara hornet elite and damage
UPDATE `zp_mangosd`.`creature_template` SET `rank`=1, `mindmg`=741, `maxdmg`=982 WHERE  `entry`=15934;

-- no gold Hive'zara drone, qiraji swarmguard
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15318;
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0 WHERE  `entry`=15343;

-- ouro gold
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=950000, `maxgold`=1050000 WHERE  `entry`=15517;

-- ouru scarab hp armor
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=10900, `maxhealth`=10900, `armor`=3791 WHERE  `entry`=15718;

-- and elite
UPDATE `zp_mangosd`.`creature_template` SET `rank`=1 WHERE  `entry`=15718;

-- remove ouro scarab from world
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=15718;

-- Qiraji Scarab hp
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=3052, `maxhealth`=3052 WHERE  `entry`=15316;

-- adjust large obsidian chunk drop
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `mincountOrRef`=1 WHERE  `entry`=17884 AND `item`=22202;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=0.4 WHERE  `entry`=17884 AND `item`=12363;

UPDATE `zp_mangosd`.`gameobject_loot_template` SET `groupid`=2 WHERE  `entry`=17884;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=60, `groupid`=1 WHERE  `entry`=17884 AND `item`=22202;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=40, `groupid`=1 WHERE  `entry`=17884 AND `item`=22203;

-- small chunk
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `groupid`=2 WHERE  `entry`=17883;

UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=96, `groupid`=1 WHERE  `entry`=17883 AND `item`=22202;
UPDATE `zp_mangosd`.`gameobject_loot_template` SET `ChanceOrQuestChance`=4, `groupid`=1 WHERE  `entry`=17883 AND `item`=22203;

-- AQ 10 hour war troops

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40225, 15858, 1, 0, 15858, -6828.29, 652.416, 14.2534, 5.33893, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40224, 15858, 1, 0, 15858, -6827.78, 647.389, 13.6453, 5.35464, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40223, 15858, 1, 0, 15858, -6838.63, 645.789, 11.3279, 5.4214, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40222, 15858, 1, 0, 15858, -6833.88, 643.94, 12.0907, 5.30359, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40221, 15858, 1, 0, 0, -6784.56, 639.087, 11.9291, 3.68488, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40220, 15858, 1, 0, 0, -6785.84, 636.225, 11.5967, 3.57099, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40219, 15858, 1, 0, 0, -6784.16, 629.125, 8.78576, 3.51209, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40218, 15858, 1, 0, 0, -6786.59, 631.436, 10.3425, 3.51601, 25, 5, 0, 4000, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40218, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40219, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40220, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40221, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40222, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40223, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40224, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40225, 54);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40342, 15857, 1, 0, 0, -6780.88, 639.898, 11.0534, 3.51601, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40343, 15857, 1, 0, 0, -6779.95, 634.574, 9.14664, 3.65739, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40344, 15857, 1, 0, 0, -6789.41, 633.218, 11.4153, 3.54351, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40345, 15857, 1, 0, 15857, -6828.4, 642.411, 12.9077, 5.25961, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40346, 15857, 1, 0, 15857, -6838.55, 652.009, 11.863, 5.32008, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (40347, 15857, 1, 0, 15857, -6832.6, 656.077, 13.7368, 5.20227, 25, 5, 0, 4000, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40342, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40343, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40344, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40345, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40346, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (40347, 54);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48007, 15859, 1, 0, 0, -6783.93, 634.246, 10.5125, 3.5867, 25, 5, 0, 4000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48006, 15859, 1, 0, 15859, -6832.08, 648.118, 12.8304, 5.24469, 25, 5, 0, 4000, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48006, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48007, 54);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48107, 15860, 1, 0, 0, -6859.88, 798.849, 42.8934, 3.08417, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48108, 15860, 1, 0, 0, -6867.26, 815.657, 42.6114, 2.89568, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48109, 15860, 1, 0, 0, -6876.24, 832.373, 40.3973, 3.15015, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48110, 15860, 1, 0, 0, -6887.64, 860.983, 35.5763, 3.02193, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48111, 15860, 1, 0, 0, -6902.94, 885.535, 31.3395, 3.07455, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48112, 15860, 1, 0, 0, -6879.17, 908.905, 31.8162, 2.70698, 25, 5, 0, 960, 2434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48113, 15860, 1, 0, 0, -6892.61, 903.267, 30.2302, 2.67949, 25, 5, 0, 960, 2434, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48107, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48108, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48109, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48110, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48111, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48112, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48113, 54);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48228, 15868, 1, 0, 0, -6782.82, 817.134, 55.747, 5.71124, 25, 5, 0, 32344, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48229, 15870, 1, 0, 0, -6781.85, 812.917, 56.3579, 0.60942, 25, 5, 0, 10846, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48230, 15866, 1, 0, 0, -6778.23, 811.795, 55.7477, 1.78345, 25, 5, 0, 45763, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48231, 14720, 1, 0, 1907, -6774.61, 816.054, 55.7469, 3.38031, 25, 5, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48232, 15869, 1, 0, 0, -6777.95, 819.14, 55.747, 4.4029, 25, 5, 0, 15234, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48228, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48229, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48230, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48231, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48232, 54);

REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (13789, 180605, 1, -6935.66, 959.3, 14.6997, 4.04475, 0, 0, 0.899759, -0.436387, 25, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (13788, 180605, 1, -6926.03, 948.187, 16.6403, 3.93794, 0, 0, 0.921771, -0.387734, 25, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (13790, 180744, 1, -6983.77, 935.529, 10.8646, 0.446636, 0, 0, 0.221467, 0.975168, 25, 100, 1);

REPLACE INTO `zp_mangosd`.`game_event_gameobject` (`guid`, `event`) VALUES (13789, 54);
REPLACE INTO `zp_mangosd`.`game_event_gameobject` (`guid`, `event`) VALUES (13788, 54);
REPLACE INTO `zp_mangosd`.`game_event_gameobject` (`guid`, `event`) VALUES (13790, 54);

REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (13792, 178646, 1, -6781.8, 812.971, 55.7477, 0.606438, 0, 0, 0.298594, 0.95438, 25, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (13791, 180852, 1, -6779.05, 815.084, 55.7472, 6.28224, 0, 0, 0.000470551, -1, 25, 100, 1);

REPLACE INTO `zp_mangosd`.`game_event_gameobject` (`guid`, `event`) VALUES (13791, 54);
REPLACE INTO `zp_mangosd`.`game_event_gameobject` (`guid`, `event`) VALUES (13792, 54);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48391, 15855, 1, 0, 1373, -6970.09, 930.576, 12.3907, 1.09397, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48392, 15855, 1, 0, 1373, -6965.77, 927.642, 12.5248, 1.12932, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48393, 15855, 1, 0, 1373, -6961.01, 925.162, 13.2761, 0.956529, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48394, 15855, 1, 0, 1373, -6957.07, 922.043, 14.5706, 1.07041, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48395, 15855, 1, 0, 1373, -6953.57, 920.256, 15.1483, 1.05078, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48396, 15855, 1, 0, 1373, -6950.3, 918.273, 15.2458, 1.06256, 25, 5, 0, 14539, 12170, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48391, 55);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48392, 55);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48393, 55);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48394, 55);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48395, 55);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (48396, 55);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52124, 15855, 1, 0, 1373, -6970.09, 930.576, 12.3907, 1.09397, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52125, 15855, 1, 0, 1373, -6965.77, 927.642, 12.5248, 1.12932, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52126, 15855, 1, 0, 1373, -6961.01, 925.162, 13.2761, 0.956529, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52127, 15855, 1, 0, 1373, -6957.07, 922.043, 14.5706, 1.07041, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52128, 15855, 1, 0, 1373, -6953.57, 920.256, 15.1483, 1.05078, 25, 5, 0, 14539, 12170, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (52129, 15855, 1, 0, 1373, -6950.3, 918.273, 15.2458, 1.06256, 25, 5, 0, 14539, 12170, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52124, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52125, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52126, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52127, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52128, 54);
REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (52129, 54);

-- More aq 10 hour war event

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52442, 1, -6970.21, 939.54, 13.7144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58318, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52129, 1, -6967.33, 935.938, 13.8174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.48107, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52128, 1, -6957.71, 958.351, 14.9562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7756, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52127, 1, -6959.57, 953.45, 14.5987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74811, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52126, 1, -6961.5, 949.048, 13.9553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73241, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52125, 1, -6963.27, 944.352, 13.5925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.68136, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (52124, 1, -6965.28, 939.385, 14.218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62638, 0, 0);

DELETE FROM `zp_mangosd`.`game_event_creature` WHERE  `guid`=52457 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=52457 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48231, 14720, 1, 0, 1907, -6981.97, 958.803, 10.0798, 2.58161, 25, 0, 0, 600000, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48231, 14720, 1, 0, 1907, -6981.97, 958.803, 10.0798, 2.58161, 25, 0, 0, 600000, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (48231, 1, -6983.27, 959.511, 9.84839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63188, 0, 0);

-- AQ event troop respawn timers

UPDATE zp_mangosd.creature INNER JOIN zp_mangosd.game_event_creature ON zp_mangosd.creature.guid = zp_mangosd.game_event_creature.guid SET zp_mangosd.creature.spawntimesecs = 300 WHERE zp_mangosd.game_event_creature.event = 54 OR zp_mangosd.game_event_creature.event = 55;

-- AQ supply troops patrols

UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=12790 LIMIT 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=12789 LIMIT 1;

-- AQ supply troops saurfang faction

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (14720, 0, 0, 14732, 0, 'High Overlord Saurfang', NULL, 0, 62, 62, 600000, 600000, 0, 0, 5892, 1080, 1080, 3, 1.1, 3.28571, 0, 1, 1118, 1440, 0, 295, 1, 1158, 0, 0, 1, 37376, 0, 0, 0, 0, 0, 0, 63.1904, 86.8868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 1907, 0, 0, 650854239, 256, '');

-- AQ20
-- 15343 - qiraji swarmguard root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15343;
-- 15324 - qiraji gladiator allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15324;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=153240;

-- 15327 - hive'zara stinger root 
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15327;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=153270;

-- 15325 - hive'zara wasp root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15325;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=153250;

-- 15387 - qiraji warrior rajaxx mob, ska gå allt 0
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15387;

-- 15344 - swarmguard needler, rajaxx mob ska gå allt 0
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15344;

-- 15338 - obsidian destroyer allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15338;

-- 15462 - spitting scarab - root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15462;

-- 15461 - shrieker scarab - root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15461;

-- 15335 - flesh hunter - allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15335;

-- 15333 - silithid feeder 0 INTE HA MANA ELLER VARA ELITE
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0, `armor`=3791, `faction_A`=32, `faction_H`=32, `rank`=0, `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15333;

-- 15521 - hive'zara hatchling, inte ändra
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15521;

-- 15555 - hive'zara larva, IMMUN ALLT
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650330111 WHERE  `entry`=15555;

-- 15320 - hive'zara soldier root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15320;

-- 15323 - hive'zara sandstalker root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15323;

-- 155460 - hive'zara swarmer, 0
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=155460;

-- 15546 - hive'zara swarmer, 0
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15546;

-- 15319 - hive'zara collector - root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15319;

-- 15318 - hive'zara drone - root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15318;

-- 15336 - hive'zara tail lasher - root
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330047 WHERE  `entry`=15336;

-- 15355 - anubisath guardian - allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15355;

-- 15505 - canal frenzy, 0
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15505;

-- minibosses shouldn't be mechanical, 15391 - qeez, 15392 - tuubid, 15390 - xurrem, 15388 - pakkon, 15385 - zerran, 15386 - yeggeth, 15389 - drenn
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15391;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15392;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15390;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15388;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15385;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15386;
UPDATE `zp_mangosd`.`creature_template` SET `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15389;

-- aq20 bossar
-- 15348 - kurinnaxx allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=513 WHERE  `entry`=15348;

-- 15341 - general rajaxx
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15341;

-- 15340 - moam (optional) allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15340;

-- 15370 - buru the gorger (optional) allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=513 WHERE  `entry`=15370;

-- 15369 - ayamiss the hunter (optional) all
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=513 WHERE  `entry`=15369;

-- 15339 - ossirian the unscarred - allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=513 WHERE  `entry`=15339;

-- AQ40 mobs

-- 15984 - sartura guards stunable
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650328063 WHERE  `entry`=15984;

-- 15264 - anubisath sentinel beefn'
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15264;

-- 15262 - obsidian eradicator beefn
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15262;

-- 15233 - vekniss guardian noob?
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15233;

-- 15247 - brainwasher, halvnoob?
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15247;

-- 15230 - vekniss warrior
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15230;

-- 15300 - vekniss drone - 0 inte immun
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15300;

-- 15229 - vekniss soldier
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15229;

-- 15240 - vekniss hive crawler
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15240;

-- 15236 - vekniss wasp
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15236;

-- 15235 - vekniss stinger
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15235;

-- 15538 - anubisath swarmguard, supernoob inge loot
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15538;

-- 15277 - anubisath defender beefn'
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15277;

-- 15316 - qiraji scarab - 0 inte immun
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15316;

-- 15317 - qiraji scorpion - 0 inte immun
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15317;

-- 15250 - qiraji slayer
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15250;

-- 15249 - qiraji lasher
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15249;

-- 15537 - anubisath warrior noob inge drop
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15537;

-- 15252 - qiraji champion
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15252;

-- 15312 - obsidian nullifier beefn'
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15312;

-- 15311 - anubisath warder
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15311;

-- 15246 - qiraji mindslayer
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15246;

-- 15718 - ouro scarab 0 inte immun något
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50 WHERE  `entry`=15718;

-- cthun mobs allt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15725;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15726;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15728;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15334;
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15802;

-- bossar aq40 - immunities and taunt immune
-- 15263 - skeram allt, ska gå CS
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=616775679 WHERE  `entry`=15263;

-- 15511 - kri opt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15511;

-- 15543 - yauj opt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15543;

-- 15544 - vem opt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15544;

-- 15516 - sartura
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650328063 WHERE  `entry`=15516;

-- 15510 - fankriss
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111 WHERE  `entry`=15510;

-- 15299 - viscidus opt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15299;

-- 15509 - huhuran
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15509;

-- 15276 - veklor
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15276;

-- 15275 veknilash
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15275;

-- 15517 - ouru opt
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15517;

-- 15727 - cthun
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15727;

-- 15589 - eye of cthun
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650330111, `flags_extra`=769 WHERE  `entry`=15589;

-- aq20
-- mana fiend stats and hitbox
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `maxgold`=0, `mechanic_immune_mask`=650330111 WHERE  `entry`=15527;
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1552703, 15527, 11, 0, 100, 0, 0, 0, 0, 0, 44, 64, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mana fiend - Set arcane immunity on spawn');
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1.2 WHERE  `modelid`=15547;

-- vem kri and yauj speed and aggro range test if 50 is better
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=5, `aggrorangeoverride`=40 WHERE  `entry`=15544;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.9 WHERE  `entry`=15511;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.9 WHERE  `entry`=15543;

-- larva at ayamiss shouldn't be boss mob
UPDATE `zp_mangosd`.`creature` SET `id`=15333 WHERE  `guid`=85896;

-- 15630 - spawn of fankriss
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=650328063 WHERE  `entry`=15630;

-- 15962 - vekniss hatchling
UPDATE `zp_mangosd`.`creature_template` SET `resistance2`=50, `resistance3`=50, `resistance4`=50, `resistance5`=50, `resistance6`=50, `mechanic_immune_mask`=641940463 WHERE  `entry`=15962;

-- Black Qiraji Resonating Crystal corrected spell to 3 sec
UPDATE `zp_mangosd`.`item_template` SET `spellid_1`=26656 WHERE  `entry`=21176;

-- respawn time for buru eggs
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=120 WHERE  `id`=15514;

-- hatchling stats
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.25, `scale`=0 WHERE  `entry`=15521;

-- ouro scarab speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.25 WHERE  `entry`=15718;

-- AQ40
-- new entries for caelestrasz
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (153790, 0, 0, 15419, 0, 'Caelestrasz', NULL, 0, 63, 63, 365000, 365000, 78600, 78600, 3791, 35, 35, 2, 1.1, 1.11286, 0, 3, 1403, 1599, 0, 693, 1, 1300, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 2, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 3, 'npc_caelestrasz');
UPDATE `zp_mangosd`.`creature` SET `id`=153790 WHERE  `guid`=87562;

-- Merithra of the Dream
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (153780, 0, 0, 15420, 0, 'Merithra of the Dream', NULL, 0, 63, 63, 346200, 346200, 78600, 78600, 3791, 35, 35, 2, 1.1, 1.11286, 0, 3, 1297, 1542, 0, 655, 1, 1300, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 2, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 3, 'npc_merithra');
UPDATE `zp_mangosd`.`creature` SET `id`=153780 WHERE  `guid`=87561;

-- Arygos
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (153800, 0, 0, 15418, 0, 'Arygos', NULL, 0, 63, 63, 384000, 384000, 78600, 78600, 3795, 35, 35, 2, 1.1, 1.11286, 0, 3, 3127, 3822, 0, 1604, 1, 1300, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 2, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 617299803, 3, 'npc_arygos');
UPDATE `zp_mangosd`.`creature` SET `id`=153800 WHERE  `guid`=87563;

-- quests for the new templates
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (153800, 8789);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (153790, 8802);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (153780, 8790);

REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (153780, 8790);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (153790, 8801);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (153800, 8789);

-- FACTION FOR 10H WAR TREWPS

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15853, 0, 0, 15823, 0, 'Orgrimmar Elite Infantryman', NULL, 0, 60, 60, 9298, 9298, 0, 0, 0, 495, 495, 0, 1.5, 0.95, 0, 0, 731, 885, 0, 373, 1, 1420, 1562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 15853, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15861, 0, 0, 15835, 0, 'Ironforge Infantryman', NULL, 0, 59, 60, 862, 881, 0, 0, 0, 495, 495, 0, 1, 1.11286, 0, 1, 330, 476, 0, 186, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 783, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15855, 0, 0, 15827, 0, 'Tauren Rifleman', NULL, 0, 60, 60, 14539, 15392, 12170, 12170, 0, 495, 495, 0, 1.48, 1.11286, 0, 1, 335, 484, 0, 189, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 1373, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15860, 0, 0, 15689, 0, 'Kaldorei Marksman', NULL, 0, 60, 60, 960, 960, 2434, 2434, 0, 495, 495, 0, 1, 1.11286, 0, 1, 335, 484, 0, 189, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 15860, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15857, 0, 0, 15861, 0, 'Stormwind Cavalryman', NULL, 0, 61, 61, 4000, 4000, 0, 0, 0, 495, 495, 0, 1.23, 0.95, 0, 0, 149, 180, 0, 76, 1, 1460, 1606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 15857, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15858, 0, 0, 15832, 0, 'Stormwind Infantryman', NULL, 0, 60, 60, 4000, 4000, 0, 0, 0, 495, 495, 0, 1.23, 0.95, 0, 0, 149, 180, 0, 76, 1, 1460, 1606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 15858, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15859, 0, 0, 15833, 0, 'Stormwind Archmage', NULL, 0, 62, 62, 4000, 4000, 0, 0, 0, 495, 495, 0, 1.23, 0.95, 0, 0, 149, 180, 0, 76, 1, 1460, 1606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1211, 13011, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 15859, 0, 0, 0, 0, 'generic_creature');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15870, 0, 0, 15845, 0, 'Duke August Foehammer', NULL, 0, 63, 63, 10846, 10846, 0, 0, 0, 495, 495, 0, 1.5, 1.11286, 0, 1, 483, 584, 0, 246, 1, 1500, 1650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.6, 107.6, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 8009, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15868, 0, 0, 15843, 0, 'Highlord Leoric Von Zeldig', NULL, 0, 63, 63, 32344, 32344, 0, 0, 0, 495, 495, 0, 1.5, 1.11286, 0, 1, 411, 516, 0, 214, 1, 1450, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85.3, 111.6, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 1338, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15869, 0, 0, 15844, 0, 'Malagav the Tactician', NULL, 0, 60, 60, 15234, 15234, 0, 0, 0, 495, 495, 0, 1.5, 1.11286, 1.35, 1, 431, 519, 0, 219, 1, 1400, 1550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75.9, 101.6, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15866, 0, 0, 15842, 0, 'High Commander Lynore Windstryke', NULL, 0, 63, 63, 45763, 45763, 0, 0, 0, 495, 495, 0, 1.5, 1.11286, 0, 1, 411, 516, 0, 214, 1, 1400, 1550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89.8, 121.7, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 8008, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (14720, 0, 0, 14732, 0, 'High Overlord Saurfang', NULL, 0, 62, 62, 600000, 600000, 0, 0, 5892, 495, 495, 3, 1.1, 3.28571, 0, 1, 1118, 1440, 0, 295, 1, 1158, 0, 0, 1, 37376, 0, 0, 0, 0, 0, 0, 63.1904, 86.8868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 1907, 0, 0, 650854239, 256, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15862, 0, 0, 15848, 0, 'Ironforge Cavalryman', NULL, 0, 61, 61, 4000, 4000, 0, 0, 0, 495, 495, 0, 2.25, 0.95, 0, 0, 149, 180, 0, 76, 1, 1420, 1562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15854, 0, 0, 15825, 0, 'Orgrimmar Elite Cavalryman', NULL, 0, 60, 60, 9278, 9278, 0, 0, 0, 495, 495, 0, 1.5, 0.95, 0, 0, 601, 755, 0, 313, 1, 1420, 1562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 599, 4836, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');

-- Glob of Viscidus stats
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0, `armor`=3791, `speed_run`=0.13, `rank`=0, `type`=10, `mechanic_immune_mask`=650330111 WHERE  `entry`=15667;

-- new dummy for viscidus
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800109, 0, 0, 6296, 0, 'Viscidus Dummy', NULL, 0, 62, 62, 646473, 646473, 0, 0, 0, 35, 35, 0, 1, 0.95, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 128, '');

-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (87940, 800109, 531, 6296, 0, -7990.69, 922.47, -52.8781, 2.01064, 30, 0, 0, 600000, 0, 0, 0);

-- fankriss aggro range
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=70 WHERE  `entry`=15510;

-- add template for fankriss dummy
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800110, 0, 0, 6296, 0, 'Fankriss Aggro Dummy', NULL, 0, 62, 62, 646473, 646473, 0, 0, 0, 35, 35, 0, 1, 0.95, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_fankriss_aggro_dummy');

-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (87912, 800110, 531, 0, 0, -8020.91, 1227.27, -84.5965, 3.18877, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87913, 800110, 531, 0, 0, -8038.71, 1243.6, -85.1917, 0.32992, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87914, 800110, 531, 0, 0, -8024.76, 1238.52, -84.2484, 0.78154, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87915, 800110, 531, 0, 0, -8015.99, 1208.24, -86.4364, 0.25137, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87916, 800110, 531, 0, 0, -8032.32, 1178.52, -89.8358, 6.22038, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87917, 800110, 531, 0, 0, -8062, 1151.69, -91.1445, 3.93881, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87918, 800110, 531, 0, 0, -8141.24, 1208.36, -92.0793, 6.11436, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87919, 800110, 531, 0, 0, -8008.72, 1190.52, -86.9502, 0.577309, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87920, 800110, 531, 0, 0, -8056.97, 1253.9, -87.3126, 5.87088, 30, 0, 0, 646473, 0, 0, 0);

-- vekniss hatchling and spawn of fankriss stats, fankriss speed
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=2000, `maxdmg`=2500, `baseattacktime`=2000 WHERE  `entry`=15630;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=675, `maxdmg`=950 WHERE  `entry`=15962;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.64 WHERE  `entry`=15510;

-- aggro range for huhuran
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=70 WHERE  `entry`=15509;

-- Colossus should not respawn during 10h event

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (12786, 15742, 1, 0, 0, -6547.64, 971.98, 0.376849, 3.91513, 86400, 5, 0, 3331000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (12785, 15741, 1, 0, 0, -7828.12, 536.281, -35.5381, 2.92552, 86400, 5, 0, 3331000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (12784, 15740, 1, 0, 0, -7322.63, 1648.95, -31.4682, 3.84444, 86400, 5, 0, 3331000, 0, 0, 0);

-- 10 hour war RP

REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1720262, 'I am Saurfang. Brother of Broxigar. You know me to be the Supreme Commander of the Might of Kalimdor. An orc - a true orc warrior - wishes for one thing: To die in the glory of battle against a hated enemy. Some of you have fought in battles. Peace has been with us for many years. Many years we sat idle but many years we battled. In those years - where strife, the land and Legion and Scourge, sacked our homes, killed our families  these insects dwelled beneath us. Beneath our homes  waiting. Waiting to crush the life from our little ones. To slay all in their path. This they do for their god. And for our gods? We defend. We stand. We show that as one. United. We destroy. Their god will fall. To die today, on this field of battle, is to die an orcish death. To die today is to die for our little ones. Our old ones. Our  loved ones. Would any of you deny yourselves such a death? Such an honor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1720261, 'FOR HONOR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1720260, 'FER MAGNI!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15861, 0, 0, 15835, 0, 'Ironforge Infantryman', NULL, 0, 59, 60, 862, 881, 0, 0, 0, 495, 495, 0, 1, 1.11286, 0, 1, 330, 476, 0, 186, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 783, 0, 0, 0, 0, 'mob_tenhourwar_generic_rp');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (15860, 0, 0, 15689, 0, 'Kaldorei Marksman', NULL, 0, 60, 60, 960, 960, 2434, 2434, 0, 495, 495, 0, 1, 1.11286, 0, 1, 335, 484, 0, 189, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 15860, 0, 0, 0, 0, 'mob_tenhourwar_generic_rp');
REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (14719, 0, 0, 14732, 0, 'High Overlord Saurfang', NULL, 0, 62, 62, 600000, 600000, 0, 0, 5892, 495, 495, 3, 1.1, 3.28571, 0, 1, 1118, 1440, 0, 295, 1, 1158, 0, 0, 1, 37376, 0, 0, 0, 0, 0, 0, 63.1904, 86.8868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 1, 1907, 0, 0, 650854239, 2, 'mob_tenhourwar_generic_rp');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48231, 14719, 1, 0, 1907, -6958.01, 945.391, 14.5456, 2.67115, 300, 0, 0, 600000, 0, 0, 2);

-- AQ40 hitboxes
-- eradicator + skeram
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=15346;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.6, `combat_reach`=1.7 WHERE  `modelid`=15345;

-- vekniss guardian + brainwasher
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.6, `combat_reach`=1.7 WHERE  `modelid`=15360;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.9, `combat_reach`=2 WHERE  `modelid`=14521;

-- vekniss warrior
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.9, `combat_reach`=2 WHERE  `modelid`=15334;

-- bug trio vem, kri, yauj
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.9, `combat_reach`=2 WHERE  `modelid`=15658;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=3.1, `combat_reach`=3.2 WHERE  `modelid`=15656;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=3.1, `combat_reach`=3.2 WHERE  `modelid`=15657;

-- sartura guards, sartura box and speed
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15465;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.3, `combat_reach`=1.4 WHERE  `modelid`=15583;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.55, `speed_run`=2.14 WHERE  `entry`=15984;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.55, `speed_run`=2.14 WHERE  `entry`=15516;

-- drone + soldier
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15362;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15434;

-- spawn of fankriss
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15582;

-- viscidus, speed box and dummy for aggro
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=4.5, `combat_reach`=4.6 WHERE  `modelid`=15686;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.2, `aggrorangeoverride`=70 WHERE  `entry`=15299;
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800111, 0, 0, 6296, 0, 'Viscidus Aggro Dummy', NULL, 0, 62, 62, 646473, 646473, 0, 0, 0, 35, 35, 0, 1, 0.95, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_viscidus_aggro_dummy');
-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (87921, 800111, 531, 0, 0, -7999.13, 976.354, -42.307, 1.51524, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87922, 800111, 531, 0, 0, -7977.07, 986.838, -41.2089, 4.49975, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87923, 800111, 531, 0, 0, -8014.93, 998.422, -40.2564, 1.98648, 30, 0, 0, 646473, 0, 0, 0);

-- hive crawler, wasp, stinger
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15533;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15335;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15338;

-- huhuran
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2.1, `combat_reach`=2.2 WHERE  `modelid`=15739;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.21 WHERE  `entry`=15509;

-- defender
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15351;

-- scarab, scorpion
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=9354;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=9749;

-- twins + speed
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15778;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15761;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.04 WHERE  `entry`=15276;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=2.04 WHERE  `entry`=15275;

-- warrior swarmguard
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.9, `combat_reach`=1 WHERE  `modelid`=15545;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.9, `combat_reach`=1 WHERE  `modelid`=15354;

-- champion + mindslayer
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15340;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.6, `combat_reach`=1.7 WHERE  `modelid`=15740;

-- ouro scarab
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1.1 WHERE  `modelid`=11108;

-- cthun p1
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=12.2, `combat_reach`=12.3 WHERE  `modelid`=15556;

-- claw tentacle, eye tentacle, giant claw, flesh
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=1.2 WHERE  `modelid`=15789;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15788;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.3 WHERE  `modelid`=15790;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=2.1 WHERE  `modelid`=15793;

-- tentacle armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791 WHERE  `entry`=15802;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791 WHERE  `entry`=15726;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791 WHERE  `entry`=15725;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4091 WHERE  `entry`=15334;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4091 WHERE  `entry`=15728;

-- armor and aggro for cthun
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691, `aggrorangeoverride`=40 WHERE  `entry`=15589;

-- obsidian nullifier stats
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=125750, `maxhealth`=125750, `minmana`=50050, `maxmana`=50050, `armor`=3795, `mindmg`=1950, `maxdmg`=2285, `attackpower`=2000, `AIName`='', `ScriptName`='mob_obsidian_nullifier' WHERE  `entry`=15312;

-- eradicator armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3795 WHERE  `entry`=15262;

-- vekniss hatchling armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791 WHERE  `entry`=15962;

-- Ouro ground visual
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (157120, 0, 0, 15294, 0, 'Npc Ouro Ground', NULL, 0, 63, 63, 999999, 999999, 0, 0, 0, 35, 35, 0, 1, 0.75, 0, 0, 2, 2, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'npc_ouro_ground');
-- add to world
REPLACE INTO `zp_mangosd`.`creature` VALUES (87924, 157120, 531, 15294, 0, -9186.93, 2088.43, -64.1258, 0.300496, 604800, 0, 0, 1934097, 0, 0, 0);

-- aq 10 hour war RP

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_tenhourwar_generic_rp' WHERE  `entry`=15868 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_tenhourwar_generic_rp' WHERE  `entry`=15866 LIMIT 1;

REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1720264, 'FOR KALIMDOR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES (-1720263, 'I am with you until I gasp my last dying breath.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48228, 15868, 1, 0, 1338, -6956.07, 950.558, 15.1366, 2.60493, 300, 0, 0, 32344, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (48230, 15866, 1, 0, 8008, -6970.29, 946.567, 12.7232, 2.51486, 300, 0, 0, 45763, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (48230, 1, -6983.22, 954.272, 10.6251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.60911, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (48228, 1, -6979.13, 963.973, 10.0648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58137, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (48231, 1, -6983.27, 959.511, 9.84839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63188, 0, 0);

    /*Anubisath mobs*/


    /*Anubisath Sentinel*/
    UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61' WHERE (`entry`='15264');
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='110040', `maxhealth`='110040' WHERE (`entry`='15264');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1799', `maxdmg`='2385' WHERE (`entry`='15264');

    /*Anubisath Defender*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='485550', `maxhealth`='485550' WHERE (`entry`='15277');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='3237', `maxdmg`='4294' WHERE (`entry`='15277');

    /*Anubisath Warrior*/
    UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61', `maxlevel`='61' WHERE (`entry`='15537');
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='37728', `maxhealth`='37728' WHERE (`entry`='15537');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='317', `maxdmg`='421' WHERE (`entry`='15537');

    /*Anubisath Warder*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='299790', `maxhealth`='299790' WHERE (`entry`='15311');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='3075', `maxdmg`='4077' WHERE (`entry`='15311');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15311');


    /*Obsidian mobs*/


    /*Obsidian Eradicator*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='170940', `maxhealth`='170940' WHERE (`entry`='15262');
    UPDATE `zp_mangosd`.`creature_template` SET `armor`='4091' WHERE (`entry`='15262');

    /*Obsidian Nullifier*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='120000', `maxhealth`='120000' WHERE (`entry`='15312');
    UPDATE `zp_mangosd`.`creature_template` SET `armor`='4091' WHERE (`entry`='15312');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1140', `maxdmg`='1750' WHERE (`entry`='15312');



    /*Qiraji mobs*/


    /*Qiraji Brainwasher*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='78600', `maxhealth`='78600' WHERE (`entry`='15247');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1270', `maxdmg`='1684' WHERE (`entry`='15247');

    /*Qiraji Champion*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='266480', `maxhealth`='266480' WHERE (`entry`='15252');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2746', `maxdmg`='3640' WHERE (`entry`='15252');

    /*Qiraji Lasher*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='94320', `maxhealth`='94320' WHERE (`entry`='15249');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1524', `maxdmg`='2020' WHERE (`entry`='15249');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15249');

    /*Qiraji Slayer*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='100600', `maxhealth`='100600' WHERE (`entry`='15250');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1971', `maxdmg`='2707' WHERE (`entry`='15250');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15250');

    /*Qiraji Mindslayer*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='125760', `maxhealth`='125760' WHERE (`entry`='15246');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2116', `maxdmg`='2806' WHERE (`entry`='15246');


    /*Vekniss mobs*/


    /*Vekniss Guardian*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='62880', `maxhealth`='62880' WHERE (`entry`='15233');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1587', `maxdmg`='2105' WHERE (`entry`='15233');

    /*Vekniss warrior*/
    UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61' WHERE (`entry`='15230');
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='50304', `maxhealth`='50304' WHERE (`entry`='15230');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1270', `maxdmg`='1684' WHERE (`entry`='15230');

    /*Vekniss Drone*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='6104', `maxhealth`='6104' WHERE (`entry`='15300');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='208', `maxdmg`='276' WHERE (`entry`='15300');

    /*Vekniss Soldier*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='81744', `maxhealth`='81744' WHERE (`entry`='15229');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='847', `maxdmg`='1122' WHERE (`entry`='15229');

    /*Vekniss Hive Crawler*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='97110', `maxhealth`='97110' WHERE (`entry`='15240');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2158', `maxdmg`='2862' WHERE (`entry`='15240');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15240');

    /*Vekniss Wasp*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='30520', `maxhealth`='30520' WHERE (`entry`='15236');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='831', `maxdmg`='1103' WHERE (`entry`='15236');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15236');

    /*Vekniss Stinger*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='64740', `maxhealth`='64740' WHERE (`entry`='15235');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1295', `maxdmg`='1717' WHERE (`entry`='15235');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15235');


    /*Boss mobs*/


    /*The Prophet Skeram*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='466375', `maxhealth`='466375' WHERE (`entry`='15263');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2045', `maxdmg`='2707' WHERE (`entry`='15263');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15263');

    /*Princess Yauj*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='299790', `maxhealth`='299790' WHERE (`entry`='15543');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2197', `maxdmg`='2912' WHERE (`entry`='15543');

    /*Vem*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='433030', `maxhealth`='433030' WHERE (`entry`='15544');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2471', `maxdmg`='3276' WHERE (`entry`='15544');

    /*Lord Kri*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='266480', `maxhealth`='266480' WHERE (`entry`='15511');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='3432', `maxdmg`='4550' WHERE (`entry`='15511');

    /*Battleguard Sartura*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='749475', `maxhealth`='749475' WHERE (`entry`='15516');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1977', `maxdmg`='2621' WHERE (`entry`='15516');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15516');

    /*Sartura's Royal Guard*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='94320', `maxhealth`='94320' WHERE (`entry`='15984');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1524', `maxdmg`='2020' WHERE (`entry`='15984');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15984');

    /*Fankriss the Unyielding.*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='999300', `maxhealth`='999300' WHERE (`entry`='15510');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2197', `maxdmg`='2912' WHERE (`entry`='15510');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15510');

    /*Viscidus*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='1998600', `maxhealth`='1998600' WHERE (`entry`='15299');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2356', `maxdmg`='3123' WHERE (`entry`='15299');

    /*Princess Huhuran*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='999300', `maxhealth`='999300' WHERE (`entry`='15509');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2746', `maxdmg`='3640' WHERE (`entry`='15509');
    UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='15509');

    /*Emperor Vek'nilash*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='2165150', `maxhealth`='2165150' WHERE (`entry`='15275');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='3295', `maxdmg`='4368' WHERE (`entry`='15275');

    /*Emperor Vek'lor*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='1732250', `maxhealth`='1732250' WHERE (`entry`='15276');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='3067', `maxdmg`='4060' WHERE (`entry`='15276');

    /*Ouro*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='1998600', `maxhealth`='1998600' WHERE (`entry`='15517');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='5190', `maxdmg`='6880' WHERE (`entry`='15517');

    /*C'thun*/
    UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='999300', `maxhealth`='999300' WHERE (`entry`='15727');
    UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='110', `maxdmg`='146' WHERE (`entry`='15727');

-- dirt mound speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.15 WHERE  `entry`=15712;

-- mindslayer should only MC tank
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param2`=1 WHERE  `id`=1524602;

-- AQ 10 hour war crystal
REPLACE INTO `zp_mangosd`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180810, 5, 6573, 'Resonating Crystal Formation', 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- AQ 10 hour war crystal mobs

-- health / armor / damage
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=220, `maxdmg`=331 WHERE  `entry`=15751 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=5550, `maxhealth`=6100 WHERE  `entry`=15748 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=129, `maxdmg`=166 WHERE  `entry`=15748 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2400 WHERE  `entry`=15748 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3489 WHERE  `entry`=15755 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2725 WHERE  `entry`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1686 WHERE  `entry`=15807 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1000 WHERE  `entry`=15810 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `subname`='' WHERE  `entry`=15815 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=1032 WHERE  `entry`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=1368 WHERE  `entry`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=106820, `maxhealth`=106820 WHERE  `entry`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=1032 WHERE  `entry`=15755 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=1368 WHERE  `entry`=15755 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=509 WHERE  `entry`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=614 WHERE  `entry`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=1032 WHERE  `entry`=15743 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=1368 WHERE  `entry`=15743 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=715, `maxdmg`=815 WHERE  `entry`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2725 WHERE  `entry`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2725 WHERE  `entry`=15743 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=2000, `maxhealth`=2000 WHERE  `entry`=15813 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1000 WHERE  `entry`=15813 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=93, `maxdmg`=134 WHERE  `entry`=15813 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1686 WHERE  `entry`=15814 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=143 WHERE  `entry`=15814 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=207 WHERE  `entry`=15814 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=3405, `maxhealth`=3405 WHERE  `entry`=15814 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=28710, `maxhealth`=28710 WHERE  `entry`=15816 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3489 WHERE  `entry`=15816 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=323 WHERE  `entry`=15816 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxdmg`=466 WHERE  `entry`=15816 LIMIT 1;

-- Rep
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15810, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15807, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15751, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15748, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15758, 910, 0, 5, 1, 5, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15755, 910, 0, 5, 1, 5, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15743, 910, 0, 5, 1, 5, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15817, 910, 0, 5, 1, 5, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15754, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15814, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15813, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15816, 910, 0, 5, 1, 1, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15815, 910, 0, 5, 1, 1, 0, 0, 0, 0);

-- add vile scarabs from stock mangos to AQ20
REPLACE INTO `zp_mangosd`.`creature` VALUES (140217, 15168, 509, 0, 0, -8532.81, 1467.03, 31.9923, 6.23083, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140218, 15168, 509, 0, 0, -8566.46, 1399.42, 31.9903, 3.21141, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140219, 15168, 509, 0, 0, -8600.14, 1466.59, 31.9903, 2.18166, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140220, 15168, 509, 0, 0, -8600.33, 1600.62, 31.9904, 2.02458, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140221, 15168, 509, 0, 0, -8665.98, 1566.63, 31.9904, 2.3911, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140222, 15168, 509, 0, 0, -8666.03, 1432.59, 32.6509, 2.00713, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140223, 15168, 509, 0, 0, -8666.48, 1667.62, 21.5036, 6.23083, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140224, 15168, 509, 0, 0, -8666.83, 1499.21, 32.7247, 5.25344, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140225, 15168, 509, 0, 0, -8733.77, 1600.12, 21.4697, 3.24631, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140226, 15168, 509, 0, 0, -8848.91, 1845.96, 21.4697, 2.05949, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140227, 15168, 509, 0, 0, -8917.9, 1547.61, 21.4697, 0.994838, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140228, 15168, 509, 0, 0, -9000.71, 1700.1, 21.5722, 4.43314, 3600, 10, 0, 5228, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (140229, 15168, 509, 0, 0, -9066.02, 1733.49, 21.5309, 3.24631, 3600, 10, 0, 5228, 0, 0, 1);

-- stats
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=32, `faction_H`=32, `scale`=0 WHERE  `entry`=15168;

-- flesh hunter, move and make sure it has all its wp
REPLACE INTO `zp_mangosd`.`creature` VALUES (85111, 153350, 509, 0, 0, -9363.46, 1284.25, -24.0262, 5.40267, 3600, 0, 0, 51792, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 1, -9352.39, 1267.24, -34.2035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036066, 2.4732, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 2, -9360.25, 1279.47, -23.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036067, 2.15119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 3, -9366.71, 1285.55, -22.4651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036068, 2.3868, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 4, -9386.56, 1289.44, -11.8196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036069, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 5, -9402.34, 1292.52, -2.0562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036070, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 6, -9416.08, 1295.21, 6.83314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036071, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 7, -9427.79, 1298.82, 9.89147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036072, 2.84233, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 8, -9437.33, 1300.08, 16.2222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036073, 3.0112, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 9, -9450, 1298.42, 21.3802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036074, 3.28609, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 10, -9455.3, 1292.02, 21.3989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036075, 4.02436, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 11, -9452.52, 1283.04, 21.183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036076, 5.00218, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 12, -9441.91, 1268.03, 21.3712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036077, 5.32812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 13, -9418.56, 1252.2, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036078, 5.68547, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 14, -9392.12, 1242.65, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036079, 5.9368, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 15, -9385.69, 1237.38, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036080, 5.59515, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 16, -9369.68, 1221.85, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036081, 5.61479, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 17, -9358.42, 1214.7, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036082, 5.72474, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 18, -9354.77, 1213.2, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036083, 5.8936, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 19, -9367.22, 1219.61, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036084, 2.66562, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 20, -9396.04, 1244.64, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036085, 2.42607, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 21, -9439.14, 1264.78, 21.3617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036086, 2.70489, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 22, -9458.82, 1289.38, 21.3868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036087, 2.24543, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 23, -9459.95, 1299.59, 21.3939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036088, 1.67209, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 24, -9450.95, 1330.01, 21.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036089, 1.28331, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 25, -9352.39, 1267.24, -34.2035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036090, 2.4732, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 26, -9360.25, 1279.47, -23.9646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036091, 2.15119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 27, -9366.71, 1285.55, -22.4651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036092, 2.3868, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 28, -9386.56, 1289.44, -11.8196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036093, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 29, -9402.34, 1292.52, -2.0562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036094, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 30, -9416.08, 1295.21, 6.83314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036095, 2.94836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 31, -9427.79, 1298.82, 9.89147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036096, 2.84233, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 32, -9437.33, 1300.08, 16.2222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036097, 3.0112, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 33, -9450, 1298.42, 21.3802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036098, 3.28609, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 34, -9455.3, 1292.02, 21.3989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036099, 4.02436, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 35, -9452.52, 1283.04, 21.183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036100, 5.00218, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 36, -9441.91, 1268.03, 21.3712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036101, 5.32812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 37, -9418.56, 1252.2, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036102, 5.68547, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 38, -9392.12, 1242.65, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036103, 5.9368, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 39, -9385.69, 1237.38, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036104, 5.59515, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 40, -9369.68, 1221.85, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036105, 5.61479, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 41, -9358.42, 1214.7, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036106, 5.72474, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 42, -9354.77, 1213.2, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036107, 5.8936, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 43, -9367.22, 1219.61, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036108, 2.66562, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 44, -9396.04, 1244.64, 21.3869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036109, 2.42607, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 45, -9439.14, 1264.78, 21.3617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036110, 2.70489, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 46, -9458.82, 1289.38, 21.3868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036111, 2.24543, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 47, -9459.95, 1299.59, 21.3939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036112, 1.67209, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 48, -9450.95, 1330.01, 21.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036113, 1.28331, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 49, -9436.43, 1345.32, 21.3853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036114, 0.812075, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 50, -9424.92, 1350.08, 21.4035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036115, 0.391887, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 51, -9408.73, 1350.14, 21.3971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036116, 0.007041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 52, -9399.12, 1356.82, 21.3863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036117, 0.607871, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 53, -9392.95, 1369.14, 21.3924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036118, 1.1066, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 54, -9389.9, 1388.69, 21.3866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036119, 1.42076, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (85111, 55, -9386.42, 1393.09, 21.3866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3036120, 0.776731, 0, 0);

-- speed for kurinnaxx
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.64 WHERE  `entry`=15348;

-- hitbox for tyrant devilsaur
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.8 WHERE  `modelid`=5240;

-- AQ 10 hour war

UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15738 WHERE  `entry`=15818 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011158, 15818, 0, 0, 100, 0, 30000, 30000, 30000, 30000, 11, 26167, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lieutenant general nokhor - Colossal Smash');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011159, 15818, 0, 0, 100, 0, 10000, 15000, 10000, 15000, 11, 19643, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lieutenant general nokhor - Colossal Smash');

UPDATE `zp_mangosd`.`creature_template` SET `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=15818 LIMIT 1;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=3000 WHERE  `guid`=3034099 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=15741 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=15740 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4691 WHERE  `entry`=15818 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15818, 34002, 100, 0, -34002, 2, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (32695, 15818, 1, 0, 0, -7435.24, -3588.81, 11.5004, 0.696611, 3000, 5, 0, 490589, 393000, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 1, -7432.52, -3566.45, 9.92427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4777, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 2, -7407.78, -3538.71, 9.08789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.849159, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 3, -7388.24, -3506.73, 12.2038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.837377, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 4, -7428.52, -3471.95, 13.1676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.00715, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 5, -7470.39, -3490.61, 10.6596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.54631, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 6, -7500.57, -3535.61, 11.4199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.24531, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 7, -7497.5, -3595.05, 10.2093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.14459, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (32695, 8, -7478.03, -3637.27, 12.822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.21135, 0, 0);

UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15755 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15743 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15818, 910, 0, 5, 1, 250, 0, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`game_event_creature` (`guid`, `event`) VALUES (32695, 54);

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15810 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15807 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15754 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15751 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15748 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15815 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15816 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15814 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15813 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_anubisath_warbringer' WHERE  `entry`=15755 LIMIT 1;

UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15758 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=50 WHERE  `creature_id`=15754 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=5 WHERE  `creature_id`=15751 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=5 WHERE  `creature_id`=15748 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15743 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=5 WHERE  `creature_id`=15815 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=5 WHERE  `creature_id`=15816 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=250 WHERE  `creature_id`=15818 LIMIT 1;

UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=4000 WHERE  `entry`=15860 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `maxhealth`=4000 WHERE  `entry`=15860 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=4000, `maxhealth`=4000 WHERE  `entry`=15861 LIMIT 1;

-- Fix typo in quest Highperch Venom
UPDATE `zp_mangosd`.`quest_template` SET `Objectives`='Bring 10 Highperch Venom Sacs to Fiora Longears in Theramore.' WHERE (`entry`='1135');

-- Fix the look of Blooddreched Mask
UPDATE `zp_mangosd`.`item_template` SET `displayid`='15308' WHERE (`entry`='22718');

-- Brumeran, set movement type to pathing_barriers and set new spawn point
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`='2' WHERE (`entry`='10807');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('41758', '10807', '1', '0', '0', '6370.82', '-4194.23', '708.745', '3.76561', '333', '0', '0', '11705', '0', '0', '2');

-- Brumeran, add pathing
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '1', '6370.82', '-4194.23', '708.745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041983', '3.76561', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '2', '6349.9', '-4206.46', '715.207', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041984', '3.67137', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '3', '6319.9', '-4217.94', '722.16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041985', '3.34935', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '4', '6288.01', '-4225.18', '725.532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041986', '3.36506', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '5', '6260.12', '-4239.74', '734.515', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041987', '3.60853', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '6', '6231.03', '-4244.07', '738.138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041988', '3.30615', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '7', '6203.26', '-4261.42', '736.144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041989', '3.72634', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '8', '6184.36', '-4273.23', '742.282', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041990', '3.62031', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '9', '6168.84', '-4280.29', '745.575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041991', '3.56534', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '10', '6154.23', '-4286.06', '740.624', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041992', '3.50643', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '11', '6109.75', '-4301.72', '728.056', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041993', '3.45931', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '12', '6080.95', '-4319.68', '724.259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041994', '3.73027', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '13', '6057.93', '-4342.09', '719.754', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041995', '3.91484', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '14', '6021.58', '-4365.48', '716.958', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041996', '3.71849', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '15', '5989.76', '-4394.76', '716.306', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041997', '3.91091', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '16', '5973.93', '-4418.03', '715.933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041998', '4.11119', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '17', '5956.22', '-4462.41', '710.215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3041999', '4.38215', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '18', '5943.75', '-4518.63', '715.417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042000', '4.51566', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '19', '5936.7', '-4549.95', '718.925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042001', '4.39393', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '20', '5909.41', '-4586.01', '724.435', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042002', '4.05228', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '21', '5875.39', '-4598.82', '739.676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042003', '3.96981', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '22', '5845.86', '-4631.08', '751.177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042004', '4.18187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '23', '5816.55', '-4701.07', '760.861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042005', '4.30753', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '24', '5787.69', '-4729.97', '770.126', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042006', '3.26295', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '25', '5768.05', '-4730.58', '774.834', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042007', '3.17263', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '26', '5739.69', '-4727.63', '776.264', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042008', '2.52861', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '27', '5718.7', '-4709.89', '780.701', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042009', '2.39509', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '28', '5705.17', '-4696.53', '780.427', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042010', '2.15947', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '29', '5691.86', '-4673.18', '776.577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042011', '2.08486', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '30', '5669.54', '-4632.35', '770.852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042012', '2.06129', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '31', '5648.36', '-4589.5', '769.567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042013', '1.96312', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '32', '5629.96', '-4550.37', '761.589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042014', '2.06915', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '33', '5607.27', '-4519.12', '760.518', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042015', '2.23801', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '34', '5586.91', '-4501.79', '759.632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042016', '2.60322', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '35', '5560.44', '-4494.66', '758.15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042017', '2.98021', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '36', '5531.03', '-4495.38', '755.837', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042018', '3.21976', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '37', '5497.07', '-4498.04', '752.834', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042019', '3.21976', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '38', '5530.47', '-4496.55', '755.706', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042020', '0.042816', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '39', '5565.78', '-4497.01', '758.221', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042021', '5.84691', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '40', '5592.22', '-4515.04', '761.912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042022', '5.57595', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '41', '5622.05', '-4553.12', '763.248', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042023', '5.28929', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '42', '5638.92', '-4581.15', '768.811', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042024', '5.25002', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '43', '5669.69', '-4633.75', '770.815', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042025', '5.22646', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '44', '5694.72', '-4677.55', '777.916', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042026', '5.24217', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '45', '5715', '-4707.29', '780.729', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042027', '5.3639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '46', '5736.35', '-4729.28', '776.74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042028', '5.72125', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '47', '5757.9', '-4736.91', '776.15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042029', '6.165', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '48', '5781.88', '-4730.75', '771.861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042030', '0.317711', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '49', '5814.98', '-4714.05', '760.925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042031', '0.612235', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '50', '5846', '-4681.19', '755.202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042032', '0.808585', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '51', '5877.29', '-4649.47', '745.214', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042033', '0.816439', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '52', '5905.39', '-4617.47', '734.097', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042034', '0.875344', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '53', '5924.5', '-4584.62', '719.5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042035', '1.07562', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '54', '5943.86', '-4547.4', '716.829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042036', '1.09133', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '55', '5957.07', '-4519.55', '712.669', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042037', '1.14631', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '56', '5964.55', '-4493.08', '707.478', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042038', '1.29553', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '57', '5972.93', '-4450.03', '710.08', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042039', '1.30339', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '58', '5991.99', '-4412.85', '713.003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042040', '1.02457', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '59', '6015.32', '-4388.93', '714.437', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042041', '0.808585', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '60', '6049.93', '-4355.97', '716.326', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042042', '0.714337', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '61', '6083.83', '-4328.14', '725.357', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042043', '0.596527', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '62', '6112.93', '-4314.77', '730.298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042044', '0.376616', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '63', '6136.34', '-4308.82', '734.252', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042045', '0.140996', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '64', '6155.18', '-4306.13', '736.16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042046', '0.459082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '65', '6183.18', '-4310.58', '736.884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042047', '0.247025', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '66', '6205.23', '-4292.02', '732.276', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042048', '0.973518', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '67', '6219.72', '-4261.92', '735.699', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042049', '1.04813', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '68', '6240.99', '-4247.77', '736.161', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042050', '0.545476', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '69', '6268.9', '-4234.89', '732.184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042051', '0.356981', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '70', '6307.5', '-4224.48', '724.615', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042052', '0.243098', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '71', '6342.48', '-4215.8', '718.878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042053', '0.3452', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '72', '6359.93', '-4203.03', '712.671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042054', '0.63187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('41758', '73', '6384.73', '-4184.79', '704.849', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3042055', '0.643651', '0', '0');


-- Weaponmaster Sayoc in Orgrimmar shouldn't mention Silvermoon anymore
UPDATE `zp_mangosd`.`npc_text` SET `text0_0`='Archibald, Undercity\'s weapon master, can train you; he is in the War Quarter.' WHERE (`ID`='10779');
UPDATE `zp_mangosd`.`npc_text` SET `text0_1`='Archibald, Undercity\'s weapon master, can train you; he is in the War Quarter.' WHERE (`ID`='10779');
UPDATE `zp_mangosd`.`npc_text` SET `text0_0`='The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity.' WHERE (`ID`='10777');
UPDATE `zp_mangosd`.`npc_text` SET `text0_1`='The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity.' WHERE (`ID`='10777');

-- Adjust respawn timers for several npcs
-- Colonel Kurzen
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='600' WHERE (`guid`='1481');
-- Tethis
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='600' WHERE (`guid`='1342');
-- Kind Bangalash
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='900' WHERE (`guid`='2169');
-- Mistress Natalia 
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='900' WHERE (`guid`='43097');
-- Sin'Dall
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='600' WHERE (`guid`='2127');
-- Bhag'thera
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`='600' WHERE (`guid`='1348');

-- Twilight Prophets, south one
-- add two mobs, adjust respawn timer and movement type
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('10494', '800008', '1', '0', '0', '-7570.81', '1701.4', '5.3528', '4.18844', '25', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('10495', '11880', '1', '0', '306', '-7570.81', '1701.4', '5.3528', '4.18844', '300', '0', '0', '3883', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('42969', '11880', '1', '11811', '0', '-7570.81', '1701.4', '5.3528', '4.18844', '300', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('43322', '15308', '1', '15373', '0', '-7570.81', '1701.4', '5.3528', '4.18844', '14400', '0', '0', '600000', '11502', '0', '0');

-- set up formation
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('10494', '10494', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('10494', '43322', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('10494', '42969', '2', '270', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('10494', '10495', '2', '90', '2');

-- add pathing to the prophet's dummy
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '1', '-7574.52', '1695.76', '5.37053', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043057', '4.12954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '2', '-7580.3', '1686.99', '5.08518', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043058', '4.12954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '3', '-7586.85', '1677.06', '5.01298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043059', '4.12954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '4', '-7593.16', '1667.49', '5.83941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043060', '4.12954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '5', '-7598.17', '1657.06', '2.92171', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043061', '4.29839', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '6', '-7599.15', '1649.15', '1.12362', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043062', '4.56543', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '7', '-7605.11', '1635.55', '1.60166', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043063', '4.29839', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '8', '-7609.32', '1625.93', '1.59502', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043064', '4.31017', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '9', '-7612.34', '1618.13', '2.4147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043065', '4.55757', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '10', '-7613.11', '1608.6', '2.67941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043066', '4.42013', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '11', '-7616.91', '1599.19', '4.43854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043067', '4.3141', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '12', '-7620.5', '1592.34', '5.69754', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043068', '4.09812', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '13', '-7624.48', '1588.78', '6.14029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043069', '3.77218', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '14', '-7630.39', '1586.88', '5.86006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043070', '3.37948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '15', '-7637.69', '1587.27', '5.53186', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043071', '3.04176', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '16', '-7645.7', '1590.09', '5.09842', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043072', '2.74331', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '17', '-7648.85', '1592.96', '4.896', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043073', '2.38988', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '18', '-7653.71', '1599.81', '4.46223', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043074', '2.17389', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '19', '-7658.43', '1610.13', '5.55651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043075', '1.96576', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '20', '-7661.53', '1620.36', '6.52057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043076', '1.85188', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '21', '-7667.28', '1630.25', '6.33222', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043077', '2.14641', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '22', '-7683.33', '1643.96', '5.26506', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043078', '2.44093', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '23', '-7696.71', '1655.24', '6.93672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043079', '2.44093', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '24', '-7710.39', '1666.14', '6.47792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043080', '2.51554', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '25', '-7733.5', '1681.94', '7.47707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043081', '2.55874', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '26', '-7755.82', '1696.03', '2.35385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043082', '2.58623', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '27', '-7764.29', '1701.83', '1.37475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043083', '2.4802', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '28', '-7773.55', '1713.91', '1.75859', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043084', '2.05608', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '29', '-7775.57', '1724.2', '2.28389', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043085', '1.65553', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '30', '-7776.5', '1752.14', '1.38545', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043086', '1.52594', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '31', '-7782.73', '1776.87', '1.20003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043087', '2.22495', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '32', '-7793.91', '1790.33', '-0.767349', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043088', '2.276', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '33', '-7808.52', '1807.27', '3.58441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043089', '2.28778', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '34', '-7830.82', '1827.97', '5.16363', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043090', '2.42522', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '35', '-7842.93', '1836.52', '3.8087', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043091', '2.58623', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '36', '-7859.58', '1841.9', '2.54878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043092', '2.81399', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '37', '-7879.17', '1849.42', '4.24954', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043093', '2.73545', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('10494', '38', '-7905.08', '1858.17', '3.28829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3043094', '2.94358', '0', '0');

-- Twilight Prophets, south one
-- add two mobs, adjust respawn timer and movement type
REPLACE INTO `zp_mangosd`.`creature` VALUES ('1448', '800008', '1', '0', '0', '-6752.1', '1856.98', '5.0446', '3.91044', '25', '0', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('42983', '11880', '1', '11823', '0', '-6750.87', '1857.03', '5.04945', '3.9662', '300', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('42984', '11880', '1', '11812', '0', '-6750.87', '1857.03', '5.04945', '3.9662', '300', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('43323', '15308', '1', '15373', '0', '-6752.1', '1856.98', '5.0446', '3.91044', '14400', '0', '0', '600000', '11502', '0', '0');

-- set up formation
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('1448', '1448', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('1448', '43323', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('1448', '42983', '2', '270', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('1448', '42984', '2', '90', '2');

-- add pathing to the prophet's dummy
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '1', '-6759.11', '1848.59', '4.75505', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047159', '4.01332', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '2', '-6774.87', '1829.84', '4.09737', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047160', '4.01332', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '3', '-6796.17', '1802.08', '2.65633', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047161', '4.07223', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '4', '-6814.99', '1776.82', '2.09988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047162', '4.07223', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '5', '-6829.46', '1752.89', '1.50611', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047163', '4.20181', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '6', '-6843.14', '1728.46', '3.47621', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047164', '4.20181', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '7', '-6856.83', '1704.03', '3.47838', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047165', '4.20181', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '8', '-6872.22', '1676.55', '4.7189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047166', '4.20181', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '9', '-6885.16', '1640.38', '3.03107', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047167', '4.41387', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '10', '-6875.16', '1615.99', '1.08375', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047168', '4.62199', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '11', '-6859.06', '1563.6', '-0.635531', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047169', '4.64948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '12', '-6848.12', '1511.15', '1.92289', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047170', '4.64948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '13', '-6838.12', '1461.31', '4.37632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047171', '4.64948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '14', '-6863.36', '1390.14', '3.36951', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047172', '4.5788', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '15', '-6877.56', '1352.12', '2.64496', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047173', '4.5788', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '16', '-6891.81', '1318.34', '2.42191', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047174', '4.58272', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '17', '-6899.38', '1299.47', '3.84198', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047175', '4.59058', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '18', '-6908.93', '1270.88', '0.817347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047176', '4.59058', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '19', '-6915.11', '1250.81', '4.39636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047177', '4.59843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '20', '-6922.63', '1226.36', '4.07944', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047178', '4.61806', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '21', '-6927.62', '1207.32', '4.39694', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047179', '4.52774', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '22', '-6932.8', '1199.36', '5.78382', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047180', '4.11934', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '23', '-6942.19', '1185.98', '9.6243', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047181', '4.24893', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '24', '-6937.31', '1193.01', '7.84251', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047182', '0.965963', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '25', '-6931.36', '1201.62', '5.31721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047183', '0.965963', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '26', '-6925.71', '1209.54', '3.7799', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047184', '1.06414', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '27', '-6921.07', '1227.95', '3.91709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047185', '1.31547', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '28', '-6915.02', '1249.41', '4.35671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047186', '1.29583', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '29', '-6907.79', '1272.54', '0.384373', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047187', '1.26442', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '30', '-6899.7', '1298.11', '3.65345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047188', '1.26442', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '31', '-6893.55', '1316.11', '2.91573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047189', '1.233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '32', '-6878.7', '1351.78', '2.54359', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047190', '1.15839', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '33', '-6863.95', '1388.22', '3.32821', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047191', '1.1898', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '34', '-6848.92', '1426.62', '0.367135', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047192', '1.20551', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '35', '-6837.37', '1457.95', '4.37115', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047193', '1.233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '36', '-6831.39', '1486.82', '0.594194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047194', '1.36652', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '37', '-6829.91', '1518.13', '-0.60206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047195', '1.55501', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '38', '-6837.03', '1541.29', '1.29376', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047196', '1.8731', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '39', '-6848.14', '1568.55', '1.80092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047197', '1.97127', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '40', '-6860.17', '1598.24', '-0.087305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047198', '1.86917', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '41', '-6864.05', '1615.49', '0.55422', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047199', '1.78278', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '42', '-6869.32', '1637.12', '3.25275', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047200', '1.79063', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '43', '-6874.13', '1662.18', '4.01711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047201', '1.72387', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '44', '-6872.2', '1674.5', '4.71376', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047202', '1.39008', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '45', '-6860.43', '1697.91', '3.61161', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047203', '1.09163', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '46', '-6844.32', '1726.43', '3.23925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047204', '1.04843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '47', '-6828.81', '1752.25', '1.60413', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047205', '1.01309', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '48', '-6815.12', '1773.86', '2.5577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047206', '0.989525', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '49', '-6794.58', '1802.61', '2.8005', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047207', '0.93062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '50', '-6779.74', '1822.51', '3.64122', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047208', '0.926693', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '51', '-6766.01', '1839.14', '4.4305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047209', '0.895278', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('1448', '52', '-6748.66', '1861.32', '4.76229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3047210', '0.907058', '0', '0');

-- Fix typo in the quest Corrupted Saber
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='%s follows $N obediently.' WHERE (`entry`='-1000542');

-- fix typoes in quests The Path of the Righteous and The Hand of the Righteous
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='You are not alone, hero. I will now grant you the ability to deputize others to help you in your quest. If you are to be the champion of your people, you will need assistance in your tasks and duties.' WHERE (`entry`='8301');
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='There is much history rooted in their distrust of the mortal races; but alas, such is a tale better left for the Brood to tell when the time is right.' WHERE (`entry`='8301');
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='Perhaps one day the whole of Cenarion Hold will be working under your command.' WHERE (`entry`='8302');

-- 30 min respawn on skeram trash
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=1800 WHERE  `id`=15264;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=1800 WHERE  `id`=15262;

-- sql from judge, all pats after twins, clusterfuck after changed to replace (y)
/*Patrol Dummy REPLACEs*/
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85302', '800008', '531', '0', '0', '-9070.36', '1381.87', '-107.257', '2.20303', '25', '5', '0', '646473', '0', '0', '2');


/*Mob REPLACEs*/
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85296', '15250', '531', '0', '0', '-9066.75', '1376.94', '-106.883', '2.20303', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85297', '15250', '531', '0', '0', '-9074.14', '1380.22', '-106.895', '2.20303', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85298', '15250', '531', '0', '0', '-9066.44', '1385.69', '-106.833', '2.20303', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85299', '15250', '531', '0', '0', '-9073.63', '1385.53', '-107.386', '2.20303', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85303', '15252', '531', '0', '0', '-9075.04', '1389.06', '-107.276', '5.20325', '25', '5', '0', '266480', '0', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85304', '800008', '531', '0', '0', '-9090.26', '1345.3', '-105.672', '2.17163', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85305', '15246', '531', '0', '0', '-9094.27', '1342.57', '-105.431', '2.1677', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85306', '15246', '531', '0', '0', '-9085.96', '1348.22', '-105.171', '2.1677', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85307', '15246', '531', '0', '0', '-9086.49', '1340.91', '-105.374', '2.1677', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85308', '15246', '531', '0', '0', '-9095.9', '1351.66', '-105.789', '2.1677', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85309', '15252', '531', '0', '0', '-9090.26', '1345.3', '-105.672', '2.17163', '25', '5', '0', '266480', '0', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85310', '800008', '531', '0', '0', '-9152.29', '1431.68', '-104.836', '2.1834', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85311', '15252', '531', '0', '0', '-9152.29', '1431.68', '-104.836', '2.1834', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85312', '15246', '531', '0', '0', '-9148.36', '1434.24', '-104.268', '2.10879', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85313', '15246', '531', '0', '0', '-9156.49', '1429.21', '-104.944', '2.1245', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85314', '15250', '531', '0', '0', '-9149.71', '1428.16', '-105.176', '2.2423', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85315', '15250', '531', '0', '0', '-9156.94', '1437.79', '-104.373', '2.2423', '25', '5', '0', '100600', '2486', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85316', '800008', '531', '0', '0', '-9222.15', '1581.7', '-75.2954', '5.18363', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85317', '15252', '531', '0', '0', '-9222.15', '1581.7', '-75.2954', '5.18363', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85318', '15250', '531', '0', '0', '-9217.21', '1584.22', '-74.4618', '5.18363', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85319', '15250', '531', '0', '0', '-9224.87', '1586.5', '-74.5473', '5.43496', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85320', '15250', '531', '0', '0', '-9220.15', '1575.8', '-76.3756', '5.28573', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85321', '15246', '531', '0', '0', '-9228.63', '1578.05', '-76.0903', '5.11295', '25', '5', '0', '125760', '0', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85322', '800008', '531', '0', '0', '-9181.11', '1608.7', '-73.9449', '4.84591', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85323', '15252', '531', '0', '0', '-9181.11', '1608.7', '-73.9449', '4.84591', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85324', '15246', '531', '0', '0', '-9176.12', '1610.44', '-73.5739', '4.91661', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85325', '15246', '531', '0', '0', '-9179.86', '1601.75', '-75.4401', '5.003', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85326', '15246', '531', '0', '0', '-9188.44', '1607', '-73.0208', '5.003', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85327', '15250', '531', '0', '0', '-9182.76', '1613.5', '-72.8004', '4.86555', '25', '5', '0', '100600', '2486', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85328', '800008', '531', '0', '0', '-9106.78', '1791.48', '-42.8634', '5.34072', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85329', '15252', '531', '0', '0', '-9106.78', '1791.48', '-42.8634', '5.34072', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85330', '15250', '531', '0', '0', '-9103.53', '1793.17', '-42.9861', '5.19149', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85331', '15250', '531', '0', '0', '-9109.91', '1788.78', '-42.766', '5.19149', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85332', '15250', '531', '0', '0', '-9104.48', '1787.67', '-42.7941', '5.19149', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85333', '15250', '531', '0', '0', '-9109.54', '1795.19', '-42.59', '4.04481', '25', '5', '0', '100600', '2486', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85334', '800008', '531', '0', '0', '-9087.06', '1811.3', '-43.984', '0.848234', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85335', '15252', '531', '0', '0', '-9087.06', '1811.3', '-43.984', '0.848234', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85336', '15246', '531', '0', '0', '-9090.79', '1813.79', '-43.8132', '1.09956', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85337', '15246', '531', '0', '0', '-9082.89', '1815.89', '-44.3909', '0.863944', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85338', '15246', '531', '0', '0', '-9080.94', '1808.31', '-43.5034', '0.863944', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85339', '15246', '531', '0', '0', '-9088.93', '1808.37', '-43.8976', '0.863944', '25', '5', '0', '125760', '0', '0', '2');

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85340', '800008', '531', '0', '0', '-9031.41', '1842.95', '-42.7706', '0.451615', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85341', '15252', '531', '0', '0', '-9031.41', '1842.95', '-42.7706', '0.451615', '25', '5', '0', '266480', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85342', '15246', '531', '0', '0', '-9024.66', '1846.8', '-43.5549', '0.581206', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85343', '15246', '531', '0', '0', '-9033.06', '1848.18', '-43.1816', '0.581206', '25', '5', '0', '125760', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85344', '15250', '531', '0', '0', '-9027.15', '1838.01', '-42.6521', '0.581206', '25', '5', '0', '100600', '2486', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85345', '15250', '531', '0', '0', '-9035.01', '1840.42', '-42.3483', '0.581206', '25', '5', '0', '100600', '2486', '0', '2');


/*Patrol Formations*/

/*First formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85302', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85303', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85296', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85297', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85298', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85302', '85299', '5', '270', '2');

/*Second formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85304', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85309', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85305', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85306', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85307', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85304', '85308', '5', '270', '2');

/*Third formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85310', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85311', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85312', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85313', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85314', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85310', '85315', '5', '270', '2');

/*Fourth formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85316', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85317', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85318', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85319', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85320', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85316', '85321', '5', '270', '2');

/*Fifth formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85322', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85323', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85324', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85325', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85326', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85322', '85327', '5', '270', '2');

/*Sixth formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85328', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85329', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85330', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85331', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85332', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85328', '85333', '5', '270', '2');

/*Seventh formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85334', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85335', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85336', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85337', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85338', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85334', '85339', '5', '270', '2');

/*Eight formation*/
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85340', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85341', '0', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85342', '5', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85343', '5', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85344', '5', '180', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('85340', '85345', '5', '270', '2');



/*Patrol waypoints*/

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '1', '-9081.9', '1398.5', '-107.29', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.20696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '2', '-9086.46', '1416.25', '-107.029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.64147', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '3', '-9068.91', '1429.07', '-106.273', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.63616', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '4', '-9064.82', '1443.73', '-107.632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.32338', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '5', '-9083.01', '1481.12', '-105.7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.03024', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '6', '-9102.43', '1492.09', '-101.903', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.61929', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '7', '-9117.66', '1491.58', '-100.018', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.16907', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '8', '-9123.43', '1489.86', '-100.796', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.43218', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '9', '-9100.8', '1491.28', '-102.236', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.06282', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '10', '-9086.83', '1482.87', '-105.333', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.74125', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '11', '-9066.17', '1449.13', '-107.617', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.25431', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '12', '-9068', '1435.79', '-106.952', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.57494', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '13', '-9085.46', '1416.87', '-106.976', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.96626', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85302', '14', '-9083.39', '1401.89', '-107.242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.84982', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '1', '-9106.94', '1362.61', '-106.143', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.32086', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '2', '-9118.07', '1385.1', '-106.258', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77894', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '3', '-9084.72', '1413.88', '-107.008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.706867', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '4', '-9101.97', '1437.47', '-106.472', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.17949', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '5', '-9126.91', '1475.88', '-103.26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.16771', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '6', '-9125.83', '1481.92', '-102.575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.734357', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '7', '-9106.23', '1492.81', '-101.163', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.486956', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '8', '-9089.76', '1495.95', '-103.188', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.188505', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '9', '-9122.43', '1486.11', '-101.381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.44005', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '10', '-9123.07', '1468.18', '-104.252', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.83806', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '11', '-9099.43', '1435.12', '-106.586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.31715', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '12', '-9092.71', '1410.85', '-107.281', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.13513', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '13', '-9111.34', '1386.74', '-105.483', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.06837', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85304', '14', '-9104.64', '1360.22', '-106.077', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.16792', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '1', '-9163.97', '1449.67', '-103.078', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.20696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '2', '-9175.19', '1470.26', '-99.6402', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.87317', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '3', '-9168.34', '1483.04', '-97.2106', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.777534', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '4', '-9156.69', '1488.36', '-96.8865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.318076', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '5', '-9141.1', '1484.37', '-101.091', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.98865', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '6', '-9108.02', '1451.6', '-105.365', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.41532', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '7', '-9094.63', '1414.08', '-107.285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.90088', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '8', '-9103.35', '1398.17', '-105.455', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.02124', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '9', '-9126.01', '1396.15', '-106.297', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.05127', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85310', '10', '-9142.68', '1417.46', '-105.965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.19519', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '1', '-9213.78', '1566.57', '-77.7229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.10902', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '2', '-9175.36', '1555.31', '-83.9846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.22429', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '3', '-9156.72', '1531.54', '-91.9381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.13259', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '4', '-9145.72', '1511.7', '-96.1024', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.21898', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '5', '-9157.54', '1532.81', '-91.6772', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.07346', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '6', '-9163.74', '1547.11', '-88.4636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.97921', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '7', '-9183.28', '1556.05', '-81.3458', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.71748', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '8', '-9203.87', '1549.87', '-81.4224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.44005', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '9', '-9215.41', '1564.67', '-78.1311', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.20697', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85316', '10', '-9229.14', '1594.5', '-73.1725', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.99884', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '1', '-9182.75', '1640.13', '-67.9432', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.59437', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '2', '-9188.75', '1670.79', '-60.8401', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.78679', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '3', '-9178.42', '1706.15', '-47.6852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.20952', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '4', '-9158.4', '1730.75', '-41.4517', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.867875', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '5', '-9176.54', '1710.7', '-46.1457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9702', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '6', '-9185.07', '1682.05', '-56.8891', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.42966', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '7', '-9182.92', '1643.89', '-67.2502', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.79879', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '8', '-9183.73', '1611.67', '-72.9892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.69669', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '9', '-9177.6', '1582.1', '-79.456', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.98729', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85322', '10', '-9181.5', '1597.87', '-75.7693', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77501', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '1', '-9099.99', '1785.3', '-42.4452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.49385', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '2', '-9095.42', '1773.5', '-43.0439', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.81056', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '3', '-9112.6', '1752.69', '-42.8769', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.90736', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '4', '-9127.15', '1748.97', '-42.6194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.89419', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '5', '-9140.12', '1759.51', '-42.2762', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.32478', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '6', '-9144.65', '1777.82', '-42.8877', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.60614', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '7', '-9135.21', '1790.13', '-42.5253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.659734', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '8', '-9121', '1794.69', '-42.516', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.267035', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85328', '9', '-9108.96', '1793.05', '-42.7255', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.69807', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '1', '-9066.85', '1834.93', '-44.1839', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.899286', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '2', '-9044.05', '1889.75', '-45.6458', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.33911', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '3', '-9053.72', '1939.93', '-50.2274', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.91638', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '4', '-9067.01', '1965.62', '-53.0071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.28552', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '5', '-9078.48', '2003.75', '-55.0792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88889', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '6', '-9071.07', '1982.32', '-53.212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.04619', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '7', '-9064.19', '1960.73', '-53.0443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05404', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '8', '-9054.46', '1941.86', '-50.4267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.20327', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '9', '-9030.33', '1901.37', '-46.0224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.47816', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '10', '-9035.57', '1879.62', '-45.809', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.30792', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '11', '-9058.91', '1845.87', '-43.8277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.08408', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '12', '-9076.9', '1821.56', '-44.6533', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.04481', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85334', '13', '-9097.18', '1799.3', '-43.3128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.97413', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '1', '-9016.56', '1855.43', '-43.9341', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.644038', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '2', '-9002.94', '1867.99', '-42.6702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.765775', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '3', '-8981.64', '1871.72', '-39.1779', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.078551', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '4', '-8950.24', '1867.57', '-26.0678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.11827', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '5', '-8935.47', '1865.78', '-23.2979', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.16932', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '6', '-8910.35', '1861.33', '-22.5111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.09864', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '7', '-8936.49', '1865.86', '-23.4298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.00417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '8', '-8958.62', '1870.75', '-29.6014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.96097', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '9', '-8989.92', '1868.74', '-40.8059', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3576', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '10', '-9007.8', '1864.05', '-43.2615', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.6482', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('85340', '11', '-9042.5', '1843.81', '-42.6064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.67961', '0', '0');

-- spawn for scarabs and scorpions, so the ones at twins are 25 sec
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`= 25 WHERE  `id`=15316;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=25 WHERE  `id`=15317;

-- scarabs
REPLACE INTO `zp_mangosd`.`creature` VALUES (85358, 15316, 531, 0, 0, -9180.42, 1644.01, -67.2038, 4.17834, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85363, 15316, 531, 0, 0, -9175.51, 1639.33, -67.6922, 0.158676, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85364, 15316, 531, 0, 0, -9185.44, 1639.16, -67.7923, 1.80801, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85365, 15316, 531, 0, 0, -9191.88, 1645.06, -65.9098, 1.80801, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85366, 15316, 531, 0, 0, -9186.28, 1651.1, -65.5665, 0.790921, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85367, 15316, 531, 0, 0, -9176.52, 1653.17, -64.5217, 0.783067, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85368, 15316, 531, 0, 0, -9195.2, 1521.22, -88.0928, 5.04778, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85369, 15316, 531, 0, 0, -9189.52, 1519.49, -88.4132, 5.98633, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85370, 15316, 531, 0, 0, -9194.09, 1527.76, -86.4584, 2.07504, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85371, 15316, 531, 0, 0, -9203.12, 1524.97, -87.4113, 3.44164, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85372, 15316, 531, 0, 0, -9203.62, 1515.53, -89.6605, 4.659, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85373, 15316, 531, 0, 0, -9194.53, 1512.96, -89.994, 5.99418, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85374, 15316, 531, 0, 0, -9230.5, 1577.19, -76.1716, 1.95723, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500001, 15316, 531, 0, 0, -9228.97, 1587.02, -74.6024, 1.21111, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500002, 15316, 531, 0, 0, -9223.28, 1583.96, -74.9152, 5.78998, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500003, 15316, 531, 0, 0, -9223.92, 1576.32, -76.5093, 4.62759, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500004, 15316, 531, 0, 0, -9215.15, 1579.83, -75.2348, 0.358948, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500005, 15316, 531, 0, 0, -9218.46, 1589.33, -73.5216, 1.90618, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500006, 15316, 531, 0, 0, -9235.73, 1581.77, -74.4457, 4.38804, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500007, 15316, 531, 0, 0, -9166.37, 1539.57, -89.1668, 5.44833, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500008, 15316, 531, 0, 0, -9156.74, 1536.7, -90.6505, 5.99418, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500009, 15316, 531, 0, 0, -9159.37, 1526.99, -92.3375, 4.44695, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500010, 15316, 531, 0, 0, -9150.62, 1528.49, -91.9562, 0.421778, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500011, 15316, 531, 0, 0, -9172.42, 1477.73, -97.9332, 1.15612, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500012, 15316, 531, 0, 0, -9173.3, 1480.55, -97.3427, 1.87476, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500013, 15316, 531, 0, 0, -9180.98, 1477.56, -98.2893, 3.51625, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500014, 15316, 531, 0, 0, -9180.12, 1469.9, -99.8102, 4.82393, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500015, 15316, 531, 0, 0, -9174.02, 1467.76, -100.101, 5.94705, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500016, 15316, 531, 0, 0, -9102.64, 1353.6, -106.095, 5.15773, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500017, 15316, 531, 0, 0, -9098.24, 1342.66, -105.599, 5.0949, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500018, 15316, 531, 0, 0, -9091.53, 1338.92, -105.018, 5.77427, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500019, 15316, 531, 0, 0, -9083.63, 1341.36, -105.144, 0.300043, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500020, 15316, 531, 0, 0, -9078.39, 1337.57, -103.894, 4.659, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500021, 15316, 531, 0, 0, -9083.95, 1349.86, -104.906, 1.83157, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500022, 15316, 531, 0, 0, -9090.4, 1349.07, -105.475, 3.26492, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500023, 15316, 531, 0, 0, -9088.49, 1357.64, -104.329, 1.60773, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500024, 15316, 531, 0, 0, -9096.06, 1362.22, -105.222, 2.59733, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500025, 15316, 531, 0, 0, -9104.44, 1357.85, -106.199, 2.70729, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500026, 15316, 531, 0, 0, -9102.32, 1491.75, -101.935, 0.256848, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500027, 15316, 531, 0, 0, -9097.76, 1498.66, -102, 0.987268, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500028, 15316, 531, 0, 0, -9092.54, 1497.57, -102.665, 5.66039, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500029, 15316, 531, 0, 0, -9089.23, 1490.02, -104.2, 5.12632, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500030, 15316, 531, 0, 0, -9092.13, 1503.56, -101.806, 2.62875, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500031, 15316, 531, 0, 0, -9091.95, 1483.23, -104.725, 4.42339, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500032, 15316, 531, 0, 0, -9039.01, 1418.91, -105.484, 5.16952, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500033, 15316, 531, 0, 0, -9038.29, 1411.88, -104.077, 4.80431, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500034, 15316, 531, 0, 0, -9038.29, 1411.88, -104.077, 3.35133, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500035, 15316, 531, 0, 0, -9046.59, 1403.54, -103.629, 4.7729, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500036, 15316, 531, 0, 0, -9053, 1409.63, -104.917, 2.38136, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500037, 15316, 531, 0, 0, -9056.64, 1419, -106.089, 1.94153, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500038, 15316, 531, 0, 0, -9108.89, 1458.72, -104.394, 3.27279, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500039, 15316, 531, 0, 0, -9120.33, 1465.34, -104.593, 3.14712, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500040, 15316, 531, 0, 0, -9127.29, 1464.55, -104.23, 4.12887, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500041, 15316, 531, 0, 0, -9117.93, 1465.68, -104.509, 0.119411, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500042, 15316, 531, 0, 0, -9101.62, 1443.98, -105.844, 5.31875, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500043, 15316, 531, 0, 0, -9107.54, 1436.61, -106.549, 4.03462, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500044, 15316, 531, 0, 0, -9068.07, 1390.46, -106.727, 5.47583, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500045, 15316, 531, 0, 0, -9068.07, 1390.46, -106.727, 5.47583, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500046, 15316, 531, 0, 0, -9053.3, 1375.14, -104.824, 4.0896, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500047, 15316, 531, 0, 0, -9065.85, 1363.45, -104.712, 2.46383, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500048, 15316, 531, 0, 0, -9068.33, 1372.94, -106.066, 1.26609, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500049, 15316, 531, 0, 0, -9071.29, 1382.42, -107.354, 3.43772, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500050, 15316, 531, 0, 0, -9080.29, 1377.99, -106.082, 5.32268, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500051, 15316, 531, 0, 0, -9056.73, 1365.72, -105.328, 5.83318, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500052, 15316, 531, 0, 0, -9048.77, 1369.57, -104.385, 0.343248, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500053, 15316, 531, 0, 0, -9047.03, 1362.13, -104.01, 4.94176, 3600, 5, 0, 12397, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500054, 15316, 531, 0, 0, -9043.41, 1339.4, -101.407, 4.86714, 3600, 5, 0, 10592, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500055, 15316, 531, 0, 0, -9056.69, 1373.11, -105.465, 2.20464, 3600, 5, 0, 10592, 0, 0, 1);

-- scorpions
REPLACE INTO `zp_mangosd`.`creature` VALUES (85359, 15317, 531, 0, 0, -9184.94, 1646.83, -66.4613, 4.15478, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85360, 15317, 531, 0, 0, -9176.11, 1648.24, -65.6995, 6.15755, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85361, 15317, 531, 0, 0, -9180.9, 1651.7, -65.465, 6.19682, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (85362, 15317, 531, 0, 0, -9180.18, 1638.58, -68.2953, 6.19682, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500056, 15317, 531, 0, 0, -9067.42, 1377.27, -106.879, 5.3266, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500057, 15317, 531, 0, 0, -9059.91, 1371.78, -105.836, 5.84889, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500058, 15317, 531, 0, 0, -9052.87, 1367.49, -104.932, 5.39729, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500059, 15317, 531, 0, 0, -9061.79, 1362.16, -104.67, 4.59225, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500060, 15317, 531, 0, 0, -9072.9, 1371.89, -105.475, 2.34601, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500061, 15317, 531, 0, 0, -9110.25, 1448.57, -105.786, 2.29104, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500062, 15317, 531, 0, 0, -9119.19, 1453.9, -105.341, 2.77798, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500063, 15317, 531, 0, 0, -9112.2, 1464.86, -103.764, 1.00298, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500064, 15317, 531, 0, 0, -9126.89, 1457.74, -104.457, 4.73755, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500065, 15317, 531, 0, 0, -9097.4, 1441.3, -105.662, 5.84496, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500066, 15317, 531, 0, 0, -9058.93, 1417.82, -105.521, 5.73108, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500067, 15317, 531, 0, 0, -9051.08, 1415.31, -105.595, 6.12771, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500068, 15317, 531, 0, 0, -9044, 1411.12, -104.533, 5.48368, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500069, 15317, 531, 0, 0, -9039.52, 1404.63, -102.572, 0.319687, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500070, 15317, 531, 0, 0, -9043.87, 1422.26, -105.886, 1.95332, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500071, 15317, 531, 0, 0, -9049.19, 1424.88, -106.894, 2.68374, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500072, 15317, 531, 0, 0, -9044.44, 1430.13, -106.45, 0.618139, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500073, 15317, 531, 0, 0, -9048.66, 1410.08, -104.891, 3.98357, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500074, 15317, 531, 0, 0, -9082.96, 1489.27, -104.874, 2.02008, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500075, 15317, 531, 0, 0, -9090.36, 1492.99, -103.545, 2.67588, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500076, 15317, 531, 0, 0, -9098.52, 1489.17, -102.849, 3.79115, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500077, 15317, 531, 0, 0, -9108.67, 1497.19, -100.48, 2.01615, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500078, 15317, 531, 0, 0, -9101.81, 1500.64, -101.341, 0.468915, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500079, 15317, 531, 0, 0, -9094.59, 1490.42, -103.243, 5.7625, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500080, 15317, 531, 0, 0, -9086.51, 1485.52, -105.159, 5.73894, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500081, 15317, 531, 0, 0, -9177.5, 1473.15, -99.0791, 3.62229, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500082, 15317, 531, 0, 0, -9183.6, 1475.28, -98.9416, 3.29635, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500083, 15317, 531, 0, 0, -9170.84, 1473.39, -98.925, 5.88423, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500084, 15317, 531, 0, 0, -9170.25, 1465.75, -100.422, 4.91427, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500085, 15317, 531, 0, 0, -9103.34, 1362.81, -105.81, 5.34231, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500086, 15317, 531, 0, 0, -9095.14, 1357.48, -105.406, 5.9078, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500087, 15317, 531, 0, 0, -9084.22, 1345.33, -105.079, 5.39729, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500088, 15317, 531, 0, 0, -9089.58, 1341.65, -105.674, 3.74403, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500089, 15317, 531, 0, 0, -9105.92, 1349.87, -105.754, 2.65625, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500090, 15317, 531, 0, 0, -9084.81, 1352.21, -104.613, 0.142976, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500091, 15317, 531, 0, 0, -9078.85, 1344.89, -104.569, 5.56615, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500092, 15317, 531, 0, 0, -9124.62, 1391.76, -106.553, 2.15359, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500093, 15317, 531, 0, 0, -9161.79, 1537.9, -90.2745, 1.74911, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500094, 15317, 531, 0, 0, -9155.44, 1541, -89.7417, 0.641702, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500095, 15317, 531, 0, 0, -9162.96, 1526.94, -91.3664, 3.73617, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500096, 15317, 531, 0, 0, -9166.6, 1533.62, -89.8222, 1.92975, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500097, 15317, 531, 0, 0, -9159.01, 1544.58, -89.0458, 2.33423, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500098, 15317, 531, 0, 0, -9155.13, 1519.08, -94.5606, 4.10138, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500099, 15317, 531, 0, 0, -9218.79, 1577.92, -75.8546, 2.49917, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500100, 15317, 531, 0, 0, -9220.41, 1578.66, -75.8056, 2.77406, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500101, 15317, 531, 0, 0, -9234.32, 1588.9, -73.7673, 2.27533, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500102, 15317, 531, 0, 0, -9234.32, 1588.9, -73.7673, 0.84198, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500103, 15317, 531, 0, 0, -9224.45, 1598.18, -72.055, 6.23767, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500104, 15317, 531, 0, 0, -9218.38, 1603.44, -70.2037, 1.33678, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500105, 15317, 531, 0, 0, -9233.05, 1570.6, -77.1935, 4.28202, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500106, 15317, 531, 0, 0, -9202.5, 1518.7, -88.9395, 5.27947, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500107, 15317, 531, 0, 0, -9197.18, 1518.49, -88.8243, 6.26907, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500108, 15317, 531, 0, 0, -9188.7, 1513.22, -89.8097, 5.65254, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500109, 15317, 531, 0, 0, -9187.82, 1526.78, -86.5626, 1.45458, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500110, 15317, 531, 0, 0, -9186.54, 1493.03, -94.7752, 5.20093, 3600, 5, 0, 3052, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3500111, 15317, 531, 0, 0, -9179.72, 1562.36, -81.7682, 1.3564, 3600, 5, 0, 3052, 0, 0, 1);

/*Anubisath and Nullifier inserts*/

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85346', '15311', '531', '0', '0', '-9128.25', '1801.19', '-42.7065', '4.88518', '604800', '5', '0', '299790', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85347', '15312', '531', '0', '1418', '-9120.5', '1808.04', '-42.4569', '5.08154', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85348', '15312', '531', '0', '1418', '-9136.95', '1805.08', '-42.2998', '4.88518', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85349', '15311', '531', '0', '0', '-9095.69', '1768.07', '-42.86', '2.74106', '604800', '5', '0', '299790', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85350', '15312', '531', '0', '1418', '-9086.22', '1774.04', '-42.8932', '2.85101', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85351', '15312', '531', '0', '1418', '-9093.8', '1755.99', '-42.0608', '2.85101', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85352', '15311', '531', '0', '0', '-9001.79', '1919.55', '-44.0299', '3.9545', '604800', '5', '0', '299790', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85353', '15312', '531', '0', '1418', '-8991.14', '1917.09', '-43.7123', '4.02126', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85354', '15312', '531', '0', '1418', '-9004.12', '1931.29', '-43.8282', '3.94273', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85355', '15311', '531', '0', '0', '-8900.42', '1859.6', '-21.8875', '2.8903', '604800', '5', '0', '299790', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85356', '15312', '531', '0', '1418', '-8908.78', '1851.52', '-22.5006', '2.45048', '604800', '5', '0', '120000', '52206', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('85357', '15312', '531', '0', '1418', '-8901.32', '1869.42', '-21.7152', '3.283', '604800', '5', '0', '120000', '52206', '0', '0');

/*Mob scale*/
UPDATE `zp_mangosd`.`creature_template` SET `scale`='1' WHERE (`entry`='15246');

-- respawn for post twin trash
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=604800, `MovementType`=0 WHERE  `id`=15250;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=604800, `MovementType`=0 WHERE  `id`=15252;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=604800, `MovementType`=0 WHERE  `id`=15246;

-- AQ 10 hour war

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15743 AND `item`=24034 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15743, 24031, 100, 0, -24031, 1, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15743 AND `item`=24030 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15743 AND `item`=24028 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15743 AND `item`=24026 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15743 AND `item`=24030 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15743 AND `item`=24028 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15743 AND `item`=24026 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15743 AND `item`=24034 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 24031, 100, 0, -24031, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 24030, 25, 1, -24030, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 24028, 25, 1, -24028, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 24026, 25, 1, -24026, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 13446, 28.5714, 0, 2, 3, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 13444, 42.8571, 0, 2, 3, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15755, 24034, 25, 1, -24034, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15758, 24031, 100, 0, -24031, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15758, 24030, 5, 1, -24030, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15758, 24028, 5, 1, -24028, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15758, 24026, 5, 1, -24026, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15758, 24034, 5, 1, -24034, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15754, 24026, 5, 1, -24026, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15754, 24028, 5, 1, -24028, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15754, 24030, 5, 1, -24030, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15754, 24031, 75, 0, -24031, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15754, 24034, 5, 1, -24034, 1, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE  `entry`=15751 AND `item`=24045 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE  `entry`=15751 AND `item`=24044 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15751 AND `item`=24043 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15751 AND `item`=24043 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15751 AND `item`=24045 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE  `entry`=15748 AND `item`=24056 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE  `entry`=15748 AND `item`=24055 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15748 AND `item`=24054 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15748 AND `item`=24054 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15748 AND `item`=24056 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=15, `groupid`=1 WHERE  `entry`=15748 AND `item`=24052 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE  `entry`=15807 AND `item`=24068 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=1 WHERE  `entry`=15807 AND `item`=24064 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15807 AND `item`=24068 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE  `entry`=15807 AND `item`=24069 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE  `entry`=15810 AND `item`=24077 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE  `entry`=15810 AND `item`=24065 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=1 WHERE  `entry`=15810 AND `item`=24061 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15810 AND `item`=24065 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=1 WHERE  `entry`=15810 AND `item`=24063 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15817 AND `item`=24033 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15817 AND `item`=24032 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10, `groupid`=1 WHERE  `entry`=15817 AND `item`=24034 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15817 AND `item`=24032 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15816 AND `item`=24045 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15816 AND `item`=24044 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100, `groupid`=1 WHERE  `entry`=15816 AND `item`=24027 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15816 AND `item`=24045 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10, `groupid`=2 WHERE  `entry`=15816 AND `item`=24026 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15816 AND `item`=24044 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100, `groupid`=1 WHERE  `entry`=15816 AND `item`=24025 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15814 AND `item`=24068 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15814 AND `item`=24067 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15814 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15814 AND `item`=24049 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15814 AND `item`=24048 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15814 AND `item`=24069 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15814 AND `item`=24068 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15814 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15814 AND `item`=24048 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15814 AND `item`=24067 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15814 AND `item`=24049 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15814 AND `item`=24069 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15813 AND `item`=24065 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24064 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15813 AND `item`=24063 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24062 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15813 AND `item`=24065 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24064 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15813 AND `item`=24063 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24062 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE  `entry`=15813 AND `item`=24061 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24060 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=15813 AND `item`=24078 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15813 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15813 AND `item`=24064 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15813 AND `item`=24062 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15813 AND `item`=24060 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15813 AND `item`=24078 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15813 AND `item`=24065 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15813 AND `item`=24063 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15813 AND `item`=24061 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE  `entry`=15751 AND `item`=24041 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE  `entry`=15751 AND `item`=24039 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE  `entry`=15751 AND `item`=24026 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15751 AND `item`=24041 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15751 AND `item`=24039 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15751 AND `item`=24044 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15751 AND `item`=24026 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=1 WHERE  `entry`=15748 AND `item`=24050 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15748 AND `item`=24042 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15748 AND `item`=24055 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15748 AND `item`=24038 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15748 AND `item`=24057 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15807 AND `item`=24067 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15807 AND `item`=24069 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=1 WHERE  `entry`=15807 AND `item`=24066 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15807 AND `item`=24053 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15807 AND `item`=24051 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15807 AND `item`=24049 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=1 WHERE  `entry`=15810 AND `item`=24077 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`=2 WHERE  `entry`=15810 AND `item`=24077 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=15, `groupid`=2 WHERE  `entry`=15810 AND `item`=24064 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=10, `groupid`=2 WHERE  `entry`=15810 AND `item`=24062 LIMIT 1;
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=25, `groupid`=2 WHERE  `entry`=15810 AND `item`=24060 LIMIT 1;

UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=5, `groupid`=2 WHERE  `entry`=15751 AND `item`=24046 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24026, 10, 2, -24026, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24039, 25, 1, -24039, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24041, 50, 1, -24041, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24043, 25, 1, -24043, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24044, 10, 2, -24044, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24045, 50, 1, -24045, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15815, 24046, 10, 2, -24046, 1, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=100 WHERE  `creature_id`=15817 LIMIT 1;
UPDATE `zp_mangosd`.`creature_onkill_reputation` SET `RewOnKillRepValue1`=75 WHERE  `creature_id`=15758 LIMIT 1;

-- Qiraji slayer reduce threat on knockback and emote
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action2_type`=13, `action2_param1`=-20, `action2_param2`=1 WHERE  `id`=1525002;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action2_type`=1, `action2_param1`=-15252 WHERE  `id`=1525004;
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-15252, '%s lets out a battlecry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Qiraji Slayer');

-- vekniss guardian emote
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-15323, '%s emits a strange noise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Vekniss Guardian');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1523303, 15233, 0, 0, 100, 2, 0, 0, 0, 0, 1, -15323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vekniss Guardian - Emote on Aggro');

--  Qiraji Brainwasher, Vekniss Guardian, Vekniss Warrior respawn times
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15247;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15233;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15230;

-- huhuran trash
-- hive crawler, vekniss wasp, stinger, qiraji slayer
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15240;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15236;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15235;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=5400 WHERE  `id`=15249;

-- defender respawn
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=43200 WHERE  `id`=15277;

