-- Corrected required levels for Enchanted Thorium Platemail quests, volume I-III
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='52' WHERE (`entry`='7649');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='58' WHERE (`entry`='7650');
UPDATE `zp_mangosd`.`quest_template` SET `MinLevel`='60' WHERE (`entry`='7651');

-- Corrected text in Bolvar's decree
UPDATE `zp_mangosd`.`page_text` SET `text`='Solomon,$B$BThe carrier of this decree has been granted official status as an acting deputy of Stormwind. You may use $g him:her; to find proof of the black dragonflight\'s involvement with the Blackrock orcs. $BShould such proof be found, this deputy shall return said proof to me in Stormwind, at which time I shall release the order to dispense sufficient millitary force to aid Lakeshire.$B$BRegards,$B$BHighlord Bolvar Fordragon' WHERE `entry` in ('1471','1490');

