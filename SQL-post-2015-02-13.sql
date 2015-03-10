-- Adds Liferoot as drops to Withervine beast
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4385', '3357', '1.2', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4382', '3357', '0.8', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4386', '3357', '5.0', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4387', '3357', '0.76', '0', '1', '1', '0', '0', '0');

-- SQL for the quest The Affray

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (6240, 0, 0, 4968, 0, 'Affray Challenger', NULL, 0, 26, 27, 810, 901, 0, 0, 0, 14, 14, 0, 1.06, 1.11286, 0, 0, 54, 63, 0, 27, 1, 1750, 1925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40.04, 55.055, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011108, 6240, 23, 0, 100, 1, 11556, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011107, 6240, 23, 0, 100, 1, 11555, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011106, 6240, 23, 0, 100, 1, 11554, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011105, 6240, 23, 0, 100, 1, 6190, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011104, 6240, 23, 0, 100, 1, 1160, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Blackrock Drakes in Blackrock Mountain

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (8964, 0, 0, 6374, 0, 'Blackrock Drake', NULL, 0, 51, 51, 13616, 13616, 6459, 6459, 0, 103, 103, 0, 3, 3, 0, 1, 276, 356, 0, 146, 1, 1250, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 56.1, 77.1375, 100, 2, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 1058, '', 2, 4, 0, 0, 1, 0, 0, 0, 0, 2, '');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3343, 8964, 0, 0, 0, -7500.4, -1109.14, 300, 4.37475, 900, 5, 0, 13616, 6459, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3344, 8964, 0, 0, 0, -7537.96, -1119.34, 350, 4.70997, 900, 5, 0, 13616, 6459, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 1, -7537.96, -1119.34, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 2, -7543.71, -1138.25, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 3, -7558.27, -1161.76, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 4, -7572.57, -1176.63, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 5, -7591.92, -1183.8, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 6, -7619.08, -1182.78, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 7, -7638.1, -1173.82, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 8, -7653.06, -1156.45, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 9, -7656.54, -1129.8, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 10, -7654.09, -1111.26, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 11, -7641.73, -1089.03, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 12, -7619.75, -1075.83, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 13, -7588.74, -1072.33, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 14, -7558.76, -1076.58, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 1, -7500.4, -1109.14, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 2, -7500.24, -1126.62, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 3, -7504.42, -1146.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 4, -7513.52, -1167.1, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 5, -7522.59, -1184.47, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 6, -7540.49, -1200.97, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 7, -7561.88, -1212.67, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 8, -7585.42, -1219.24, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 9, -7613.49, -1215.56, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 10, -7635.64, -1205.4, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 11, -7656.63, -1190.51, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 12, -7672.92, -1168.45, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 13, -7683.8, -1146.7, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 14, -7687.59, -1107.53, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 15, -7681.03, -1081.09, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 16, -7666.11, -1057.55, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 17, -7649.21, -1039.91, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 18, -7622.06, -1024.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 19, -7591.01, -1015.79, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 20, -7562.32, -1018.19, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 21, -7531.85, -1034.36, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 22, -7512.02, -1058.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 23, -7503.77, -1083.01, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/***************** Hunter epic chain SQL *********************/
-- AI for the demons, not needed but why not(these mobs are never used)
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_klinfran_the_crazed' WHERE  `entry`=14534;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_solenor_the_slayer' WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4623, `ScriptName`='boss_artorius_the_doombringer' WHERE  `entry`=14535;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_simone_the_seductress' WHERE  `entry`=14533;

UPDATE `zp_mangosd`.`creature_template` SET `armor`=4612 WHERE  `entry`=14534;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4196 WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3751 WHERE  `entry`=14533;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2943 WHERE  `entry`=14538;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=450, `maxdmg`=514 WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=48600, `maxmana`=48680 WHERE  `entry`=14530;

-- npc AI, the ones who transform
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_simone_the_seductress' WHERE  `entry`=14527;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='boss_klinfran_the_crazed' WHERE  `entry`=14529;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_artorius_the_doombringer' WHERE  `entry`=14531;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_solenor_the_slayer' WHERE  `entry`=14536;

-- delete the demons that are already out in the world(shouldn't be there)
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3001218;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3000822;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3000802;

-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=8610;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=9018;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=2727;
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=0.6 WHERE  `modelid`=10925;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.5 WHERE  `modelid`=6688;

-- Pitted iron chest, respawn. BFD, 5sec instead of 3min for q item
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=5 WHERE  `guid`=13949;

-- Haljan Oakheart, should no longer sell clam meat
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE  `entry`=3962 AND `item`=5503;

-- Darkmaster Gandling, added missing weapon
UPDATE `zp_mangosd`.`creature_equip_template` SET `entry`=18531 WHERE  `entry`=1853;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=18531 WHERE  `entry`=1853;

-- Thomas Miller, adjusted text
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Get it while it\'s hot.' WHERE  `entry`=2000005100;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Get it while it\'s hot.' WHERE  `entry`=2000005102;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Fresh bread for sale!' WHERE  `entry`=2000005101;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Fresh bread for sale!' WHERE  `entry`=2000005099;

-- Simone for Epic hunter chain, added head to loot table
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=14533 WHERE  `entry`=14527;

-- Firework Launchers

REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180868);

REPLACE INTO `zp_mangosd`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180850, 6, 6543, 'Firework Launcher', 0, 0, 1, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Rattlegore Hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.7 WHERE  `modelid`=12073;

-- Risen constructor
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.6, `combat_reach`=0.6 WHERE  `modelid`=12074;

/******************* Epic Hunter Chain, waypoints *********************/
-- nelson, sili demon
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 1, -7728.98, 1680.93, 7.64926, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 2, -7743.87, 1692.96, 5.07234, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 3, -7763.3, 1699.04, 1.2191, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 4, -7773.93, 1712.44, 1.72201, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 5, -7776.03, 1734.03, 2.89457, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 6, -7776.33, 1762.11, 1.00827, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 7, -7790.3, 1776.76, -0.876424, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 8, -7796.3, 1791.03, -0.75754, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 9, -7788.27, 1811.03, 1.08968, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 10, -7783.8, 1833.92, 0.962194, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 11, -7791.07, 1846.17, 0.608713, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 12, -7813.25, 1855.11, 2.86837, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 13, -7829.68, 1853.51, 2.77981, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 14, -7866.88, 1834.02, 3.75569, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 15, -7898.07, 1820.84, 0.239906, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 16, -7915.73, 1809.61, 0.840322, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 17, -7939.33, 1803.57, 1.06159, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 18, -7966.8, 1792.43, -1.00964, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 19, -7978.03, 1776.56, -1.71601, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 20, -7978.35, 1756.05, -3.56683, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 21, -7972.65, 1744.18, -2.85083, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 22, -7957.69, 1719.23, -2.73695, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 23, -7940.96, 1680.3, -3.58108, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 24, -7906.76, 1612.44, -3.00053, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 25, -7884.71, 1568.69, 1.35127, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 26, -7875.89, 1553.6, -0.412373, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 27, -7852.51, 1515.77, -0.305059, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 28, -7830.63, 1484.71, -1.43504, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 29, -7816.4, 1478.19, -2.77041, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 30, -7788.71, 1475.64, -1.76046, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 31, -7767.71, 1484.92, -1.04785, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 32, -7745.17, 1501.44, -0.278271, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 33, -7730.47, 1520.25, -1.75515, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 34, -7717.63, 1543.54, -1.3242, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 35, -7703.38, 1583.05, 3.67905, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 36, -7698.64, 1596.22, 3.12637, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 37, -7697.5, 1613.57, 3.91102, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 38, -7702.52, 1637.46, 6.60827, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 39, -7714.63, 1665.52, 6.72335, 0, '');

-- Klinfran, burningsteppes funkar
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 1, -8311.42, -1006.81, 174.732, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 2, -8296.45, -1014.18, 167.282, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 3, -8279.64, -1022.28, 154.791, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 4, -8270.71, -1029.88, 150.533, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 5, -8260.82, -1052, 146.328, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 6, -8246.22, -1067.15, 143.448, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 7, -8222.69, -1079.35, 144.473, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 8, -8197.42, -1089.72, 148.915, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 9, -8183.33, -1103.47, 147.255, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 10, -8166.9, -1103.98, 140.646, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 11, -8139.87, -1096.1, 131.922, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 12, -8106.31, -1084.9, 130.686, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 13, -8076.62, -1073.62, 129.417, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 14, -8053.37, -1069.72, 130.332, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 15, -8038.54, -1057.01, 131.087, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 16, -8010.2, -1014.09, 129.36, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 17, -8002.24, -992.525, 128.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 18, -7997.66, -945.248, 128.901, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 19, -7990.76, -919.143, 129.483, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 20, -7978.34, -890.689, 129.433, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 21, -7968.36, -878.52, 129.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 22, -7952.7, -859.256, 128.111, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 23, -7952.3, -843.46, 129.153, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 24, -7968.11, -829.481, 128.666, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 25, -7985.35, -825.671, 130.057, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 26, -8008.42, -812.072, 131.727, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 27, -8066.64, -773.61, 131.245, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 28, -8093.07, -770.112, 131.972, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 29, -8119.42, -774.86, 130.531, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 30, -8154.08, -784.667, 129.642, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 31, -8172.46, -795.578, 129.834, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 32, -8186.91, -818.218, 129.596, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 33, -8193.2, -849.001, 131.648, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 34, -8190.68, -868.94, 132.183, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 35, -8192.06, -889.016, 132.997, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 36, -8206.6, -911.476, 134.07, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 37, -8229.86, -921.603, 139.273, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 38, -8253.11, -925.529, 148.933, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 39, -8262.22, -926.075, 153.256, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 40, -8269.66, -922.965, 158.196, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 41, -8277.88, -926.562, 163.025, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 42, -8290.71, -937.75, 170.134, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 43, -8300.53, -953.014, 177.777, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 44, -8301.46, -964.806, 180.408, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 45, -8299.04, -978.346, 176.414, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 46, -8304.8, -987.155, 175.593, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 47, -8319.45, -986.95, 178.678, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 48, -8335.02, -973.447, 185.353, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 49, -8353.49, -956.325, 190.707, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 50, -8373.36, -946.276, 198.283, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 51, -8387.92, -942.721, 203.268, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 52, -8401.37, -946.73, 204.49, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 53, -8409.79, -957.562, 201.487, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 54, -8404.14, -973.087, 193.708, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 55, -8390.27, -988.169, 188.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 56, -8372.08, -994.689, 186.979, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 57, -8352.94, -999.001, 185.705, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 58, -8331.35, -999.891, 182.253, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 59, -8319.53, -1002.29, 177.783, 0, '');

