/*********************** Scholo Revamp ****************************************/
-- MISC
-- Spectral Teacher add missing spell banish
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1050003, 10500, 0, 0, 100, 3, 11000, 15000, 20000, 26000, 11, 8994, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Teacher - Cast Banish');
-- set right faction for Blood Steward of Kirtonos
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=233, `faction_H`=233 WHERE  `entry`=14861;

/**************** Add missing pats *********************/
-- spectral researcher
-- move to right spawn point
REPLACE INTO `creature` VALUES (49003, 10499, 289, 0, 0, 164.157, 38.1764, 115.708, 4.68536, 7200, 0, 0, 9306, 7084, 0, 2);
-- add wp
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 1, 161.195, 37.6095, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16562, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 2, 161.513, 29.9838, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72463, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 3, 176.779, 29.9716, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25615, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 4, 176.891, -0.398499, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72462, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 5, 166.248, -0.66292, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16954, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 6, 166.251, -2.02394, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7639, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 7, 166.178, -0.621804, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7639, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 8, 178.397, -0.127974, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.039725, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 9, 177.023, 38.3112, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60267, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49003, 10, 164.808, 37.6532, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16168, 0, 0);

-- 2nd spectral researcher
-- delete old 
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=91351 LIMIT 12;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 1, 193.813, -18.7228, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75091, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 2, 198.724, -18.5765, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.038518, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 3, 198.532, -7.44517, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59753, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 4, 207.598, -7.22903, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25493, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 5, 207.589, -19.6124, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71948, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 6, 212.596, -19.4071, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.062062, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 7, 212.359, -6.85136, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58966, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 8, 189.253, -7.46365, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13297, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 9, 183.752, -12.7441, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98905, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 10, 182.22, -14.0657, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.07799, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91351, 11, 192.545, -7.26656, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.529373, 0, 0);

-- blood steward wp remove old
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=91374 LIMIT 9;
-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 1, 160.879, -0.682247, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16048, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 2, 160.91, -2.1452, 115.708, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7941, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 3, 160.744, -0.622904, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57396, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 4, 180.624, -0.682156, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.28242, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 5, 188.436, -7.98564, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51667, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 6, 188.543, -11.0983, 115.708, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72734, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 7, 188.262, -7.38317, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64465, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 8, 180.376, -0.496222, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39471, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91374, 9, 165.646, -0.838244, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15655, 0, 0);

-- acolyte/neophyte first pat
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 1, 241.754, 32.4332, 115.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.78348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 2, 219.352, 32.2746, 115.711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15262, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 3, 184.245, -5.00227, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93409, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 4, 182.368, -5.59031, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.44322, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 5, 184.382, -5.10559, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.211295, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 6, 201.932, 13.6763, 115.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.890664, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 7, 201.142, 53.8467, 115.714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59752, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 8, 201.687, 53.8827, 115.714, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.065991, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 9, 200.629, 53.8545, 115.714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026721, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 10, 200.79, 35.6054, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73519, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 11, 243.49, 32.505, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48844, 12, 243.07, 31.56, 115.708, 10000, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5.10432, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 1, 241.754, 32.4332, 115.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.78348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 2, 219.352, 32.2746, 115.711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15262, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 3, 184.245, -5.00227, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.93409, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 4, 182.368, -5.59031, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.44322, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 5, 184.382, -5.10559, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.211295, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 6, 201.932, 13.6763, 115.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.890664, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 7, 201.142, 53.8467, 115.714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59752, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 8, 201.687, 53.8827, 115.714, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.065991, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 9, 200.629, 53.8545, 115.714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026721, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 10, 200.79, 35.6054, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73519, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 11, 243.49, 32.505, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033970, 12, 243.07, 31.56, 115.708, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10432, 0, 0);

-- 2nd acolyte/neophyte pat
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 1, 165.891, 43.3236, 115.708, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58735, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 2, 203.55, 24.93, 114.98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.87, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 3, 231.655, 8.44889, 115.721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78763, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 4, 232.466, 7.05277, 115.715, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.27712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 5, 231.112, 8.76558, 115.72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22978, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 6, 184.678, 38.2702, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59499, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 7, 174.183, 38.4018, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12905, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91393, 8, 162.371, 44.7878, 115.708, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67352, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 1, 165.891, 43.3236, 115.708, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58735, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 2, 203.55, 24.93, 114.98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.87, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 3, 231.655, 8.44889, 115.721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78763, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 4, 232.466, 7.05277, 115.715, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.27712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 5, 231.112, 8.76558, 115.72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22978, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 6, 184.678, 38.2702, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59499, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 7, 174.183, 38.4018, 115.708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12905, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (3033971, 8, 162.371, 44.7878, 115.708, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67352, 0, 0);

-- skeleton pat
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=48846 LIMIT 9;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48846, 1, 182.604, 35.6954, 115.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73518, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48846, 2, 183.363, 2.39803, 115.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73518, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48846, 3, 222.348, 2.45622, 115.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.011007, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48846, 4, 222.115, 36.4122, 115.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58573, 0, 0);

-- 3rd room spider pat
-- remove old wp and add new
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=91327 LIMIT 5;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 1, 218.073, 162.318, 109.64, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44578, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 2, 207.737, 159.4, 109.795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36862, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 3, 185.902, 159.913, 109.639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10552, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 4, 179.77, 164.271, 109.59, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.45756, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 5, 180.681, 136.185, 109.591, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75484, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 6, 184.335, 138.645, 109.621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.596159, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 7, 199.479, 140.924, 109.795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.152409, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 8, 222.63, 135.826, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.06646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 9, 215.211, 134.275, 109.641, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1919, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91327, 10, 221.679, 140.299, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.796429, 0, 0);

-- skeleton pat in corner
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 1, 179.289, 130.035, 109.605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.627552, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 2, 187.046, 140.677, 109.661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.00454, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 3, 179.808, 140.788, 109.586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12905, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 4, 179.276, 159.852, 109.585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 5, 258.705, 160.42, 109.761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.011014, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 6, 259.343, 147.477, 109.762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.68414, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 7, 221.616, 147.225, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15262, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 8, 221.968, 131.965, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70378, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 9, 182.082, 131.378, 109.604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16047, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 10, 171.635, 126.388, 109.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59637, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48780, 11, 172.897, 127.004, 109.627, 180000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.482262, 0, 0);

-- adept pat
DELETE FROM `zp_mangosd`.`creature_movement` WHERE  `id`=48787 LIMIT 8;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 1, 222.68, 176.545, 109.64, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60817, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 2, 223.241, 166.884, 109.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7851, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 3, 228.294, 160.758, 109.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41735, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 4, 252.911, 156.821, 109.743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07708, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 5, 271.283, 153.155, 109.78, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.14776, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 6, 256.518, 156.678, 109.754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.90799, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 7, 228.964, 163.234, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.90799, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 8, 218.939, 173.029, 109.641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.37392, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 9, 192.779, 175.143, 109.796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05329, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 10, 192.443, 170.511, 109.796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.58482, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 11, 191.176, 157.695, 109.796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.64372, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 12, 191.571, 135.424, 109.795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73012, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 13, 228.68, 136.129, 109.64, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.029497, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 14, 224.333, 139.988, 109.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.42889, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48787, 15, 222.801, 166.424, 109.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57281, 0, 0);

-- handler pat in dragon room
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 1, 129.267, 163.026, 109.538, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.74305, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 2, 131.139, 159.715, 109.546, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10433, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 3, 129.866, 155.646, 109.539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.40926, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 4, 128.974, 174.288, 109.532, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58575, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 5, 129.284, 165.664, 109.535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76661, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 6, 128.891, 186.724, 109.536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57396, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (91302, 7, 129.135, 170.136, 109.532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75482, 0, 0);

-- mini skeleton pat
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 1, 181.294, 172.984, 109.603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.7812, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 2, 181.213, 129.753, 109.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71052, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 3, 185.15, 123.186, 109.642, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25244, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 4, 183.063, 127.349, 109.626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.80845, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 5, 180.823, 172.112, 109.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60425, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (48962, 6, 182.938, 174.973, 109.617, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.795287, 0, 0);

-- make sure all pats got right movement
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=48844;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=48962;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=91302;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=48787;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=48780;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=91327;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=48846;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=91374;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=91351;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=91393;

-- random movement to plagued hatchlings, diseaseased ghouls, Unstable Corpse and Reanimated Corpse
UPDATE `zp_mangosd`.`creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id`=10678;
UPDATE `zp_mangosd`.`creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id`=10495;
UPDATE `zp_mangosd`.`creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id`=10480;
UPDATE `zp_mangosd`.`creature` SET `spawndist`=5, `MovementType`=1 WHERE  `id`=10481;


/******** change some mobs ****************/
-- make necromancer adept instead
UPDATE `zp_mangosd`.`creature` SET `id`=10469 WHERE  `guid`=91335;
UPDATE `zp_mangosd`.`creature` SET `id`=10469 WHERE  `guid`=48777;
UPDATE `zp_mangosd`.`creature` SET `id`=10469 WHERE  `guid`=48786;
UPDATE `zp_mangosd`.`creature` SET `id`=10469 WHERE  `guid`=48901;

-- adept should be a necromancer
UPDATE `zp_mangosd`.`creature` SET `id`=10477 WHERE  `guid`=91329;
UPDATE `zp_mangosd`.`creature` SET `id`=10477 WHERE  `guid`=48784;
UPDATE `zp_mangosd`.`creature` SET `id`=10470 WHERE  `guid`=48900;

-- neophyte should be acolyte
UPDATE `zp_mangosd`.`creature` SET `id`=10471 WHERE  `guid`=48903;

/*********** Add creatures *******************/
-- add acolyte for pool 1
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033970, 10471, 289, 11157, 0, 242.78, 32.143, 115.791, 5.16617, 7200, 0, 0, 7599, 16020, 0, 2);
-- add acolyte for pool 2
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033971, 10471, 289, 11157, 0, 161.358, 45.2051, 115.791, 2.98451, 7200, 0, 0, 600000, 6723, 0, 2);

-- Ghoul room
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033895, 10495, 289, 0, 0, 179.983, 74.0458, 104.715, 1.41569, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033896, 10481, 289, 0, 0, 179.983, 74.0458, 104.715, 1.41569, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033897, 10485, 289, 0, 0, 179.983, 74.0458, 104.715, 1.41569, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033898, 10495, 289, 0, 0, 188.595, 75.1682, 104.362, 1.51386, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033899, 10481, 289, 0, 0, 188.595, 75.1682, 104.362, 1.51386, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033900, 10485, 289, 0, 0, 188.595, 75.1682, 104.362, 1.51386, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033901, 10495, 289, 0, 0, 183.66, 84.4818, 104.715, 2.32675, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033902, 10481, 289, 0, 0, 183.66, 84.4818, 104.715, 2.32675, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033903, 10485, 289, 0, 0, 183.66, 84.4818, 104.715, 2.32675, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033904, 10495, 289, 0, 0, 179.928, 86.2329, 104.716, 1.38034, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033905, 10481, 289, 0, 0, 179.928, 86.2329, 104.716, 1.38034, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033906, 10485, 289, 0, 0, 179.928, 86.2329, 104.716, 1.38034, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033907, 10495, 289, 0, 0, 187.904, 91.2232, 104.456, 1.52171, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033908, 10481, 289, 0, 0, 187.904, 91.2232, 104.456, 1.52171, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033909, 10485, 289, 0, 0, 187.904, 91.2232, 104.456, 1.52171, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033910, 10495, 289, 0, 0, 186.81, 97.2119, 104.715, 2.27177, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033911, 10481, 289, 0, 0, 186.81, 97.2119, 104.715, 2.27177, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033912, 10485, 289, 0, 0, 186.81, 97.2119, 104.715, 2.27177, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033913, 10495, 289, 0, 0, 180.208, 98.494, 104.715, 2.39351, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033914, 10481, 289, 0, 0, 180.208, 98.494, 104.715, 2.39351, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033915, 10485, 289, 0, 0, 180.208, 98.494, 104.715, 2.39351, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033916, 10495, 289, 0, 0, 193.216, 82.0154, 104.244, 0.0962203, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033917, 10481, 289, 0, 0, 193.216, 82.0154, 104.244, 0.0962203, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033918, 10485, 289, 0, 0, 193.216, 82.0154, 104.244, 0.0962203, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033919, 10495, 289, 0, 0, 197.592, 72.5177, 104.715, 4.56907, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033920, 10481, 289, 0, 0, 197.592, 72.5177, 104.715, 4.56907, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033921, 10485, 289, 0, 0, 197.592, 72.5177, 104.715, 4.56907, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033922, 10495, 289, 0, 0, 195.104, 90.6404, 104.244, 2.60165, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033923, 10481, 289, 0, 0, 195.104, 90.6404, 104.244, 2.60165, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033924, 10485, 289, 0, 0, 195.104, 90.6404, 104.244, 2.60165, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033925, 10495, 289, 0, 0, 196.283, 100.961, 104.715, 1.56492, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033926, 10481, 289, 0, 0, 196.283, 100.961, 104.715, 1.56492, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033927, 10485, 289, 0, 0, 196.283, 100.961, 104.715, 1.56492, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033928, 10495, 289, 0, 0, 205.862, 100.644, 104.715, 1.28218, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033929, 10481, 289, 0, 0, 205.862, 100.644, 104.715, 1.28218, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033930, 10485, 289, 0, 0, 205.862, 100.644, 104.715, 1.28218, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033931, 10495, 289, 0, 0, 203.169, 89.0369, 104.244, 4.21564, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033932, 10481, 289, 0, 0, 203.169, 89.0369, 104.244, 4.21564, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033933, 10485, 289, 0, 0, 203.169, 89.0369, 104.244, 4.21564, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033934, 10495, 289, 0, 0, 203.621, 80.0317, 104.244, 4.67903, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033935, 10481, 289, 0, 0, 203.621, 80.0317, 104.244, 4.67903, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033936, 10485, 289, 0, 0, 203.621, 80.0317, 104.244, 4.67903, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033937, 10495, 289, 0, 0, 204.688, 72.8619, 104.715, 4.67903, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033938, 10481, 289, 0, 0, 204.688, 72.8619, 104.715, 4.67903, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033939, 10485, 289, 0, 0, 204.688, 72.8619, 104.715, 4.67903, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033940, 10495, 289, 0, 0, 212.04, 91.738, 104.244, 1.34108, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033941, 10481, 289, 0, 0, 212.04, 91.738, 104.244, 1.34108, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033942, 10485, 289, 0, 0, 212.04, 91.738, 104.244, 1.34108, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033943, 10495, 289, 0, 0, 208.058, 89.5875, 104.244, 2.35032, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033944, 10481, 289, 0, 0, 208.058, 89.5875, 104.244, 2.35032, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033945, 10485, 289, 0, 0, 208.058, 89.5875, 104.244, 2.35032, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033946, 10495, 289, 0, 0, 219.027, 101.052, 104.715, 0.869844, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033947, 10481, 289, 0, 0, 219.027, 101.052, 104.715, 0.869844, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033948, 10485, 289, 0, 0, 219.027, 101.052, 104.715, 0.869844, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033949, 10495, 289, 0, 0, 217.179, 91.8472, 104.715, 4.75757, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033950, 10481, 289, 0, 0, 217.179, 91.8472, 104.715, 4.75757, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033951, 10485, 289, 0, 0, 217.179, 91.8472, 104.715, 4.75757, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033952, 10495, 289, 0, 0, 217.622, 82.0564, 104.715, 4.75757, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033953, 10481, 289, 0, 0, 217.622, 82.0564, 104.715, 4.75757, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033954, 10485, 289, 0, 0, 217.622, 82.0564, 104.715, 4.75757, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033955, 10495, 289, 0, 0, 212.001, 80.5622, 104.244, 4.45912, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033956, 10481, 289, 0, 0, 212.001, 80.5622, 104.244, 4.45912, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033957, 10485, 289, 0, 0, 212.001, 80.5622, 104.244, 4.45912, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033958, 10495, 289, 0, 0, 220.792, 80.6519, 104.715, 0.143353, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033959, 10481, 289, 0, 0, 220.792, 80.6519, 104.715, 0.143353, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033960, 10485, 289, 0, 0, 220.792, 80.6519, 104.715, 0.143353, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033961, 10495, 289, 0, 0, 220.257, 72.1151, 104.715, 4.59656, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033962, 10481, 289, 0, 0, 220.257, 72.1151, 104.715, 4.59656, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033963, 10485, 289, 0, 0, 220.257, 72.1151, 104.715, 4.59656, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033964, 10495, 289, 0, 0, 213.707, 73.1503, 104.715, 2.19717, 7200, 5, 0, 11172, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033965, 10481, 289, 0, 0, 213.707, 73.1503, 104.715, 2.19717, 7200, 5, 0, 2111, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033966, 10485, 289, 0, 0, 213.707, 73.1503, 104.715, 2.19717, 7200, 5, 0, 2200, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033967, 10495, 289, 0, 0, 199.619, 92.1293, 104.244, 1.62383, 7200, 5, 0, 11631, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033968, 10481, 289, 0, 0, 199.619, 92.1293, 104.244, 1.62383, 7200, 5, 0, 2003, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033969, 10485, 289, 0, 0, 199.619, 92.1293, 104.244, 1.62383, 7200, 5, 0, 2200, 0, 0, 1);

