-- Alliance and horde battle standard added missing aura spell
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14465;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23036 WHERE  `entry`=14466;

-- AV battle standards
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23574 WHERE  `entry`=14752;
UPDATE `zp_mangosd`.`creature_template` SET `spell1`=23576 WHERE  `entry`=14751;

-- usable multiple times
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=19046;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0, `spellcategory_1`=1153, `spellcategorycooldown_1`=120000 WHERE  `entry`=19045;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18607;
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=0 WHERE  `entry`=18606;

-- Cursed Justicar updated stats
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=57, `maxlevel`=58, `minhealth`=6891, `maxhealth`=7107, `armor`=3799, `rank`=1, `mindmg`=406, `maxdmg`=495, `attackpower`=250 WHERE  `entry`=7072;

-- Emeriss, change gold drop to same as the other dragons
UPDATE `zp_mangosd`.`creature_template` SET `mingold`=71655, `maxgold`=93753 WHERE  `entry`=14889;

-- Enchanted Moonstalker Cloak should only work in darkshore
REPLACE INTO `zp_mangosd`.`spell_area` VALUES (6298, 148, 0, 0, 0, 0, 0, 2, 0);

-- Loatheb, remove spore from world
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=16286;

-- Naxx doors
-- Anub
UPDATE `zp_mangosd`.`gameobject_template` SET `flags`=32 WHERE  `entry`=181126;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65759, 181126, 533, 3202.67, -3475.94, 287.034, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181195;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65839, 181195, 533, 3143.96, -3572.22, 287.097, 2.35619, 0, 0, 0.923879, 0.382686, 180, 0, 1);

-- Faerlina
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181235;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65859, 181235, 533, 3318.65, -3695.85, 259.094, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- not sure for door
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181167;

-- Maexxna
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181197;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65840, 181197, 533, 3452.74, -3863.67, 308.341, 3.14159, 0, 0, -1, 0, 180, 0, 0);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181209;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65847, 181209, 533, 3427.56, -3846.01, 310.369, 0.001245, 0, 0, 0.000622749, 1, 180, 0, 1);

-- plague quarter
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65841, 181198, 533, 2963.16, -3476.83, 297.596, -2.35619, 0, 0, -0.92388, 0.382683, 180, 0, 0);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65842, 181199, 533, 2847.43, -3489.47, 297.839, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- Noth
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65843, 181200, 533, 2737.66, -3489.72, 262.095, 3.14159, 0, 0, -1, 0, 180, 0, 0);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65844, 181201, 533, 2684.28, -3559.36, 261.913, 1.5708, 0, 0, 0.707107, 0.707107, 180, 0, 1);

-- Heigan
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65845, 181202, 533, 2822.93, -3685.3, 273.541, 3.14159, 0, 0, -1, 0, 180, 0, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65846, 181203, 533, 2771.5, -3737.34, 273.596, -1.5708, 0, 0, -0.707107, 0.707107, 180, 0, 0);

-- Loatheb
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181241;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65862, 181241, 533, 2909.69, -3947.28, 273.553, 3.14159, 0, 0, -1, 0, 180, 0, 0);

-- Military quarter
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32, `data1`=1 WHERE  `entry`=181124;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181125;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32, `data1`=1 WHERE  `entry`=181170;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181119;

-- 4 horsemen, add new and delete old one
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65753, 181119, 533, 2587.96, -3017.17, 241.304, 3.14159, 0, 0, -1, 0, 180, 0, 1);
DELETE FROM `zp_mangosd`.`gameobject` WHERE  `guid`=21294;

UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=-604800, `animprogress`=100 WHERE  `guid`=21641;

-- Construct quarter
-- Patchwerk
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181123;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65756, 181123, 533, 3317.97, -3254.35, 293.346, -1.5708, 0, 0, -0.707107, 0.707107, 180, 0, 1);

-- Gluth
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181120;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65754, 181120, 533, 3339.16, -3100.64, 296.813, 3.14159, 0, 0, -1, 0, 180, 0, 1);

-- Thaddius
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181121;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65755, 181121, 533, 3421.86, -3017.51, 295.615, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181477;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181478;

-- eyes
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181212;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65850, 181212, 533, 3020.08, -3448.65, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181211;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65849, 181211, 533, 2991.58, -3448.51, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181210;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65848, 181210, 533, 2991.71, -3420.18, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=32 WHERE  `entry`=181213;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (65851, 181213, 533, 3019.93, -3420.31, 300.972, 3.14159, 0, 0, -1, 0, 180, 0, 1);

-- some doors at Kel'thuzad
-- add waterfall door before kel'thuzad
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (67868, 181225, 533, 3536.81, -5158.41, 142.862, -1.77151, 0, 0, -0.774392, 0.632706, 604800, 0, 1);

-- update to same stats as stock mangos
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=114, `flags`=32 WHERE  `entry`=181225;

-- windows and exit
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181402;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181403;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181404;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181405;
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=1375, `flags`=34 WHERE  `entry`=181228;
 
-- add windows
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82250, 181402, 533, 3732.66, -5026.17, 152.72, -1.77151, 0, 0, -0.774393, 0.632705, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82251, 181403, 533, 3784.16, -5062.08, 152.57, -2.55691, 0, 0, -0.957571, 0.288197, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82252, 181404, 533, 3760.24, -5175.26, 152.571, 2.10995, 0, 0, 0.869888, 0.493249, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82253, 181405, 533, 3698.6, -5187.07, 152.72, 1.32456, 0, 0, 0.614915, 0.788593, 180, 255, 1);

-- exit door
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (82256, 181228, 533, 3635.36, -5090.29, 142.983, -1.77151, 0, 0, -0.774393, 0.632705, 180, 255, 0);

-- Spawn of Fankriss changed enrage to 20 sec instead of 10
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_param1`=20000, `event_param2`=20000 WHERE  `id`=1563001;

-- The Rethban Gauntlet added missing spell on quest accept
UPDATE `zp_mangosd`.`quest_template` SET `SrcSpell`=8553 WHERE  `entry`=1699;

-- UC the binding
-- Warlock quests(the binding) to summon voidwalkers spawn multiple, remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1785 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1785, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 1704.61, 41.9147, -63.8433, 0.435896, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1786 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1786, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 1704.61, 41.9147, -63.8433, 0.435896, '');

-- Org the binding
-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1787 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1787, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, 1806.13, -4372.67, -17.4888, 4.41785, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1788 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1788, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, 1806.13, -4372.67, -17.4888, 4.41785, '');

-- SW the binding
-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1131 Limit 10;

-- Add the correct vw
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1131, 0, 10, 5676, 180000, 0, 0, 0, 0, 0, 0, 0, -8973.05, 1043.72, 52.8631, 2, '');

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1134 Limit 10;

-- Add the correct succubus
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1134, 0, 10, 5677, 180000, 0, 0, 0, 0, 0, 0, 0, -8973.05, 1043.72, 52.8631, 2, '');

-- Ratchet felhunter

-- remove old
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=1449 Limit 10;

-- Add the correct felhunter
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (1449, 0, 10, 6268, 180000, 0, 0, 0, 0, 0, 0, 0, -767.591, -3721.71, 42.3617, 2.79602, '');