-- artorius, winterspring funkar
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 1, 7897.98, -4603.53, 709.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 2, 7867.74, -4600.23, 705.759, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 3, 7800.48, -4570.75, 685.213, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 4, 7744.18, -4557.81, 669.196, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 5, 7648.32, -4532.37, 636.826, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 6, 7583.85, -4507.53, 613.334, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 7, 7580.23, -4484.09, 607.988, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 8, 7592.48, -4461.88, 609.317, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 9, 7603.6, -4439.77, 610.41, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 10, 7596.29, -4403.2, 608.973, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 11, 7584.26, -4327.91, 625.493, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 12, 7605.94, -4305.27, 637.762, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 13, 7632.98, -4277.74, 647.78, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 14, 7645.85, -4257.68, 658.898, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 15, 7670.56, -4246.43, 667.71, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 16, 7699.87, -4232.45, 675.945, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 17, 7734.46, -4204.43, 680.56, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 18, 7760.13, -4201.32, 679.77, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 19, 7809.04, -4214.66, 675.332, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 20, 7836.72, -4219.84, 675.32, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 21, 7855.52, -4236.49, 679.585, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 22, 7854.13, -4262.3, 683.319, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 23, 7858.66, -4294.17, 695.943, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 24, 7870.79, -4324.2, 709.637, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 25, 7889.15, -4334.8, 713.599, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 26, 7901.05, -4343.26, 715.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 27, 7913.29, -4364.16, 715.941, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 28, 7929.22, -4397.5, 720.049, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 29, 7912.49, -4422.13, 706.446, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 30, 7910.7, -4444.64, 707.189, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 31, 7912.59, -4466.67, 706.867, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 32, 7924.13, -4499.68, 701.118, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 33, 7939.29, -4522.9, 698.931, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 34, 7958.05, -4538.76, 708.638, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 35, 7957.7, -4560.55, 716.463, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 36, 7945.33, -4578.68, 715.8, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 37, 7927.51, -4592.99, 713.282, 0, '');

-- Simone wp
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 1, -7088.75, -592.299, -269.205, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 2, -7085.74, -633.794, -271.787, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 3, -7081.24, -675.488, -271.139, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 4, -7072.36, -732.493, -267.711, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 5, -7068.73, -760.439, -269.716, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 6, -7065.11, -792.572, -271.325, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 7, -7073.91, -825.212, -271.262, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 8, -7127.43, -894.096, -271.493, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 9, -7159.32, -939.727, -271.423, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 10, -7204.76, -960.477, -272.085, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 11, -7251.25, -979.611, -271.168, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 12, -7285.23, -989.368, -271.432, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 13, -7312.53, -1008.81, -272.141, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 14, -7339.56, -1029.17, -272.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 15, -7365.55, -1047.27, -270.744, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 16, -7401.99, -1058.95, -269.813, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 17, -7432.05, -1075.7, -268.967, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 18, -7453.4, -1095.8, -271.409, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 19, -7472.54, -1120.24, -272.322, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 20, -7489.87, -1156.46, -269.874, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 21, -7503.67, -1181.76, -268.873, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 22, -7517.69, -1199.61, -270.088, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 23, -7518.2, -1212.59, -271.369, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 24, -7513.82, -1232.33, -270.937, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 25, -7510.68, -1256.42, -269.785, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 26, -7506.2, -1276.01, -271.007, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 27, -7502.47, -1294.71, -272.086, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 28, -7498.96, -1317.52, -271.394, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 29, -7498.81, -1327.77, -271.099, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 30, -7501.94, -1339.3, -270.293, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 31, -7509.3, -1354.69, -270.051, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 32, -7519.41, -1368.67, -271.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 33, -7519.41, -1368.67, -271.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 34, -7531.21, -1381.51, -271.602, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 35, -7536.07, -1392.02, -271.444, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 36, -7539.18, -1406.27, -271.825, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 37, -7543.57, -1425.97, -271.792, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 38, -7551.39, -1455.47, -270.91, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 39, -7557.71, -1471.76, -269.305, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 40, -7567.48, -1486.87, -268.416, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 41, -7581.04, -1498.74, -266.614, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 42, -7597.11, -1513.52, -267.581, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 43, -7614.22, -1531.15, -270.09, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 44, -7625.66, -1537.22, -270.294, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 45, -7637.65, -1537.81, -270.317, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 46, -7652.57, -1534.45, -270.259, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 47, -7664.77, -1525.28, -269.194, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 48, -7681.42, -1512.06, -270.955, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 49, -7697.38, -1501.56, -270.921, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 50, -7715.36, -1491.28, -271.019, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 51, -7726.07, -1480.23, -271.43, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 52, -7732.42, -1459.45, -271.576, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 53, -7738.78, -1436.32, -271.962, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 54, -7745.58, -1409.37, -271.673, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 55, -7750.3, -1387.47, -271.652, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 56, -7755, -1357.89, -272.222, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 57, -7755.75, -1345.9, -272.222, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 58, -7751.52, -1337.03, -272.216, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 59, -7742.81, -1327.28, -272.092, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 60, -7733.23, -1317.46, -271.26, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 61, -7730.27, -1303.61, -269.179, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 62, -7726.37, -1286.55, -267.074, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 63, -7722.72, -1270.58, -266.323, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 64, -7722.23, -1260.24, -266.734, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 65, -7723.82, -1250.33, -268.424, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 66, -7731.16, -1236.58, -268.98, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 67, -7740.68, -1223.83, -270.5, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 68, -7750.49, -1215.54, -270.885, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 69, -7757.9, -1214.02, -271.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 70, -7772.67, -1215.61, -269.616, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 71, -7793.49, -1219.85, -266.362, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 72, -7810.8, -1221.9, -265.263, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 73, -7831.28, -1225.29, -265.213, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 74, -7856.59, -1229.48, -266.932, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 75, -7881.38, -1233.58, -269.319, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 76, -7901.48, -1235.39, -269.036, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 77, -7916.75, -1236.21, -267.912, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 78, -7947.3, -1237.87, -273.217, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 79, -7972.36, -1239.22, -272.729, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 80, -7995.65, -1241.96, -269.761, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 81, -8027, -1249.19, -271.453, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 82, -8051.88, -1255.16, -268.069, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 83, -8070.36, -1259.99, -266.275, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 84, -8088.93, -1264.5, -267.103, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 85, -8097.59, -1263.53, -268.202, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 86, -8107.48, -1258.91, -268.376, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 87, -8110.58, -1250.17, -267.548, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 88, -8108.28, -1238.93, -267.835, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 89, -8102.45, -1228.43, -268.753, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 90, -8093.23, -1214.89, -269.241, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 91, -8083.7, -1200.89, -269.53, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 92, -8072.02, -1183.73, -270.304, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 93, -8058.19, -1163.43, -270.966, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 94, -8044.65, -1143.55, -271.6, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 95, -8034.88, -1133.24, -271.434, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 96, -8022.11, -1119.78, -270.829, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 97, -8007.24, -1098.83, -269.568, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 98, -7996.94, -1083.07, -269.279, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 99, -7989.62, -1071.55, -270.002, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 100, -7973.72, -1052.09, -271.828, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 101, -7960.5, -1039.89, -272.374, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 102, -7946.33, -1030.6, -273.127, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 103, -7918.76, -1013.9, -273.414, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 104, -7901.97, -1004.78, -272.341, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 105, -7880.4, -993.053, -267.876, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 106, -7863.9, -983.404, -265.703, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 107, -7847.86, -974.021, -268.513, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 108, -7828.04, -962.428, -270.929, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 109, -7807.33, -950.315, -268.521, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 110, -7779.35, -934.396, -270.216, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 111, -7759.62, -923.87, -272.059, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 112, -7737.44, -912.044, -271.962, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 113, -7719.58, -907.024, -270.896, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 114, -7693.77, -902.494, -268.612, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 115, -7667.91, -898.421, -271.192, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 116, -7636.35, -895.952, -270.678, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 117, -7613.72, -902.075, -269.195, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 118, -7591.05, -907.941, -270.977, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 119, -7585.77, -906.547, -271.397, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 120, -7573.85, -901.047, -271.778, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 121, -7559.11, -893.912, -272.758, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 122, -7543.55, -891.022, -272.376, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 123, -7520.1, -891.357, -271.995, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 124, -7493.41, -893.059, -271.809, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 125, -7464.02, -894.934, -270.71, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 126, -7440.06, -894.378, -267.502, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 127, -7411.13, -895.491, -267.134, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 128, -7417.6, -895.921, -267.314, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 129, -7384.4, -898.627, -270.689, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 130, -7349.12, -902.137, -271.735, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 131, -7318.35, -906.752, -271.021, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 132, -7293.05, -910.928, -269.343, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 133, -7279.06, -913.434, -270.28, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 134, -7272.5, -912.975, -271.451, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 135, -7261.95, -910.132, -271.508, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 136, -7245.43, -901.634, -271.872, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 137, -7220.08, -890.143, -271.97, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 138, -7193.27, -877.957, -270.985, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 139, -7180.3, -860.609, -269.58, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 140, -7175.17, -843.994, -271.07, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 141, -7164.39, -824.998, -271.276, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 142, -7156.71, -805.755, -270.685, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 143, -7145.46, -785.189, -270.611, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 144, -7134.43, -765.733, -272.147, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 145, -7129.11, -741.752, -271.255, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 146, -7125.23, -718.022, -272.13, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 147, -7121.42, -689.889, -270.36, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 148, -7118.08, -655.143, -270.582, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 149, -7118.24, -623.504, -270.042, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 150, -7118.06, -603.309, -271.004, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 151, -7117.54, -584.767, -271.179, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 152, -7112.82, -574.926, -270.855, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 153, -7101.95, -568.684, -272.608, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 154, -7089.79, -565.579, -271.073, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 155, -7082.47, -572.147, -271.938, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 156, -7080.31, -581.168, -270.757, 0, '');

/****************** One shot. One kill. Quest SQL **************/
-- Add texts
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720004, 'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720005, 'Praise Elune! I don\'t know if I could have survived the day without you, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720006, 'My leg feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720007, 'Please speak with sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720003, 'Wait... did you hear that? Something approaches from the west!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');

