UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_mindslayer' WHERE  `entry`=15246 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_slayer' WHERE  `entry`=15250 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_champion' WHERE  `entry`=15252 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15250, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15252, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15246, 910, 0, 3, 0, 100, 0, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_andorgos' WHERE  `entry`=15502 LIMIT 1;

-- change quest templates to reflect change of Idol of war entry change, tier 2.5 quests
UPDATE `zp_mangosd`.`quest_template` SET `ReqItemId2`=20880 WHERE  `ReqItemId2`=20882;