/*************** Delete old mobs in the ghoul room ********************/
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48773 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48772 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48770 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91415 LIMIT 1;

DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48586 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91408 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48765 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48761 LIMIT 1;

DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48570 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91409 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91412 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48585 LIMIT 1;

DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=48563 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91417 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91418 LIMIT 1;
DELETE FROM `zp_mangosd`.`creature` WHERE  `id`=91419 LIMIT 1;

/**************** Pools for Ghoul room **********************/
-- add each master pool
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2078, 1, 'Scholomancer - Ghoul Pool 1');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2079, 1, 'Scholomancer - Ghoul Pool 2');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2080, 1, 'Scholomancer - Ghoul Pool 3');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2081, 1, 'Scholomancer - Ghoul Pool 4');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2082, 1, 'Scholomancer - Ghoul Pool 5');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2083, 1, 'Scholomancer - Ghoul Pool 6');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2084, 1, 'Scholomancer - Ghoul Pool 7');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2085, 1, 'Scholomancer - Ghoul Pool 8');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2086, 1, 'Scholomancer - Ghoul Pool 9');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2087, 1, 'Scholomancer - Ghoul Pool 10');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2088, 1, 'Scholomancer - Ghoul Pool 11');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2089, 1, 'Scholomancer - Ghoul Pool 12');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2090, 1, 'Scholomancer - Ghoul Pool 13');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2091, 1, 'Scholomancer - Ghoul Pool 14');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2092, 1, 'Scholomancer - Ghoul Pool 15');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2093, 1, 'Scholomancer - Ghoul Pool 16');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2094, 1, 'Scholomancer - Ghoul Pool 17');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2095, 1, 'Scholomancer - Ghoul Pool 18');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2096, 1, 'Scholomancer - Ghoul Pool 19');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2097, 1, 'Scholomancer - Ghoul Pool 20');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2098, 1, 'Scholomancer - Ghoul Pool 21');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2099, 1, 'Scholomancer - Ghoul Pool 22');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2100, 1, 'Scholomancer - Ghoul Pool 23');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2101, 1, 'Scholomancer - Ghoul Pool 24');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2102, 1, 'Scholomancer - Ghoul Pool 25');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2103, 1, 'Scholomancer - Acolyte/Neophyte pat Pool 1');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2104, 1, 'Scholomancer - Acolyte/Neophyte pat Pool 2');
-- make each pool
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033895, 2078, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033896, 2078, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033897, 2078, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033898, 2079, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033899, 2079, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033900, 2079, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033901, 2080, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033902, 2080, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033903, 2080, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033904, 2081, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033905, 2081, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033906, 2081, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033907, 2082, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033908, 2082, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033909, 2082, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033910, 2083, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033911, 2083, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033912, 2083, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033913, 2084, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033914, 2084, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033915, 2084, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033916, 2085, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033917, 2085, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033918, 2085, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033919, 2086, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033920, 2086, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033921, 2086, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033922, 2087, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033923, 2087, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033924, 2087, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033925, 2088, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033926, 2088, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033927, 2088, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033928, 2089, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033929, 2089, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033930, 2089, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033931, 2090, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033932, 2090, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033933, 2090, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033934, 2091, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033935, 2091, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033936, 2091, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033937, 2092, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033938, 2092, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033939, 2092, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033940, 2093, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033941, 2093, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033942, 2093, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033943, 2094, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033944, 2094, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033945, 2094, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033946, 2095, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033947, 2095, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033948, 2095, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033949, 2096, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033950, 2096, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033951, 2096, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033952, 2097, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033953, 2097, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033954, 2097, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033955, 2098, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033956, 2098, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033957, 2098, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033958, 2099, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033959, 2099, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033960, 2099, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033961, 2100, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033962, 2100, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033963, 2100, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033964, 2101, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033965, 2101, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033966, 2101, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033967, 2102, 0, 'Diseased Ghoul');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033968, 2102, 0, 'Reanimated Corpse');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033969, 2102, 0, 'Risen Aberration');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (48844, 2103, 0, 'Scholomance Neophyte');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033970, 2103, 0, 'Scholomance Acolyte');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (91393, 2104, 0, 'Scholomance Neophyte');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033971, 2104, 0, 'Scholomance Acolyte');

/************* Most bosses are no longer immune to stun *******************/
-- ras
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10508;
-- malicia
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10505;
-- polkelt
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10901;
-- ravenian
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10507;
-- vectus
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10432;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=800016;
-- jandice
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10504;
-- alexei
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10503;
-- lady barov
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10502;
-- marduk
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=617297883 WHERE  `entry`=10433;

/**************** Imp Delivery quest, scholo warlock event *************/
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720046, 'I\'m finished. The parchment is made. Now, return to Gorzeeki...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J\'eevee - say 4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720045, 'And now... the final step!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J\'eevee - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720044, 'Oh right! Over here now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J\'eevee - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720043, 'Ah, here we are! Well let\'s get to work. Shall we...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'J\'eevee - say 1');

-- add dummy
REPLACE INTO `creature_template` VALUES (800470, 0, 0, 10812, 0, 'J\'eevee', NULL, 0, 58, 58, 4484, 4484, 0, 0, 0, 35, 35, 0, 1.25, 0.95, 0, 0, 154, 184, 0, 78, 1, 1430, 1573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 298, '', 2, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'npc_jeevee_dummy');

-- remove old / make sql run-able again
DELETE FROM `zp_mangosd`.`event_scripts` WHERE  `id`=8438 LIMIT 2;
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (8438, 0, 10, 800470, 180000, 0, 0, 0, 0, 0, 0, 0, 39.1377, 156.06, 83.54, 1.621, 'Spawn J\'eevee');
-- hack the quest credit for now
REPLACE INTO `zp_mangosd`.`event_scripts` VALUES (8438, 33, 7, 7629, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Complete quest 7629');

-- Add movement
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 1, 39.1377, 156.06, 83.5456, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.621, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 2, 39.1102, 159.549, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 3, 36.9212, 161.013, 83.5456, 2500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59498, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 4, 38.9113, 159.71, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.69338, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 5, 40.7344, 154.849, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.81766, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 6, 45.652, 155.032, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026723, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 7, 47.2449, 158.505, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.47971, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 8, 44.9292, 160.89, 83.5456, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.46538, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 9, 46.5044, 158.528, 83.5456, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56633, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 10, 46.1312, 154.611, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61738, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 11, 36.4877, 155.261, 83.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01909, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 12, 29.6432, 159.96, 83.5456, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2.54, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (800470, 13, 33.0833, 161.14, 83.5456, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.058142, 0, 0);

-- remove old kill req for q
UPDATE `zp_mangosd`.`quest_template` SET `SpecialFlags`=2, `ReqCreatureOrGOId1`=0, `ReqCreatureOrGOCount1`=0 WHERE  `entry`=7629;

/************* Paladin mount event scholo ****************/
-- script for the non aspect waves
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40, `AIName`='', `ScriptName`='mob_aspect' WHERE  `entry`=14514;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_aspect' WHERE  `entry`=14513;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_aspect' WHERE  `entry`=14512;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=4813, `maxmana`=4868, `AIName`='', `ScriptName`='mob_aspect' WHERE  `entry`=14511;

UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40 WHERE  `entry`=14518;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40 WHERE  `entry`=14519;
UPDATE `zp_mangosd`.`creature_template` SET `aggrorangeoverride`=40 WHERE  `entry`=14520;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=8910, `maxmana`=8965, `aggrorangeoverride`=40 WHERE  `entry`=14521;

-- missing weapon for darkreaver
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (14516, 18396, 0, 0);
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=10250, `maxmana`=10272, `aggrorangeoverride`=40, `equipment_id`=14516 WHERE  `entry`=14516;

-- missing yell
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720042, 'ENOUGH - this ends now! You fools will be added to my bone collection!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Death Knight Darkreaver - Yell on Spawn');