-- Add AI + armor
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_sentinel_aynasha', `armor`=416 WHERE  `entry`=11711;

-- delete aura/buff she had to not move(visible debuff, rip)
DELETE FROM `zp_mangosd`.`creature_addon` WHERE `guid`=38663;

-- Vendors in Darnasus should now be able to repair also
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4232;
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4233;
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4171;

-- Rend blackhand, added missing weapon
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=10429 WHERE  `entry`=10429;
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (10429, 12583, 0, 0);

-- Updated Hitbox for Flamewaker elite and healer
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=12161;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=13029;

-- Blackwood tracker AI updated, random time in combat instead of within a range
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param2`=15000, `event_param3`=10000 WHERE  `id`=1171302;

-- Add GO light for Priest Epic Quest
REPLACE INTO `gameobject` VALUES (1712726, 179693, 0, 3339.37, -2977.07, 162.696, 0.530169, 0, 0, 0.261991, 0.96507, -900, 100, 1);

/********************** Therylune's Escape ***********************/
-- Add texts and AI
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720008, 'Ok, let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Therylune, Say Start');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720009, 'I can make it the rest of the way. $N. THANKS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Therylune, Say End');
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_therylune' WHERE  `entry`=3584;

-- Add wp
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 0, 4520.4, 420.235, 33.5284, 2000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 1, 4512.26, 408.881, 32.9308, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 2, 4507.94, 396.47, 32.9476, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 3, 4507.53, 383.781, 32.995, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 4, 4512.1, 374.02, 33.166, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 5, 4519.75, 373.241, 33.1574, 3000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 6, 4592.41, 369.127, 31.4893, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 7, 4598.55, 364.801, 31.4947, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 8, 4602.76, 357.649, 32.9265, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 9, 4597.88, 352.629, 34.0317, 2000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 10, 4590.23, 350.9, 36.2977, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 11, 4581.5, 348.254, 38.3878, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 12, 4572.05, 348.059, 42.3539, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 13, 4564.75, 344.041, 44.2463, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 14, 4556.63, 341.003, 47.6755, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 15, 4554.38, 334.968, 48.8003, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 16, 4557.63, 329.783, 49.9532, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 17, 4563.32, 316.829, 53.2409, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 18, 4566.09, 303.127, 55.0396, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 19, 4561.65, 295.456, 57.0984, 4000, 'SAY_THERYLUNE_FINISH');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 20, 4505.03, 279.3, 57.9, 2000, 'DESPAWN');

-- don't use old scripts
UPDATE `zp_mangosd`.`quest_template` SET `StartScript`=0 WHERE  `entry`=945;

/********************* BWL Hitboxes *****************/
-- Death Talon Captain
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=14544;
-- Death Talon Flamescale
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=8310;
-- Death Talon Seether
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=12893;
-- Death Talon Wyrmkin
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=12894;
-- Blackwing Warlock
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=14292;
-- Blackwing Technician
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=13991;
-- enraged felguard
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1.2 WHERE  `modelid`=14152;
-- Blackwing Spellbinder
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=7923;
-- Krixix
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=14498;

-- Bingle's missing supplies quest, adjust spawntimers(down)
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12863') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12864') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12871') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12872') LIMIT 1;

/*********** Investigate the blue recluse ***********/
-- add SW mana rift visual
REPLACE INTO `gameobject` VALUES (42889, 103680, 0, -9072.71, 833.487, 108.418, 0.36439, 0, 0, 0.181189, 0.983448, 60, 0, 0);
-- add pre q
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`=1919 WHERE  `entry`=1920;

-- remove scarlet wristguards from Syndicate Spy's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=2242 AND `item`=24054;

