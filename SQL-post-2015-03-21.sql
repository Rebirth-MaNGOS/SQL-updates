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
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=252 LIMIT 1;
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