-- dummy for paladin event
REPLACE INTO `creature_template` VALUES (800469, 0, 0, 6296, 0, 'Paladin Event Dummy', 'lol it\'s a frog', 0, 1, 1, 649999, 649999, 0, 0, 0, 35, 35, 0, 1, 1.14286, 3, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5242886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_paladin_event');

-- Report to Orgnil RP at quest complete
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=823 WHERE  `entry`=823;

REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006009, 'What?? The Burning Blade is spreading! We must investigate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=823 LIMIT 2;
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (823, 3, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orgnil Emote on Quest Complete');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (823, 3, 0, 0, 0, 0, 0, 0, 2000006009, 0, 0, 0, 0, 0, 0, 0, 'Orgnil Say on Quest Complete');


/************ Scripts on movement, re-add these and remove duplicates ************/
-- Remove all old and replace with no double scripts
DELETE FROM `zp_mangosd`.`creature_movement_scripts` WHERE  `id`=1 LIMIT 10;
DELETE FROM `zp_mangosd`.`creature_movement_scripts` WHERE  `id`=2 LIMIT 10;
DELETE FROM `zp_mangosd`.`creature_movement_scripts` WHERE  `id`=3 LIMIT 10;
DELETE FROM `zp_mangosd`.`creature_movement_scripts` WHERE  `id`=4 LIMIT 10;
DELETE FROM `zp_mangosd`.`creature_movement_scripts` WHERE  `id`=5 LIMIT 10;

-- add them again
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (1, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Make Creature Run');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (2, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Make Creature Walk');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (3, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop Movement');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (4, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Creature');
REPLACE INTO `zp_mangosd`.`creature_movement_scripts` VALUES (5, 8, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Creature do Point Emote');

/********* Zanzil's Secret quest end RP ***************/
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=621 WHERE  `entry`=621;
-- add text
REPLACE INTO `db_script_string` VALUES (2000006011, 'I\'m sure I can find a use for this mixture...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `db_script_string` VALUES (2000006010, 'Thank you, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- add rp
-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=621 LIMIT 2;
REPLACE INTO `quest_end_scripts` VALUES (621, 1, 0, 0, 0, 0, 0, 0, 2000006010, 0, 0, 0, 0, 0, 0, 0, 'Zanzil\'s Secret - quest end say 1');
REPLACE INTO `quest_end_scripts` VALUES (621, 5, 0, 0, 0, 0, 0, 0, 2000006011, 0, 0, 0, 0, 0, 0, 0, 'Zanzil\'s Secret - quest end say 2');

-- Giant Yeti remove skinning when mob is alive
UPDATE `zp_mangosd`.`creature_template` SET `unit_flags`=0 WHERE  `entry`=2251;

/********** The broken sigil, quest end RP ************/
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=640 WHERE  `entry`=640;
-- add text
REPLACE INTO `db_script_string` VALUES (2000006012, 'Easier than I expected... the sigil of Thoradin is whole, once again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=640 LIMIT 3;
REPLACE INTO `quest_end_scripts` VALUES (640, 8, 0, 0, 0, 0, 0, 0, 2000006012, 0, 0, 0, 0, 0, 0, 0, 'Tor\'gan - Say');
REPLACE INTO `quest_end_scripts` VALUES (640, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tor\'gan - Emote Say');
REPLACE INTO `quest_end_scripts` VALUES (640, 2, 15, 2152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tor\'gan- Craft Emote on Quest Complete');

/******** Lost but not forgotten - add missing cry emote ******/
-- cry when the player turns in quest
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardEmote1`=18 WHERE  `entry`=816;

/********** Parts for Kravel quest end RP *************/
-- don't kneel 24/7
DELETE FROM `zp_mangosd`.`creature_addon` WHERE  `guid`=21570;
-- add script for quest end rp
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_kravel_koalbeard' WHERE  `entry`=4452;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720047, 'There, that should do it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Kravel Koalbeard - say');

-- add custom box that players can't interact with
REPLACE INTO `zp_mangosd`.`gameobject_template` VALUES (175168, 10, 336, 'Parts Crate', 14, 16, 0.5, 0, 0, 0, 196608, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/************* The escape quest end RP, sql *************/
-- add text and script
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720048, 'Here goes nothing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 'Maybell Maclure - say');
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_maybell_maclure' WHERE  `entry`=251;

/************** Vyletongue Corruption quest start rp ************/
-- add start text at quest start and add text
UPDATE `zp_mangosd`.`quest_template` SET `StartScript`=7041 WHERE  `entry`=7029;
UPDATE `zp_mangosd`.`quest_template` SET `StartScript`=7041 WHERE  `entry`=7041;

REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006013, '$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so that you know what to look for...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- remove old if sql is run again and add the text
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=7041 LIMIT 2;
REPLACE INTO `zp_mangosd`.`quest_start_scripts` VALUES (7041, 0, 0, 0, 0, 0, 0, 0, 2000006013, 0, 0, 0, 0, 0, 0, 0, 'Talendria say on quest start');

/*************** Guile of the raptor quest end RP ***************/
-- add text and AI
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_gormul' WHERE  `entry`=2792;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720049, 'What is this power that flows through me? Is this the power of shamanism that Tor\'gan spoke of...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gor\'mul - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720050, 'Amazing! I feel... renewed. My Strength returns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 'Gor\'mul - say 2');

-- captured farmers should move some
UPDATE `zp_mangosd`.`creature` SET `spawndist`=3, `MovementType`=1 WHERE  `guid`=15891;
UPDATE `zp_mangosd`.`creature` SET `spawndist`=3, `MovementType`=1 WHERE  `guid`=15892;
UPDATE `zp_mangosd`.`creature` SET `spawndist`=3, `MovementType`=1 WHERE  `guid`=15893;

-- Elixir of Pain
-- add script to stanley
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_stanley' WHERE  `entry`=2274;

/********* The mind's eye RP horde *************/
-- add text for mind's eye RP and brd bridge event
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720052, 'I have shaped Yenniku\'s Soul Gem, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Kin\'weelay - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720051, 'You can\'t hide from us. Prepare to burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Anvilrage Guardsman yell on spawn');

-- add ai
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_kinweelay' WHERE  `entry`=2519;

/************* The troll witchdoctor quest end RP **************/
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720053, 'I am eager to hear what so angry an orc has to say.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Kin\'weelay - say 1, 1240');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720054, 'Peer into the cauldron, $N. Marg wishes to speak...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Kin\'weelay - say 2, 1240');

/************** Suspicious Hoofprints quest end RP **************/
-- add waypoints
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 1, -3156.64, -2900.26, 34.0025, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0.399108, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 2, -3149.29, -2897.16, 34.1336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.399108, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 3, -3147.19, -2893.58, 34.2069, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.988156, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 4, -3148.16, -2889.44, 34.1586, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.92671, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 5, -3144.6, -2887.16, 34.1211, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.677924, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 6, -3138.47, -2873.03, 34.7201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.15309, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 7, -3138.19, -2861.83, 34.7308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.54579, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 8, -3132.42, -2853.72, 34.8295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.674008, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 9, -3095.46, -2822, 34.2606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.709351, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 10, -3093.77, -2815.63, 34.4839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38479, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (4972, 11, -3105.21, -2798.61, 34.0884, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2.13878, 0, 0);

-- text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720057, 'Understood. I will return shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Kagoro say');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720056, 'Go to the Shady Rest Inn and follow the tracks. See where they lead and report back to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Krog say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720055, 'Kagoro, I require your presence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Krog say 1');

-- add script and movement
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_krog' WHERE  `entry`=4926;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.21, `MovementType`=2 WHERE  `entry`=4972;

-- Help for the new GM chat faction select.
REPLACE INTO `zp_mangosd`.`command` (`name`, `security`, `help`) VALUES ('gm factionchat', '1', 'Syntax: .gm factionchat [#faction] - Set which faction the GM uses in channels. 0 is Alliance and 1 is Horde. Call without an argument to see which faction is currently used.');

/************* Stitches Event *****************'/
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_ello_ebonlocke' WHERE  `entry`=263;

-- remove old SQL, no need to spawn him in DB anymore
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=252 LIMIT 10;
-- move the text from aiscripts to scriptdev
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720058, 'Undead are crawling all over the land. Where is the Stormwind Army?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lord Ebonlocke - Random Say');

/***************** The Temple of Atal'Hakkar rp, adjusted ai for Fel'zerul ************/
-- remove old wrong AI
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=144301;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='' WHERE  `entry`=1443;

UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=1445 WHERE  `entry`=1445;
-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=1445 LIMIT 1;
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (1445, 1, 15, 7437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel\'zerul - Cast spell Break Stuff');

/*************** Shadow Hunter Vosh'gajin and her adds, lbrs ********************/
-- make them kneel and channel
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (43522, 0, 8, 1, 16, 0, 0, '12380');
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (43551, 0, 8, 1, 16, 0, 0, '12380');
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (43550, 0, 8, 1, 16, 0, 0, '12380');

-- turn them the right way
UPDATE `zp_mangosd`.`creature` SET `orientation`=3.054 WHERE  `guid`=43522;
UPDATE `zp_mangosd`.`creature` SET `orientation`=1.601 WHERE  `guid`=43551;
UPDATE `zp_mangosd`.`creature` SET `orientation`=4.6617 WHERE  `guid`=43550;

-- link them
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (43522, 43522, 0, 0, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (43522, 43551, 10, 120, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (43522, 43550, 10, 240, 2);

-- move the table to right position
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (632546, 175950, 229, -128.406, -482.324, 25.5927, 6.28, 0, 0, 0, 0, 20, 100, 1);

/************** Voodoo dues, quest end rp *****************/
-- add text and script
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_sea_wolf_mackinley' WHERE  `entry`=2501;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720059, 'Bah! $N, this foot won\'t budge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '"Sea Wolf" MacKinley - say');

/************* The corrupter *************/
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720067, '[Demonic] Parn Parn xi rikk mannor no shi rikk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lord Azrethoc\'s Image - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720066, '[Demonic] Rethule', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lord Azrethoc\'s Image - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720065, '[Demonic] Kar refir xi raka no shi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Lord Azrethoc\'s Image - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720064, 'Yes, come. My master and I shall be waiting.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Jugkar Grim\'rod\'s Image - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720063, 'Pathetic forsaken weakling. You wish to see my master? So be it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Jugkar Grim\'rod\'s Image - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720062, 'An interesting turn of events.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Maurin Bonesplitter - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720061, '[Demonic] X amir rikk zila parn Amanalar Ante rikk thorje xi no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 'Maurin Bonesplitter - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720060, 'This should only take a moment, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Maurin Bonesplitter - say 1');

UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_maurin_bonesplitter' WHERE  `entry`=4498;

-- images same lvl as non images, lvl1 before didnt look good
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=40, `maxlevel`=40, `minhealth`=4549, `maxhealth`=4549, `rank`=1 WHERE  `entry`=5772;
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=40, `maxlevel`=40, `minhealth`=1385, `maxhealth`=1385, `minmana`=1283, `maxmana`=1283 WHERE  `entry`=5773;

/*************** Making sense of it RP *************/
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_j_d_collie' WHERE  `entry`=9117;
-- add text + text for zamek's distraction
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720068, 'Hehehe! Things go boom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Zamek - say');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720069, 'Now, let\'s see... If I am correct, then... Hmmm...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'J.D. Collie - Say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720070, 'Blue and red... Just as I thought...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'J.D. Collie - Say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720071, '$N, that\'s it! I finally understand!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'J.D. Collie - Say 3');

/***************** New debug table ****************/
CREATE TABLE `zp_charactersd`.`character_bugreport` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `creator` INT NOT NULL,
      `title` VARCHAR(200) NOT NULL,
      `text` VARCHAR(550) NOT NULL,
      `date` INT NOT NULL,
      PRIMARY KEY (`id`),
      UNIQUE INDEX `id_UNIQUE` (`id` ASC));

/**************** Bloodscalp clan heads, quest end rp ****************/
-- add script and text
UPDATE `zp_mangosd`.`gameobject_template` SET `ScriptName`='go_bubbling_cauldron' WHERE  `entry`=2076;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720072, 'Ah, good $N. Now let us see what tale these heads tell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Kin\'weelay - say 1, 584');

-- Nothing but the truth, muggle
UPDATE `zp_mangosd`.`quest_template` SET `NextQuestInChain`='1388' WHERE (`entry`='1383') limit 1;
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`='1383' WHERE (`entry`='1388') limit 1;

-- remove gnoll text from dark iron lookout
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=856602;

/**************** Nothing but the truth, quest end RP ****************/
-- lower his respawn time since he dies at end of quest and add AI
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=60 WHERE  `guid`=38881;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_infiltrator_marksen' WHERE  `entry`=5416;
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720073, 'That was refreshing. Now there\'s information that needs to be told...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Infiltrator Marksen - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720074, 'I believe the Forsaken are misleading the allies of the Horde.... wait... I feel so... dizzy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Infiltrator Marksen - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720075, 'AAAAAAAAAAAAAAAAARGH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Infiltrator Marksen - say 3');

-- Gravis Slipknot rare, add missing text on aggro
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-14221, 'Greetings, hapless adventurer. I ask only that you wait a moment...and BLEED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (1422102, 14221, 4, 0, 100, 0, 0, 0, 0, 0, 1, -14221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravis Slipknot - Say on aggro');

-- Snow Tracker Wolf, remove lvl 49 loot pool, lvl7 mob
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1138 AND `item`=24029;

/******************* lil timmy pat ***************/
-- respawn and waypoint movement for lil timmy
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=8100, `MovementType`=2 WHERE  `guid`=45501;
-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 1, -8652.73, 901.9, 98.1718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80643, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 2, -8692.7, 872.382, 97.0208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81036, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 3, -8709.81, 858.863, 96.992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.81036, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 4, -8726.05, 836.269, 96.1299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.08918, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 5, -8727.82, 818.371, 97.0069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 6, -8727.82, 818.371, 97.0069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.63895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 7, -8718.01, 795.908, 96.9592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.12197, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 8, -8720.34, 786.93, 97.4813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46224, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 9, -8731.12, 771.154, 98.0069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.11274, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 10, -8728.96, 757.68, 98.2603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.88635, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 11, -8715.72, 739.683, 97.7925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29476, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 12, -8715.65, 736.014, 97.795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.16771, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 13, -8743.03, 711.99, 98.1857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86926, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 14, -8742.86, 707.512, 98.4126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.75283, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 15, -8731.27, 691.628, 98.7321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29082, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 16, -8726.94, 679.934, 98.7077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.15731, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 17, -8713.85, 655.995, 99.1773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1848, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 18, -8706.83, 629.644, 100.559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.97274, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 19, -8705.68, 611.63, 99.9743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.74105, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 20, -8708.47, 598.844, 98.9583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 21, -8716.59, 592.213, 98.5284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.82606, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 22, -8722.47, 589.265, 98.4164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60615, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 23, -8744.62, 567.411, 97.3968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 24, -8747.81, 558.477, 97.4013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.37584, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 25, -8731.25, 541.827, 101.118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49502, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 26, -8714.74, 520.62, 97.1338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.389, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 27, -8706.51, 523.463, 97.6271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.331029, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 28, -8690.29, 537.238, 97.8558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.704094, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 29, -8676.23, 550.999, 97.4115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.774779, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 30, -8654.45, 552.534, 96.9196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.063994, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 31, -8650.21, 552.794, 97.1446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.72672, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 32, -8643.58, 543.464, 98.6295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33009, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 33, -8621.27, 520.497, 102.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50287, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 34, -8613.38, 514.515, 103.408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.64031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 35, -8607.19, 517.925, 104.854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.503809, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 36, -8578.65, 543.344, 101.784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.731575, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 37, -8583.05, 565.244, 102.103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.74474, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 38, -8583.6, 583.255, 103.488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57195, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 39, -8576.46, 599.806, 103.374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.16354, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 40, -8568.51, 609.526, 102.718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.853311, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 41, -8552.04, 619.291, 101.88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.535225, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 42, -8515.36, 644.024, 100.172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.598057, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 43, -8511.14, 650.51, 100.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.27743, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 44, -8518.94, 666.724, 102.606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04319, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 45, -8532.96, 686.253, 97.6796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.19634, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 46, -8542.77, 686.975, 97.6357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06814, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 47, -8560.69, 674.869, 97.0155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.73572, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 48, -8568.47, 681.707, 97.0155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38877, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 49, -8594.37, 714.146, 96.6507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.24739, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 50, -8613.75, 708.817, 96.7525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.40978, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 51, -8625.09, 721.398, 96.6902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.27881, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 52, -8660.48, 764.085, 96.7135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.18849, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 53, -8633.63, 787.261, 96.6511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.688377, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 54, -8639.88, 797.296, 96.6511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25525, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 55, -8657.94, 819.184, 96.6283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25525, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 56, -8647.52, 831.056, 96.6417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.817967, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 57, -8653.68, 842.645, 96.9239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.16885, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 58, -8680.2, 877.349, 97.0167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23561, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 59, -8653.46, 899.879, 98.186, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0.700157, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (45501, 60, -8649.72, 903.036, 98.5892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.700157, 0, 0);

-- remove all Young Murk Thresher(they were added in tbc for 1 quest) and add a coral shark to the water under theramore bridge.
DELETE FROM `zp_mangosd`.`creature` WHERE `id` = 4388;
REPLACE INTO `creature` VALUES (3033984, 5434, 1, 0, 0, -3954.87, -4672.61, -10.331, 0.799656, 360, 50, 0, 7139, 0, 0, 1);

-- Spectral Projection, add AI, hp, mana armor
UPDATE `zp_mangosd`.`creature_template` SET `maxhealth`=1371, `minmana`=899, `maxmana`=931, `armor`=1831, `ScriptName`='mob_spectral_projection' WHERE  `entry`=11263;

/************ Searing Gorge ****************/
-- Overseer Maltorius, one add is there, change it to elite and add the missing one
UPDATE `zp_mangosd`.`creature` SET `id`=8504 WHERE  `guid`=5846;
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033985, 8504, 0, 7865, 0, -6631.38, -1232.6, 209.809, 0.806935, 500, 0, 0, 4860, 0, 0, 0);

-- Overseer Maltorius change faction so he chains with adds
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=54, `faction_H`=54 WHERE  `entry`=14621;

-- Dark iron lookouts in Towers should be sentries, add missing mob
UPDATE `zp_mangosd`.`creature` SET `id`=8504 WHERE  `guid`=6831;
UPDATE `zp_mangosd`.`creature` SET `id`=8504 WHERE  `guid`=6830;
UPDATE `zp_mangosd`.`creature` SET `id`=8504 WHERE  `guid`=6832;
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033986, 8504, 0, 7865, 0, -7023.98, -1282.34, 258.527, 4.86585, 500, 0, 0, 4860, 0, 0, 0);

/***************** LBRS, minor updates with trash position / pooling *************************/
-- add some
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033972, 9098, 229, 0, 839, 12.0946, -329.609, 48.7673, 3.17185, 10800, 0, 0, 7657, 2041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033973, 9097, 229, 0, 839, 12.0946, -329.609, 48.7673, 3.17185, 10800, 0, 0, 7657, 2041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033974, 9045, 229, 0, 839, 12.0946, -329.609, 48.7673, 3.17185, 10800, 0, 0, 7657, 2041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033975, 9259, 229, 0, 1092, -38.5424, -407.458, -18.935, 3.05009, 10800, 0, 0, 10440, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033976, 9261, 229, 0, 962, -42.2847, -407.011, -18.9349, 6.25844, 10800, 0, 0, 8636, 2241, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033977, 9259, 229, 0, 1092, -52.9863, -427.01, -18.935, 3.31318, 10800, 0, 0, 10812, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033978, 9262, 229, 0, 866, -56.271, -430.239, -18.935, 2.0801, 10800, 0, 0, 8418, 3362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033979, 9261, 229, 0, 962, -61.3528, -429.771, -18.935, 0.336521, 10800, 0, 0, 8337, 2163, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033980, 9259, 229, 0, 1092, -60.7762, -425.832, -18.935, 5.39056, 10800, 0, 0, 10440, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033981, 9098, 229, 0, 918, 8.17083, -333.219, 48.7171, 1.07337, 10800, 0, 0, 9824, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033982, 9045, 229, 0, 111, 7.77787, -326.513, 48.783, 5.41806, 10800, 2, 0, 7667, 2041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033983, 9097, 229, 0, 1092, 8.17083, -333.219, 48.7171, 1.07337, 10800, 0, 0, 9824, 0, 0, 0);
-- change some mobs to different ones
UPDATE `zp_mangosd`.`creature` SET `id`=9097 WHERE  `guid`=229004;
UPDATE `zp_mangosd`.`creature` SET `id`=9257 WHERE  `guid`=471971;

-- change the pool a bit
-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`pool_creature` WHERE  `pool_entry`=2038 LIMIT 3;
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (471971, 2038, 0, 'Scarshield Warlock');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033983, 2038, 0, 'Scarshield Spellbinder');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033981, 2038, 0, 'Scarshield Legionnaire');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (229004, 2039, 0, 'Scarshield Warlock');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033982, 2039, 0, 'Scarshield Legionnaire');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (471975, 2039, 0, 'Scarshield Spellbinder');

REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033974, 2077, 0, 'Scarshield Warlock');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033973, 2077, 0, 'Scarshield Legionnaire');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3033972, 2077, 0, 'Scarshield Spellbinder');

-- add pools and update name
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2077, 1, 'Blackrock Spire - Room A - VI Spellbinder Warlock Legionnaire');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2039, 1, 'Blackrock Spire - Room A - V Spellbinder Warlock Legionnaire');
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2038, 1, 'Blackrock Spire - Room A - IV Spellbinder Warlock Legionnaire');

-- move some/change
REPLACE INTO `zp_mangosd`.`creature` VALUES (44151, 9262, 229, 9648, 0, -26.7195, -412.484, -18.935, 0.61536, 10800, 0, 0, 600000, 3362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44078, 9262, 229, 9644, 0, -42.1517, -422.76, -18.935, 5.58692, 10800, 0, 0, 600000, 2163, 0, 0);

-- delete 
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=44149;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=43768;

REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (44009, 0, 8, 1, 0, 0, 0, '13236');
UPDATE `zp_mangosd`.`creature` SET `orientation`=5.261 WHERE  `guid`=44009;

/************* LBRS part II *******************/
-- sitting mob
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033988, 9259, 229, 0, 1092, -88.3194, -463.155, -18.935, 1.97677, 10800, 0, 0, 10440, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (3033988, 0, 1, 1, 16, 12, 0, NULL);

-- add missing mobs
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033989, 9262, 229, 0, 866, -79.3226, -424.602, -18.9349, 3.81066, 10800, 3, 0, 8418, 3362, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033990, 9259, 229, 0, 1092, -80.4816, -429.997, -18.9349, 6.15508, 10800, 3, 0, 10812, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033991, 9259, 229, 0, 1092, -99.3726, -459.313, -18.9349, 0.751534, 10800, 3, 0, 10440, 0, 0, 1);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3033992, 9261, 229, 0, 962, -106.954, -457.814, -18.935, 0.69655, 10800, 3, 0, 8636, 2241, 0, 1);