/**************** Freed from the Hive, quest ***************/
-- remove old
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=4265 LIMIT 5;
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `unit_flags`=128, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=9546;
-- add text
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-4265, 'Oh man, I thought I was dead for sure. Ugh... still dizzy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Raschal Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-4266, 'I can get back to the Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 'Raschal Say 2');
-- add RP, THIS IS A HACK
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546002, 9546, 1, 0, 100, 0, 9000, 9000, 0, 0, 1, -4266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Raschal Say 2');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546001, 9546, 1, 0, 100, 0, 2000, 2000, 0, 0, 1, -4265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Raschal Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546004, 9546, 1, 0, 100, 0, 8500, 8500, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rashal Emote None');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546003, 9546, 1, 0, 100, 0, 2500, 2500, 0, 0, 5, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rashal Emote Stun');
-- add spawn and quest complete
REPLACE INTO `zp_mangosd`.`quest_start_scripts` VALUES (4265, 11, 7, 4265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` VALUES (4265, 1, 10, 9546, 15000, 0, 0, 0, 0, 0, 0, 0, -5314.81, 430.89, 11.79, 3.46, '');

/******** A daughters love, quest RP ***********/
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720011, 'I shall cling to the love of my daugter and hope that I will find forgiveness under the Light for my sins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Morgan Ladimore, Say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720010, 'My sword Archeus served me well in life, but as at last my spirit may pass from the unhappy existance, I need it no longer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Morgan Ladimore, Say 1');
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_morgan_ladimore' WHERE  `entry`=3301;

/************ Missing diplomat RP text, sw + wetlands ************/
-- add texts wetlands
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720012, 'Oh, it\'s on now! But you thought I\'d be alone too, huh?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tapoke slim jahn SAY_AGGRO');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720013, 'Okay, okay! No need to get all violent. I\'ll talk. I\'ll talk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'tapoke slim jahn SAY_DEFEAT');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720014, 'Whoa! This is way more than what I bargained for, you\'re on your own, Slim!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'slim\'s friend SAY_FRIEND_DEFEAT');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720015, 'I have a few notes from the job back at my place. I\'ll get them and then meet you back in the inn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'tapoke slim jahn SAY_NOTES');
-- add text stormwind part
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720016, 'It\'s okay, boys. Back off. You\'ve done enough. I\'ll meet up with you later.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Dashel stonefist Say End');
-- delete old script to spawn mobs in SW
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=1447 LIMIT 2;

-- add outro text and fix wrong text, missing diplomat dustwallow
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720017, 'Farewell. We shall speak again, I\'m sure.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Tervosh Say Bye');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720018, 'Approach, newbie!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Hendel, SAY_AGGRO');
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='Why don\'t we deal with you now, Hendel? Lady Proudmoore will speak to you back in the tower.' WHERE  `entry`=-1000411;
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_pained' WHERE  `entry`=4965;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_archmage_tervosh' WHERE  `entry`=4967;
UPDATE `zp_mangosd`.`creature_template` SET `unit_class`=2 WHERE  `entry`=4966;
-- Move hendel slightly
REPLACE INTO `zp_mangosd`.`creature` VALUES (31274, 4966, 1, 2967, 0, -2895.34, -3346.51, 31.8728, 3.04343, 360, 0, 0, 600000, 0, 0, 0);

-- missing diplomat wetlands text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720019, 'I\'m glad the commotions died down some around here. The last thing this place needs is another brawl.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mikhail, SAY_END');

-- update faction for rare Singer
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=87, `faction_H`=87 WHERE  `entry`=2600;

/******************* Stitches Event *********************/
-- add AI to stitches, town crier and 2 guards at camp so they are active object
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3451, `speed_walk`=1, `speed_run`=1.14286, `MovementType`=2, `AIName`='', `ScriptName`='mob_stitches' WHERE  `entry`=412;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=468;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=888;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=499;

-- script for spawning stitches at end of Translation to Ello
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (252, 5, 10, 412, 3600000, 0, 0, 0, 0, 0, 0, 0, -10290.2, 72.7811, 38.8811, 4.8015, 'spawn stiches');
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=252 WHERE  `entry`=252;

-- add waypoints for stitches
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 1, -10291.6, 59.2976, 41.2091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 2, -10324.8, 33.6329, 47.938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 3, -10329.8, 20.4452, 51.0931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 4, -10349.6, -15.6226, 47.1858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 5, -10377.5, -38.3382, 48.6618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 6, -10402.3, -50.0084, 48.7513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23387, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 7, -10482.4, -44.0318, 47.4256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 8, -10565.7, -33.0121, 37.8719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 9, -10605.8, -44.9978, 35.3426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65405, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 10, -10651.6, -70.7397, 33.0008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65405, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 11, -10693.1, -82.3273, 34.5134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16711, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 12, -10727.7, -99.3473, 34.5134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60693, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 13, -10754.6, -95.5816, 38.9829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 14, -10789.9, -85.831, 33.1102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 15, -10804.8, -81.7399, 29.3038, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17241, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 16, -10834.9, -164.523, 33.8301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.38446, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 17, -10861.5, -282.178, 38.1132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.49442, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 18, -10889.7, -344.443, 39.3168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 19, -10907.5, -364.971, 39.7154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 20, -10908.3, -380.242, 40.3372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65542, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 21, -10914.7, -391.773, 40.2007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2692, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 22, -10909.8, -412.461, 41.8035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.88712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 23, -10905.7, -456.867, 45.7865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 24, -10912.3, -525.299, 53.8122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 25, -10930.9, -571.839, 54.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.29022, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 26, -10952.7, -602.688, 55.3005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.37268, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 27, -10958.1, -643.594, 55.1417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.67506, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 28, -10928.8, -685.072, 55.4541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33872, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 29, -10907.5, -726.294, 54.7612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 30, -10849.4, -790.095, 56.0638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4526, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 31, -10825.3, -833.193, 55.584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 32, -10800.8, -903.632, 56.1258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.9421, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 33, -10796.9, -928.796, 55.8942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56511, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 34, -10807.5, -977.106, 55.6968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71826, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 35, -10805.1, -1030, 47.1241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76146, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 36, -10786, -1078.22, 36.8187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06776, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 37, -10778.1, -1116.14, 29.8456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89498, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 38, -10749.5, -1149.88, 26.7991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44475, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 39, -10683.8, -1188.77, 27.3685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.77069, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 40, -10660, -1193.79, 28.4206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.22622, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 41, -10606.1, -1180.01, 28.2167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.261119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 42, -10581.8, -1177.15, 28.5784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.052989, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 43, -10570.2, -1185.38, 28.0432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29553, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 44, -10557.9, -1204.02, 27.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29553, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 45, -10554.9, -1222.9, 27.3325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 46, -10551, -1247.73, 31.0483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 47, -10554.1, -1193.85, 27.9434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6395, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 48, -10550.2, -1170.71, 27.7657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38818, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 49, -10553.8, -1156.56, 27.9745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.46024, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 50, -10569, -1154.95, 27.4509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.64227, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 51, -10577.6, -1165.37, 28.1559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52191, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 52, -10575, -1179.16, 28.0353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.47617, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 53, -10534.4, -1186.35, 28.0023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25764, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 54, -10482.8, -1182.32, 27.7177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.107971, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 55, -10436.4, -1167.43, 27.9104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.426058, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 56, -10413.3, -1133.69, 23.8167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.999398, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 57, -10389.6, -1117.94, 22.2759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.178657, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 58, -10348.6, -1117.45, 21.4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13983, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 59, -10319.5, -1128.91, 21.6974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.65681, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 60, -10296, -1148.35, 23.2732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.60576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 61, -10248.2, -1154.72, 21.5244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.009797, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 62, -10221.9, -1154.47, 22.4877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.009797, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 63, -10194.7, -1073.93, 30.7576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.26643, 0, 0);

-- weapons for watchers
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1000;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1001;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1204;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1203;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1100;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1099;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.02, `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1098;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1101;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.2, `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1436;

-- Waypoints
-- selkin
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 1, -10750.6, -1144.94, 26.82, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029666, 2.57491, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 2, -10772.2, -1119.64, 29.0876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029667, 2.22148, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 3, -10776.6, -1113.96, 30.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029668, 1.94266, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 4, -10781.9, -1083.39, 35.7604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029669, 1.68348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 5, -10794.9, -1054.57, 42.2362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029670, 2.00942, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 6, -10802.6, -1020.55, 48.6692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029671, 1.76987, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 7, -10804.4, -980.222, 55.3736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029672, 1.49891, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 8, -10802.8, -962.846, 56.3141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029673, 1.34576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 9, -10793.1, -935.073, 55.9267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029674, 1.27507, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 10, -10795.1, -908.947, 55.8068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029675, 1.7149, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 11, -10826.1, -822.195, 55.862, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029676, 1.98978, 0, 0);
-- Gelwin
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 1, -10752.7, -1145.56, 26.8339, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029677, 2.36677, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 2, -10778.3, -1114.57, 30.1016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029678, 2.15864, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 3, -10783.7, -1081.7, 36.0987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029679, 1.69525, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 4, -10796.7, -1053.22, 42.6989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029680, 1.86804, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 5, -10804.3, -1016.93, 49.7054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029681, 1.74238, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 6, -10805.2, -973.264, 56.0074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029682, 1.53425, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 7, -10794.7, -935.382, 56.1306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029683, 1.2947, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 8, -10796.3, -908.271, 55.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029684, 1.77772, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 9, -10827, -824.487, 55.6973, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029685, 1.95443, 0, 0);
-- Merant
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 1, -10754.5, -1145.97, 26.8396, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029686, 2.33142, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 2, -10780.6, -1111.98, 30.4977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029687, 2.00155, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 3, -10786.3, -1076.62, 37.1939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029688, 1.78557, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 4, -10799.1, -1051.31, 43.2079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029689, 1.8484, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 5, -10805.7, -1015.72, 49.9924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029690, 1.53424, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 6, -10805.8, -966.611, 56.3771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029691, 1.54602, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 7, -10797, -935.045, 56.2729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029692, 1.36145, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 8, -10798.2, -906.331, 56.1187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029693, 1.8484, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 9, -10829.7, -823.271, 55.8474, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029694, 2.07616, 0, 0);
-- Thayer
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 1, -10758.4, -1146.46, 26.9125, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.461, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 2, -10778.8, -1122.44, 28.8737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.17041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 3, -10783.1, -1110.08, 30.8873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88374, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 4, -10788.6, -1079.5, 36.6433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.69524, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 5, -10794.9, -1062.02, 40.7326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94264, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 6, -10803.3, -1049.76, 43.5041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.98977, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 7, -10807.8, -1016.49, 49.8617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56172, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 8, -10808.7, -969.607, 56.257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60885, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 9, -10800.4, -936.415, 56.088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38108, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 10, -10798.4, -921.417, 55.7236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55387, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 11, -10811.8, -869.037, 55.8893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.83661, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 12, -10831.2, -825.159, 55.7161, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.9662, 0, 0);
-- Cutford
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 1, -10716.2, -1171.81, 26.5691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 2, -10730.4, -1161.62, 26.9411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 3, -10758.8, -1141.25, 26.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 4, -10778.1, -1115.92, 29.8835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04866, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 5, -10785.3, -1078.46, 36.7103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75414, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 6, -10799.9, -1044.43, 44.5367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.03688, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 7, -10807.4, -1008.14, 51.3291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58528, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 8, -10808, -969.372, 56.2728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58528, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 9, -10795.3, -929.399, 55.9147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.30646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 10, -10801.6, -893.911, 55.8168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.76199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 11, -10831.5, -815.493, 56.3138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.97012, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 12, -10868.2, -767.287, 55.6204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22145, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 13, -10902.9, -734.868, 55.1597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 14, -10935.8, -673.766, 55.5557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.07615, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 15, -10955.3, -646.856, 55.2669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23323, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 16, -10956.7, -616.859, 54.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6167, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 17, -10950.6, -604.064, 55.2513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 18, -10932.7, -576.547, 53.8621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 19, -10914.8, -539.089, 53.9063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 20, -10909, -477.829, 48.2435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 21, -10906.3, -427.149, 42.0987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 22, -10904.8, -397.684, 41.1266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 23, -10901.4, -382.259, 40.3197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 24, -10899.4, -363.918, 39.3732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60099, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 25, -10915, -362.09, 39.8269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.30923, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 26, -10916.1, -367.958, 39.8662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.57372, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 27, -10906, -389.698, 40.8095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 28, -10911, -395.666, 41.1095, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 3.20713, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 29, -10917.3, -393.83, 39.5448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94657, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 30, -10919.9, -387.094, 39.006, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.94657, 0, 0);

-- add texts
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720022, 'The abomination has overrun the Night Watch camp! Quickly, we must intercept it before it reaches town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Town crier, YELL_GUARD_DOWN');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720023, 'The beast is slain! All\'s well in Darkshire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Town crier, YELL_STITCHES_DOWN');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720021, 'ROAAAARR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Stitches YELL_AGGRO');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720020, 'DARKSHIRE... I HUNGER!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Stitches YELL_SPAWN');


/******************* Hunter epic chain, SQL for movement related *******************/
-- klinfran
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14529' where entry = '4602';
-- artorius
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14531' where entry = '42301';
-- solenor
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14536' where entry = '43224';
-- simone
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14527' where entry = '24439';

-- update movements for each demon
UPDATE `zp_mangosd`.`creature` SET `position_x`=-7085.75, `position_y`=-593.299, `position_z`=-269.205, `MovementType`=0 WHERE  `guid`=24439;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=43224;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=42301;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=4602;
-- template
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14531;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14527;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14536;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14529;
-- precious
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14528;
UPDATE `zp_mangosd`.`creature` SET `position_x`=-7085.95, `position_y`=-595.299, `position_z`=-269.205, `MovementType`=0 WHERE  `guid`=24440;
-- precious follow simone
REPLACE INTO `creature_formations` VALUES (24439, 24439, 0, 0, 2);
REPLACE INTO `creature_formations` VALUES (24439, 24440, 2, 90, 2);

/*********** Princess and Strider clutchmother Pat *****************/
-- Princess
-- add pat dummy
REPLACE INTO `zp_mangosd`.`creature` VALUES (3028664, 800008, 0, 0, 0, -9773.92, -882.481, 39.507, 3.83468, 25, 5, 0, 646473, 0, 0, 2);
-- wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 1, -9792.42, -885.341, 39.8387, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 2, -9806.2, -886.325, 39.9104, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 3, -9804.27, -898.745, 39.636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 4, -9796.95, -901.763, 39.9675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 5, -9790.37, -898.959, 40.0636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 6, -9784.1, -893.655, 39.8032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 7, -9774.07, -882.856, 39.5067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 8, -9765.6, -868.54, 39.4929, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3028664, 9, -9774.17, -882.686, 39.5071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- formation
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3028664, 3028664, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3028664, 80848, 4, 45, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3028664, 80849, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3028664, 80850, 4, 315, 2);

-- Strider Clutchmother
-- set them to same faction for chain
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=7, `faction_H`=7 WHERE  `entry`=2321;
-- add missing child
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029674, 2321, 1, 0, 0, 4518.46, 664.203, 24.5415, 4.60043, 25, 5, 0, 281, 0, 0, 0);
-- add pat dummy
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029675, 800008, 1, 0, 0, 4516.53, 660.294, 25.0955, 3.4616, 25, 5, 0, 646473, 0, 0, 2);
-- formation
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029675, 3029675, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029675, 3029674, 4, 45, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029675, 37385, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029675, 36692, 4, 315, 2);
-- add wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 1, 4518.07, 679.622, 26.722, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09973, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 2, 4501.45, 685.584, 26.1433, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.36284, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 3, 4491.51, 658.028, 28.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.00294, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 4, 4483.3, 635.786, 29.0051, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.11152, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 5, 4478.63, 609.479, 34.1606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.39819, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 6, 4458.74, 585.369, 39.6932, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45179, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 7, 4450.96, 578.717, 41.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.11014, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 8, 4429.37, 588.167, 41.1508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81307, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 9, 4401.56, 561.72, 49.7222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81307, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 10, 4391.62, 542.571, 54.7254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.5003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 11, 4379.3, 521.443, 55.4474, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17043, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 12, 4364.46, 514.818, 56.9323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.38896, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 13, 4332.89, 505.204, 60.822, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.28686, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 14, 4349.87, 510.179, 59.6593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.274855, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 15, 4377.91, 529.372, 57.4485, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.706824, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 16, 4406.42, 532.955, 51.0725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.298417, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 17, 4430.22, 546.061, 45.0071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.643993, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 18, 4444.84, 561.072, 42.9217, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.938517, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 19, 4459.95, 584.228, 39.7673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.871758, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 20, 4477.26, 607.986, 34.451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.06418, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 21, 4488.5, 628.678, 30.839, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.828561, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 22, 4502.5, 640.536, 29.6365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.797145, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 23, 4514.95, 653.86, 26.4309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.840342, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029675, 24, 4520.32, 663.911, 24.454, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2409, 0, 0);

-- Stratholme, balnazzar added missing weapon and fix hitbox
-- in human hitbox + weapon
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.5, `combat_reach`=0.5 WHERE  `modelid`=10545;
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (10812, 13348, 0, 0);
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=10812 WHERE  `entry`=10812;
-- demon
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=10691;

/********** Maraudon, linked all Primordial Behemoth 2 and 2 at the slope just before last boss
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55345, 55348, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55345, 55345, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55338, 55341, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55338, 55338, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55344, 55347, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55344, 55344, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55463, 55464, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55463, 55463, 0, 0, 2);

/*************** Shadowsilk Poacher pat, searing gorge ************/
-- add dummy
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029676, 800008, 0, 0, 0, -6475.96, -1653.18, 296.906, 0.48647, 25, 5, 0, 646473, 0, 0, 2);

-- Formations mid, L, R, Behind, Infront
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 3029676, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 5768, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 5772, 4, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 5769, 4, 270, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 5770, 4, 180, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029676, 5771, 4, 0, 2);

-- add wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 1, -6471.82, -1651.23, 297.861, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.458985, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 2, -6454.12, -1642.49, 303.743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.458985, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 3, -6435.4, -1641.61, 310.828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.027016, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 4, -6430.96, -1628.94, 314.906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.28365, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 5, -6437.08, -1603.75, 320.266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88448, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 6, -6449.19, -1600.16, 318.879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94477, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 7, -6464.95, -1601.15, 316.311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33354, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 8, -6477.78, -1594.97, 318.479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 9, -6486.92, -1589.8, 318.747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 10, -6508.11, -1582.08, 316.367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.00368, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 11, -6517.2, -1582.03, 315.622, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.25108, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 12, -6509.54, -1587.83, 315.982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.63476, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 13, -6497.73, -1591.82, 315.684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.63476, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 14, -6497.6, -1604.27, 309.626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.00113, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 15, -6507.7, -1612.93, 303.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80085, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 16, -6515.99, -1621.79, 299.031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.06789, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 17, -6524.71, -1637.18, 294.857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.40168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 18, -6532.44, -1645.74, 291.537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.51418, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 19, -6537.55, -1661.71, 287.93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.50771, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 20, -6524.99, -1665.04, 292.579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 21, -6507.72, -1664.68, 294.447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.093763, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029676, 22, -6490.51, -1659.7, 295.541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.396142, 0, 0);

/************* Theradrim Guardian + shardling pat, maraudon ****************/
-- movement type
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3029678;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3029679;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3029680;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3029681;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=3029682;

-- link each pack to dummy
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 3029677, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 55465, 3, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 55466, 3, 270, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 3029678, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 56515, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 56516, 3, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 56517, 3, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 56518, 2, 180, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 3029679, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 88989, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 88990, 4, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 88991, 4, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 88992, 2, 170, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 88993, 2, 190, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 3029680, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 89047, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 89051, 4, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 89050, 4, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 89048, 2, 170, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 89049, 2, 190, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 3029681, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 56501, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 56502, 4, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 56503, 4, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 56504, 2, 170, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 56505, 2, 190, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 3029682, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 56485, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 56486, 3, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 56487, 3, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 56488, 2, 180, 2);

-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 1, 257.798, -99.1563, -129.612, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4.97499, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 2, 255.037, -118.495, -129.593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.34668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 3, 251.286, -139.441, -131.101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52732, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 4, 215.425, -187.585, -131.154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09535, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 5, 213.38, -207.675, -131.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61371, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 6, 222.182, -228.634, -131.136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.9907, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 7, 227.912, -253.64, -131.078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.05746, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 8, 239.697, -265.714, -131.159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50906, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 9, 260.99, -270.557, -126.039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.0981, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 10, 295.955, -256.329, -120.644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.635656, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 11, 260.992, -272.599, -125.901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.48272, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 12, 234.207, -265.014, -131.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.82299, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 13, 210.978, -192.199, -131.158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.87658, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 14, 248.363, -139.075, -131.072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.957668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 15, 259.819, -105.333, -129.601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.37393, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029677, 16, 244.709, -86.9365, -129.621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63057, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 1, 313.443, -339.331, -117.126, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1.23257, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 2, 324.101, -308.356, -116.697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.23257, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 3, 328.39, -293.215, -118.069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53887, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 4, 324.62, -278.967, -118.072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.82947, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 5, 315.26, -267.587, -118.543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26144, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 6, 288.641, -249.41, -120.798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55596, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 7, 246.426, -231.666, -110.909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.71304, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 8, 289.675, -252.591, -120.728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.84285, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 9, 313.773, -265.269, -118.952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.65043, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 10, 326.932, -286.669, -118.074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.24988, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 11, 321.709, -314.57, -116.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52732, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029678, 12, 305.245, -367.781, -124.789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.42914, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 1, 104.897, -269.139, -108.678, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.96436, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 2, 92.7285, -266.008, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88974, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 3, 77.086, -257.801, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44599, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 4, 70.0218, -229.158, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.80982, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 5, 65.7861, -203.089, -110.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.85694, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 6, 40.9362, -180.145, -116.264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.42243, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 7, 25.1051, -157.522, -120.879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.96297, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 8, 8.0638, -116.696, -123.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.9669, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 9, 21.3629, -66.0723, -127.884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.26397, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 10, 8.37348, -115.709, -123.955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45268, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 11, 16.6436, -148.525, -122.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.95926, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 12, 27.5277, -168.698, -118.926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.21452, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 13, 64.5143, -204.152, -109.972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4737, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 14, 71.7151, -245.566, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92392, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 15, 83.5948, -261.744, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85854, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029679, 16, 117.495, -272.03, -108.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01562, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 1, -131.958, -360.189, -170.419, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1.32313, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 2, -130.05, -336.708, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.32313, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 3, -125.365, -318.182, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.32313, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 4, -116.579, -306.31, -170.418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.930431, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 5, -97.2903, -258.726, -170.418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.18569, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 6, -87.96, -255.616, -170.418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.321748, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 7, -60.1165, -255.122, -169.677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.28292, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 8, -93.956, -255.597, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16096, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 9, -121.446, -266.326, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.49868, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 10, -144.434, -274.902, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.49868, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 11, -138.225, -326.005, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89276, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029680, 12, -134.35, -372.2, -170.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76317, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 1, 172.824, -306.813, -172.647, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.58111, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 2, 166.394, -309.836, -173.047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.58111, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 3, 153.054, -318.034, -174.307, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.02093, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 4, 179.652, -301.888, -172.113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.545544, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 5, 176.514, -279.746, -170.716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.71579, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 6, 161.002, -282.892, -169.407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.34156, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 7, 147.457, -278.737, -168.536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80356, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 8, 133.839, -266.141, -168.461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39516, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 9, 133.4, -253.592, -168.104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55086, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 10, 141.65, -244.151, -168.853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.800801, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 11, 122.024, -264.607, -168.433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98166, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 12, 154.791, -280.984, -168.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.81164, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 13, 177.314, -282.989, -171.018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.81164, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029681, 14, 178.74, -300.865, -171.965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.394, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 1, 152.035, -198.358, -171.859, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4.90451, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 2, 153.956, -214.096, -171.919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.83383, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 3, 148.61, -230.707, -170.277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.36652, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 4, 157.348, -204.88, -172.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.24456, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 5, 142.906, -198.423, -171.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72111, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 6, 126.772, -193.375, -168.249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.83499, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 7, 112.649, -186.247, -167.457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67399, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 8, 81.5231, -180.378, -169.929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95673, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 9, 66.987, -189.072, -169.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.66751, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 10, 50.8596, -195.781, -169.812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.58505, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 11, 43.1003, -208.307, -169.541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.16231, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 12, 39.0107, -225.269, -169.785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52752, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 13, 37.4281, -239.355, -169.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.60213, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 14, 20.8351, -246.221, -169.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.14129, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 15, 35.5071, -242.026, -169.929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.278516, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 16, 46.8978, -200.438, -169.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.30346, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 17, 49.279, -196.458, -169.909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.671215, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 18, 87.2942, -182.826, -169.058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.33742, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 19, 100.108, -185.046, -167.457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.99229, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 20, 123.564, -195.284, -167.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82736, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 21, 138.277, -196.044, -170.314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.007553, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3029682, 22, 150.376, -194.035, -171.759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.20783, 0, 0);

-- delete a pack that shouldn't be there
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=55471;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=56343;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=55472;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=56341;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=56344;

-- add ai so they spawn 3 adds when they die
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_theradrim_guardian' WHERE  `entry`=11784;

/****** Pool the Theradrim Guardians and Shardlings in Maraudon ***********/
-- add new creatures
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029685, 11783, 349, 0, 0, 258.512, -95.8133, -129.621, 4.50402, 25, 5, 0, 2402, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029684, 11783, 349, 0, 0, 256.701, -93.2553, -129.621, 4.87708, 25, 5, 0, 2402, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029686, 11783, 349, 0, 0, 253.444, -91.92, -129.621, 4.65324, 25, 5, 0, 2402, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029683, 11783, 349, 0, 0, 254.65, -93.5962, -129.621, 4.87708, 25, 5, 0, 2402, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029687, 11784, 349, 0, 0, 310.007, -336.261, -116.995, 1.17785, 25, 5, 0, 7456, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3029688, 11784, 349, 0, 0, 180.599, -306.65, -172.737, 3.65579, 25, 5, 0, 7551, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature` VALUES (3030707, 11784, 349, 0, 0, 147.055, -198.464, -171.818, 5.39544, 25, 5, 0, 7456, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3030708, 11784, 349, 0, 0, -128.305, -365.74, -170.419, 1.11501, 25, 5, 0, 7551, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3030709, 11784, 349, 0, 0, 110.939, -266.735, -108.677, 2.63867, 25, 5, 0, 7551, 0, 0, 1);

-- add them to wp groups
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029678, 3029687, 4, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029679, 3030709, 4, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029680, 3030708, 4, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029681, 3029688, 4, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029682, 3030707, 4, 90, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 3029683, 4, 160, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 3029684, 4, 200, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 3029685, 2, 170, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3029677, 3029686, 2, 190, 2);

