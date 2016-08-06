-- Corrected required levels for Enchanted Thorium Platemail quests, volume I-III
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='52' WHERE (`entry`='7649');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='58' WHERE (`entry`='7650');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='60' WHERE (`entry`='7651');

-- Corrected text in Bolvar's decree
UPDATE `zp_mangosd`.`page_text` SET `text`='Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $g him:her; to find proof of the black dragonflight\'s involvement with the Blackrock orcs. $BShould such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient millitary force to aid Lakeshire.$B$BRegards,$B$BHighlord Bolvar Fordragon' WHERE `entry` in ('1471','1490');

-- adjusted money drop for Stonard Grunts' 
UPDATE `zp_mangosd`.`creature_template` SET `mingold`='400', `maxgold`='700' WHERE (`entry`='866');

-- Fix to make the quest The Ultimate Deception repeatable (already changed on live server)
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`='1' WHERE (`entry`='8829');

-- Quest: Stealing Supplies should now award correct amount of silver star item
UPDATE `zp_mangosd`.`quest_template` SET `RewChoiceItemCount3`=200 WHERE  `entry`=1370;

-- Corruptor's Scourgestones fixed typo
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5508;
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5404;
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!\r\n\r\nTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!\r\n\r\nFor the Dawn, my $G brother:sister;!' WHERE  `entry`=5406;
