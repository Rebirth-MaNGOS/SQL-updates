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
replace into scripted_areatrigger values ('4033', 'area_trigger_cthun_stomach_knockback');
replace into scripted_areatrigger values ('4034', 'area_trigger_cthun_stomach_teleport');

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
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3034086, 15517, 531, 0, 0, -9186.93, 2088.43, -64.1258, 0.300496, 604800, 5, 0, 1934097, 0, 0, 0);
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