-- pools
-- 1 st group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (55466, 2058, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029683, 2059, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029684, 2059, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029685, 2059, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029686, 2059, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2059, 2060, 0, 'Maraudon - Theradrim Shardling 1');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2058, 2060, 0, 'Maraudon - Theradrim Guardian 1');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2060, 1, 'Maraudon - Master 1');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2059, 4, 'Maraudon - Theradrim shardling 1');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2058, 1, 'Maraudon - Theradrim Guardian 1');

-- 2nd group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029687, 2061, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56516, 2062, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56517, 2062, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56518, 2062, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2062, 2063, 0, 'Maraudon - Theradrim Shardling 2');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2061, 2063, 0, 'Maraudon - Theradrim Guardian 2');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2063, 1, 'Maraudon - Master 2');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2062, 3, 'Maraudon - Theradrim shardling 2');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2061, 1, 'Maraudon - Theradrim Guardian 2');

-- 3rd group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3030709, 2064, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (88990, 2065, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (88991, 2065, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (88992, 2065, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (88993, 2065, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2065, 2066, 0, 'Maraudon - Theradrim Shardling 3');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2064, 2066, 0, 'Maraudon - Theradrim Guardian 3');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2066, 1, 'Maraudon - Master 3');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2065, 4, 'Maraudon - Theradrim shardling 3');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2064, 1, 'Maraudon - Theradrim Guardian 3');

