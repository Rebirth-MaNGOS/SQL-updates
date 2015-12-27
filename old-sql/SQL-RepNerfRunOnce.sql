/************ CAUTION! ONLY RUN THIS SQL ONCE, EVER! **************/

/******* Update rep gain for most quests, if you run it more than once you'll kill your whole quest_template table *********/

-- Change rep for all quests that give 75 to 50
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue1`=50 WHERE  `RewRepValue1`=75;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue2`=50 WHERE  `RewRepValue2`=75;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue3`=50 WHERE  `RewRepValue3`=75;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue4`=50 WHERE  `RewRepValue4`=75;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue5`=50 WHERE  `RewRepValue5`=75;

-- Change rep for all quests that give 150 to 75
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue1`=75 WHERE  `RewRepValue1`=150;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue2`=75 WHERE  `RewRepValue2`=150;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue3`=75 WHERE  `RewRepValue3`=150;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue4`=75 WHERE  `RewRepValue4`=150;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue5`=75 WHERE  `RewRepValue5`=150;

-- Change rep for all quests that give 250 to 100
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue1`=100 WHERE  `RewRepValue1`=250;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue2`=100 WHERE  `RewRepValue2`=250;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue3`=100 WHERE  `RewRepValue3`=250;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue4`=100 WHERE  `RewRepValue4`=250;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue5`=100 WHERE  `RewRepValue5`=250;

-- Change rep for all quests that give 350 to 150
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue1`=150 WHERE  `RewRepValue1`=350;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue2`=150 WHERE  `RewRepValue2`=350;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue3`=150 WHERE  `RewRepValue3`=350;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue4`=150 WHERE  `RewRepValue4`=350;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue5`=150 WHERE  `RewRepValue5`=350;

-- Change rep for all quests that give 500 to 200
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue1`=200 WHERE  `RewRepValue1`=500;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue2`=200 WHERE  `RewRepValue2`=500;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue3`=200 WHERE  `RewRepValue3`=500;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue4`=200 WHERE  `RewRepValue4`=500;
UPDATE `zp_mangosd`.`quest_template` SET `RewRepValue5`=200 WHERE  `RewRepValue5`=500;