-- move and make a mob sit
REPLACE INTO `zp_mangosd`.`creature` VALUES (44314, 9261, 229, 9644, 0, -117.361, -480.934, -18.4564, 4.99269, 10800, 0, 0, 600000, 2163, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_addon` VALUES (44314, 0, 1, 1, 16, 12, 0, NULL);

-- move a bit
REPLACE INTO `zp_mangosd`.`creature` VALUES (3004080, 9262, 229, 0, 866, -113.471, -484.479, -18.4564, 3.26482, 10800, 0, 0, 8418, 3362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (3004081, 9259, 229, 0, 1092, -117.752, -486.871, -18.4564, 1.11283, 10800, 0, 0, 10812, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44304, 9259, 229, 9664, 0, -80.3603, -449.516, -18.935, 4.12876, 10800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44305, 9262, 229, 9648, 0, -77.4447, -452.565, -18.935, 3.04884, 10800, 0, 0, 600000, 3362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44306, 9259, 229, 9664, 0, -83.5752, -454.275, -18.935, 0.826152, 10800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44307, 9261, 229, 9644, 0, -84.9689, -450.334, -18.935, 6.28074, 10800, 0, 0, 600000, 2163, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44308, 9259, 229, 9664, 0, -93.9332, -437.188, -18.935, 3.13916, 10800, 0, 0, 600000, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44309, 9261, 229, 9644, 0, -96.9196, -434.385, -18.935, 4.67461, 10800, 0, 0, 600000, 2163, 0, 0);
REPLACE INTO `zp_mangosd`.`creature` VALUES (44310, 9262, 229, 9648, 0, -99.8426, -437.173, -18.935, 0.101233, 10800, 0, 0, 600000, 3362, 0, 0);

-- shouldn't sit
DELETE FROM `zp_mangosd`.`creature_addon` WHERE  `guid`=3004081;

-- move and change to invoker
REPLACE INTO `zp_mangosd`.`creature` VALUES (3004082, 9262, 229, 0, 962, -106.966, -493.499, -18.4564, 1.42699, 10800, 0, 0, 8636, 2241, 0, 0);

-- farmer ray and Salma Saldean removed lvl 40 loot
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=232 AND `item`=24041;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=235 AND `item`=24041;

-- Ally + horde Reason for the Season quest, add to winterveil only
REPLACE INTO `zp_mangosd`.`game_event_quest` VALUES (6964, 2);
REPLACE INTO `zp_mangosd`.`game_event_quest` VALUES (7062, 2);

-- remove "skinnable" from Hulking Mountain Lion while it's alive
UPDATE `zp_mangosd`.`creature_template` SET `unit_flags`=0 WHERE  `entry`=2407;

-- Ragglesnout should now be considered rare elite
UPDATE `zp_mangosd`.`creature_template` SET `rank`=2 WHERE  `entry`=7354;

-- Creeping Doom adds at Solenor the slayer, move all changes to DB instead of script
UPDATE `zp_mangosd`.`creature_template` SET `subname`='Solenor the Slayer\'s Guardian', `minhealth`=190, `maxhealth`=200, `faction_A`=90, `faction_H`=90, `speed_walk`=0.35, `speed_run`=0.35, `mindmg`=250, `maxdmg`=290 WHERE  `entry`=14761;

/************ Blueleaf tubers, RFK quest ********************/
-- add script and friendly all, otherwise it runs in and dies
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.18, `faction_A`=35, `faction_H`=35, `ScriptName`='npc_snufflenose_gopher' WHERE  `entry`=4781;

-- add tubers
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712736, 20920, 47, 2066.18, 1597.19, 63.0311, 4.71792, 0, 0, 0.705148, -0.70906, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712735, 20920, 47, 2067.34, 1660.22, 61.2332, 4.17207, 0, 0, 0.870175, -0.492744, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712734, 20920, 47, 2088.67, 1674.38, 61.2318, 2.8958, 0, 0, 0.992458, 0.122587, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712733, 20920, 47, 2127.36, 1732.26, 51.9471, 3.0882, 0, 0, 0.999644, 0.0266907, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712732, 20920, 47, 2162.78, 1731.09, 53.0717, 2.39313, 0, 0, 0.930788, 0.365558, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712731, 20920, 47, 2156.48, 1677.4, 59.1101, 0.323602, 0, 0, 0.161096, 0.986939, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712730, 20920, 47, 2116.88, 1667.56, 59.3707, 3.20601, 0, 0, 0.999481, -0.0322053, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712729, 20920, 47, 2135.12, 1677.49, 58.2743, 3.82255, 0, 0, 0.942595, -0.333939, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712728, 20920, 47, 2170.73, 1705.24, 54.8642, 6.23372, 0, 0, 0.0247307, -0.999694, -10, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712727, 20920, 47, 2167.96, 1691.22, 57.2232, 4.12886, 0, 0, 0.880617, -0.473829, -10, 100, 1);

-- add larger area to summon the snufflenose
UPDATE `zp_mangosd`.`gameobject_template` SET `size`=3 WHERE  `entry`=300011;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712737, 300011, 47, 2078.78, 1670.43, 61.2145, 0.217597, 0, 0, 0.108584, 0.994087, 180, 100, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712738, 300011, 47, 2170.2, 1698.85, 55.807, 1.1051, 0, 0, 0.524858, 0.85119, 180, 100, 1);

-- change faction so tubers are lootable
UPDATE `zp_mangosd`.`gameobject_template` SET `faction`=0 WHERE  `entry`=20920; 

-- 1 charges to the crate and don't remove when it's empty
UPDATE `zp_mangosd`.`item_template` SET `spellcharges_1`=1 WHERE  `entry`=5880;

/************** The key to freedom quest end RP *******************/
-- give Locheed wp movement and add script
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `MovementType`=2, `ScriptName`='npc_locheed' WHERE  `entry`=9876;

-- add script to the gobj where you turn in quest
UPDATE `zp_mangosd`.`gameobject_template` SET `ScriptName`='go_wooden_outhouse' WHERE  `entry`=173265;

-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 1, -7026.18, -1784.22, 265.769, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3.56994, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 2, -7039.51, -1787.65, 265.832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35396, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 3, -7061.61, -1789.12, 265.832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.21651, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 4, -7074.18, -1796.82, 267.838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.71131, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 5, -7089.55, -1794.87, 269.936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02409, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (9876, 6, -7107.18, -1794.8, 271.07, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3.20473, 0, 0);

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720076, 'Ach! Thank you so much, $N! I\'m free! Finally!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 'Locheed - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720077, 'You take care of yourself! I\'m getting out of here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Locheed - say 2');

-- remove quest end script
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=0 WHERE  `entry`=4451;

-- text remove old text
DELETE FROM `zp_mangosd`.`creature_ai_texts` WHERE  `entry`=-442105;

-- remove old AI
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=987601;

-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=4451 LIMIT 1;

-- add missing text when turning in "The Test of Righteousness"
UPDATE `zp_mangosd`.`quest_template` SET `OfferRewardText`='Good day, $N. The Light is with you, I trust? What\'s that? You were sent by Duthorian!? My wife, how is she? I knew there was going to be trouble if I left. Please tell me she\'s... oh, thank goodness. I\'m so glad that she\'s safe. The Defias were a threat long before these attacks, but now the King\'s advisors cannot deny it. What else did Duthorian have to say? You\'re the one that was sent to protect my wife? Then I thank you again, $N. I couldn\'t think of a better test of valor than that.' WHERE  `entry`=1653;

-- add missing loot for Overlord Wyrmthalak, chillpike
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (9568, 13148, 0, 1, 1, 1, 0, 0, 0);

/************** Headhunting quest end RP **************/
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720078, 'I am done inspecting the skulls, $N, and I am relieved. Yenniku is not among them...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Nimboya - say 1');
-- add script
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_nimboya' WHERE  `entry`=2497;

-- Felhound Tracker, add AI for azsharite quest, make friendly all so it won't attack
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=35, `faction_H`=35, `ScriptName`='npc_felhound_tracker' WHERE  `entry`=8668;

/******************** Haggle, deeprun tram ******************/
-- add script
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_haggle' WHERE  `entry`=14041;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=53788;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720079, 'Spare some change?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720080, 'I had it all! I had it all then I lost it. Lost... All gone... Like... My mind. My mind is like... Cheese. I like cheese.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720081, 'Forty-two... forty-two... forty-two what? It could be anything... hmm...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720082, 'Rat-kabobs! Get your tasty rat-kabobs! Get them while they\'re hot!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720083, 'Rats everywhere. Everywhere I see rats. Always looking at me with their beady little eyes. I show them. I show them all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 5');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720084, 'Cheese...I love cheese. If I only had cheese. If I only had cheese like before.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Haggle - say 6');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720085, 'In the trash...always in the trash...that\'s where the money is!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Haggle - say 7');

-- waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 1, -16.0396, -16.2619, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.18231, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 2, -15.6168, -5.35771, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.54359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 3, -16.7592, -4.51282, -4.29737, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 2.50963, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 4, -15.1886, -2.55116, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.895637, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 5, -13.7101, 5.03415, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.31582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 6, -12.6091, 39.5958, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5593, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 7, -7.69542, 39.5393, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5593, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 8, -7.5347, 53.5174, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5593, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 9, -9.45209, 45.1237, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46527, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 10, -16.7714, 40.565, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72307, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 11, -21.6434, 33.314, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.1197, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 12, -29.391, 31.9713, -4.29737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.3343, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 13, -31.428, -17.2475, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70089, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 14, -36.0603, -30.9011, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.3828, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 15, -53.5684, -31.0984, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13794, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 16, -55.9074, -24.2783, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.90094, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 17, -61.5641, -17.9188, -4.297, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 2.30542, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 18, -67.5595, -19.1375, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.34215, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 19, -78.7977, -16.8394, -4.297, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 2.93374, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 20, -77.2373, -13.229, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.17837, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 21, -77.5589, 31.4179, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58678, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 22, -73.1515, 33.9083, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.27124, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 23, -65.1999, 34.3655, -4.297, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 6.27954, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 24, -70.1133, 34.4413, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26776, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 25, -70.0459, 13.703, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72837, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 26, -65.6349, 8.72159, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.45878, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 27, -59.6232, 5.39139, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.80436, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 28, -54.9824, -30.0113, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85795, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 29, -35.1878, -29.4181, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.090583, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 30, -33.0976, -22.4149, -4.297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.23726, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 31, -9.08991, -21.8991, -4.29529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.20491, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 32, -4.9339, -30.1852, -4.29671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.16426, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 33, 13.7296, -29.6077, -4.29671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.015968, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 34, 15.2763, -22.129, -4.29451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.36685, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 35, 20.8804, -17.4406, -4.29614, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0.652141, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 36, 21.6655, -18.625, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29777, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 37, 33.6799, -18.2932, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.027752, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 38, 35.9584, -12.3385, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53964, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 39, 36.3018, -1.31888, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53964, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 40, 38.457, 0.703208, -4.29614, 5000, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0.742464, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 41, 36.9244, 2.25921, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3486, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 42, 22.4919, 8.24325, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.74916, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 43, 17.3415, 2.44421, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 44, 17.3351, -17.4276, -4.29614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71658, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 45, 14.769, -24.6267, -4.29689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.35137, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 46, 14.3408, -29.1917, -4.29689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6184, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 47, -4.10616, -29.5579, -4.29689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15364, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53788, 48, -15.485, -18.7088, -4.29689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.38002, 0, 0);

/************* Recover the Key! quest end RP ***************/
-- add script and text
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_elder_torntusk' WHERE  `entry`=14757;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720086, 'Finally, I am free! I come home soon, my dear!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 'Elder Torntusk - say');

/*************** Return to Witch Doctor Uzer'i quest end rp ****************/
-- add script and text
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_witch_doctor_uzeri' WHERE  `entry`=8115;
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720087, 'The muisek vessels are now ready, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Witch Doctor Uzer\'i - say');

/********** Pyrewood village, add 10min respawn for all worgen ******************/
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=1892;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=1893;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=1896;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=3529;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=3531;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=600 WHERE  `id`=3533;

-- add missing spell for Shleipnarr
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (828002, 8280, 0, 0, 100, 1, 9000, 14000, 15000, 21000, 11, 7399, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shleipnarr - Cast Terrify');

/****************** Zamek's Distraction **************/
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_zamek' WHERE  `entry`=4709;

REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 1, -6234.56, -3918.74, -59.397, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 2, -6242.88, -3897.95, -60.9095, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 3, -6260.23, -3872.27, -58.7499, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 4, -6271.08, -3854.34, -58.7499, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 5, -6266.86, -3847.29, -58.7499, 3000, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 6, -6271.4, -3857.22, -58.7499, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 7, -6251.64, -3906.35, -61.2247, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4709, 8, -6228.78, -3945.11, -58.7496, 0, NULL);

-- don't use DB scripts
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=0 WHERE  `entry`=1191;

-- remove old if sql is run again
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=1191 LIMIT 6;

-- crimson elite weapon
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=25004 WHERE  `entry`=12128;
-- bwl drakonids missing weapon
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=1431 WHERE  `entry`=14265;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=1431 WHERE  `entry`=14261;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=1431 WHERE  `entry`=14302;

/*********** Scepter of Celebras, maraudon event ***************/
-- change to right model, set speed and add mana
UPDATE `zp_mangosd`.`creature` SET `modelid`=13715 WHERE  `guid`=466568;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=2708, `maxmana`=2708, `speed_walk`=0.95 WHERE  `entry`=13716;
 
-- make the book clickable
UPDATE `zp_mangosd`.`gameobject_template` SET `flags`=0, `data3`=0 WHERE  `entry`=178965;

-- delete old waypoints
DELETE FROM `zp_scriptdevzerod`.`script_waypoint` WHERE  `entry`=13716;

-- add waypoints
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 0, 652.18, 84.55, -86.83, 8000, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 1, 657.41, 81.4, -86.83, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 2, 657.23, 73.6, -86.82, 21000, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 3, 653.37, 73.88, -85.85, 5000, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 4, 657.23, 73.6, -86.82, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 5, 656.09, 66.63, -86.82, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 6, 651.28, 65.96, -86.75, 5000, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 7, 656.09, 66.63, -86.82, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 8, 657.41, 81.4, -86.83, 0, NULL);
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (13716, 9, 652.18, 84.55, -86.83, 3600000, NULL);

/******* Strat UD, ash'ari crystals should now be flying over the ziggurats ****************/
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `id`=10415;

REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53955, 1, 3847.58, -3748.46, 195.809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.36136, 9832, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53968, 1, 3838.85, -3500.02, 192.029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.21853, 9832, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (53963, 1, 4057.59, -3665.95, 183.078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.44346, 9832, 0);

-- get the crystal flying
UPDATE `zp_mangosd`.`creature_template` SET `InhabitType`=4 WHERE  `entry`=10415;

-- add armor for bronze drakonids, sql from muggle
UPDATE zp_mangosd.`creature_template` SET `armor`='3791' WHERE (`entry`='14263') limit 1;

-- Fresh Holly should now expire after 14 days irl
UPDATE `zp_mangosd`.`item_template` SET `Duration`=1209600, `ExtraFlags`=2 WHERE  `entry`=21212;

-- Andre Firebeard should no longer have a chance of dropping a Wastewander Water Pouch.
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=7883 AND `item`=8483;

-- Remove Dark Iron dwarf text from Horde scout
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=1168002;

-- Attack on Hammerfall event, change id to something without gobj spawning
UPDATE `zp_mangosd`.`game_event` SET `entry`=53 WHERE  `entry`=26;
UPDATE `zp_mangosd`.`game_event_creature` SET `event`=53 WHERE  `event`=26;

-- Fix some orcish texts and a dwarf one
UPDATE `zp_mangosd`.`creature_ai_texts` SET `content_default`='Feel the power of the Blackrock Orcs!', `language`=1 WHERE  `entry`=-377;
UPDATE `zp_mangosd`.`creature_ai_texts` SET `content_default`='You are no match for the Blackrock Orcs!', `language`=1 WHERE  `entry`=-376;
UPDATE `zp_mangosd`.`creature_ai_texts` SET `content_default`='Get him!', `language`=6 WHERE  `entry`=-374;

/**************** Lbrs *****************/
-- Change the 5th mosh'aru tablet to 6th(and vice versa) and move one of them
UPDATE `zp_mangosd`.`gameobject` SET `id`=175949 WHERE  `guid`=632546;
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (632545, 175950, 229, -11.1471, -465.995, -17.0121, 4.69, 0, 0, 0, 0, 20, 100, 1);

-- Add new gobj Bijou's Belongings
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712739, 175334, 229, 36.8277, -445.441, -18.696, 2.78692, 0, 0, 0.984317, 0.176407, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712740, 175334, 229, -8.78935, -462.742, -18.6443, 3.19924, 0, 0, 0.999585, -0.0288222, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712741, 175334, 229, -162.082, -494.891, -18.4564, 6.15625, 0, 0, 0.0634229, -0.997987, 180, 255, 1);
REPLACE INTO `zp_mangosd`.`gameobject` VALUES (1712742, 175334, 229, -78.2078, -402.853, -18.935, 5.50045, 0, 0, 0.381452, -0.924389, 180, 255, 1);

-- add pool and link each to the pool
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2105, 1, 'Bijou\'s Belongings - LBRS');
REPLACE INTO `zp_mangosd`.`pool_gameobject` VALUES (82614, 2105, 0, 'Bijou\'s Belongings');
REPLACE INTO `zp_mangosd`.`pool_gameobject` VALUES (1712739, 2105, 0, 'Bijou\'s Belongings');
REPLACE INTO `zp_mangosd`.`pool_gameobject` VALUES (1712740, 2105, 0, 'Bijou\'s Belongings');
REPLACE INTO `zp_mangosd`.`pool_gameobject` VALUES (1712741, 2105, 0, 'Bijou\'s Belongings');
REPLACE INTO `zp_mangosd`.`pool_gameobject` VALUES (1712742, 2105, 0, 'Bijou\'s Belongings');

-- Stonevault cave hunter should no longer throw cubes
UPDATE `zp_mangosd`.`creature_equip_template_raw` SET `equipinfo3`='436146178' WHERE (`entry`='741') limit 1;

-- Fix for item name
UPDATE `zp_mangosd`.`item_template` SET `name`='\"Mage-Eye\" Blunderbuss' WHERE (`entry`='3041') limit 1;

-- Corporal Keeshan armor and update faction to hostile to mobs
UPDATE `zp_mangosd`.`creature_template` SET `armor`=931, `faction_A`=10, `faction_H`=10 WHERE  `entry`=349;

-- Nef shouldn't have mana
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=11583;

-- Update hitbox for Gyth
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.8, `combat_reach`=1.9 WHERE  `modelid`=9723;

/*************** The Calling quest *******************/
-- should now be a raid quest
UPDATE `zp_mangosd`.`quest_template` SET `Type`=62 WHERE  `entry`=8315;

-- add armor to mobs
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5932 WHERE  `entry`=15288;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5932 WHERE  `entry`=15286;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5932 WHERE  `entry`=15290;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=5341 WHERE  `entry`=14862;

-- add the dummy
REPLACE INTO `zp_mangosd`.`creature_template` VALUES (800479, 0, 0, 6296, 0, 'The Calling Event Dummy', 'lol it\'s another frog', 0, 1, 1, 649999, 649999, 0, 0, 0, 35, 35, 0, 1, 1.14286, 2, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5242886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0, 0, 1, 0, 0, 0, 0, 128, 'npc_the_calling_event');
-- spawn dummy when using the quest item
UPDATE `zp_mangosd`.`event_scripts` SET `datalong`=800479, `datalong2`=1800000 WHERE  `id`=9208 LIMIT 1;

-- add ai
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_geologist_larksbane' WHERE  `entry`=15183;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720088, 'I will do my best to translate and describe what I see.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720089, 'It is history.. A history of Silithus... of Ahn\'Qiraj... of Titans and Old Gods... I read from the prophecy of C\'Thun as written by the Qiraji Prophet Skeram. A prophecy that portends a cataclysm...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720090, 'In the time before time, when the world was still in its infancy, a battle between a Titan and a being of unimaginable evil and power raged on this very soil. The prophecy is unclear about whether or not the Titan was vanquished in this battle but it illustrates that a Titan fell. An Old God had also fallen - or so it was thought.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720091, 'For millennia this being lay dormant beneath the world - biding its time. From its prison it waited for the exact moment at which to strike back at those that would see it harmed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720092, 'The land of eternal starlight, Kalimdor, was a nurturing mother to all of its creatures. The magic of the Well of Eternity permeated the land and empowered the multitude of flora and fauna that would make the world their home. From this magical ether were born the silithid. It was throught the silithid that the brooding Old God would reach and attempt to sunder the world that it once held in its unmerciful grasp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 5');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720093, 'The Old God would create avatars from the silithid in its own image. These avatars were to be known as Qiraji. Sentient and with purpose, the Qiraji would name their creator: C\'Thun was born... For many thousands of years the Qiraji worked feverishly to build a force capable of laying waste to the world that would betray their god. The great fortress city of Ahn\'Qiraj was created to house their growing armies and prepare for the coming of C\'Thun.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 6');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720094, 'This can\'t be right. An Old God could never be allowed to enter this world. The results would be... Oh dear!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Geologist Larksbane - say 7');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720095, 'There is more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 8');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720096, 'The moment that C\'Thun had so patiently waited for had finally arrived. His children had spent thousands of years building an army capable of exacting revenge upon the whole of Kalimdor and now the prize was within their grasp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 9');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720097, 'The Titans had long since vacated this world. Only the night elves that once inhabited this area were here to defend. Oh my! The next passage is fascinating!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Geologist Larksbane - say 10');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720098, 'A mighty Qiraji known as General Rajaxx would command the initial incursion into Silithus. Only one would stand in his way: A night elf known as Staghelm. They refer to him as Khar\'sis or \'hand of the earth\' in the native Qiraji tongue.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 11');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720099, 'Staghelm and his armies were clearly overwhelmed as the endless flow of Rajaxx\'s troops poured into Silithus. It would seem as if Staghelm, however, was more than just a nuisance to the Qiraji. Under Staghelm, the whole of the night elf armies had come together to defend Kalimdor, greatly slowing the Qiraji forces.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 12');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720100, 'Unfortunately, the night elf defense was untenable and Rajaxx knew that they could not hold out much longer. Their tenacity, however, was causing great frustration to Rajaxx and causing even more frustration to his king. Wait, kings? Incredible...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 13');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720101, 'Vek\'nilash and Vek\'lor, known as the Twin Emperors of Ahn\'Qiraj, watched the war from the sanctuary of their temple. The clever brothers devised a plan to demoralize and divide Staghelm\'s forces.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 14');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720102, 'Valstann Staghelm served as the right hand of Fandral. A proud and noble warrior, his dedication and adoration for his father unyielding... and the Twin Emperors sensed this as weakness. A weakness that could be exploited.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 15');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720103, 'The Qiraji forces were commanded to fall back and hide the bulk of their numbers beneath the sands of the desert. A small attack was ordered upon Southwind Village while the front lines of Staghelm\'s army were kept occupied.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 16');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720104, 'Valstann, eager to please his father, convinced Fandral to allow him to take a small battalion to the defense of Southwind. Surely with the tide of battle turning their way, no harm could come to his beloved child. The trap was missed. Valstann was capture by the hiding Qiraji and Southwind Village obliterated. Rajaxx himself would take the captive Valstann to the front lines of the battle where - in front of Staghelm and the night elf forces - he would brutally execute the young night elf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 17');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720105, 'The war continued but the will of the great leader was sapped. The whole of Silithus was soon engulfed by the silithid and their Qiraji hosts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 18');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720106, 'Poor man, this explains much.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 19');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720107, 'The night elf army was pushed back through Un\'Goro, the the borders of the Tanaris desert. Something in Un\'Goro prevented the Qiraji from being able to take the land. I do not quite understand this word but I believe it to mean \'God Lands.\' It is stated that they could not \'take the God Lands.\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 20');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720108, 'Fascinating, this coincides with theories of Un\'Goro being the home of the Titans when they inhabited Kalimdor. Perhaps Aman\'thul himself watched over \'The God Lands.\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Geologist Larksbane - say 21');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720109, 'Hrm, curious... This ends abruptly. In Tanaris the Qiraji document facing a bronze dragon. There is much missing from this... More information must be found! Surely they are planning to invade Kalimdor once more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Geologist Larksbane - say 22');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720110, 'When the time is right, my lady. All will be clear when the time is right. The master stirs even now. Look to the skies for the Brood of Nozdormu have returned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Baristolth of the Shifting Sands - say');

-- emissary roman'khan, mana, walk speed, attack speed, not mechanical and add script
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=432300, `maxmana`=432300, `speed_walk`=1.0, `baseattacktime`=2100, `type`=10, `ScriptName`='boss_roman_khan' WHERE  `entry`=14862;

-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.4 WHERE  `modelid`=5965;

-- update the pre-bosses
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0, `mindmg`=690, `maxdmg`=732, `baseattacktime`=1920, `type`=10, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=15288;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0, `mindmg`=690, `maxdmg`=732, `baseattacktime`=1920, `type`=10, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=15286;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0, `mindmg`=690, `maxdmg`=732, `baseattacktime`=1920, `type`=10, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=15290;

-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.4 WHERE  `modelid`=15355;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.4 WHERE  `modelid`=15356;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.2, `combat_reach`=1.4 WHERE  `modelid`=15357;

-- add ai
REPLACE INTO `creature_ai_scripts` VALUES (1528601, 15286, 4, 0, 100, 0, 0, 0, 0, 0, 39, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Xil\'xix - Call for help on aggro');
REPLACE INTO `creature_ai_scripts` VALUES (1528801, 15288, 4, 0, 100, 0, 0, 0, 0, 0, 39, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aluntir - Call for help on aggro');
REPLACE INTO `creature_ai_scripts` VALUES (1529001, 15290, 4, 0, 100, 0, 0, 0, 0, 0, 39, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arakis - Call for help on aggro');

/************ Misc *******************/
-- stonemason cloak should only drop from defias miner, remove from reference loot table
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE  `entry`=24078 AND `item`=1930;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (598, 1930, 1.2, 0, 1, 1, 0, 0, 0);

-- Remove lowlvl loot from Blackhand Veteran's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=9819 AND `item`=24048;

-- fix item typo
UPDATE `zp_mangosd`.`item_template` SET `name`='BKP "Sparrow" Smallbore' WHERE  `entry`=3042;

-- fix npcs gender
UPDATE `zp_mangosd`.`creature_model_info` SET `modelid_other_gender`='0' WHERE (`modelid`='4887') limit 1;

-- add arcane channeling when clicking on the portal
UPDATE `zp_mangosd`.`gameobject_template` SET `data2`=23017 WHERE  `entry`=36727;

/********************* All mobs within Zul'gurub has had their damage, armour, attack speed and other related stats revamped.
Source: Beastiary
SQL from Judgement ************************************************************************************************************/

/*Gurubashi Trolls*/

/*Gurubashi Axe Thrower*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='21360', `maxhealth`='21360' WHERE (`entry`='11350') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='416', `maxdmg`='552' WHERE (`entry`='11350') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11350') limit 1;

/*Gurubashi Bat Rider*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='31440', `maxhealth`='31440' WHERE (`entry`='14750') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1058', `maxdmg`='1403' WHERE (`entry`='14750') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14750') limit 1;

/*Gurubashi Berserker*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='48555', `maxhealth`='48555' WHERE (`entry`='11352') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1510', `maxdmg`='2004' WHERE (`entry`='11352') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='3000' WHERE (`entry`='11352') limit 1;

/*Gurubashi Blood-drinker*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='18312', `maxhealth`='18312' WHERE (`entry`='11353') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='935', `maxdmg`='1241' WHERE (`entry`='11353') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11353') limit 1;

/*Gurubashi Champion*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='31440', `maxhealth`='31440' WHERE (`entry`='11356') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='741', `maxdmg`='982' WHERE (`entry`='11356') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11356') limit 1;

/*Gurubashi Headhunter*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='21364', `maxhealth`='21364' WHERE (`entry`='11351') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='520', `maxdmg`='689' WHERE (`entry`='11351') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11351') limit 1;

/*Gurubashi Warrior*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='7599', `maxhealth`='7842' WHERE (`entry`='11355') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='322', `maxdmg`='437' WHERE (`entry`='11355') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11355') limit 1;

/*Hakkari Trolls*/

/*Hakkari Blood Priest*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15090', `maxhealth`='15090' WHERE (`entry`='11340') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='691', `maxdmg`='782' WHERE (`entry`='11340') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11340') limit 1;

/*Hakkari Priest*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='17094', `maxhealth`='17094' WHERE (`entry`='11830') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='484', `maxdmg`='641' WHERE (`entry`='11830') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11830') limit 1;

/*Hakkari Shadow-hunter*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='25150', `maxhealth`='25150' WHERE (`entry`='11339') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='591', `maxdmg`='782' WHERE (`entry`='11339') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11339') limit 1;

/*Hakkari Shadowcaster*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61' WHERE (`entry`='11338') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='25150', `maxhealth`='25150' WHERE (`entry`='11338') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='788', `maxdmg`='1043' WHERE (`entry`='11338') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11338') limit 1;

/*Hakkari Witch Doctor*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60' WHERE (`entry`='11831') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='24420', `maxhealth`='24420' WHERE (`entry`='11831') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='581', `maxdmg`='769' WHERE (`entry`='11831') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11831') limit 1;

/*Bats*/

/*Bloodseeker Bat*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60' WHERE (`entry`='11368') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='5341', `maxhealth`='5341' WHERE (`entry`='11368') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='130', `maxdmg`='172' WHERE (`entry`='11368') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='11831') limit 1;

/*Razzashi snakes*/

/*Razzashi Adder*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15260', `maxhealth`='15260' WHERE (`entry`='11372') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='436', `maxdmg`='579' WHERE (`entry`='11372') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11372') limit 1;

/*Razzashi Cobra*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15260', `maxhealth`='15260' WHERE (`entry`='11373');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='624', `maxdmg`='827' WHERE (`entry`='11373');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11373');

/*Razzashi Serpent*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15260', `maxhealth`='15260' WHERE (`entry`='11371') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='416', `maxdmg`='551' WHERE (`entry`='11371') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11371') limit 1;

/*Razzashi spiders*/

/*Razzashi Broodwidow*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='31440', `maxhealth`='31440' WHERE (`entry`='11370') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1000', `maxdmg`='1326' WHERE (`entry`='11370') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11370') limit 1;

/*Razzashi Skitterer*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='4048', `maxhealth`='4306' WHERE (`entry`='14880') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3435' WHERE (`entry`='14880') limit 1; 
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='192', `maxdmg`='266' WHERE (`entry`='14880') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14880') limit 1;

/*Razzashi Venombrood*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='12208', `maxhealth`='12208' WHERE (`entry`='14532') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='520', `maxdmg`='689' WHERE (`entry`='14532') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14532') limit 1;

/*Razzashi raptors*/

/*Razzazhi raptor*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15260', `maxhealth`='15260' WHERE (`entry`='14821') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='831', `maxdmg`='1103' WHERE (`entry`='14821') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14821') limit 1;

/*Cats*/

/*Zulian Cub*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='3052', `maxhealth`='3052' WHERE (`entry`='11360') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='104', `maxdmg`='138' WHERE (`entry`='11360') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='11360') limit 1;

/*Zulian Guardian*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61', `maxlevel`='61' WHERE (`entry`='15068') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='6288', `maxhealth`='6288' WHERE (`entry`='15068') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='4091' WHERE (`entry`='15068') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='593', `maxdmg`='786' WHERE (`entry`='15068') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15068') limit 1;

/*Zulian Panther*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60' WHERE (`entry`='11365') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='21364', `maxhealth`='21364' WHERE (`entry`='11365') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='520', `maxdmg`='689' WHERE (`entry`='11365') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='11365') limit 1;

/*Zulian Prowler*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='3052', `maxhealth`='3052' WHERE (`entry`='15101') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3791' WHERE (`entry`='15101') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='83', `maxdmg`='110' WHERE (`entry`='15101') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15101') limit 1;

/*Zulian Stalker*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='22008', `maxhealth`='22008' WHERE (`entry`='15067') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='529', `maxdmg`='702' WHERE (`entry`='15067') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='15067') limit 1;

/*Zulian Tiger*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60', `maxlevel`='60' WHERE (`entry`='11361') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='9156', `maxhealth`='9156' WHERE (`entry`='11361') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='416', `maxdmg`='552' WHERE (`entry`='11361') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1000' WHERE (`entry`='11361') limit 1;

/*Atal'ai&undeads*/

/*Atal'ai Mistress*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='15260', `maxhealth`='15260' WHERE (`entry`='14882') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='364', `maxdmg`='483' WHERE (`entry`='14882') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14882') limit 1;

/*Withered Mistress*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='12210', `maxhealth`='12210' WHERE (`entry`='14825') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='484', `maxdmg`='641' WHERE (`entry`='14825') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14825') limit 1;

/*Voodoo Slave*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='12210', `maxhealth`='12210' WHERE (`entry`='14883') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='484', `maxdmg`='641' WHERE (`entry`='14883') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14883') limit 1;

/*Bosses*/

/*High Priestess Jeklik*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='333125', `maxhealth`='333125' WHERE (`entry`='14517') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3795' WHERE (`entry`='14517') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1533', `maxdmg`='2030' WHERE (`entry`='14517') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14517') limit 1;

/*High Priest Venoxis*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='213200', `maxhealth`='213200' WHERE (`entry`='14507') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1431', `maxdmg`='1895' WHERE (`entry`='14507') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14507') limit 1;

/*High Priestess Mar'li*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='333125', `maxhealth`='333125' WHERE (`entry`='14510') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1431', `maxdmg`='1895' WHERE (`entry`='14510') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14510') limit 1;

/*High Priest Thekal*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='133250', `maxhealth`='133250' WHERE (`entry`='14509') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1794', `maxdmg`='2375' WHERE (`entry`='14509') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14509') limit 1;

/*Jin'do the Hexxer*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='319800', `maxhealth`='319800' WHERE (`entry`='11380') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1738', `maxdmg`='2301' WHERE (`entry`='11380') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11380') limit 1;

/*Gahz'ranka*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='333100', `maxhealth`='333100' WHERE (`entry`='15114') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='4691' WHERE (`entry`='15114');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2197', `maxdmg`='2912' WHERE (`entry`='15114') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='15114') limit 1;

/*Hakkar*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='1079325', `maxhealth`='1079325' WHERE (`entry`='14834') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='4089', `maxdmg`='5413' WHERE (`entry`='14834') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14834') limit 1;

/*Misc. mobs*/

/*Witherbark Speaker*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61', `maxlevel`='61' WHERE (`entry`='11388') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='2515', `maxhealth`='2515' WHERE (`entry`='11388') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3316' WHERE (`entry`='11388') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='493', `maxdmg`='652' WHERE (`entry`='11388') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11388') limit 1;

/*Vilebranch Speaker*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='61' WHERE (`entry`='11391');
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='3144', `maxhealth`='3144' WHERE (`entry`='11391') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='529', `maxdmg`='702' WHERE (`entry`='11391') limit 1;

/*Zealot Lor'khan*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='62' WHERE (`entry`='11347') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='90650', `maxhealth`='90650' WHERE (`entry`='11347') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1205', `maxdmg`='1596' WHERE (`entry`='11347') limit 1;

/*Zealot Zath*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='62' WHERE (`entry`='11348') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='113295', `maxhealth`='113295' WHERE (`entry`='11348') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1295', `maxdmg`='1717' WHERE (`entry`='11348') limit 1;

/*Zulian Crocolisk*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60' WHERE (`entry`='15043') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='416', `maxdmg`='552' WHERE (`entry`='15043') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='15043') limit 1;

/*Hooktooth Frenzy*/
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`='60' WHERE (`entry`='11374');
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='9156', `maxhealth`='9156' WHERE (`entry`='11374') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='249', `maxdmg`='331' WHERE (`entry`='11374') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11374') limit 1;

/*Soulflayer*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='44016', `maxhealth`='44016' WHERE (`entry`='11359') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1270', `maxdmg`='1684' WHERE (`entry`='11359') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='11359') limit 1;

-- Gri'lek add missing armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3945 WHERE  `entry`=15082;

-- mad voidwalker and mad servant armor and immune fear
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2743, `mechanic_immune_mask`=12714000 WHERE  `entry`=15146;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2465, `mechanic_immune_mask`=12582928 WHERE  `entry`=15111;

-- Nightmare Illusion add ai (needed for aoe immunity) and armor
UPDATE `zp_mangosd`.`creature_template` SET `armor`=1543, `ScriptName`='mob_nightmare_illusion' WHERE  `entry`=15163;

/***************** AQ20 Moam *******************/
-- mana fiend add armor, hp mana and shouldn't use arcane explosion instantly after spawn
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=14652, `maxhealth`=14652, `minmana`=12170, `maxmana`=12170, `armor`=3015 WHERE  `entry`=15527;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param1`=3000, `event_param2`=8000 WHERE  `id`=1552701;

-- Moam attackspeed and hp adjusted
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`=346450, `maxhealth`=346450, `baseattacktime`=2000 WHERE  `entry`=15340;

-- Taerar, Emeriss, Lethon nor Ysondre should have mana
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=14890;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=14889;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=14888;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=0, `maxmana`=0 WHERE  `entry`=14887;

/*Nightmare Dragons HP/Damage/Attack Speed*/ 
/******* SQL from Judgement **********/

/*Lethon*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='832750', `maxhealth`='832750' WHERE (`entry`='14888');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2196', `maxdmg`='2912' WHERE (`entry`='14888');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14888');

/*Emeriss*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='832750', `maxhealth`='832750' WHERE (`entry`='14889');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2196', `maxdmg`='2912' WHERE (`entry`='14889');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14889');

/*Ysondre*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='832750', `maxhealth`='832750' WHERE (`entry`='14887');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2196', `maxdmg`='2912' WHERE (`entry`='14887');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14887');

/*Taerar*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='832750', `maxhealth`='832750' WHERE (`entry`='14890');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='2196', `maxdmg`='2912' WHERE (`entry`='14890');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='14890');

/*Nightmare Dragons trash and minibosses*/

/*Emeraldon Boughguard*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='12474');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='12474');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12474');

/*Emeraldon Oracle*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='62875', `maxhealth`='62875' WHERE (`entry`='12476');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1478', `maxdmg`='1956' WHERE (`entry`='12476');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12476');

/*Emeraldon Tree Warder*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='76300', `maxhealth`='76300' WHERE (`entry`='12475');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1559', `maxdmg`='2068' WHERE (`entry`='12475');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12475');

/*Verdantine Boughguard*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='12477');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='12477');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12477');

/*Verdantine Oracle*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='62875', `maxhealth`='62875' WHERE (`entry`='12478');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1478', `maxdmg`='1956' WHERE (`entry`='12478');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12478');

/*Verdantine Tree Warder*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='76300', `maxhealth`='76300' WHERE (`entry`='12479');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1559', `maxdmg`='2068' WHERE (`entry`='12479');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='12479');

/*Jademir Boughguard*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='5320');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='5320');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='5320');

/*Jademir Oracle*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='62875', `maxhealth`='62875' WHERE (`entry`='5317');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1478', `maxdmg`='1956' WHERE (`entry`='5317');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='5317');

/*Jademir Tree Warder*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='76300', `maxhealth`='76300' WHERE (`entry`='5319');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1559', `maxdmg`='2068' WHERE (`entry`='5319');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='2000' WHERE (`entry`='5319');

/*Dreamtracker*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='12496');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='12496');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='12496');

/*Dreamstalker*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='12498');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='12498');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='12498');

/*Phantim*/
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='5314');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='5314');