-- 4th group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3030708, 2067, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (89048, 2068, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (89049, 2068, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (89050, 2068, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (89051, 2068, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2068, 2069, 0, 'Maraudon - Theradrim Shardling 4');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2067, 2069, 0, 'Maraudon - Theradrim Guardian 4');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2069, 1, 'Maraudon - Master 4');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2068, 4, 'Maraudon - Theradrim shardling 4');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2067, 1, 'Maraudon - Theradrim Guardian 4');

-- 5th group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3029688, 2070, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56502, 2071, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56503, 2071, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56504, 2071, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56505, 2071, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2071, 2072, 0, 'Maraudon - Theradrim Shardling 5');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2070, 2072, 0, 'Maraudon - Theradrim Guardian 5');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2072, 1, 'Maraudon - Master 5');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2071, 4, 'Maraudon - Theradrim shardling 5');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2070, 1, 'Maraudon - Theradrim Guardian 5');

-- 6th group
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3030707, 2073, 0, 'Theradrim Guardian');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56486, 2074, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56487, 2074, 0, 'Theradrim Shardling');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (56488, 2074, 0, 'Theradrim Shardling');

REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2074, 2075, 0, 'Maraudon - Theradrim Shardling 6');
REPLACE INTO `zp_mangosd`.`pool_pool` VALUES (2073, 2075, 0, 'Maraudon - Theradrim Guardian 6');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2075, 1, 'Maraudon - Master 6');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2074, 3, 'Maraudon - Theradrim shardling 6');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2073, 1, 'Maraudon - Theradrim Guardian 6');

/*********** Helcular's remains npc, added missing text ******/
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-1136, 'Southshore shall pay in blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Helcular\'s Remains Random Yell');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-1137, 'Revenge shall be mine at last!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Helcular\'s Remains Random Yell');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (243302, 2433, 11, 0, 100, 0, 0, 0, 0, 0, 1, -1136, -1137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Helcular Random Yell on Spawn');
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2941, `MovementType`=1 WHERE  `entry`=2433;

-- Extinguishing the Idol
-- make the brazier end the quest
REPLACE INTO `gameobject_involvedrelation` VALUES (152097, 3525);
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=-10 WHERE  `guid`=1712258;

-- fix for SW guards pointing to enchanter instead of cooking trainer
REPLACE INTO `zp_mangosd`.`points_of_interest` VALUES (42, -8641, 423.502, 6, 99, 0, 'Pig and Whistle Tavern');
UPDATE `zp_mangosd`.`gossip_menu_option` SET `action_poi_id`=42 WHERE  `menu_id`=421 AND `id`=2;

/************** Attack on Southshore, event **************/
-- add event
REPLACE INTO `zp_mangosd`.`game_event` VALUES (28, '2008-01-01 03:00:00', '2020-12-31 19:59:59', 307, 15, 0, 'Attack on Southshore');

-- add texts for guard
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006005, 'Protect the Magistrate at all costs. They could come from any direction!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006006, 'Get to your posts! Let no invader reach Southshore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006007, 'Anyone suspicious is to be taken down quickly. Get to your posts as quickly as possible!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- add text for crier
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720027, 'Assassins... save... th... Magistraaa...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Southshore Crier, say die');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720026, 'Guards to your posts! They must be after the Magistrate again. He must be protected! They could come from any direction!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Southshore Crier, say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720025, 'Hear ye! Hear ye! *pant pant* Be warned citizens of Southshore: assassins are heading to our fair town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Southshore Crier, say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720024, 'Help me! Help! Assassins in the hills! To arms! To arms!\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Southshore Crier, yell on spawn');

-- town crier
REPLACE INTO `zp_mangosd`.`creature` VALUES (3030710, 2435, 0, 0, 0, -350.812, -767.206, 54.1034, 3.50618, 3600, 0, 0, 1764, 0, 0, 2);

-- 1st assassin pack
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031736, 2434, 0, 0, 0, -651.764, -368.493, 39.7135, 3.73394, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031735, 2434, 0, 0, 0, -650.276, -372.091, 39.0728, 3.73394, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031734, 800008, 0, 0, 0, -653.231, -370.954, 39.1391, 3.83997, 25, 5, 0, 646473, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031734, 3031734, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031734, 3031735, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031734, 3031736, 2, 270, 2);

-- 2nd pack
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031737, 800008, 0, 0, 0, -837.004, -418.061, 13.004, 5.32044, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031738, 2434, 0, 0, 0, -837.212, -415.339, 13.3191, 5.32044, 60, 5, 0, 1130, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031739, 2434, 0, 0, 0, -840.372, -417.539, 12.3835, 5.32044, 60, 5, 0, 1130, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031737, 3031737, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031737, 3031738, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031737, 3031739, 2, 270, 2);

-- 3rd
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031740, 800008, 0, 0, 0, -891.649, -630.913, 13.5173, 1.11856, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031741, 2434, 0, 0, 0, -894.047, -631.87, 14.8037, 1.1971, 60, 5, 0, 1130, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031742, 2434, 0, 0, 0, -890.491, -632.678, 14.3594, 1.1971, 60, 5, 0, 1156, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031740, 3031740, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031740, 3031741, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031740, 3031742, 2, 270, 2);

-- 4th
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031743, 800008, 0, 0, 0, -716.64, -663.015, 14.1284, 2.26132, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031744, 2434, 0, 0, 0, -716.062, -665.288, 14.0848, 2.26132, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031745, 2434, 0, 0, 0, -713.526, -663.192, 13.5067, 2.26132, 60, 5, 0, 1156, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031743, 3031743, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031743, 3031744, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031743, 3031745, 2, 270, 2);

-- 5th
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031746, 800008, 0, 0, 0, -634.236, -463.305, 34.9469, 4.47614, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031747, 2434, 0, 0, 0, -631.554, -462.796, 34.5758, 4.47614, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031748, 2434, 0, 0, 0, -636, -460.885, 35.5418, 4.47614, 60, 5, 0, 1130, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031746, 3031746, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031746, 3031747, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031746, 3031748, 2, 270, 2);

-- 6th 
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031749, 800008, 0, 0, 0, -656.953, -626.366, 32.5936, 2.66186, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031750, 2434, 0, 0, 0, -656.914, -629.988, 32.1105, 2.61474, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031751, 2434, 0, 0, 0, -655.003, -627.102, 32.7302, 2.61474, 60, 5, 0, 1130, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031749, 3031749, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031749, 3031750, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031749, 3031751, 2, 270, 2);

-- 7th
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031752, 800008, 0, 0, 0, -896.497, -483.984, 11.1308, 4.8492, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031753, 2434, 0, 0, 0, -895.337, -482.212, 11.1518, 4.8492, 60, 5, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031754, 2434, 0, 0, 0, -897.487, -482.508, 11.173, 4.8492, 60, 5, 0, 1130, 0, 0, 1);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031752, 3031752, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031752, 3031753, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031752, 3031754, 2, 270, 2);

-- 1st guards, 
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031755, 800008, 0, 0, 0, -905.106, -517.509, 6.87964, 4.68817, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031756, 2386, 0, 0, 645, -903.833, -516.57, 6.87964, 4.66854, 25, 5, 0, 3330, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031757, 2386, 0, 0, 645, -906.525, -516.452, 6.87964, 4.66854, 25, 5, 0, 3330, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031755, 3031755, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031755, 3031756, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031755, 3031757, 2, 270, 2);

-- 2nd guards
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031758, 800008, 0, 0, 0, -800.124, -546.528, 15.7757, 1.35417, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031759, 2386, 0, 0, 645, -802.49, -546.844, 15.5037, 1.36988, 25, 5, 0, 3330, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031760, 2386, 0, 0, 645, -799.815, -547.389, 15.7267, 1.36988, 25, 5, 0, 3330, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031758, 3031758, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031758, 3031759, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031758, 3031760, 2, 270, 2);

-- 3rd guards
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031761, 800008, 0, 0, 0, -730.255, -506.928, 25.2672, 4.42508, 25, 5, 0, 646473, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031762, 2386, 0, 0, 645, -729.215, -505.879, 25.4978, 4.48006, 25, 5, 0, 3330, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031763, 2386, 0, 0, 645, -730.986, -505.46, 25.3227, 4.48006, 25, 5, 0, 3330, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031761, 3031761, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031761, 3031762, 2, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (3031761, 3031763, 2, 270, 2);

-- alone guard who does text
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031764, 2386, 0, 0, 645, -880.431, -474.41, 13.3554, 5.21439, 3600, 0, 0, 3330, 0, 0, 2);

-- some alone assassins
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031765, 2434, 0, 0, 0, -820.662, -535.926, 15.2871, 2.54403, 60, 10, 0, 1130, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031766, 2434, 0, 0, 0, -882.685, -526.339, 11.1617, 5.28899, 60, 10, 0, 1130, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031767, 2434, 0, 0, 0, -870.362, -473.45, 13.3554, 6.09401, 60, 10, 0, 1156, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031768, 2434, 0, 0, 0, -871.178, -477.712, 13.3554, 6.09401, 60, 10, 0, 1130, 0, 0, 1);

