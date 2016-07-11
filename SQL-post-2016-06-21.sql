UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_mindslayer' WHERE  `entry`=15246 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_slayer' WHERE  `entry`=15250 LIMIT 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='mob_qiraji_champion' WHERE  `entry`=15252 LIMIT 1;

REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15250, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15252, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES (15246, 910, 0, 3, 0, 100, 0, 0, 0, 0);

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_andorgos' WHERE  `entry`=15502 LIMIT 1;

-- change quest templates to reflect change of Idol of war entry change, tier 2.5 quests
UPDATE `zp_mangosd`.`quest_template` SET `ReqItemId2`=20880 WHERE  `ReqItemId2`=20882;

-- giant claw tentacle damage
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=3800, `maxdmg`=4000, `attackpower`=900, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE  `entry`=15728;

-- claw tentacle damage
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=300, `maxdmg`=350 WHERE  `entry`=15725;

-- dummy for cthun
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800112, 0, 0, 6296, 0, 'C\'Thun Aggro Dummy', NULL, 0, 62, 62, 646473, 646473, 0, 0, 0, 35, 35, 0, 1, 0.95, 1, 0, 0, 0, 0, 0, 1, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_cthun_aggro_dummy');

-- add dummies
REPLACE INTO `zp_mangosd`.`creature` VALUES (87925, 800112, 531, 0, 0, -8659.36, 1955.07, 108.949, 0.37306, 30, 0, 0, 646473, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (87926, 800112, 531, 0, 0, -8661.63, 1960.9, 108.954, 0.361279, 30, 0, 0, 646473, 0, 0, 0);

-- eye tentacles immunities
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `mechanic_immune_mask`=616773503 WHERE  `entry`=15334;
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=0, `mechanic_immune_mask`=616773503 WHERE  `entry`=15726;

-- mob type for tentacles and portals
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15334;
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15725;
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15726;
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15802;
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15904;
UPDATE `zp_mangosd`.`creature_template` SET `type`=0 WHERE  `entry`=15910;

-- gossip for aurius
REPLACE INTO `zp_mangosd`.`npc_text` VALUES (3755, 'It is good to see others who fight the Scourge in Stratholme, for it is here they are strongest.$B$BGreetings. I am Aurius. I was once a paladin of the Silver Hand, but like others whose faith wavered... I fell from grace. The Scourge seduced me and nearly transformed me into a death knight!$B$BFinally sensing my peril, I fled to this chapel. It is a sacred place, where the first paladin, Uther the Lightbringer, was ordained into the order of the Silver Hand.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `zp_mangosd`.`npc_text` SET `text0_0`='I do not have much time in this world, but Light willing, it is time enough to fulfill my destiny. When you face Baron Rivendare, I will be with you.' WHERE  `ID`=3756;
UPDATE `zp_mangosd`.`npc_text` SET `text0_0`='Leave me. My wounds are great and I fear they will overtake me. Thank you, $N. I will die here, but because of you... I\'ll die in peace.' WHERE  `ID`=3757;

-- armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3791 WHERE `entry`=10917;

-- quest flags
UPDATE `zp_mangosd`.`quest_template` SET `Method`=0 WHERE  `entry`=5125;