/*Lethlas*/
UPDATE `zp_mangosd`.`creature_template` SET `minhealth`='80925', `maxhealth`='80925' WHERE (`entry`='5312');
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`='1618', `maxdmg`='2147' WHERE (`entry`='5312');
UPDATE `zp_mangosd`.`creature_template` SET `baseattacktime`='1500' WHERE (`entry`='5312');

/*********** Gnomer **********/
-- techbot ai
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_techbot' WHERE  `entry`=6231;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720111, 'I am a BOT. I have tons of information. To find out what I know whisper me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720112, 'People think I like corndogs, but actually, they give me indigestion !!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720113, 'Please be patient, we will call your name when it is your turn. We are helping people in the order they appear to us on our screen.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 3');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720114, 'Remember, if you harass the rep or spam the channel, your account may be kicked, banned, or worse.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 4');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720115, 'Techbot is sensitive and those words hurt my ears. :[ Please be nice to me. I just want to help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 5');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720116, 'There is no COW level... really! I repeat: there is no COW level. Well, maybe there is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 6');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720117, 'When the rep is talking to you, he will start each line with your name. If you don\'t see your name, he\'s not yet speaking to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 7');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720118, 'You are welcome, have a nice day.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Techbot - say 8');

-- remove dupe bugs that are already spawned and fix techbot spawn rate
DELETE FROM `zp_mangosd`.`creature` WHERE `id`=7732;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=300 WHERE  `guid`=10996;

-- add waypoints, Viscous Fallout
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 1, -391.15, 65.0104, -209.721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.969043, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 2, -375.059, 98.4395, -210.078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.1222, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 3, -369.241, 125.112, -208.567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35782, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 4, -374.568, 141.781, -208.683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88011, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 5, -394.464, 154.968, -209.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72441, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 6, -413.967, 147.869, -210.976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.49017, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 7, -427.896, 119.671, -211.288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.66434, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 8, -428.641, 94.3304, -209.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.77037, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 9, -425.424, 83.8621, -209.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.03741, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (30137, 10, -401.557, 71.6099, -210.486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.90134, 0, 0);

-- add wp movement
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=30137;

/******** The Only Cure is More Green Glow, quest ***********/
-- add the script as ai
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_radioactive_fallout' WHERE  `entry`=6218;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_radioactive_fallout' WHERE  `entry`=6219;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='mob_radioactive_fallout' WHERE  `entry`=6220;

-- delete db ai
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE `creature_id`=6218;
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE `creature_id`=6219;
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE `creature_id`=6220;

-- quest item should have 2h and then removed
UPDATE `zp_mangosd`.`item_template` SET `Duration`=7200, `ExtraFlags`=2 WHERE  `entry`=9365;

-- some extra sql, not sure if it's already on live
REPLACE INTO `zp_mangosd`.`spell_script_target` VALUES (12709, 1, 6218);
REPLACE INTO `zp_mangosd`.`spell_script_target` VALUES (12709, 1, 6219);
REPLACE INTO `zp_mangosd`.`spell_script_target` VALUES (12709, 1, 6220);

/********** BRD Lyceum *****************/
-- Set 30 sec respawn instead of 5min on all, and then add 5min to the ones at general angerforge
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=30 WHERE `id`=8901;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=300 WHERE `id`=9956;

UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=7200 WHERE  `guid`=45959;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=7200 WHERE  `guid`=45958;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=7200 WHERE  `guid`=45956;
UPDATE `zp_mangosd`.`creature` SET `spawntimesecs`=7200 WHERE  `guid`=45955;

-- Barkeep Kelly has run out of stock and no longer sells Rumsey Rum Black Label
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='2366') AND (`item`='21151');

/********* Armaments of War add quests ***********************/
-- add all class quests as follow up to The Calling
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8316, 0, 1377, 58, 60, 62, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20699, 20710, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8376, 0, 1377, 58, 60, 62, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20700, 20711, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8377, 0, 1377, 58, 60, 62, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20702, 20713, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8378, 0, 1377, 58, 60, 62, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20703, 20715, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8379, 0, 1377, 58, 60, 62, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20707, 20717, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8380, 0, 1377, 58, 60, 62, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20701, 20712, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8381, 0, 1377, 58, 60, 62, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20705, 20716, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8382, 0, 1377, 58, 60, 62, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8315, 0, 0, 0, 0, 0, 0, 'Armaments of War', '', '', 'War comes, $N, and with it comes untold horrors. You have done all that could be asked of you and for that you should be rewarded.$B$BShould this... this prophecy ever come to pass...$B$B<Geologist Larksbane turns pale.>$B$BThe future of us all could be at an end.$B$BThese armaments will prove invaluable to your campaign in this desert.', NULL, NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20704, 20714, 0, 0, 1, 1, 0, 0, 609, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- add quests to npc and to be able to turn them in
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8316);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8376);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8377);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8378);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8379);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8380);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8381);
REPLACE INTO `zp_mangosd`.`creature_questrelation` VALUES (15183, 8382);

REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8316);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8376);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8377);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8378);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8379);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8380);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8381);
REPLACE INTO `zp_mangosd`.`creature_involvedrelation` VALUES (15183, 8382);

UPDATE `zp_mangosd`.`quest_template` SET `SuggestedPlayers`=20 WHERE  `entry`=8315;

/********** Emerald dragons ************/
-- set same immunities as ony and nef
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650870623 WHERE  `entry`=14887;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650870623 WHERE  `entry`=14888;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650870623 WHERE  `entry`=14889;
UPDATE `zp_mangosd`.`creature_template` SET `mechanic_immune_mask`=650870623 WHERE  `entry`=14890;

-- yells on aggro should be zone wide
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`=6 WHERE  `entry`=-1000401;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`=6 WHERE  `entry`=-1000285;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`=6 WHERE  `entry`=-1000399;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`=6 WHERE  `entry`=-1000360;

-- all dragons should have 80.5% drop on q item instead of 100%
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=80.5 WHERE `item`=20644;

-- Syndicate Pathstalker, remove gnoll text
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE `id`=258702;

-- Idol of Brutality should only drop from 1 boss, remove all and add it to boss again
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=23198;

-- add it to magistrate barthilas again
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (10435, 23198, 0, 1, 1, 1, 0, 0, 0);

/*********** Waking Legends quest ************/
-- add talk emotes to text
UPDATE `zp_scriptdevzerod`.`script_texts` SET `emote`=1 WHERE  `entry`=-1000656;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `emote`=1 WHERE  `entry`=-1000658;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `emote`=1 WHERE  `entry`=-1000660;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `emote`=1 WHERE  `entry`=-1000662;
UPDATE `zp_scriptdevzerod`.`script_texts` SET `emote`=1 WHERE  `entry`=-1000663;

-- Keeper Remulos should walk faster, added armor and should be elite
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3941, `speed_walk`=2, `rank`=1 WHERE  `entry`=11832;

-- when mandokir yells ding jindo should answer with a zone wide yell, not just a yell
UPDATE `zp_scriptdevzerod`.`script_texts` SET `type`=6 WHERE  `entry`=-1309017;

/* ED trash  */

-- patrols for ED dragon trash
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54900', '800008', '1', '0', '0', '3217.55', '-3474.15', '145.386', '3.90492', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54901', '800008', '1', '0', '0', '3147.19', '-3461.21', '139.367', '4.73349', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54902', '800008', '1', '0', '0', '3175.38', '-3579.29', '131.367', '0.488426', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54903', '800008', '1', '0', '0', '3243.3', '-3642.92', '128.636', '2.36161', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54904', '800008', '1', '0', '0', '3156.77', '-3655.19', '121.65', '0.0171947', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54905', '800008', '1', '0', '0', '3141.81', '-3776.62', '122.447', '3.84994', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54906', '800008', '1', '0', '0', '3240.51', '-3792.88', '124.504', '3.80674', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54907', '800008', '1', '0', '0', '-2761.01', '1999.29', '28.4939', '0.444362', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54908', '800008', '1', '0', '0', '-2940.86', '2080.08', '30.1917', '2.52961', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54909', '800008', '1', '0', '0', '-2919.74', '1852.12', '33.8747', '2.28614', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54910', '800008', '1', '0', '0', '-2836.08', '1944.81', '30.2832', '3.00087', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54911', '800008', '0', '0', '0', '1007.99', '-4142.5', '116.741', '1.90475', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54912', '800008', '0', '0', '0', '876.195', '-4106.46', '96.3446', '2.82367', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54913', '800008', '0', '0', '0', '826.289', '-4091.06', '92.789', '5.60398', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54914', '800008', '0', '0', '0', '754.28', '-3946.05', '101.934', '1.90082', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54915', '800008', '0', '0', '0', '747.591', '-4129.82', '95.2077', '5.80426', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54916', '800008', '0', '0', '0', '749.492', '-4210.16', '113.942', '1.29999', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54917', '800008', '0', '0', '0', '678.976', '-4175.43', '108.275', '2.32494', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54918', '800008', '0', '0', '0', '605.189', '-4074.21', '113.471', '1.45315', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54919', '800008', '0', '0', '0', '676.683', '-3993.06', '97.0827', '4.22168', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54920', '800008', '0', '0', '0', '666.505', '-3910.17', '106.24', '2.07754', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54921', '800008', '0', '0', '0', '681.092', '-3842.66', '116.566', '1.5042', '25', '5', '0', '646473', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54922', '800008', '0', '0', '0', '812.439', '-3876.09', '108.213', '5.16809', '25', '5', '0', '646473', '0', '0', '2');

-- waypoints for ED trash patrols
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '1', '3207.46', '-3482.73', '144.607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.8617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '2', '3207.46', '-3482.73', '144.607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.84992', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '3', '3194.19', '-3492.56', '141.019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.77924', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '4', '3183.96', '-3508.6', '134.851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.44682', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '5', '3180.88', '-3543.12', '130.856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.62354', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '6', '3189.92', '-3607.79', '130.354', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.8513', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '7', '3183.53', '-3566.94', '131.495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.72541', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '8', '3179.57', '-3509.77', '133.735', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63901', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '9', '3192.74', '-3494.42', '140.284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.861471', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54900', '10', '3223.54', '-3469.03', '146.019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.688683', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '1', '3147.24', '-3472.13', '137.147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.6903', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '2', '3160.21', '-3516.32', '130.475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.00053', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '3', '3166.49', '-3569.43', '131.043', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.82774', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '4', '3178.05', '-3589.91', '131.237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.22044', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '5', '3177.67', '-3604.45', '129.999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.68637', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '6', '3166.37', '-3616.19', '128.548', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.94417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '7', '3155.36', '-3617.99', '128.047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.29229', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '8', '3151.95', '-3612.25', '128.403', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.70579', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '9', '3159.38', '-3590.29', '129.673', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.26989', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '10', '3151.67', '-3541.02', '130.248', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.72542', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '11', '3133.96', '-3496.2', '133.158', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.89428', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '12', '3127.55', '-3474.72', '135.973', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.87072', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '13', '3116.47', '-3462.47', '136.138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.30662', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '14', '3113.98', '-3449.36', '137.69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.75684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '15', '3116.14', '-3443.98', '138.792', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.1835', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '16', '3125.88', '-3441.47', '139.828', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.248873', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54901', '17', '3144.92', '-3453.52', '139.781', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.71917', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '1', '3187.56', '-3572.86', '131.627', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.492353', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '2', '3194.17', '-3575.98', '132.033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.64457', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '3', '3203.61', '-3588.31', '131.917', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.36575', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '4', '3203.33', '-3599.35', '131.729', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.68639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '5', '3195.56', '-3604.47', '130.741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.72427', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '6', '3178.08', '-3605.13', '129.998', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.15486', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '7', '3168.2', '-3608.36', '129.236', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.59861', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '8', '3148.65', '-3627.15', '125.463', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.97167', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '9', '3141.72', '-3631.79', '123.73', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.41797', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '10', '3139.02', '-3628.58', '124.007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.57621', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '11', '3150.62', '-3603.29', '128.38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.09712', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '12', '3157.05', '-3593.52', '129.271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.771175', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54902', '13', '3166.89', '-3585.91', '130.781', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.618022', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '1', '3233.41', '-3631.25', '128.567', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.31841', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '2', '3217.55', '-3631.21', '128.209', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.13915', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '3', '3187.47', '-3642.9', '124.114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.51222', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '4', '3166.85', '-3680.89', '121.369', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.21515', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '5', '3158.33', '-3730.45', '123.286', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.54501', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '6', '3164.97', '-3753.01', '122.38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.13406', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '7', '3183.28', '-3764.99', '122.342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.8095', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '8', '3225.78', '-3768.08', '122.194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.21006', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '9', '3263.85', '-3756.06', '127.236', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.17566', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '10', '3267.36', '-3749.24', '126.456', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.12068', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '11', '3273.46', '-3714.78', '125.2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.39557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '12', '3268.11', '-3692.47', '124.573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.81576', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54903', '13', '3252.59', '-3659.86', '128.081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.01211', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '1', '3181.79', '-3652.49', '123.392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.107515', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '2', '3207.39', '-3658.27', '123.407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.170347', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '3', '3261.09', '-3630.01', '133.635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.484506', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '4', '3279.8', '-3622.22', '137.293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.394186', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '5', '3290.5', '-3624.42', '138.383', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.08047', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '6', '3292.39', '-3632.37', '138.483', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.82776', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '7', '3279.59', '-3650.79', '133.474', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1052', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '8', '3258.09', '-3669.33', '125.765', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.82246', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '9', '3210.84', '-3663.64', '123.874', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.01742', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '10', '3187.92', '-3664.99', '122.081', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.20592', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '11', '3146.22', '-3676.24', '120.303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.40619', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '12', '3117.05', '-3693.54', '120.051', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.67716', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '13', '3104.58', '-3683.76', '118.771', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.17705', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '14', '3109.72', '-3667.62', '118.463', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.03036', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54904', '15', '3138.89', '-3658.3', '120.138', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.303872', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '1', '3133.45', '-3780.65', '122.941', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.59076', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '2', '3114.93', '-3784.85', '123.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.86819', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '3', '3109.52', '-3775.98', '124.243', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.11814', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '4', '3110.55', '-3766.16', '124.265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46626', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '5', '3108.5', '-3737.81', '122.726', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.64297', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '6', '3120.23', '-3735.08', '123.085', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.229256', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '7', '3132.73', '-3750.26', '122.682', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.4011', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '8', '3171.6', '-3769.05', '122.506', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.83307', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '9', '3215.6', '-3801.45', '123.521', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.6485', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '10', '3226.31', '-3805.58', '125.582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.91161', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '11', '3234.17', '-3815.37', '128.177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.23224', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '12', '3232.06', '-3823.28', '129.206', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.36693', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '13', '3212.36', '-3811.56', '124.771', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4323', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '14', '3182.06', '-3785.55', '121.3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4323', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '15', '3162.51', '-3774.54', '122.027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.62865', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54905', '16', '3150.47', '-3774.7', '122.462', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.14309', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '1', '3223.63', '-3805.91', '125.371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.79889', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '2', '3208.86', '-3805.75', '123.38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1313', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '3', '3130.07', '-3739.73', '122.724', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.448', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '4', '3122.67', '-3720.3', '122.205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.93356', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '5', '3130.78', '-3685.71', '119.794', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.34059', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '6', '3161.09', '-3648.33', '122.557', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.885057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '7', '3209.87', '-3635.93', '127.032', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.248885', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '8', '3253.72', '-3639.92', '131.092', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.60138', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '9', '3270.61', '-3702.77', '124.81', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.99269', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '10', '3272.26', '-3712.47', '125.172', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.81598', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '11', '3268.93', '-3740.66', '125.685', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.56073', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '12', '3259.33', '-3772.03', '127.636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.41543', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54906', '13', '3249.57', '-3783.86', '125.448', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.02273', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '1', '-2755.71', '2004.69', '29.027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.774239', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '2', '-2750.42', '2014.38', '29.7537', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.08447', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '3', '-2747.92', '2033.24', '31.4385', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.44183', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '4', '-2752.04', '2055.17', '33.4449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.75991', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '5', '-2739.57', '2072.88', '34.0753', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.95488', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '6', '-2718.02', '2080.8', '38.2277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.346196', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '7', '-2687.64', '2112.12', '39.3729', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.7978', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '8', '-2671.4', '2114.44', '39.9609', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.15029', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '9', '-2670.44', '2102.45', '36.5519', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.79156', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '10', '-2685.52', '2084.7', '31.6526', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.02187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '11', '-2707.09', '2076.22', '36.4615', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.51921', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '12', '-2722.67', '2046.6', '33.6771', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.23', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '13', '-2735.28', '2015.49', '32.5591', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.31639', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '14', '-2750.41', '1998.8', '29.5108', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.96689', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54907', '15', '-2757.08', '1997.15', '28.9215', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.2993', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '1', '-2957.56', '2080.81', '30.7001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.09117', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '2', '-2988.65', '2092.77', '29.717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.74167', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '3', '-3017.06', '2092.34', '28.9534', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.15793', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '4', '-3026.66', '2100.44', '29.9613', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.31363', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '5', '-3032.3', '2115.86', '31.1571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '6', '-3025.42', '2135.48', '32.3913', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.636802', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '7', '-3010.07', '2142.64', '29.2013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.436526', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '8', '-2983.21', '2122.38', '31.942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.65158', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '9', '-2963.71', '2113.68', '31.3475', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.14637', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '10', '-2934.22', '2113.93', '33.4548', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.071318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '11', '-2919.73', '2111.05', '33.8016', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.27458', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '12', '-2912.46', '2090.41', '29.9813', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05075', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '13', '-2918.16', '2061.46', '29.1447', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.50097', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54908', '14', '-2931.3', '2071.29', '29.41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.49428', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '1', '-2926.22', '1866.01', '33.0104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.0034', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '2', '-2930.65', '1884.57', '35.2063', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.5675', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '3', '-2926.18', '1903.76', '35.037', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.33581', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '4', '-2915.43', '1925.31', '32.5622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.10804', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '5', '-2908.48', '1930.62', '34.2169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.652512', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '6', '-2889.7', '1926.9', '33.903', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.08747', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '7', '-2856.12', '1910.96', '37.6152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.84007', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '8', '-2877.09', '1922.79', '34.5723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.62779', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '9', '-2906.41', '1934.92', '34.1374', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.85948', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '10', '-2930.54', '1918.91', '33.3556', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.86872', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '11', '-2939.55', '1891.98', '34.358', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.42635', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '12', '-2933.56', '1865.94', '31.3587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.09786', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '13', '-2905.06', '1829.25', '33.8407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.37275', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '14', '-2883.99', '1811.83', '28.9929', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.024183', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54909', '15', '-2901.34', '1840.29', '31.7596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.14476', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '1', '-2857.57', '1949.6', '30.2049', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.96157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '2', '-2906.12', '1952.86', '32.5594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.13436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '3', '-2937.18', '1953.84', '31.9938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.19719', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '4', '-2964.12', '1931.71', '29.5758', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.89227', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '5', '-2968.85', '1901.47', '30.2489', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.57949', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '6', '-2954.96', '1862.9', '32.9972', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.07821', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '7', '-2911.03', '1802.19', '30.0878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.3374', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '8', '-2911.43', '1815.82', '32.2733', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.94055', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '9', '-2953.34', '1859.7', '32.5642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.33325', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '10', '-2968.55', '1907.06', '30.8531', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88164', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '11', '-2957.16', '1936.08', '32.2433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18657', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '12', '-2945.39', '1949.77', '32.5874', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.860626', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '13', '-2888.02', '1951.89', '32.8071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.059519', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54910', '14', '-2831.94', '1942.87', '29.8497', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.1385', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '1', '989.639', '-4128.84', '117.305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.50558', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '2', '952.322', '-4113.02', '107.694', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.7412', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '3', '911.161', '-4092.67', '93.4147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.68229', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '4', '837.773', '-4075.11', '92.7052', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.91399', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '5', '815.947', '-4075.88', '93.974', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.17709', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '6', '755.068', '-4051.74', '92.2763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.81581', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '7', '829.768', '-4079.81', '94.0511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.91814', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '8', '886.827', '-4114.37', '98.4841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.7375', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '9', '927.508', '-4130.47', '104.651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.12627', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '10', '974.45', '-4127.46', '113.958', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.055143', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '11', '1035.18', '-4157.66', '121.02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.83175', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54911', '12', '1016.98', '-4147.61', '118.611', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.6391', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '1', '861.365', '-4066.49', '96.0372', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.92439', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '2', '842.535', '-4023.46', '99.2286', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.98329', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '3', '829.919', '-3989.69', '93.4966', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.92832', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '4', '843.703', '-4028.92', '100.01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05028', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '5', '861.41', '-4057.8', '94.5765', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.26233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '6', '873.287', '-4103.24', '95.9959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02671', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '7', '926.385', '-4147.18', '108.733', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.88279', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54912', '8', '895.852', '-4124.08', '100.855', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.4938', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '1', '841.846', '-4108.02', '95.8856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.45475', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '2', '849.736', '-4138.73', '99.8227', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.96388', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '3', '884.507', '-4180.94', '114.637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.39585', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '4', '854.682', '-4187.74', '112.169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.07107', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '5', '814.776', '-4176.06', '105.238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.85508', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '6', '785.882', '-4134.85', '99.3682', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.18357', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '7', '765.189', '-4113.81', '94.6911', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.2896', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '8', '764.927', '-4065.66', '90.5445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.57881', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '9', '781.027', '-4056.31', '91.886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.78069', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54913', '10', '818.354', '-4084.89', '93.5874', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.62754', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '1', '749.165', '-3931.74', '105.67', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.05397', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '2', '718.52', '-3899.12', '108.775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.32493', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '3', '720.301', '-3864.16', '109.925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.5199', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '4', '759.214', '-3862.48', '111.928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.16946', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '5', '792.241', '-3870.26', '112.066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.77283', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '6', '794.706', '-3936.92', '100.852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.75967', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '7', '789.851', '-3945.51', '100.219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.08423', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54914', '8', '767.468', '-3950.91', '101.497', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.3381', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '1', '755.599', '-4126.02', '97.6957', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.388932', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '2', '761.965', '-4110.29', '94.2246', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18218', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '3', '762.806', '-4067.11', '90.8187', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.55132', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '4', '750.226', '-4049.9', '92.3976', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.19928', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '5', '731.513', '-4021.68', '96.4996', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.14037', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '6', '704.815', '-4006.75', '95.7068', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.64302', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '7', '680.461', '-4013', '100.057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.06067', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '8', '660.36', '-4048.68', '101.775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.20204', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '9', '633.887', '-4074.75', '105.573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9193', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '10', '628.385', '-4090.5', '109.826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.22698', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '11', '636.928', '-4102.55', '108.74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.32515', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '12', '666.775', '-4138.91', '101.982', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.50579', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '13', '692.788', '-4145.34', '97.8552', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.06342', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54915', '14', '732.654', '-4135.7', '92.8808', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.23184', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '1', '754.029', '-4195.32', '111.898', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.17433', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '2', '770.392', '-4170.06', '101.615', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.985832', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '3', '789.718', '-4140.88', '98.8245', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.985832', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '4', '801.992', '-4101.75', '91.5911', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.28036', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '5', '808.795', '-4054.14', '94.5664', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.42173', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '6', '832.631', '-4020.11', '96.7788', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.96227', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '7', '806.67', '-4066.39', '94.3208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.20596', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '8', '799.91', '-4113.47', '91.7498', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.56725', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '9', '772.064', '-4176.5', '103.057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.29236', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '10', '765.926', '-4206.69', '111.142', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.59474', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '11', '756.675', '-4231.19', '116.113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.774', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '12', '721.886', '-4238.53', '115.127', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.67052', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '13', '720.207', '-4218.93', '116.922', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.67306', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54916', '14', '742.297', '-4212.54', '114.969', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.310394', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '1', '669.704', '-4164.28', '106.966', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.29352', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '2', '650.122', '-4138.63', '104.742', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.22284', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '3', '628.303', '-4131.37', '108.899', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.8276', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '4', '595.912', '-4150.32', '117.146', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.75044', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '5', '553.591', '-4126.65', '119.285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.69408', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '6', '559.4', '-4108.99', '119.044', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.24895', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '7', '574.357', '-4093.88', '119.388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.789488', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '8', '600.576', '-4095.07', '115.435', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.09485', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '9', '620.317', '-4127.2', '109.783', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.29767', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '10', '656.225', '-4140.39', '103.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.92599', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '11', '699.851', '-4183.33', '110.064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.51758', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '12', '718.089', '-4195.41', '114.636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.69822', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '13', '721.021', '-4215.99', '116.948', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.85392', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '14', '709.108', '-4224.72', '114.326', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.774', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '15', '696.642', '-4217.9', '111.328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.6391', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54917', '16', '683.262', '-4190.94', '110.016', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.02256', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '1', '611.303', '-4050.39', '114.302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.34711', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '2', '623.127', '-4007.14', '100.783', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.30392', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '3', '629.487', '-3992.03', '99.377', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18611', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '4', '629.478', '-3958.7', '102.254', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46492', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '5', '644.276', '-3931.32', '110.592', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.10757', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '6', '644.379', '-3903.95', '113.485', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.56703', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '7', '627.808', '-3877.54', '117.494', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.13644', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '8', '607.199', '-3850.6', '119.677', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.23854', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '9', '614.038', '-3790.87', '127.402', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46885', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '10', '604.892', '-3840.9', '119.159', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.53583', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '11', '626.507', '-3877.02', '117.535', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.25447', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '12', '646.318', '-3920.88', '112.568', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.13666', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '13', '631.567', '-3957.38', '102.358', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.10386', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '14', '622.261', '-4000.06', '100.946', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.33556', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '15', '610.969', '-4047.95', '113.601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.48085', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '16', '577.87', '-4089.22', '118.315', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.98213', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '17', '538.301', '-4163.43', '125.757', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.24524', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '18', '560.125', '-4178.02', '125.202', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.69429', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '19', '571.74', '-4168.9', '125.514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.687377', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '20', '583.953', '-4146.26', '120.441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.07615', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54918', '21', '597.028', '-4089.81', '118.61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.34318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '1', '665.394', '-4006.24', '99.5671', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9939', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '2', '638.896', '-4030.72', '104.132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.8486', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '3', '638.613', '-4051.44', '105.554', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.75965', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '4', '651.701', '-4055.31', '103.622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.00843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '5', '667.458', '-4049', '99.4904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.381057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '6', '723.205', '-4046.8', '96.4904', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.149364', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '7', '724.385', '-4009.09', '93.604', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.53559', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '8', '729.53', '-3962.43', '100.458', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46098', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '9', '752.914', '-3904.68', '114.064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18609', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '10', '719.957', '-3888.67', '108.639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.69798', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '11', '663.205', '-3932.37', '103.972', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.80932', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '12', '683.676', '-3963.49', '103.129', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.49792', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54919', '13', '677.742', '-3984.55', '97.2836', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.43763', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '1', '665.242', '-3889.57', '109.015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '2', '645.414', '-3843.98', '122.271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.03433', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '3', '620.268', '-3808.18', '130.141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.18355', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '4', '586.738', '-3784.57', '119.001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.54091', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '5', '574.611', '-3812.12', '118.377', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.29235', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '6', '609.636', '-3855.47', '120.302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.3919', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '7', '637.13', '-3899.54', '114.524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.27016', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '8', '643.06', '-3930.16', '111.245', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.90103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '9', '627.548', '-3979.72', '97.0713', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.42194', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '10', '611.991', '-4026.98', '107.168', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.39445', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '11', '609.603', '-4101.85', '114.371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.68505', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '12', '599.619', '-4142.75', '116.574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.47299', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '13', '559.834', '-4174.32', '125.741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.77399', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '14', '540.217', '-4167.44', '125.709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.80402', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '15', '510.784', '-4158.98', '120.095', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.83151', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '16', '503.32', '-4140.15', '117.579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.93223', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '17', '511.878', '-4126.85', '119.838', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.92692', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '18', '541.636', '-4101.11', '126.937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.549929', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '19', '572.597', '-4097.7', '119.416', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.121887', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '20', '593.307', '-4060.4', '113.579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '21', '614.938', '-4030.15', '107.197', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.981898', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '22', '628.321', '-3974.3', '97.5965', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.33925', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '23', '638.84', '-3941.47', '107.892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.26071', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54920', '24', '666.863', '-3919.64', '105.113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.675592', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '1', '677.956', '-3831.42', '119.846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.92044', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '2', '675.185', '-3819.13', '122.861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.76729', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '3', '697.781', '-3825.61', '117.876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.97703', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '4', '729.927', '-3851.98', '111.421', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.59611', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '5', '764.452', '-3888.49', '115.829', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.43903', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '6', '803.924', '-3923.11', '101.756', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.56077', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '7', '817.659', '-3956.41', '100.751', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.87355', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '8', '782.288', '-3949.09', '100.51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.93754', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '9', '724.382', '-3950.92', '104.568', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.17316', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '10', '704.084', '-3960.47', '102.995', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.5855', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '11', '696.886', '-3948.83', '107.532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.12466', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '12', '701.881', '-3909.25', '108.548', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.44529', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '13', '693.774', '-3878.05', '107.885', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8262', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54921', '14', '685.094', '-3856.82', '113.203', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.96758', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '1', '811.119', '-3914.27', '102.301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.69684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '2', '820.253', '-3954.82', '100.766', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.92853', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '3', '822.575', '-3969.97', '97.5167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.8657', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '4', '836.888', '-4010.13', '95.9057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.05812', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '5', '858.486', '-4056.78', '93.8862', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.13666', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '6', '847.695', '-4102.55', '97.4258', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.48085', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '7', '832.856', '-4129.3', '97.6219', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.20597', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '8', '810.517', '-4130.91', '95.2007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.19673', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '9', '801.235', '-4117.37', '91.9745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.17179', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '10', '796.798', '-4073.36', '94.032', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63771', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '11', '830.847', '-4033.4', '100.582', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.871951', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '12', '836.311', '-4010.52', '95.9205', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.45315', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '13', '817.937', '-3953.84', '100.81', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8969', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '14', '818.426', '-3911.77', '100.906', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.55917', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '15', '837.203', '-3899.56', '102.037', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.26858', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '16', '825.937', '-3857.32', '113.13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.84977', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '17', '794.932', '-3851.78', '110.643', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.02787', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '18', '780.767', '-3862.93', '111.852', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.87217', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '19', '784.564', '-3873.76', '113.717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.56077', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54922', '20', '803.628', '-3875.3', '108.884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.23229', '0', '0');


-- formation setup for ED trash
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54900', '54900', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54900', '33243', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54900', '33228', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54900', '33229', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54901', '54901', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54901', '33210', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54901', '33226', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54901', '33241', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54902', '54902', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54902', '33240', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54902', '33208', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54902', '33209', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54903', '54903', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54903', '33242', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54903', '33227', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54903', '33211', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54904', '54904', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54904', '33245', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54904', '33230', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54904', '33231', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54905', '54905', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54905', '33246', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54905', '33215', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54905', '33214', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54906', '54906', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54906', '33244', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54906', '33212', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54906', '33213', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54907', '54907', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54907', '51252', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54907', '51273', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54907', '51296', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54908', '54908', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54908', '51239', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54908', '51282', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54908', '51283', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54909', '54909', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54909', '51244', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54909', '51265', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54909', '51288', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54910', '54910', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54910', '51246', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54910', '51290', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54910', '51267', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54922', '93049', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54922', '93048', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54922', '93047', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54922', '54922', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54921', '92867', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54921', '92866', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54921', '92865', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54921', '54921', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54920', '92937', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54920', '92935', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54920', '92936', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54920', '54920', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54919', '93249', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54919', '93247', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54919', '93248', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54919', '54919', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54918', '92876', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54918', '92875', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54918', '92874', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54918', '54918', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54917', '92940', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54917', '92939', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54917', '92938', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54917', '54917', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54916', '92930', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54916', '92931', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54916', '92929', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54916', '54916', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54915', '92928', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54915', '92926', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54915', '92927', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54915', '54915', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54914', '92873', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54914', '92872', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54914', '92871', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54914', '54914', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54913', '92858', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54913', '92856', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54913', '92857', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54913', '54913', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54912', '93053', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54912', '93052', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54912', '93051', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54912', '54912', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54911', '92933', '4', '315', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54911', '92934', '4', '45', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54911', '92932', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES ('54911', '54911', '0', '0', '2');

-- remove skinning and looting from core hounds in MC
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=0, `skinloot`=0, `mingold`=0, `maxgold`=0 WHERE  `entry`=11671;

-- SQL from forum ashenvale dragons

REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33208', '12474', '1', '12509', '0', '3175.95', '-3581.62', '131.536', '0.578493', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33209', '12474', '1', '12509', '0', '3173.86', '-3577.92', '131.38', '0.580049', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33210', '12474', '1', '12509', '0', '3147.45', '-3462.05', '139.415', '4.76524', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33211', '12474', '1', '12509', '0', '3242.32', '-3645.28', '128.126', '2.37154', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33212', '12474', '1', '12509', '0', '3243.34', '-3793.69', '125.013', '3.82712', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33213', '12474', '1', '12509', '0', '3240.53', '-3790.5', '124.41', '3.82715', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33214', '12474', '1', '12509', '0', '3143.54', '-3777.3', '122.377', '4.01209', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33215', '12474', '1', '12509', '0', '3141.63', '-3774.74', '122.689', '3.6005', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33226', '12475', '1', '625', '0', '3149.48', '-3460.1', '139.711', '4.76532', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33227', '12475', '1', '625', '0', '3245.31', '-3642.27', '129.289', '2.37209', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33228', '12475', '1', '625', '0', '3185.15', '-3511.56', '134.407', '1.55167', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33229', '12475', '1', '625', '0', '3181.42', '-3512.31', '133.482', '1.88614', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33230', '12475', '1', '625', '0', '3155.36', '-3653.06', '121.816', '0.005241', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33231', '12475', '1', '625', '0', '3155.66', '-3657.3', '121.582', '0.005258', '600', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33240', '12476', '1', '7974', '0', '3177.21', '-3578.26', '131.577', '0.57846', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33241', '12476', '1', '7974', '0', '3145.24', '-3460.18', '139.381', '4.75975', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33242', '12476', '1', '7974', '0', '3242.05', '-3642.06', '128.402', '2.37209', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33243', '12476', '1', '7974', '0', '3182.94', '-3509.48', '134.507', '1.66852', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33244', '12476', '1', '7974', '0', '3240.11', '-3793.59', '124.704', '3.82742', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33245', '12476', '1', '7974', '0', '3158.41', '-3655.17', '121.924', '0.005229', '600', '0', '0', '600000', '24860', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('33246', '12476', '1', '7974', '0', '3140.91', '-3777.18', '122.477', '3.85199', '600', '0', '0', '600000', '24860', '0', '0');

-- Create tables for the nex exclusive pool system.
CREATE TABLE `zp_mangosd`.`exclusive_pool_creature` (
      `guid` INT NOT NULL,
      `poolID` INT NULL,
      `groupID` INT NULL DEFAULT 0,
      PRIMARY KEY (`guid`));

CREATE TABLE `zp_mangosd`.`exclusive_pool_spot` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `poolID` INT NULL,
      `mapID` INT NULL,
      `x` FLOAT NULL,
      `y` FLOAT NULL,
      `z` FLOAT NULL,
      `orientation` FLOAT NULL,
      PRIMARY KEY (`id`));

CREATE TABLE `zp_mangosd`.`exclusive_pool` (
      `poolID` INT NOT NULL,
      `respawnTime` INT NULL,
      PRIMARY KEY (`poolID`));

CREATE TABLE `zp_mangosd`.`exclusive_pool_respawn` (
      `poolID` INT NOT NULL,
      `spawntime` INT NULL,
      PRIMARY KEY (`poolID`));

-- inserts for the 4 emerald dragons in all 4 areas (16 inserts)
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54935', '14887', '0', '0', '0', '-10435.6', '-427.302', '43.7871', '1.60178', '25', '0', '0', '687708', '9852', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54936', '14888', '0', '0', '0', '-10435.6', '-427.302', '43.7871', '1.44078', '25', '5', '0', '780635', '9852', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54937', '14889', '0', '0', '0', '-10435.6', '-427.302', '43.7871', '1.44078', '25', '5', '0', '830000', '8640', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('54938', '14890', '0', '0', '0', '-10435.6', '-427.302', '43.7871', '1.44078', '25', '5', '0', '814109', '8640', '0', '2');



-- inserts for the waypoints for the 4 dragons in duskwood
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '1', '-10435.8', '-421.478', '43.5512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '2', '-10430.6', '-392.352', '44.1689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77301', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '3', '-10443.6', '-361.472', '42.9596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.32417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '4', '-10469.4', '-365.894', '44.9312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74043', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '5', '-10492.4', '-394.402', '47.6351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.05852', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '6', '-10500.3', '-441.018', '47.2851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '7', '-10478.3', '-463.115', '51.883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.54684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '8', '-10449.7', '-494.737', '52.169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.850157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54935', '9', '-10433.7', '-468.55', '50.0212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06221', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '1', '-10435.8', '-421.478', '43.5512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '2', '-10430.6', '-392.352', '44.1689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77301', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '3', '-10443.6', '-361.472', '42.9596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.32417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '4', '-10469.4', '-365.894', '44.9312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74043', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '5', '-10492.4', '-394.402', '47.6351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.05852', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '6', '-10500.3', '-441.018', '47.2851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '7', '-10478.3', '-463.115', '51.883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.54684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '8', '-10449.7', '-494.737', '52.169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.850157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54936', '9', '-10433.7', '-468.55', '50.0212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06221', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '1', '-10435.8', '-421.478', '43.5512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '2', '-10430.6', '-392.352', '44.1689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77301', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '3', '-10443.6', '-361.472', '42.9596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.32417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '4', '-10469.4', '-365.894', '44.9312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74043', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '5', '-10492.4', '-394.402', '47.6351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.05852', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '6', '-10500.3', '-441.018', '47.2851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '7', '-10478.3', '-463.115', '51.883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.54684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '8', '-10449.7', '-494.737', '52.169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.850157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54937', '9', '-10433.7', '-468.55', '50.0212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06221', '0', '0');

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '1', '-10435.8', '-421.478', '43.5512', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.63557', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '2', '-10430.6', '-392.352', '44.1689', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77301', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '3', '-10443.6', '-361.472', '42.9596', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.32417', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '4', '-10469.4', '-365.894', '44.9312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74043', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '5', '-10492.4', '-394.402', '47.6351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.05852', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '6', '-10500.3', '-441.018', '47.2851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.02062', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '7', '-10478.3', '-463.115', '51.883', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.54684', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '8', '-10449.7', '-494.737', '52.169', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.850157', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('54938', '9', '-10433.7', '-468.55', '50.0212', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06221', '0', '0');

-- Azuregos, set new movement type to patrolling and a new position close to the first waypoint
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('52349', '6109', '1', '11460', '0', '2306.81', '-6091.4', '106.796', '1.89317', '604800', '0', '0', '600000', '75693', '0', '2');
-- Azuregos, add waypoints
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '1', '2285', '-6000', '105.466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '2', '2291', '-6038', '109.058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '3', '2302', '-6067', '106.817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '4', '2317', '-6090', '106.246', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '5', '2326', '-6089', '105.414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '6', '2353', '-6094', '109.803', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '7', '2374', '-6115', '104.639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '8', '2399', '-6118', '100.514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '9', '2425', '-6120', '104.81', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '10', '2453', '-6132', '104.493', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '11', '2459', '-6194', '101.4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '12', '2474', '-6221', '101.953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '13', '2494', '-6233', '102.953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '14', '2503', '-6237', '102.123', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '15', '2512', '-6247', '103.37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '16', '2551', '-6269', '105.124', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '17', '2571', '-6277', '99.729', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '18', '2598', '-6281', '102.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '19', '2630', '-6276', '98.224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '20', '2648', '-6281', '100.745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '21', '2662', '-6286', '102.378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '22', '2670', '-6304', '103.562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '23', '2695', '-6303', '99.912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '24', '2716', '-6285', '99.063', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '25', '2741', '-6224', '101.511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '26', '2736', '-6197', '102.623', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '27', '2690', '-6169', '95.768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '28', '2665', '-6149', '100.05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '29', '2652', '-6136', '100.312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '30', '2650', '-6096', '98.093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '31', '2627', '-6049', '101.928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '32', '2585', '-6053', '104.057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '33', '2505', '-6060', '97.217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '34', '2463', '-6108', '104.933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '35', '2425', '-6124', '104.861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '36', '2401', '-6152', '99.265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '37', '2392', '-6164', '101.343', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '38', '2384', '-6176', '100.907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '39', '2369', '-6195', '105.305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '40', '2350', '-6225', '104.444', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '41', '2347', '-6260', '107.639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '42', '2350', '-6225', '104.444', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '43', '2369', '-6195', '105.305', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '44', '2384', '-6176', '100.907', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '45', '2392', '-6164', '101.343', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '46', '2401', '-6152', '99.265', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '47', '2425', '-6124', '104.861', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '48', '2463', '-6108', '104.933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '49', '2505', '-6060', '97.217', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '50', '2585', '-6053', '104.057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '51', '2627', '-6049', '101.928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '52', '2650', '-6096', '98.093', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '53', '2652', '-6136', '100.312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '54', '2665', '-6149', '100.05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '55', '2690', '-6169', '95.768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '56', '2736', '-6197', '102.623', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '57', '2741', '-6224', '101.511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '58', '2716', '-6285', '99.063', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '59', '2695', '-6303', '99.912', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '60', '2670', '-6304', '103.562', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '61', '2662', '-6286', '102.378', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '62', '2648', '-6281', '100.745', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '63', '2630', '-6276', '98.224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '64', '2598', '-6281', '102.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '65', '2571', '-6277', '99.729', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '66', '2551', '-6269', '105.124', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '67', '2512', '-6247', '103.37', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '68', '2503', '-6237', '102.123', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '69', '2494', '-6233', '102.953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '70', '2474', '-6221', '101.953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '71', '2459', '-6194', '101.4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '72', '2453', '-6132', '104.493', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '73', '2425', '-6120', '104.81', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '74', '2399', '-6118', '100.514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '75', '2374', '-6115', '104.639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '76', '2353', '-6094', '109.803', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '77', '2326', '-6089', '105.414', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '78', '2317', '-6090', '106.246', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '79', '2302', '-6067', '106.817', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('52349', '80', '2291', '-6038', '109.058', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

REPLACE INTO `zp_mangosd`.`command` (`name`, `security`, `help`) VALUES ('bugreport list', '0', 'Syntax: .bugreport list - Lists all bugerports');
REPLACE INTO `zp_mangosd`.`command` (`name`, `security`, `help`) VALUES ('bugreport show', '0', 'Syntax: .bugreport show #report_number - Shows the bugreport with number #report_number.');
REPLACE INTO `zp_mangosd`.`command` (`name`, `security`, `help`) VALUES ('bugreport tickettoreport', '1', 'Syntax: .bugreport tickettoreport \"$title\" #ticket_number-1 - Copy a ticket to the bugreport system. The title should be in quotes and the ticket number is the number in .ti list - 1.');

-- Spawn points for the Nightmare Dragons
REPLACE INTO `zp_mangosd`.`exclusive_pool_spot` (`poolID`, `mapID`, `x`, `y`, `z`, `orientation`) VALUES ('0', '1', ' 3298.42', ' -3731.81', '173.462', ' 3.03828');
REPLACE INTO `zp_mangosd`.`exclusive_pool_spot` (`poolID`, `mapID`, `x`, `y`, `z`, `orientation`) VALUES ('0', '1', ' -2873.03', ' 1883.82', '52.6508', '2.76537');
REPLACE INTO `zp_mangosd`.`exclusive_pool_spot` (`poolID`, `mapID`, `x`, `y`, `z`, `orientation`) VALUES ('0', '0', '855.492', ' -3977.98', '145.832', '3.50304');
REPLACE INTO `zp_mangosd`.`exclusive_pool_spot` (`poolID`, `mapID`, `x`, `y`, `z`, `orientation`) VALUES ('0', '0', '-10435.6', ' -427.302', '43.7871', '1.60178');