-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 1, -352.934, -768.016, 54.184, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.50618, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 2, -375.366, -776.577, 54.4533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.50618, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 3, -380.214, -775.865, 54.5127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99568, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 4, -381.002, -758.458, 54.6013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59374, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 5, -387.104, -728.024, 54.4995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.85292, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 6, -397.596, -700.46, 54.4995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95502, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 7, -416.225, -654.384, 54.4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95502, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 8, -425.536, -621.845, 54.501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84899, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 9, -434.322, -584.652, 53.6346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79402, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 10, -443.796, -582.013, 53.1014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87001, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 11, -496.934, -567.216, 43.9773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87001, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 12, -523.408, -558.664, 39.53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.84252, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 13, -549.378, -562.24, 35.6737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.27842, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 14, -578.032, -572.886, 32.6476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.52975, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 15, -606.311, -574.623, 31.0181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.18024, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 16, -640.721, -560.66, 26.5253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.75613, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 17, -661.983, -560.539, 25.5516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19988, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 18, -687.315, -570.55, 24.9831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.57294, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 19, -706.202, -563.399, 22.997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.77969, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 20, -725.605, -549.258, 20.2692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5048, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 21, -782.175, -544.099, 18.1263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05065, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 22, -800.018, -532.504, 16.2685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.6069, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 23, -820.916, -523.649, 13.6753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94854, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 24, -838.78, -523.355, 11.388, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.28626, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 25, -851.978, -528.52, 10.3408, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.52188, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 26, -861.461, -516.962, 11.0545, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84506, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 27, -854.569, -539.677, 10.0107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.00628, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 28, -871.462, -539.972, 8.0496, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13703, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 29, -856.72, -532.914, 9.58624, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.443119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 30, -857.2, -531.075, 9.74625, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84612, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 31, -857.943, -528.448, 10.0192, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84612, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3030710, 32, -857.2, -531.075, 9.74625, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84612, 0, 0);


REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 1, -655.387, -371.222, 38.9685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15667, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 2, -658.357, -374.558, 38.5515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.31375, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 3, -672.811, -384.335, 35.6211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.76142, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 4, -697.196, -390.203, 32.2063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35694, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 5, -719.395, -403.78, 26.5364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.97348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 6, -725.709, -414.276, 26.1353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.49577, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 7, -736.568, -429.944, 24.4644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15805, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 8, -739.341, -448.824, 23.956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62929, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 9, -736.38, -464.4, 23.5071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.90025, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 10, -734.84, -481.219, 23.777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.78244, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 11, -735.538, -493.765, 24.9022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65678, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 12, -729.316, -507.765, 25.2819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48144, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 13, -749.552, -512.375, 21.3012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36479, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 14, -761.546, -515.968, 21.3052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.53758, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 15, -759.52, -525.592, 21.6693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.91988, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 16, -755.022, -541.342, 18.6067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.99057, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 17, -761.845, -549.051, 18.182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.50617, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 18, -777.464, -550.22, 18.34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.91319, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 19, -792.104, -536.726, 17.1053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.41839, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 20, -809.463, -537.664, 15.5731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80855, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 21, -831.143, -536.315, 13.747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99958, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 22, -852.228, -525.504, 10.6719, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.54013, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 23, -868.803, -524.412, 10.9342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.37658, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 24, -870.924, -547.426, 9.69929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.87276, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 25, -867.861, -523.475, 10.9589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.24814, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 26, -860.97, -511.71, 11.7122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.14997, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 27, -849.119, -542.252, 11.0089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.08481, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031734, 28, -846.888, -527.089, 10.9839, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2.11993, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 1, -833.762, -418.207, 13.6839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.79028, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 2, -843.341, -429.941, 10.9075, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.29549, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 3, -834.142, -440.519, 11.3165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.31258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 4, -825.408, -450.19, 12.7117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.26153, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 5, -834.073, -464.074, 12.5257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.22873, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 6, -837.542, -487.766, 14.476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63321, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 7, -843.139, -495.549, 13.1785, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86744, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 8, -850.603, -506.213, 11.8241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.34261, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 9, -834.935, -518.053, 12.0287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.66208, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 10, -837.122, -523.043, 11.5314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.23265, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 11, -858.225, -535.593, 9.28356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.63968, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 12, -851.04, -544.502, 11.0133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39111, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 13, -829.203, -548.896, 15.0133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.99587, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 14, -846.392, -520.238, 11.6177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23774, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031737, 15, -861.124, -519.233, 10.9694, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2.61081, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 1, -890.015, -628.878, 11.977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.05178, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 2, -890.702, -620.66, 10.7976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.918266, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 3, -877.557, -603.88, 8.18722, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.871142, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 4, -881.134, -582.659, 10.5905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60549, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 5, -890.63, -575.675, 7.21995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.41583, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 6, -895.066, -576.7, 6.87964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36871, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 7, -899.054, -572.941, 6.87964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06887, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 8, -904.656, -568.648, 6.87964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.02568, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 9, -903.624, -551.236, 6.87964, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.47983, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 10, -902.682, -540.919, 6.87964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.47983, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 11, -880.97, -538.562, 7.66859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.109305, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 12, -857.072, -536.314, 9.37701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.062181, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 13, -851.026, -543.327, 10.9562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.38326, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 14, -830.734, -549.671, 14.8177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.98016, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 15, -816.96, -549.425, 15.246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.91733, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 16, -777.516, -529.646, 20.9398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.443101, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 17, -719.085, -530.865, 23.5945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25898, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 18, -714.055, -518.81, 25.1648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.20101, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 19, -745.059, -509.998, 22.1019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86606, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 20, -780.076, -526.631, 20.3961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59255, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 21, -802.492, -533.688, 15.9108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98779, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 22, -796.349, -517.947, 17.9258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.17745, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 23, -786.688, -514.359, 17.6412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.43132, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 24, -790.883, -517.853, 17.6412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.83602, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 25, -811.028, -534.63, 15.3496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33337, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031740, 26, -838.185, -539.85, 13.5075, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3.42761, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 1, -717.491, -660.532, 14.0485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 2, -724.043, -661.663, 14.8004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 3, -732.113, -671.41, 13.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 4, -748.322, -664.906, 13.7401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 5, -758.333, -677.337, 12.7371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90671, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 6, -770.57, -686.092, 10.1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.37264, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 7, -807.691, -681.287, 11.0994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01921, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 8, -827.214, -678.885, 11.4438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01921, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 9, -830.899, -671.571, 11.7669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.03746, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 10, -835.56, -662.319, 13.1185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.03746, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 11, -832.535, -646.227, 14.363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.36202, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 12, -816.506, -629.837, 12.7148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.79653, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 13, -808.394, -619.551, 14.126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.926121, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 14, -808.787, -604.848, 14.6794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55837, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 15, -798.376, -584.573, 15.3347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.949683, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 16, -788.969, -572.605, 17.8166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.623742, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 17, -760.223, -575.761, 19.0869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.14509, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 18, -729.331, -591.936, 23.4449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83486, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 19, -741.13, -574.238, 22.5125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.14349, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 20, -798.057, -534.188, 16.4043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4655, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 21, -808.731, -528.666, 15.4765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.77181, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 22, -836.588, -521.578, 11.5679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 23, -851.25, -537.049, 10.4416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95383, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 24, -850.694, -556.021, 11.6775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031743, 25, -845.86, -529.821, 11.1507, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.46019, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 1, -652.053, -481.964, 32.6047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.76532, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 2, -653.649, -492.235, 31.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55465, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 3, -661.386, -497.838, 30.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.31764, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 4, -673.284, -492.839, 32.8994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.6854, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 5, -677.683, -490.681, 34.0744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.6854, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 6, -689.81, -499.992, 29.1151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.82815, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 7, -695.807, -507.067, 27.5327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01272, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 8, -693.072, -519.322, 26.2077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.912, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 9, -692.115, -529.614, 26.7052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65282, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 10, -700.021, -535.441, 26.1249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.675, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 11, -714.965, -530.327, 23.9307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76394, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 12, -752.016, -527.825, 21.2939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.07417, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 13, -769.885, -522.82, 21.522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86604, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 14, -812.642, -531.043, 15.1254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.26659, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 15, -836.691, -516.001, 12.181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.599, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 16, -859.552, -521.379, 10.8556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.37262, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 17, -860.95, -491.56, 13.3536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59762, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 18, -871.998, -490.513, 12.4535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01527, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 19, -875.478, -490.603, 12.4534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.78612, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 20, -875.033, -477.016, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.54657, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 21, -862.769, -474.283, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.219249, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031746, 22, -851.462, -472.618, 14.7146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.21162, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 1, -657.679, -623.222, 33.0579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.62256, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 2, -666.164, -619.781, 31.5735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.9485, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 3, -689.155, -621.433, 25.3398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98777, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 4, -740.433, -614.054, 19.3822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.96814, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 5, -727.092, -593.422, 23.7576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.996789, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 6, -729.14, -577.713, 24.8487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.74684, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 7, -765.309, -569.3, 19.4995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.91316, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 8, -775.946, -566.827, 20.3938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.53893, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 9, -777.745, -575.349, 20.3866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.36222, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 10, -800.647, -574.882, 15.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16056, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 11, -821.837, -577.002, 15.7089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.27445, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 12, -826.766, -573.618, 15.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.07278, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 13, -835.513, -539.221, 13.7845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79397, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 14, -852.701, -542.32, 10.653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43152, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 15, -848.905, -548.774, 11.6752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71958, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 16, -848.881, -556.404, 11.6752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71565, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 17, -858.003, -557.879, 11.6914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.30193, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 18, -855.349, -563.281, 11.6914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.79812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 19, -854.673, -579.157, 11.6882, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75492, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 20, -856.419, -556.79, 11.6917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64867, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 21, -848.777, -556.194, 11.6762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64867, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 22, -850.095, -539.305, 10.8151, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64867, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 23, -860.875, -515.366, 11.0031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64867, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 24, -861.257, -492.833, 13.3531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55835, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 25, -862.197, -489.721, 13.3531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.05708, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 26, -875.467, -490.6, 12.4534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.20769, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 27, -875.972, -477.519, 13.3556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60941, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 28, -868.42, -480.688, 13.3556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.12937, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 29, -859.164, -480.093, 13.3556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.070024, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031749, 30, -858.95, -477.372, 13.3556, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.51516, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 1, -897.902, -477.848, 12.0779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67223, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 2, -899.447, -462.667, 11.3101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67223, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 3, -902.432, -465.866, 13.111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96167, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 4, -894.949, -474.05, 11.3343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.64497, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 5, -893.86, -494.078, 11.4245, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.98269, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 6, -877.333, -505.675, 11.9443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.68562, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 7, -875.213, -510.707, 12.2363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10836, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 8, -883.255, -519.592, 11.5869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03629, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 9, -873.339, -540.92, 7.8886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.14762, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 10, -849.744, -529.495, 10.4276, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.45094, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 11, -834.469, -522.273, 11.7906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.274225, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 12, -806.319, -530.928, 15.647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.73274, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 13, -800.711, -534.37, 16.0748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.73274, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 14, -829.964, -521.693, 12.4019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.54403, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 15, -838.056, -503.831, 15.2406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.96283, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 16, -844.38, -514.694, 12.2939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.66068, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 17, -851.362, -523.348, 10.9693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7875, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 18, -867.172, -518.966, 11.1721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.81499, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 19, -860.587, -517.095, 11.0634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.360621, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 20, -861.551, -494.373, 13.3546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.67616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 21, -862.462, -491.184, 13.3542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10951, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 22, -866.075, -489.96, 13.3542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15271, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 23, -875.572, -490.927, 12.4534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.24303, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 24, -875.636, -478.365, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53872, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 25, -864.576, -475.447, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.242812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 26, -857.412, -473.673, 13.3554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.242812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031752, 27, -883.058, -478.397, 13.3554, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 5.50105, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 1, -905.317, -517.386, 6.87963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.80207, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 2, -905.283, -518.914, 6.87962, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.74317, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 3, -901.955, -540.739, 6.87962, 35000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07834, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 4, -880.156, -540.524, 7.56809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.121095, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 5, -863.04, -535.039, 8.79928, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.415619, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 6, -857.89, -525.41, 10.4464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.08321, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 7, -846.754, -531.876, 10.9846, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51286, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 8, -833.818, -544.428, 14.4581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51286, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 9, -836.142, -541.403, 13.9337, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22596, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 10, -844.139, -530.995, 11.1359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22596, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 11, -837.345, -523.696, 11.518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.659095, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 12, -811.797, -525.919, 15.1133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.18045, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 13, -795.425, -537.666, 16.5744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.76025, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 14, -779.805, -526.794, 20.4797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.608042, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 15, -784.212, -529.015, 20.0177, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60826, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 16, -794.689, -535.887, 16.7732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72215, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 17, -814.406, -527.906, 14.8194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74432, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 18, -846.703, -520.658, 11.5434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05063, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 19, -859.802, -524.93, 10.4836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.01806, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 20, -857.395, -534.444, 9.39955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60827, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 21, -874.84, -540.698, 7.83504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45512, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 22, -902.1, -540.964, 6.87966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1174, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 23, -908.78, -522.464, 6.87966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.31629, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031755, 24, -910.263, -515.756, 6.87966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.203568, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 1, -800.679, -544.805, 15.8749, 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.45628, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 2, -800.161, -536.106, 16.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51126, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 3, -812.629, -526.439, 15.0077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.54798, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 4, -831.576, -524.01, 12.2522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02707, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 5, -843.376, -525.468, 11.1459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.6122, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 6, -831.018, -538.542, 14.0242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46966, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 7, -821.979, -545.619, 15.0663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.61889, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 8, -836.684, -533.416, 12.7849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.45373, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 9, -838.98, -526.14, 11.2784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.87646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 10, -859.221, -534.344, 9.18911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 11, -852.353, -543.043, 10.8047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.43039, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 12, -856.577, -535.394, 9.45051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.02569, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 13, -856.425, -532.668, 9.64755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51518, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 14, -860.465, -518.5, 11.0077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84112, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 15, -860.327, -521.227, 10.8655, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7628, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 16, -859.805, -531.573, 9.45943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7628, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 17, -848.199, -528.437, 10.7509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.337076, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 18, -830.655, -520.859, 12.2872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.407762, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 19, -823.749, -505.428, 15.0465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.14996, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 20, -830.264, -522.235, 12.3803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.34261, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 21, -810.673, -527.279, 15.2818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.03121, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 22, -792.992, -538.137, 16.9272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74454, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031758, 23, -802.495, -550.121, 15.254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04416, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 1, -730.483, -508.024, 25.0626, 55000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.50361, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 2, -732.18, -516.036, 23.4232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.50361, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 3, -734.271, -525.065, 22.5853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.38581, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 4, -738.939, -523.463, 22.0882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.38188, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 5, -746.989, -532.369, 20.7499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.9774, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 6, -749.709, -546.28, 18.9245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52718, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 7, -777.462, -545.284, 17.9916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.99565, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 8, -801.468, -533.504, 16.0384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.68542, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 9, -791.169, -518.348, 17.641, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.714068, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 10, -803.319, -532.364, 15.8957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.9774, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 11, -820.403, -523.733, 13.7511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66578, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 12, -837.326, -522.984, 11.514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 13, -849.979, -528.036, 10.5215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60826, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 14, -859.642, -523.081, 10.6844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4066, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 15, -861.732, -493.679, 13.3546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53481, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 16, -872.665, -490.617, 12.4535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15666, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 17, -874.87, -490.65, 12.4535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15666, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 18, -876.351, -476.042, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60942, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 19, -857.121, -480.286, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.17651, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031761, 20, -861.098, -478.912, 13.3555, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2.97601, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 1, -879.44, -476.261, 13.3554, 75000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.19869, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 2, -876.135, -482.512, 13.3554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.19869, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 3, -875.53, -490.656, 12.4534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.84918, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 4, -860.788, -490.085, 13.3545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26683, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 5, -861.473, -504.242, 13.3534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72745, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 6, -860.926, -520.017, 10.9365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.74708, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 7, -857.723, -525.115, 10.4929, 1000, 0, 2000006005, 0, 0, 0, 0, 0, 0, 0, 5.2733, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 8, -847.042, -527.15, 10.966, 1000, 0, 2000006006, 0, 0, 0, 0, 0, 0, 0, 6.20793, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 9, -831.475, -522.076, 12.2019, 5000, 0, 2000006007, 0, 0, 0, 0, 0, 0, 0, 0.313516, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 10, -847.624, -526.996, 10.8983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.54543, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 11, -854.673, -530.008, 10.0603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.54543, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 12, -858.822, -521.885, 10.8066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95107, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 13, -861.065, -511.267, 11.8983, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64477, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 14, -860.841, -493.243, 13.3531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55837, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 15, -866.15, -490.054, 13.3548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.60688, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 16, -874.81, -490.697, 12.4542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.08204, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 17, -876.681, -479.406, 13.3555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.73509, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 18, -878.074, -471.655, 13.3554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12131, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031764, 19, -881.923, -471.577, 13.3554, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3.12131, 0, 0);

-- add to event
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3030710, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031734, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031735, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031736, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031737, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031738, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031739, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031740, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031741, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031742, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031743, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031744, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031745, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031746, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031747, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031748, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031749, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031750, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031751, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031752, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031753, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031754, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031755, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031758, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031757, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031756, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031759, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031760, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031761, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031762, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031763, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031764, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031765, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031766, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031767, 28);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031768, 28);

-- shadowy assassin faction before 108 but guards didn't attack them
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=1460, `maxhealth`=1620, `armor`=2841, `faction_A`=44, `faction_H`=44, `equipment_id`=2434, `AIName`='', `ScriptName`='mob_shadowy_assassin' WHERE  `entry`=2434;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_southshore_crier' WHERE  `entry`=2435;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_southshore_guard' WHERE  `entry`=2386;

/*********** Stockade Riots, event *****************/
-- add event
REPLACE INTO `zp_mangosd`.`game_event` VALUES (48, '2008-01-01 00:00:00', '2020-12-31 19:59:59', 30, 2, 0, 'Stockade Riots');

-- faction + armor, non hostile before
UPDATE `zp_mangosd`.`creature_template` SET `armor`=843, `faction_A`=17, `faction_H`=17 WHERE  `entry`=5043;

-- add npcs
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031772, 5043, 0, 0, 0, -8766.25, 849.44, 87.1166, 3.75542, 180, 0, 0, 766, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031771, 5043, 0, 0, 0, -8765.05, 847.746, 87.1615, 3.75542, 180, 0, 0, 766, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031770, 5043, 0, 0, 0, -8763.79, 845.961, 87.2109, 3.75542, 180, 0, 0, 766, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3031769, 5043, 0, 0, 0, -8762.76, 844.009, 87.3636, 3.78684, 180, 0, 0, 766, 0, 0, 2);

-- wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031769, 1, -8763.2, 843.635, 87.579, 500, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.71616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031769, 2, -8783.53, 829.433, 96.9043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.7515, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031769, 3, -8787.65, 826.863, 97.6461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.76721, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031769, 4, -8789.58, 822.471, 97.6366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15206, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031769, 5, -8800.97, 816.017, 97.6351, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3.65726, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 1, -8763.84, 845.765, 87.2693, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.80255, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 2, -8772.44, 838.346, 91.5399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.8536, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 3, -8781.5, 832.651, 95.5522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.69653, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 4, -8788.87, 826.357, 97.6445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90073, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 5, -8788.48, 823.973, 97.6418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.22668, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 6, -8792.17, 814.402, 97.635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.40986, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031770, 7, -8800.85, 815.454, 97.635, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3.02109, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 1, -8765.16, 847.691, 87.2073, 600, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.81434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 2, -8773.8, 840.808, 91.3637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 3, -8784.56, 832.241, 96.5485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 4, -8787.95, 824.208, 97.6428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15599, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 5, -8792.38, 827.388, 97.6376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79725, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 6, -8797.93, 831.563, 97.6359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3535, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031771, 7, -8796.78, 854.981, 97.6359, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1.53669, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 1, -8766.61, 849.307, 87.2568, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.84576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 2, -8772.53, 843.283, 90.4063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.84576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 3, -8780.23, 836.671, 94.2326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.85754, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 4, -8789.25, 827.076, 97.6448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.85754, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 5, -8795.07, 828.985, 97.6371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.76976, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3031772, 6, -8797.82, 854.493, 97.6347, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1.67806, 0, 0);

-- add to event
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031769, 48);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031770, 48);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031771, 48);
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES (3031772, 48);

-- Readd patrol dummies in UBRS.
REPLACE INTO `creature` VALUES (229021, 800008, 229, 0, 0, 80.5972, -318.551, 55.7807, 1.30102, 10800, 5, 0, 646473, 0, 0, 1);
REPLACE INTO `creature` VALUES (229022, 800008, 229, 0, 0, 72.0597, -288.625, 60.6402, 4.72458, 10800, 5, 0, 646473, 0, 0, 2);

-- Copied Onyxias mechanics immunity mask to Nefarian.
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`='650870623' WHERE `entry`='11583';
