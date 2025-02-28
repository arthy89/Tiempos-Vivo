/*
 Navicat Premium Dump SQL

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : tiempos_en_vivo

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 28/02/2025 09:00:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categorias_event_id_foreign`(`event_id` ASC) USING BTREE,
  CONSTRAINT `categorias_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES (14, 2, 'TIN', '2024-12-22 16:51:36', '2024-12-22 16:51:36');
INSERT INTO `categorias` VALUES (15, 2, 'TIL', '2024-12-22 16:51:39', '2024-12-22 16:51:39');
INSERT INTO `categorias` VALUES (16, 2, 'ST', '2024-12-22 16:51:44', '2024-12-22 16:51:44');
INSERT INTO `categorias` VALUES (17, 2, 'S2000', '2024-12-22 16:51:51', '2024-12-22 16:51:51');
INSERT INTO `categorias` VALUES (18, 2, 'S1600', '2024-12-22 16:51:54', '2024-12-22 16:51:58');
INSERT INTO `categorias` VALUES (19, 2, 'JOYNER', '2024-12-22 16:52:04', '2024-12-22 16:52:04');
INSERT INTO `categorias` VALUES (20, 2, 'PROMO', '2024-12-22 16:52:08', '2024-12-22 16:52:08');
INSERT INTO `categorias` VALUES (21, 3, 'SUPER_150cc', '2025-02-06 04:49:43', '2025-02-06 04:49:58');
INSERT INTO `categorias` VALUES (22, 3, 'SUPER_200cc', '2025-02-06 04:49:54', '2025-02-06 04:49:54');
INSERT INTO `categorias` VALUES (23, 3, 'SUPER_250cc', '2025-02-06 04:50:04', '2025-02-06 04:50:04');
INSERT INTO `categorias` VALUES (24, 3, 'Trimotos', '2025-02-06 04:50:16', '2025-02-06 04:50:16');

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tipo_sangre` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `foto_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drivers
-- ----------------------------
INSERT INTO `drivers` VALUES (1, 'Anibal', 'Aliaga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (2, 'Diego', 'Malaga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (3, 'Alvaro', 'Silva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (4, 'Percy', 'Ccoyo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (5, 'Luis', 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (6, 'Dany', 'Leiva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (7, 'Isaac', 'Paliza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (8, 'Ronaldo', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (9, 'José', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (10, 'Fabiola', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (11, 'David', 'Fernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (12, 'Alfredo', 'Peralta', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (13, 'Cesar', 'Vega', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (14, 'Nelson', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (15, 'Carlos', 'Zegarra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (16, 'Paul', 'Olazabal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (17, 'Luis', 'Ledesma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (18, 'David', 'Cahuana', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (19, 'Takeo', 'Matayoshi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (20, 'Santiago', 'Aguayo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (21, 'Marlon', 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (22, 'Fredy', 'Pezua', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (23, 'Junior', 'Ellesca', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (24, 'Jenrry', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (25, 'Gustavo', 'Vilcapoma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (26, 'Jorge', 'Hirose', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (27, 'Raúl', 'Romero', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (28, 'Mandela', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (29, 'Edgardo', 'Arimborgo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (30, 'Ricardo', 'Mendiola', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (31, 'Jeff', 'Gavancho', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (32, 'Celestino', 'Garrido', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (33, 'Ricardo', 'Dasso', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (34, 'Miguel', 'Alayza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (35, 'Rosmel', 'Chumpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (36, 'Marko', 'Garces', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (37, 'Roberto', 'Parraga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (38, 'Vidal', 'Barrantes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (39, 'Jimber', 'Aramayo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (40, 'Luis', 'Alayza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (41, 'Edison', 'Loa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (42, 'Ronmel', 'Palomino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (43, 'Richard', 'Palomino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (44, 'Rolynd', 'Juarez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (45, 'Andre', 'Martinez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (46, 'Jorge', 'Martinez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (47, 'Manuel', 'Yañez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (48, 'Raúl', 'Ccoyo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (49, 'Carlos', 'Castro', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (50, 'Samuel', 'Dyer', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (51, 'Joe', 'Zagal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (52, 'Eduardo', 'Castro', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (53, 'Samuel', 'Benedetti', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (54, 'Raul', 'Velit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (55, 'Javier', 'Arce', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (56, 'Javier', 'Marchese', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (57, 'Oswaldo', 'Carbone', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (58, 'Paolo', 'Zani', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (59, 'Miguel', 'Makino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (60, 'Jehndie', 'Tapia', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (61, 'Armando', 'Sugobono', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (62, 'Ricardo', 'Saloma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (63, 'Lino', 'Bernachea', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (64, 'Thais', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (65, 'Paul', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (66, 'Keyko', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (67, 'Jose', 'Amador', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (68, 'Josmell', 'Peralta', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (69, 'Nicolas', 'Vega', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (70, 'Erik', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (71, 'Renzo', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (72, 'Facundo', 'Olazabal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (73, 'Juan', 'Cueva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (74, 'Erick', 'Alarcon', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (75, 'Carlos', 'Asencio', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (76, 'Cesar', 'Suarez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (77, 'Edwin', 'Saravia', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (78, 'Luis', 'Chumpitaz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (79, 'Joel', 'Escobar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (80, 'Franklin', 'Ellesca', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (81, 'Renzo', 'Carpio', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (82, 'Monica', 'Espinoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (83, 'Julio', 'Sota', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (84, 'Jose', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (85, 'Ronald', 'Llihua', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (86, 'Gonzalo', 'Mendiola', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (87, 'Maicol', 'Silvera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (88, 'Percy', 'Salcedo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (89, 'Alvaro', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (90, 'Renzo', 'Lercari', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (91, 'Jaime', 'Zeballos', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (92, 'Orlando', 'Pittaluga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (93, 'Reynaldo', 'Chumpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (94, 'Diego', 'Oblitas', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (95, 'Ronald', 'Uribe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (96, 'Ademir', 'Huallpa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (97, 'Ivan', 'Figueroa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (98, 'Gabriel', 'Lozada', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (99, 'Edgar', 'Loa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (100, 'Gustavo', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (101, 'Ronald', 'Laurante', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (102, 'Matias', 'Aranguren', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (103, 'Jose', 'Aros', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (104, 'Manuel', 'Villafuerte', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (105, 'Miguel', 'Saavedra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (106, 'Carlos', 'Peral', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (107, 'José', 'Bedoya', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (108, 'Diego', 'Vallejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (109, 'Julio', 'Mickle', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (110, 'Manuel', 'Nuñez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (111, 'Julio', 'Echazu', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (112, 'Mario', 'Costa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (113, 'Jhohan', 'Castillo L.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (114, 'Ricardo', 'Flores R.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (115, 'Carlos', 'Fernandez F.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (116, 'Carlos', 'Fernandez Z.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (117, 'Jhohan', 'Castillo R.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (118, 'Samuel', 'Dyer Jr.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (119, 'Jose Carlos', 'Vallejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (120, 'Jesus Ll', 'Chullo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (121, 'Juan Carlos', 'Cornejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (122, 'Juan Pedro', 'Cilloniz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `drivers` VALUES (123, 'Miguel', 'Quispe', NULL, NULL, NULL, NULL, '2024-12-22 16:52:47', '2024-12-22 16:52:47');
INSERT INTO `drivers` VALUES (124, 'Erick', 'Alarcon', NULL, NULL, NULL, NULL, '2024-12-22 16:52:56', '2024-12-22 16:52:56');
INSERT INTO `drivers` VALUES (125, 'Gilmer', 'Salas', NULL, NULL, NULL, NULL, '2024-12-22 16:53:05', '2024-12-22 16:53:05');
INSERT INTO `drivers` VALUES (126, 'Oscar', 'Salas', NULL, NULL, NULL, NULL, '2024-12-22 16:53:14', '2024-12-22 16:53:14');
INSERT INTO `drivers` VALUES (127, 'Alexander', 'Barrientos', NULL, NULL, NULL, NULL, '2024-12-22 16:53:27', '2024-12-22 16:53:27');
INSERT INTO `drivers` VALUES (128, 'Julio', 'Huacasi', NULL, NULL, NULL, NULL, '2024-12-22 16:53:38', '2024-12-22 16:53:38');
INSERT INTO `drivers` VALUES (129, 'Marco', 'Quintana', NULL, NULL, NULL, NULL, '2024-12-22 16:53:50', '2024-12-22 16:53:50');
INSERT INTO `drivers` VALUES (130, 'Jimmy', 'Gomez', NULL, NULL, NULL, NULL, '2024-12-22 16:54:00', '2024-12-22 16:54:00');
INSERT INTO `drivers` VALUES (131, 'Juan', 'Moreno', NULL, NULL, NULL, NULL, '2024-12-22 16:54:08', '2024-12-22 16:54:08');
INSERT INTO `drivers` VALUES (132, 'German', 'Sihuayro', NULL, NULL, NULL, NULL, '2024-12-22 16:54:17', '2024-12-22 16:54:17');
INSERT INTO `drivers` VALUES (133, 'Washinton', 'Marron', NULL, NULL, NULL, NULL, '2024-12-22 16:54:27', '2024-12-22 16:54:27');
INSERT INTO `drivers` VALUES (134, 'Rodolfo', 'La Torre', NULL, NULL, NULL, NULL, '2024-12-22 16:54:35', '2024-12-22 16:54:35');
INSERT INTO `drivers` VALUES (135, 'Ayrton', 'Ortega', NULL, NULL, NULL, NULL, '2024-12-22 16:54:45', '2024-12-22 16:54:45');
INSERT INTO `drivers` VALUES (136, 'Leonardo', 'Cuba', NULL, NULL, NULL, NULL, '2024-12-22 16:54:54', '2024-12-22 16:54:54');
INSERT INTO `drivers` VALUES (137, 'Pedro', 'Ñaca', NULL, NULL, NULL, NULL, '2024-12-22 16:55:00', '2024-12-22 16:55:00');
INSERT INTO `drivers` VALUES (138, 'Shirley', 'Ñaca', NULL, NULL, NULL, NULL, '2024-12-22 16:55:11', '2024-12-22 16:55:11');
INSERT INTO `drivers` VALUES (139, 'Mario', 'Gamero', NULL, NULL, NULL, NULL, '2024-12-22 16:55:26', '2024-12-22 16:55:26');
INSERT INTO `drivers` VALUES (140, 'Roands', 'Gamero', NULL, NULL, NULL, NULL, '2024-12-22 16:55:37', '2024-12-22 16:55:37');
INSERT INTO `drivers` VALUES (141, 'Ray', 'Chirinos', NULL, NULL, NULL, NULL, '2024-12-22 16:55:44', '2024-12-22 16:55:44');
INSERT INTO `drivers` VALUES (142, 'Eder', 'Chirinos', NULL, NULL, NULL, NULL, '2024-12-22 16:55:50', '2024-12-22 16:55:50');
INSERT INTO `drivers` VALUES (143, 'Anthony', 'Fernandez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:02', '2024-12-22 16:56:02');
INSERT INTO `drivers` VALUES (144, 'Maricarmen', 'Fernandez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:08', '2024-12-22 16:56:08');
INSERT INTO `drivers` VALUES (145, 'Godofredo', 'Pari', NULL, NULL, NULL, NULL, '2024-12-22 16:56:17', '2024-12-22 16:56:17');
INSERT INTO `drivers` VALUES (146, 'Nilson', 'Perez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:23', '2024-12-22 16:56:23');
INSERT INTO `drivers` VALUES (147, 'Ronald', 'Machicado', NULL, NULL, NULL, NULL, '2024-12-22 16:56:29', '2024-12-22 16:56:29');
INSERT INTO `drivers` VALUES (148, 'Wilson', 'Mujica', NULL, NULL, NULL, NULL, '2024-12-22 16:56:38', '2024-12-22 16:56:38');
INSERT INTO `drivers` VALUES (149, 'Fernando', 'Quintana', NULL, NULL, NULL, NULL, '2024-12-22 16:56:45', '2024-12-22 16:56:45');
INSERT INTO `drivers` VALUES (150, 'Alexis', 'Ponce', NULL, NULL, NULL, NULL, '2024-12-22 16:56:54', '2024-12-22 16:56:54');
INSERT INTO `drivers` VALUES (151, 'Walter', 'Achata', NULL, NULL, NULL, NULL, '2024-12-22 16:57:02', '2024-12-22 16:57:02');
INSERT INTO `drivers` VALUES (152, 'Ever', 'Vilca', NULL, NULL, NULL, NULL, '2024-12-22 16:57:08', '2024-12-22 16:57:08');
INSERT INTO `drivers` VALUES (153, 'Fisher', 'Quispe', NULL, NULL, NULL, NULL, '2024-12-22 16:57:14', '2024-12-22 16:57:14');
INSERT INTO `drivers` VALUES (154, 'Erick', 'Ocampo', NULL, NULL, NULL, NULL, '2024-12-22 16:57:22', '2024-12-22 16:57:22');
INSERT INTO `drivers` VALUES (155, 'Jeancarlo', 'Bellido', NULL, NULL, NULL, NULL, '2024-12-22 16:57:27', '2024-12-22 16:57:27');
INSERT INTO `drivers` VALUES (156, 'Ronald', 'Cuba', NULL, NULL, NULL, NULL, '2024-12-22 16:57:35', '2024-12-22 16:57:35');
INSERT INTO `drivers` VALUES (157, 'Ronal', 'Ancori', NULL, NULL, NULL, NULL, '2025-02-08 05:17:49', '2025-02-08 05:17:49');
INSERT INTO `drivers` VALUES (158, 'Carlos', 'Tapara', NULL, NULL, NULL, NULL, '2025-02-08 05:18:03', '2025-02-08 05:18:03');
INSERT INTO `drivers` VALUES (159, 'Edwin', 'Luna', NULL, NULL, NULL, NULL, '2025-02-08 05:18:14', '2025-02-08 05:18:14');
INSERT INTO `drivers` VALUES (160, 'Alex', 'Gutierrez', NULL, NULL, NULL, NULL, '2025-02-08 05:18:45', '2025-02-08 05:18:45');
INSERT INTO `drivers` VALUES (161, 'Yony', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:18:59', '2025-02-08 05:18:59');
INSERT INTO `drivers` VALUES (162, 'Kenyo', 'Choque', NULL, NULL, NULL, NULL, '2025-02-08 05:19:09', '2025-02-08 05:19:09');
INSERT INTO `drivers` VALUES (163, 'Demetrio', 'Taype', NULL, NULL, NULL, NULL, '2025-02-08 05:19:29', '2025-02-08 05:19:29');
INSERT INTO `drivers` VALUES (164, 'Aldo', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:19:42', '2025-02-08 05:19:42');
INSERT INTO `drivers` VALUES (165, 'José', 'Carrasco', NULL, NULL, NULL, NULL, '2025-02-08 05:19:52', '2025-02-08 05:19:52');
INSERT INTO `drivers` VALUES (166, 'Yhenrry', 'Ccoyto', NULL, NULL, NULL, NULL, '2025-02-08 05:20:11', '2025-02-08 05:20:11');
INSERT INTO `drivers` VALUES (167, 'Walter', 'Gutierrez', NULL, NULL, NULL, NULL, '2025-02-08 05:20:39', '2025-02-08 05:20:39');
INSERT INTO `drivers` VALUES (168, 'Jorge', 'Vilca', NULL, NULL, NULL, NULL, '2025-02-08 05:20:48', '2025-02-08 05:20:48');
INSERT INTO `drivers` VALUES (169, 'Rudy', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 05:20:57', '2025-02-08 05:20:57');
INSERT INTO `drivers` VALUES (170, 'Franshei', 'Perales', NULL, NULL, NULL, NULL, '2025-02-08 05:21:31', '2025-02-08 05:21:31');
INSERT INTO `drivers` VALUES (171, 'Froylan', 'Luna', NULL, NULL, NULL, NULL, '2025-02-08 05:21:42', '2025-02-08 05:21:42');
INSERT INTO `drivers` VALUES (172, 'Michael', 'Villagra', NULL, NULL, NULL, NULL, '2025-02-08 05:21:54', '2025-02-08 05:21:54');
INSERT INTO `drivers` VALUES (173, 'Leonel', 'Murillo', NULL, NULL, NULL, NULL, '2025-02-08 05:22:10', '2025-02-08 05:22:10');
INSERT INTO `drivers` VALUES (174, 'Rudy', 'Mamani', NULL, NULL, NULL, NULL, '2025-02-08 05:22:21', '2025-02-08 05:22:21');
INSERT INTO `drivers` VALUES (175, 'Gilber', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:22:30', '2025-02-08 05:22:30');
INSERT INTO `drivers` VALUES (176, 'Hector', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:22:51', '2025-02-08 05:22:51');
INSERT INTO `drivers` VALUES (177, 'Osbaldo', 'Solis', NULL, NULL, NULL, NULL, '2025-02-08 05:23:05', '2025-02-08 05:23:05');
INSERT INTO `drivers` VALUES (178, 'Jhampier', 'Huancco', NULL, NULL, NULL, NULL, '2025-02-08 05:23:43', '2025-02-08 05:23:43');
INSERT INTO `drivers` VALUES (179, 'Walter', 'Pacco', NULL, NULL, NULL, NULL, '2025-02-08 05:24:05', '2025-02-08 05:24:05');
INSERT INTO `drivers` VALUES (180, 'Rolin', 'Humalla', NULL, NULL, NULL, NULL, '2025-02-08 05:24:17', '2025-02-08 05:24:17');
INSERT INTO `drivers` VALUES (181, 'Alberto', 'Pumaquispe', NULL, NULL, NULL, NULL, '2025-02-08 05:24:30', '2025-02-08 05:24:30');
INSERT INTO `drivers` VALUES (182, 'Arturo', 'Puma', NULL, NULL, NULL, NULL, '2025-02-08 05:24:39', '2025-02-08 05:24:39');
INSERT INTO `drivers` VALUES (183, 'Jhan', 'Linares', NULL, NULL, NULL, NULL, '2025-02-08 05:24:51', '2025-02-08 05:24:51');
INSERT INTO `drivers` VALUES (184, 'Yonel', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:25:01', '2025-02-08 05:25:01');
INSERT INTO `drivers` VALUES (185, 'Nicanor', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:25:17', '2025-02-08 05:25:17');
INSERT INTO `drivers` VALUES (186, 'Rene', 'Caceres', NULL, NULL, NULL, NULL, '2025-02-08 05:25:30', '2025-02-08 05:25:30');
INSERT INTO `drivers` VALUES (187, 'Jhon', 'Copa', NULL, NULL, NULL, NULL, '2025-02-08 05:25:45', '2025-02-08 05:25:45');
INSERT INTO `drivers` VALUES (188, 'Fidel', 'Mamani', NULL, NULL, NULL, NULL, '2025-02-08 05:25:56', '2025-02-08 05:25:56');
INSERT INTO `drivers` VALUES (189, 'Sergio', 'Choque', NULL, NULL, NULL, NULL, '2025-02-08 05:26:06', '2025-02-08 05:26:06');
INSERT INTO `drivers` VALUES (190, 'Alex', 'Aguilar', NULL, NULL, NULL, NULL, '2025-02-08 05:26:18', '2025-02-08 05:26:18');
INSERT INTO `drivers` VALUES (191, 'Fredy', 'Turpo', NULL, NULL, NULL, NULL, '2025-02-08 05:26:27', '2025-02-08 05:26:27');
INSERT INTO `drivers` VALUES (192, 'Samuel', 'Chicahuari', NULL, NULL, NULL, NULL, '2025-02-08 05:26:41', '2025-02-08 05:26:41');
INSERT INTO `drivers` VALUES (193, 'Alex', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:27:10', '2025-02-08 05:27:10');
INSERT INTO `drivers` VALUES (194, 'Luis', 'Pari', NULL, NULL, NULL, NULL, '2025-02-08 05:28:02', '2025-02-08 05:28:02');
INSERT INTO `drivers` VALUES (195, 'Finehas', 'Salgado', NULL, NULL, NULL, NULL, '2025-02-08 05:28:21', '2025-02-08 05:28:21');
INSERT INTO `drivers` VALUES (196, 'Aldair', 'Ramos', NULL, NULL, NULL, NULL, '2025-02-08 05:28:33', '2025-02-08 05:28:33');
INSERT INTO `drivers` VALUES (197, 'Randy', 'Murillo', NULL, NULL, NULL, NULL, '2025-02-08 05:28:43', '2025-02-08 05:28:43');
INSERT INTO `drivers` VALUES (198, 'Meyshon', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:28:56', '2025-02-08 05:28:56');
INSERT INTO `drivers` VALUES (199, 'Royer', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 05:29:08', '2025-02-08 05:29:08');
INSERT INTO `drivers` VALUES (200, 'Oscar', 'Apaza', NULL, NULL, NULL, NULL, '2025-02-08 05:29:24', '2025-02-08 05:29:24');
INSERT INTO `drivers` VALUES (201, 'Abelardo', 'Quiñones', NULL, NULL, NULL, NULL, '2025-02-08 05:29:45', '2025-02-08 05:29:45');
INSERT INTO `drivers` VALUES (202, 'Rudy', 'Quiñones', NULL, NULL, NULL, NULL, '2025-02-08 05:29:57', '2025-02-08 05:29:57');
INSERT INTO `drivers` VALUES (203, 'Plasido', 'Anahua', NULL, NULL, NULL, NULL, '2025-02-08 05:30:09', '2025-02-08 05:30:09');
INSERT INTO `drivers` VALUES (204, 'Ubert', 'Martinez', NULL, NULL, NULL, NULL, '2025-02-08 05:30:20', '2025-02-08 05:30:20');
INSERT INTO `drivers` VALUES (205, 'Juan', 'Huaricallo', NULL, NULL, NULL, NULL, '2025-02-08 05:30:31', '2025-02-08 05:30:31');
INSERT INTO `drivers` VALUES (206, 'Froilan', 'Ccoyto', NULL, NULL, NULL, NULL, '2025-02-08 05:31:01', '2025-02-08 05:31:01');
INSERT INTO `drivers` VALUES (207, 'Henrry', 'Peralta', NULL, NULL, NULL, NULL, '2025-02-08 05:31:13', '2025-02-08 05:31:13');
INSERT INTO `drivers` VALUES (208, 'Jorge', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:31:25', '2025-02-08 05:31:25');
INSERT INTO `drivers` VALUES (209, 'Sergio', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:31:35', '2025-02-08 05:31:35');
INSERT INTO `drivers` VALUES (210, 'Adrian', 'Huaman', NULL, NULL, NULL, NULL, '2025-02-08 05:31:47', '2025-02-08 05:31:47');
INSERT INTO `drivers` VALUES (211, 'Rene', 'Onofre', NULL, NULL, NULL, NULL, '2025-02-08 05:31:57', '2025-02-08 05:31:57');
INSERT INTO `drivers` VALUES (212, 'Ronal', 'Mendoza', NULL, NULL, NULL, NULL, '2025-02-08 05:32:12', '2025-02-08 05:32:12');
INSERT INTO `drivers` VALUES (213, 'Diego', 'Choquehuayta', NULL, NULL, NULL, NULL, '2025-02-08 05:32:25', '2025-02-08 05:32:25');
INSERT INTO `drivers` VALUES (214, 'Sixto', 'Huaquisto', NULL, NULL, NULL, NULL, '2025-02-08 05:32:37', '2025-02-08 05:32:37');
INSERT INTO `drivers` VALUES (215, 'Sergio', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:32:45', '2025-02-08 05:32:45');
INSERT INTO `drivers` VALUES (216, 'Efrain', 'Vasquez', NULL, NULL, NULL, NULL, '2025-02-08 05:32:56', '2025-02-08 05:32:56');
INSERT INTO `drivers` VALUES (217, 'Michael', 'Abirro', NULL, NULL, NULL, NULL, '2025-02-08 05:33:07', '2025-02-08 05:33:07');
INSERT INTO `drivers` VALUES (218, '-', '-', NULL, NULL, NULL, NULL, '2025-02-08 05:33:22', '2025-02-08 05:33:22');
INSERT INTO `drivers` VALUES (219, 'Levi', 'Rojas', NULL, NULL, NULL, NULL, '2025-02-08 14:20:22', '2025-02-08 14:20:22');
INSERT INTO `drivers` VALUES (220, 'Jhampier', 'Castro', NULL, NULL, NULL, NULL, '2025-02-08 14:20:40', '2025-02-08 14:20:40');
INSERT INTO `drivers` VALUES (221, 'Richard', 'Mollo', NULL, NULL, NULL, NULL, '2025-02-08 14:20:56', '2025-02-08 14:20:56');
INSERT INTO `drivers` VALUES (222, 'Fortunato', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 14:21:10', '2025-02-08 14:21:10');
INSERT INTO `drivers` VALUES (223, 'Yoneton', 'Flores', NULL, NULL, NULL, NULL, '2025-02-08 14:21:58', '2025-02-08 14:21:58');
INSERT INTO `drivers` VALUES (224, 'Felipe', 'Pequeño', NULL, NULL, NULL, NULL, '2025-02-08 14:22:08', '2025-02-08 14:22:08');

-- ----------------------------
-- Table structure for especials
-- ----------------------------
DROP TABLE IF EXISTS `especials`;
CREATE TABLE `especials`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `distancia` decimal(10, 2) NULL DEFAULT NULL,
  `estado` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `especials_event_id_foreign`(`event_id` ASC) USING BTREE,
  CONSTRAINT `especials_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of especials
-- ----------------------------
INSERT INTO `especials` VALUES (22, 2, 'PE1', NULL, 2.00, 1, '2024-12-22 16:51:31', '2025-02-22 06:29:22');
INSERT INTO `especials` VALUES (23, 2, 'PE2', NULL, NULL, 1, '2024-12-22 16:51:31', '2025-02-26 05:10:17');
INSERT INTO `especials` VALUES (24, 2, 'PE3', NULL, NULL, 1, '2024-12-22 16:51:31', '2025-02-22 06:07:55');
INSERT INTO `especials` VALUES (25, 2, 'PE4', NULL, NULL, 1, '2024-12-22 16:51:31', '2024-12-22 16:51:31');
INSERT INTO `especials` VALUES (26, 2, 'PE5', NULL, NULL, 1, '2024-12-22 16:51:31', '2024-12-22 16:51:31');
INSERT INTO `especials` VALUES (27, 3, 'Ajoyani - Crucero', 'Ajoyani - Crucero', 29.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (28, 3, 'Crucero – Usicayos', 'Crucero – Usicayos', 42.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (29, 3, 'Usicayos – Coasa', 'Usicayos – Coasa', 27.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (30, 3, 'Coasa - Tambilo', 'Coasa - Tambilo', 50.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (31, 3, 'Tambillo – Ayapata', 'Tambillo – Ayapata', 38.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (32, 3, 'Ayapata – Macusani', 'Ayapata – Macusani', 53.00, 1, NULL, NULL);
INSERT INTO `especials` VALUES (36, 2, 'PE6', NULL, NULL, 1, '2025-02-26 05:18:47', '2025-02-26 05:18:47');

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `org_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubigeo_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NULL DEFAULT NULL,
  `hora` time NULL DEFAULT NULL,
  `foto_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ruta_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `events_org_id_foreign`(`org_id` ASC) USING BTREE,
  INDEX `events_ubigeo_id_foreign`(`ubigeo_id` ASC) USING BTREE,
  CONSTRAINT `events_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `orgs` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `events_ubigeo_id_foreign` FOREIGN KEY (`ubigeo_id`) REFERENCES `ubigeos` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES (2, 1, 'Rally Clausura ACJ 2024', NULL, 'Rally', '210101', '2024-12-22', '09:00:00', '/storage/fotografias/7mcQ463kAKJSULHkm9V35a5hByLlxECs6cqJYIPd.jpg', NULL, '2024-12-22 16:50:54', '2025-02-06 04:37:40');
INSERT INTO `events` VALUES (3, 1, '7mo MOTO RALLY MACUSANI 2025', 'El Moto Club Macusani, en Coordinación con la Municipalidad Provincial de Carabaya, organizan la competencia de velocidad pura de Motos lineales denominada \"VII MOTO RALLY MAS ALTO DEL MUNDO RUTA DE LOS ANDES DE CARABAYA 2025\" por conmemorar el CL Aniversario de la Capitalización de la Provincia de Carabaya. Ajoyani - Crucero - Usicayos - Coasa - Tambillo - Ayapata - Macusani.', 'Rally', '210301', '2025-02-09', '08:00:00', '/storage/fotografias/bocacZLiecDJtxk1R0BUScbCpKUMfPwkOrKAYIbe.jpg', 'https://www.relive.cc/es/view/vdvm1R2D8Nv', '2025-02-06 04:37:17', '2025-02-07 00:40:22');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_11_04_053555_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (11, '2023_11_10_054823_create_ubigeos_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_09_11_120240_create_orgs_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_09_12_115932_create_events_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_09_12_115933_create_categorias_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_09_16_012101_create_drivers_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_09_16_014058_create_tripulacions_table', 1);
INSERT INTO `migrations` VALUES (17, '2024_09_16_030740_create_especials_table', 1);
INSERT INTO `migrations` VALUES (18, '2024_09_18_024153_create_tiempos_table', 1);
INSERT INTO `migrations` VALUES (19, '2025_02_13_053712_add_estado_to_especials_table', 1);
INSERT INTO `migrations` VALUES (20, '2025_02_14_015938_create_parametros_table', 1);
INSERT INTO `migrations` VALUES (21, '2025_02_14_171310_create_opartidas_table', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('054d2404ce2e4c6f6ae40be11d6bf8402bd51374edb9f287109188375f846cb73dcc50c2fb89ada1', 1, 1, NULL, '[]', 0, '2025-02-28 03:08:23', '2025-02-28 03:08:23', '2026-02-28 03:08:23');
INSERT INTO `oauth_access_tokens` VALUES ('7e53fbcbb903bc3596f6651daa3280edcac3ab7ce5f4d5b578bce95c2a7399dc25354d0a526a7f5b', 1, 1, NULL, '[]', 0, '2025-02-26 04:58:41', '2025-02-26 04:58:41', '2026-02-26 04:58:41');
INSERT INTO `oauth_access_tokens` VALUES ('ad96ce1e03ef5a524484a887ee35488187bc1d19bb1fe3ae51cb7534f98bbb92a399c1e354c9efbf', 1, 1, NULL, '[]', 0, '2025-02-22 05:32:27', '2025-02-22 05:32:27', '2026-02-22 05:32:27');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Password Grant Client', 'g179NrxEhLKvZTNDAZy6muwpR8TQ7WPoWuIJr6tz', 'users', 'http://localhost', 0, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('1744aa5ac4b3d793fd01ecca3423c9bd551df4daff96dfdc114283d9f61b5316d0564f55d8cdb020', '7e53fbcbb903bc3596f6651daa3280edcac3ab7ce5f4d5b578bce95c2a7399dc25354d0a526a7f5b', 0, '2026-02-26 04:58:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('1be259b9c6643e3ee1709be5d50fc3cf429c0eeb2aeb8008d738e83de45e7f0a69ae6fb900481334', 'ad96ce1e03ef5a524484a887ee35488187bc1d19bb1fe3ae51cb7534f98bbb92a399c1e354c9efbf', 0, '2026-02-22 05:32:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('643619ee24b9f17d70ac57fd5b04696ba2f92fe507776198b5d3ea710f16cccf5f317b9a4221c274', '054d2404ce2e4c6f6ae40be11d6bf8402bd51374edb9f287109188375f846cb73dcc50c2fb89ada1', 0, '2026-02-28 03:08:24');

-- ----------------------------
-- Table structure for opartidas
-- ----------------------------
DROP TABLE IF EXISTS `opartidas`;
CREATE TABLE `opartidas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` bigint UNSIGNED NOT NULL,
  `tripulacion_id` bigint UNSIGNED NOT NULL,
  `hora_salida` time(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `opartidas_event_id_foreign`(`event_id` ASC) USING BTREE,
  INDEX `opartidas_tripulacion_id_foreign`(`tripulacion_id` ASC) USING BTREE,
  CONSTRAINT `opartidas_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `opartidas_tripulacion_id_foreign` FOREIGN KEY (`tripulacion_id`) REFERENCES `tripulacions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of opartidas
-- ----------------------------
INSERT INTO `opartidas` VALUES (1, 2, 65, '08:00:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (2, 2, 66, '08:02:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (3, 2, 77, '08:04:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (4, 2, 78, '08:06:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (5, 2, 76, '08:08:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (6, 2, 67, '08:10:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (7, 2, 70, '08:12:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (8, 2, 80, '08:14:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (9, 2, 72, '08:16:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (10, 2, 69, '08:18:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (11, 2, 75, '08:20:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (12, 2, 82, '08:22:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (13, 2, 71, '08:24:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (14, 2, 74, '08:26:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (15, 2, 79, '08:28:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (16, 2, 81, '08:30:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (17, 2, 68, '08:32:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');
INSERT INTO `opartidas` VALUES (18, 2, 73, '08:34:00.0', '2025-02-22 06:18:31', '2025-02-22 06:18:31');

-- ----------------------------
-- Table structure for orgs
-- ----------------------------
DROP TABLE IF EXISTS `orgs`;
CREATE TABLE `orgs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ubigeo_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orgs_ubigeo_id_foreign`(`ubigeo_id` ASC) USING BTREE,
  CONSTRAINT `orgs_ubigeo_id_foreign` FOREIGN KEY (`ubigeo_id`) REFERENCES `ubigeos` (`codigo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orgs
-- ----------------------------
INSERT INTO `orgs` VALUES (1, 'Automóvil Club Peruano', NULL, '211101', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for parametros
-- ----------------------------
DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_id` bigint UNSIGNED NOT NULL,
  `set_especial` int NULL DEFAULT NULL,
  `hora_partida` time(1) NULL DEFAULT NULL,
  `intervalo` time(1) NULL DEFAULT NULL,
  `esp_hora_salida` time(1) NULL DEFAULT NULL,
  `esp_intervalo` time(1) NULL DEFAULT NULL,
  `modo_partida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `estado_evento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parametros_event_id_foreign`(`event_id` ASC) USING BTREE,
  CONSTRAINT `parametros_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES (1, 2, NULL, '08:00:00.0', '00:02:00.0', NULL, NULL, 'shakedown', NULL, NULL, '2025-02-22 06:18:31');
INSERT INTO `parametros` VALUES (2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'admin-permisos', 'Administrar Permisos', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO `permissions` VALUES (2, 'admin-roles', 'Administrar usuarios', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO `permissions` VALUES (3, 'admin-usuarios', 'Administrar usuarios', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'GOD', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO `roles` VALUES (2, 'Administrador', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO `roles` VALUES (3, 'Oficial', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');

-- ----------------------------
-- Table structure for tiempos
-- ----------------------------
DROP TABLE IF EXISTS `tiempos`;
CREATE TABLE `tiempos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `especial_id` bigint UNSIGNED NULL DEFAULT NULL,
  `tripulacion_id` bigint UNSIGNED NOT NULL,
  `hora_salida` time(1) NULL DEFAULT NULL,
  `hora_llegada` time(1) NULL DEFAULT NULL,
  `hora_marcado` time(1) NULL DEFAULT NULL,
  `penalizacion` time(1) NULL DEFAULT NULL,
  `registrador` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tiempos_especial_id_foreign`(`especial_id` ASC) USING BTREE,
  INDEX `tiempos_tripulacion_id_foreign`(`tripulacion_id` ASC) USING BTREE,
  CONSTRAINT `tiempos_especial_id_foreign` FOREIGN KEY (`especial_id`) REFERENCES `especials` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tiempos_tripulacion_id_foreign` FOREIGN KEY (`tripulacion_id`) REFERENCES `tripulacions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1169 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tiempos
-- ----------------------------
INSERT INTO `tiempos` VALUES (737, 24, 67, '10:50:00.0', '10:59:48.0', '00:09:48.0', NULL, NULL, '2024-12-22 17:05:52', '2024-12-22 17:05:52');
INSERT INTO `tiempos` VALUES (738, 24, 73, '10:52:00.0', '11:01:31.0', '00:09:31.0', NULL, NULL, '2024-12-22 17:06:08', '2024-12-22 17:06:08');
INSERT INTO `tiempos` VALUES (739, 24, 77, '10:54:00.0', '11:02:48.0', '00:10:48.0', '00:02:00.0', NULL, '2024-12-22 17:06:54', '2025-02-26 05:42:41');
INSERT INTO `tiempos` VALUES (740, 24, 74, '10:56:00.0', '11:07:04.0', '00:11:04.0', NULL, NULL, '2024-12-22 17:07:37', '2024-12-22 17:07:37');
INSERT INTO `tiempos` VALUES (742, 24, 70, '10:58:00.0', '11:07:44.0', '00:09:44.0', NULL, NULL, '2024-12-22 17:08:27', '2024-12-22 17:08:43');
INSERT INTO `tiempos` VALUES (743, 24, 76, '11:00:00.0', '11:09:44.0', '00:09:44.0', NULL, NULL, '2024-12-22 17:12:21', '2024-12-22 17:12:21');
INSERT INTO `tiempos` VALUES (744, 24, 72, '11:02:00.0', '11:12:22.0', '00:10:22.0', NULL, NULL, '2024-12-22 17:12:43', '2024-12-22 17:12:43');
INSERT INTO `tiempos` VALUES (745, 24, 75, '11:04:00.0', '11:14:31.0', '00:10:31.0', NULL, NULL, '2024-12-22 17:13:16', '2024-12-22 17:13:16');
INSERT INTO `tiempos` VALUES (746, 24, 69, '11:06:00.0', '11:16:32.0', '00:10:32.0', NULL, NULL, '2024-12-22 17:13:38', '2024-12-22 17:13:38');
INSERT INTO `tiempos` VALUES (747, 24, 71, '11:08:00.0', '11:18:20.0', '00:10:20.0', NULL, NULL, '2024-12-22 17:14:02', '2024-12-22 17:14:02');
INSERT INTO `tiempos` VALUES (748, 24, 79, '11:10:00.0', '11:21:06.0', '00:11:06.0', NULL, NULL, '2024-12-22 17:14:39', '2024-12-22 17:14:39');
INSERT INTO `tiempos` VALUES (749, 24, 65, '11:14:00.0', '11:22:03.0', '00:08:03.0', NULL, NULL, '2024-12-22 17:14:58', '2024-12-22 17:14:58');
INSERT INTO `tiempos` VALUES (750, 24, 66, '11:16:00.0', '11:24:47.0', '00:08:47.0', NULL, NULL, '2024-12-22 17:15:56', '2024-12-22 17:17:01');
INSERT INTO `tiempos` VALUES (751, 24, 78, '11:18:00.0', '11:27:40.0', '00:09:40.0', NULL, NULL, '2024-12-22 17:16:24', '2024-12-22 17:16:24');
INSERT INTO `tiempos` VALUES (752, 24, 82, '11:20:00.0', '11:30:24.0', '00:10:24.0', NULL, NULL, '2024-12-22 17:17:46', '2024-12-22 17:17:46');
INSERT INTO `tiempos` VALUES (753, 24, 80, '11:22:00.0', '11:32:00.0', '00:10:00.0', NULL, NULL, '2024-12-22 17:18:04', '2024-12-22 17:18:04');
INSERT INTO `tiempos` VALUES (754, 24, 81, '11:24:00.0', '11:34:52.0', '00:10:52.0', NULL, NULL, '2024-12-22 17:18:24', '2024-12-22 17:18:24');
INSERT INTO `tiempos` VALUES (755, 24, 68, '11:26:00.0', '11:39:26.0', '00:13:26.0', NULL, NULL, '2024-12-22 17:18:43', '2024-12-22 17:18:43');
INSERT INTO `tiempos` VALUES (756, 23, 67, '10:00:00.0', '10:09:33.0', '00:09:33.0', NULL, NULL, '2024-12-22 17:19:22', '2024-12-22 17:21:19');
INSERT INTO `tiempos` VALUES (757, 23, 73, '10:02:00.0', '10:11:32.0', '00:09:32.0', NULL, NULL, '2024-12-22 17:19:41', '2024-12-22 17:21:30');
INSERT INTO `tiempos` VALUES (758, 23, 77, '10:04:00.0', '10:13:02.0', '00:09:02.0', NULL, NULL, '2024-12-22 17:19:58', '2024-12-22 17:21:46');
INSERT INTO `tiempos` VALUES (759, 23, 74, '10:06:00.0', '10:17:11.0', '00:11:11.0', NULL, NULL, '2024-12-22 17:20:16', '2024-12-22 17:22:03');
INSERT INTO `tiempos` VALUES (760, 23, 70, '10:08:00.0', '10:17:53.0', '00:09:53.0', NULL, NULL, '2024-12-22 17:22:27', '2024-12-22 17:22:27');
INSERT INTO `tiempos` VALUES (761, 23, 76, '10:10:00.0', '10:19:47.0', '00:09:47.0', NULL, NULL, '2024-12-22 17:22:46', '2024-12-22 17:22:46');
INSERT INTO `tiempos` VALUES (762, 23, 72, '10:12:00.0', '10:22:26.0', '00:10:26.0', NULL, NULL, '2024-12-22 17:23:09', '2024-12-22 17:23:09');
INSERT INTO `tiempos` VALUES (763, 23, 75, '10:14:00.0', '10:24:27.0', '00:10:27.0', NULL, NULL, '2024-12-22 17:23:40', '2024-12-22 17:23:40');
INSERT INTO `tiempos` VALUES (764, 23, 69, '10:16:00.0', '10:26:38.0', '00:10:38.0', NULL, NULL, '2024-12-22 17:23:57', '2024-12-22 17:23:57');
INSERT INTO `tiempos` VALUES (765, 23, 71, '10:18:00.0', '10:28:45.0', '00:10:45.0', NULL, NULL, '2024-12-22 17:24:24', '2024-12-22 17:24:24');
INSERT INTO `tiempos` VALUES (766, 23, 79, '10:20:00.0', '10:31:16.0', '00:11:16.0', NULL, NULL, '2024-12-22 17:24:41', '2024-12-22 17:24:41');
INSERT INTO `tiempos` VALUES (767, 23, 65, '10:24:00.0', '10:32:05.0', '00:08:05.0', NULL, NULL, '2024-12-22 17:25:07', '2024-12-22 17:25:44');
INSERT INTO `tiempos` VALUES (768, 23, 66, '10:26:00.0', '10:34:42.0', '00:08:42.0', NULL, NULL, '2024-12-22 17:26:07', '2024-12-22 17:26:07');
INSERT INTO `tiempos` VALUES (769, 23, 78, '10:28:00.0', '10:38:26.0', '00:10:26.0', NULL, NULL, '2024-12-22 17:26:25', '2024-12-22 17:26:25');
INSERT INTO `tiempos` VALUES (770, 23, 82, '10:30:00.0', '10:40:30.0', '00:10:30.0', NULL, NULL, '2024-12-22 17:26:51', '2024-12-22 17:26:51');
INSERT INTO `tiempos` VALUES (771, 23, 80, '10:32:00.0', '10:42:12.0', '00:10:12.0', NULL, NULL, '2024-12-22 17:27:09', '2024-12-22 17:27:09');
INSERT INTO `tiempos` VALUES (772, 23, 81, '10:34:00.0', '10:45:01.0', '00:11:01.0', NULL, NULL, '2024-12-22 17:27:23', '2024-12-22 17:27:23');
INSERT INTO `tiempos` VALUES (773, 23, 68, '10:36:00.0', '10:51:32.0', '00:15:32.0', NULL, NULL, '2024-12-22 17:27:48', '2024-12-22 17:27:48');
INSERT INTO `tiempos` VALUES (774, 22, 67, '09:15:00.0', '09:24:52.0', '00:09:52.0', NULL, NULL, '2024-12-22 17:29:35', '2024-12-22 17:31:51');
INSERT INTO `tiempos` VALUES (775, 22, 73, '09:17:00.0', '09:36:38.0', '00:19:38.0', NULL, NULL, '2024-12-22 17:29:54', '2024-12-22 17:30:27');
INSERT INTO `tiempos` VALUES (776, 22, 77, '09:19:00.0', '09:28:16.0', '00:10:16.0', '00:01:00.0', NULL, '2024-12-22 17:31:01', '2025-02-26 05:54:04');
INSERT INTO `tiempos` VALUES (777, 22, 74, '09:21:00.0', '09:32:10.0', '00:11:10.0', NULL, NULL, '2024-12-22 17:31:33', '2024-12-22 17:31:33');
INSERT INTO `tiempos` VALUES (778, 22, 76, '09:25:00.0', '09:34:51.0', '00:09:51.0', NULL, NULL, '2024-12-22 17:33:21', '2024-12-22 17:34:03');
INSERT INTO `tiempos` VALUES (779, 22, 70, '09:23:00.0', '09:32:54.0', '00:09:54.0', NULL, NULL, '2024-12-22 17:34:28', '2024-12-22 17:34:28');
INSERT INTO `tiempos` VALUES (780, 22, 72, '09:27:00.0', '09:37:30.0', '00:10:30.0', NULL, NULL, '2024-12-22 17:34:59', '2024-12-22 17:34:59');
INSERT INTO `tiempos` VALUES (781, 22, 75, '09:29:00.0', '09:39:42.0', '00:10:42.0', NULL, NULL, '2024-12-22 17:35:21', '2024-12-22 17:35:21');
INSERT INTO `tiempos` VALUES (782, 22, 69, '09:31:00.0', '09:41:40.0', '00:10:40.0', NULL, NULL, '2024-12-22 17:35:55', '2024-12-22 17:35:55');
INSERT INTO `tiempos` VALUES (783, 22, 71, '09:33:00.0', '09:43:54.0', '00:10:54.0', NULL, NULL, '2024-12-22 17:36:20', '2024-12-22 17:36:20');
INSERT INTO `tiempos` VALUES (784, 22, 79, '09:35:00.0', '09:46:11.0', '00:11:11.0', NULL, NULL, '2024-12-22 17:36:40', '2024-12-22 17:36:40');
INSERT INTO `tiempos` VALUES (785, 22, 65, '09:38:00.0', '09:46:13.0', '00:08:13.0', NULL, NULL, '2024-12-22 17:37:17', '2024-12-22 17:37:17');
INSERT INTO `tiempos` VALUES (786, 22, 66, '09:40:00.0', '09:49:02.0', '00:09:02.0', NULL, NULL, '2024-12-22 17:37:45', '2024-12-22 17:37:45');
INSERT INTO `tiempos` VALUES (787, 22, 78, '09:42:00.0', '09:51:41.0', '00:09:41.0', NULL, NULL, '2024-12-22 17:38:45', '2024-12-22 17:38:45');
INSERT INTO `tiempos` VALUES (788, 22, 82, '09:44:00.0', '09:54:43.0', '00:10:43.0', NULL, NULL, '2024-12-22 17:39:03', '2024-12-22 17:39:03');
INSERT INTO `tiempos` VALUES (789, 22, 80, '09:46:00.0', '09:56:24.0', '00:10:24.0', NULL, NULL, '2024-12-22 17:40:38', '2024-12-22 17:40:38');
INSERT INTO `tiempos` VALUES (790, 22, 81, '09:48:00.0', '09:59:30.0', '00:11:30.0', NULL, NULL, '2024-12-22 17:41:01', '2024-12-22 17:41:01');
INSERT INTO `tiempos` VALUES (791, 22, 68, '09:50:00.0', '10:03:57.0', '00:13:57.0', NULL, NULL, '2024-12-22 17:41:40', '2024-12-22 17:41:40');
INSERT INTO `tiempos` VALUES (792, 25, 65, '12:40:00.0', '12:47:51.0', '00:07:51.0', NULL, NULL, '2024-12-22 18:19:14', '2024-12-22 18:19:14');
INSERT INTO `tiempos` VALUES (793, 25, 66, '12:42:00.0', '12:50:27.0', '00:08:27.0', NULL, NULL, '2024-12-22 18:19:39', '2024-12-22 18:19:39');
INSERT INTO `tiempos` VALUES (794, 25, 67, '12:44:00.0', '12:53:28.0', '00:09:28.0', NULL, NULL, '2024-12-22 18:20:12', '2024-12-22 18:20:12');
INSERT INTO `tiempos` VALUES (795, 25, 73, '12:46:00.0', '12:55:27.0', '00:09:27.0', NULL, NULL, '2024-12-22 18:20:35', '2024-12-22 18:20:35');
INSERT INTO `tiempos` VALUES (796, 25, 77, '12:48:00.0', '12:56:55.0', '00:08:55.0', NULL, NULL, '2024-12-22 18:21:04', '2024-12-22 18:21:04');
INSERT INTO `tiempos` VALUES (797, 25, 74, '12:50:00.0', '13:01:00.0', '00:11:00.0', NULL, NULL, '2024-12-22 18:22:01', '2024-12-22 18:22:01');
INSERT INTO `tiempos` VALUES (798, 25, 70, '12:52:00.0', '13:01:47.0', '00:09:47.0', NULL, NULL, '2024-12-22 18:22:40', '2024-12-22 18:22:40');
INSERT INTO `tiempos` VALUES (799, 25, 76, '12:54:00.0', '13:03:52.0', '00:09:52.0', NULL, NULL, '2024-12-22 18:23:08', '2024-12-22 18:23:08');
INSERT INTO `tiempos` VALUES (800, 25, 72, '12:56:00.0', '13:06:35.0', '00:10:35.0', NULL, NULL, '2024-12-22 18:23:29', '2024-12-22 18:23:29');
INSERT INTO `tiempos` VALUES (801, 25, 75, '12:58:00.0', '13:08:39.0', '00:10:39.0', NULL, NULL, '2024-12-22 18:24:03', '2024-12-22 18:24:03');
INSERT INTO `tiempos` VALUES (802, 25, 69, '13:00:00.0', '13:10:40.0', '00:10:40.0', NULL, NULL, '2024-12-22 18:24:30', '2024-12-22 18:24:30');
INSERT INTO `tiempos` VALUES (803, 25, 71, '13:02:00.0', '13:12:40.0', '00:10:40.0', NULL, NULL, '2024-12-22 18:24:49', '2024-12-22 18:24:49');
INSERT INTO `tiempos` VALUES (804, 25, 79, '13:04:00.0', '13:15:20.0', '00:11:20.0', NULL, NULL, '2024-12-22 18:25:18', '2024-12-22 18:25:18');
INSERT INTO `tiempos` VALUES (805, 25, 78, '13:06:00.0', '13:15:25.0', '00:09:25.0', NULL, NULL, '2024-12-22 18:25:43', '2024-12-22 18:25:43');
INSERT INTO `tiempos` VALUES (806, 25, 82, '13:08:00.0', '13:18:15.0', '00:10:15.0', NULL, NULL, '2024-12-22 18:25:58', '2024-12-22 18:25:58');
INSERT INTO `tiempos` VALUES (807, 25, 80, '13:10:00.0', '13:20:06.0', '00:10:06.0', NULL, NULL, '2024-12-22 18:28:37', '2024-12-22 18:28:37');
INSERT INTO `tiempos` VALUES (808, 25, 81, '13:12:00.0', '13:22:55.0', '00:10:55.0', NULL, NULL, '2024-12-22 18:29:15', '2024-12-22 18:29:15');
INSERT INTO `tiempos` VALUES (809, 25, 68, '13:14:00.0', '13:27:12.0', '00:13:12.0', NULL, NULL, '2024-12-22 18:29:45', '2024-12-22 18:29:45');
INSERT INTO `tiempos` VALUES (823, 27, 84, '09:20:30.0', '09:44:59.0', '00:24:29.0', NULL, NULL, '2025-02-08 15:31:54', '2025-02-08 15:32:45');
INSERT INTO `tiempos` VALUES (824, 27, 83, '09:20:00.0', '09:45:30.0', '00:25:30.0', NULL, NULL, '2025-02-08 15:34:28', '2025-02-08 15:34:28');
INSERT INTO `tiempos` VALUES (825, 27, 85, '09:21:00.0', '09:46:10.0', '00:25:10.0', NULL, NULL, '2025-02-08 15:35:10', '2025-02-08 15:35:10');
INSERT INTO `tiempos` VALUES (826, 27, 86, '09:21:30.0', '09:49:01.0', '00:27:31.0', NULL, NULL, '2025-02-08 15:35:59', '2025-02-08 15:36:09');
INSERT INTO `tiempos` VALUES (827, 27, 87, '09:22:00.0', '09:46:42.0', '00:24:42.0', NULL, NULL, '2025-02-08 15:41:18', '2025-02-08 15:41:18');
INSERT INTO `tiempos` VALUES (828, 27, 88, '09:22:30.0', '09:48:52.0', '00:26:22.0', NULL, NULL, '2025-02-08 15:41:54', '2025-02-08 15:41:54');
INSERT INTO `tiempos` VALUES (829, 27, 89, '09:23:00.0', '09:53:41.0', '00:30:41.0', NULL, NULL, '2025-02-08 15:42:32', '2025-02-08 15:42:32');
INSERT INTO `tiempos` VALUES (830, 27, 90, '09:23:30.0', '09:50:50.0', '00:27:20.0', NULL, NULL, '2025-02-08 15:43:11', '2025-02-08 15:43:11');
INSERT INTO `tiempos` VALUES (831, 27, 91, '09:24:00.0', '09:52:30.0', '00:28:30.0', NULL, NULL, '2025-02-08 15:44:24', '2025-02-08 15:44:24');
INSERT INTO `tiempos` VALUES (832, 27, 92, '09:24:30.0', '09:48:15.0', '00:23:45.0', NULL, NULL, '2025-02-08 15:45:02', '2025-02-08 15:45:02');
INSERT INTO `tiempos` VALUES (833, 27, 93, '09:25:00.0', '09:49:26.0', '00:24:26.0', NULL, NULL, '2025-02-08 15:45:29', '2025-02-08 15:45:29');
INSERT INTO `tiempos` VALUES (834, 27, 94, '09:25:30.0', '09:49:36.0', '00:24:06.0', NULL, NULL, '2025-02-08 15:46:11', '2025-02-08 15:46:11');
INSERT INTO `tiempos` VALUES (835, 27, 95, '09:26:00.0', '09:49:27.0', '00:23:27.0', NULL, NULL, '2025-02-08 15:46:48', '2025-02-08 15:46:48');
INSERT INTO `tiempos` VALUES (836, 27, 96, '09:26:30.0', '09:54:20.0', '00:27:50.0', NULL, NULL, '2025-02-08 15:47:23', '2025-02-08 15:47:23');
INSERT INTO `tiempos` VALUES (837, 27, 97, '09:27:00.0', '09:50:23.0', '00:23:23.0', NULL, NULL, '2025-02-08 15:47:51', '2025-02-08 15:47:51');
INSERT INTO `tiempos` VALUES (838, 27, 98, '09:27:30.0', '09:55:12.0', '00:27:42.0', NULL, NULL, '2025-02-08 15:48:20', '2025-02-08 15:48:20');
INSERT INTO `tiempos` VALUES (839, 27, 99, '09:28:00.0', '09:59:29.0', '00:31:29.0', NULL, NULL, '2025-02-08 15:49:45', '2025-02-08 15:49:45');
INSERT INTO `tiempos` VALUES (840, 27, 100, '09:28:30.0', '09:52:05.0', '00:23:35.0', NULL, NULL, '2025-02-08 16:52:40', '2025-02-08 16:52:40');
INSERT INTO `tiempos` VALUES (841, 27, 101, '09:29:00.0', '10:03:50.0', '00:34:50.0', NULL, NULL, '2025-02-08 16:53:31', '2025-02-08 16:53:31');
INSERT INTO `tiempos` VALUES (842, 27, 102, '09:29:30.0', '10:11:45.0', '00:42:15.0', NULL, NULL, '2025-02-08 16:54:19', '2025-02-08 16:54:19');
INSERT INTO `tiempos` VALUES (843, 27, 103, '09:30:00.0', '09:53:52.0', '00:23:52.0', NULL, NULL, '2025-02-08 16:54:41', '2025-02-08 16:54:41');
INSERT INTO `tiempos` VALUES (844, 27, 104, '09:30:30.0', '09:57:06.0', '00:26:36.0', NULL, NULL, '2025-02-08 16:55:16', '2025-02-08 16:55:16');
INSERT INTO `tiempos` VALUES (845, 27, 107, '09:31:00.0', '10:01:51.0', '00:30:51.0', NULL, NULL, '2025-02-08 16:55:53', '2025-02-08 16:55:53');
INSERT INTO `tiempos` VALUES (846, 27, 108, '09:31:30.0', '09:55:03.0', '00:23:33.0', NULL, NULL, '2025-02-08 17:00:14', '2025-02-09 00:01:31');
INSERT INTO `tiempos` VALUES (847, 27, 109, '09:32:00.0', '09:57:35.0', '00:25:35.0', NULL, NULL, '2025-02-08 17:00:48', '2025-02-09 00:01:57');
INSERT INTO `tiempos` VALUES (848, 27, 110, '09:32:30.0', '09:55:35.0', '00:23:05.0', NULL, NULL, '2025-02-08 17:02:56', '2025-02-09 00:03:23');
INSERT INTO `tiempos` VALUES (849, 27, 111, '09:33:00.0', '09:56:02.0', '00:23:02.0', NULL, NULL, '2025-02-08 17:04:08', '2025-02-09 00:04:01');
INSERT INTO `tiempos` VALUES (850, 27, 112, '09:33:30.0', '09:57:50.0', '00:24:20.0', NULL, NULL, '2025-02-08 17:04:38', '2025-02-09 00:04:19');
INSERT INTO `tiempos` VALUES (851, 27, 113, '09:34:00.0', '09:57:11.0', '00:23:11.0', NULL, NULL, '2025-02-08 17:05:14', '2025-02-09 00:04:58');
INSERT INTO `tiempos` VALUES (852, 27, 114, '09:34:30.0', '09:57:52.0', '00:23:22.0', NULL, NULL, '2025-02-08 17:05:45', '2025-02-09 00:05:23');
INSERT INTO `tiempos` VALUES (853, 27, 115, '09:35:00.0', '09:55:50.0', '00:20:50.0', NULL, NULL, '2025-02-08 17:06:49', '2025-02-09 00:05:46');
INSERT INTO `tiempos` VALUES (854, 27, 116, '09:35:30.0', '09:55:49.0', '00:20:19.0', NULL, NULL, '2025-02-08 17:11:03', '2025-02-09 00:06:11');
INSERT INTO `tiempos` VALUES (855, 27, 117, '09:36:00.0', '09:59:09.0', '00:23:09.0', NULL, NULL, '2025-02-08 17:11:51', '2025-02-09 00:06:46');
INSERT INTO `tiempos` VALUES (856, 27, 118, '09:36:30.0', '09:58:50.0', '00:22:20.0', NULL, NULL, '2025-02-08 17:12:17', '2025-02-09 00:07:09');
INSERT INTO `tiempos` VALUES (857, 27, 119, '09:37:00.0', '09:57:02.0', '00:20:02.0', NULL, NULL, '2025-02-08 17:12:41', '2025-02-09 00:07:32');
INSERT INTO `tiempos` VALUES (858, 28, 84, '11:30:30.0', '12:12:48.0', '00:42:18.0', NULL, NULL, '2025-02-08 17:14:08', '2025-02-08 17:14:08');
INSERT INTO `tiempos` VALUES (859, 27, 120, '09:37:30.0', '10:07:20.0', '00:29:50.0', NULL, NULL, '2025-02-08 18:12:16', '2025-02-09 00:08:20');
INSERT INTO `tiempos` VALUES (860, 27, 121, '09:38:00.0', '10:08:10.0', '00:30:10.0', NULL, NULL, '2025-02-08 18:21:50', '2025-02-09 00:08:57');
INSERT INTO `tiempos` VALUES (861, 27, 122, '09:38:30.0', '10:07:01.0', '00:28:31.0', NULL, NULL, '2025-02-08 18:24:25', '2025-02-09 00:09:39');
INSERT INTO `tiempos` VALUES (862, 27, 123, '09:39:00.0', '10:03:59.0', '00:24:59.0', NULL, NULL, '2025-02-08 18:25:48', '2025-02-09 00:10:13');
INSERT INTO `tiempos` VALUES (863, 27, 128, '09:41:30.0', '10:03:55.0', '00:22:25.0', NULL, NULL, '2025-02-08 18:26:18', '2025-02-09 00:14:52');
INSERT INTO `tiempos` VALUES (864, 27, 125, '09:40:00.0', '10:01:35.0', '00:21:35.0', NULL, NULL, '2025-02-08 18:26:50', '2025-02-09 00:12:19');
INSERT INTO `tiempos` VALUES (865, 28, 83, '11:30:00.0', '12:15:10.0', '00:45:10.0', NULL, NULL, '2025-02-08 18:48:32', '2025-02-08 23:12:02');
INSERT INTO `tiempos` VALUES (866, 28, 85, '11:31:00.0', '12:16:13.0', '00:45:13.0', NULL, NULL, '2025-02-08 18:49:13', '2025-02-08 19:37:06');
INSERT INTO `tiempos` VALUES (867, 28, 86, '11:31:30.0', '12:22:01.0', '00:50:31.0', NULL, NULL, '2025-02-08 18:49:45', '2025-02-08 19:42:05');
INSERT INTO `tiempos` VALUES (868, 28, 87, '11:32:00.0', '12:17:06.0', '00:45:06.0', NULL, NULL, '2025-02-08 18:50:17', '2025-02-08 19:38:09');
INSERT INTO `tiempos` VALUES (869, 28, 88, '11:32:30.0', '12:26:05.0', '00:53:35.0', NULL, NULL, '2025-02-08 18:50:31', '2025-02-08 19:43:18');
INSERT INTO `tiempos` VALUES (870, 28, 89, '11:33:00.0', '12:33:36.0', '01:00:36.0', NULL, NULL, '2025-02-08 18:51:02', '2025-02-08 20:03:16');
INSERT INTO `tiempos` VALUES (871, 28, 90, '11:33:30.0', '12:26:10.0', '00:52:40.0', NULL, NULL, '2025-02-08 18:51:19', '2025-02-08 18:56:22');
INSERT INTO `tiempos` VALUES (872, 27, 126, '09:40:30.0', '10:04:58.0', '00:24:28.0', NULL, NULL, '2025-02-08 18:56:13', '2025-02-09 00:13:20');
INSERT INTO `tiempos` VALUES (873, 27, 127, '09:41:00.0', '10:02:26.0', '00:21:26.0', NULL, NULL, '2025-02-08 18:57:06', '2025-02-09 00:14:04');
INSERT INTO `tiempos` VALUES (874, 28, 91, '11:34:00.0', '12:29:19.0', '00:55:19.0', NULL, NULL, '2025-02-08 18:57:35', '2025-02-08 18:57:35');
INSERT INTO `tiempos` VALUES (875, 28, 92, '11:34:30.0', '12:18:30.0', '00:44:00.0', NULL, NULL, '2025-02-08 18:58:29', '2025-02-08 23:16:26');
INSERT INTO `tiempos` VALUES (876, 27, 124, '09:39:30.0', '09:59:05.0', '00:19:35.0', NULL, NULL, '2025-02-08 18:59:11', '2025-02-09 00:10:54');
INSERT INTO `tiempos` VALUES (877, 27, 129, '09:42:00.0', '10:10:00.0', '00:28:00.0', NULL, NULL, '2025-02-08 18:59:51', '2025-02-09 00:16:38');
INSERT INTO `tiempos` VALUES (878, 27, 130, '09:42:30.0', '10:02:43.0', '00:20:13.0', NULL, NULL, '2025-02-08 19:00:21', '2025-02-09 00:17:24');
INSERT INTO `tiempos` VALUES (879, 27, 132, '09:43:00.0', '10:04:34.0', '00:21:34.0', NULL, NULL, '2025-02-08 19:02:00', '2025-02-09 00:18:00');
INSERT INTO `tiempos` VALUES (880, 27, 133, '09:43:30.0', '10:07:39.0', '00:24:09.0', NULL, NULL, '2025-02-08 19:02:46', '2025-02-09 00:18:32');
INSERT INTO `tiempos` VALUES (881, 27, 134, '09:44:00.0', '10:10:29.0', '00:26:29.0', NULL, NULL, '2025-02-08 19:03:19', '2025-02-09 00:18:55');
INSERT INTO `tiempos` VALUES (882, 27, 135, '09:44:30.0', '10:07:16.0', '00:22:46.0', NULL, NULL, '2025-02-08 19:04:23', '2025-02-09 00:19:18');
INSERT INTO `tiempos` VALUES (883, 27, 136, '09:45:00.0', '10:09:05.0', '00:24:05.0', NULL, NULL, '2025-02-08 19:06:37', '2025-02-09 00:19:40');
INSERT INTO `tiempos` VALUES (884, 27, 137, '09:45:30.0', '10:09:10.0', '00:23:40.0', NULL, NULL, '2025-02-08 19:07:05', '2025-02-09 00:20:04');
INSERT INTO `tiempos` VALUES (885, 27, 138, '09:46:00.0', '10:07:09.0', '00:21:09.0', NULL, NULL, '2025-02-08 19:08:11', '2025-02-09 00:20:25');
INSERT INTO `tiempos` VALUES (886, 27, 148, '09:46:30.0', '10:09:31.0', '00:23:01.0', NULL, NULL, '2025-02-08 19:09:03', '2025-02-09 00:20:44');
INSERT INTO `tiempos` VALUES (887, 28, 93, '11:35:00.0', '12:24:38.0', '00:49:38.0', NULL, NULL, '2025-02-08 19:11:50', '2025-02-08 19:42:54');
INSERT INTO `tiempos` VALUES (888, 27, 139, '09:47:30.0', '10:12:38.0', '00:25:08.0', NULL, NULL, '2025-02-08 19:12:35', '2025-02-09 00:22:16');
INSERT INTO `tiempos` VALUES (889, 28, 94, '11:35:30.0', '12:21:23.0', '00:45:53.0', NULL, NULL, '2025-02-08 19:13:04', '2025-02-08 19:41:04');
INSERT INTO `tiempos` VALUES (890, 28, 95, '11:36:00.0', '12:18:29.0', '00:42:29.0', NULL, NULL, '2025-02-08 19:13:17', '2025-02-08 19:38:46');
INSERT INTO `tiempos` VALUES (891, 28, 96, '11:36:30.0', '12:31:16.0', '00:54:46.0', NULL, NULL, '2025-02-08 19:13:33', '2025-02-08 19:59:57');
INSERT INTO `tiempos` VALUES (892, 28, 97, '11:37:00.0', '12:19:05.0', '00:42:05.0', NULL, NULL, '2025-02-08 19:13:55', '2025-02-08 19:40:38');
INSERT INTO `tiempos` VALUES (893, 28, 98, '11:37:30.0', '12:34:20.0', '00:56:50.0', NULL, NULL, '2025-02-08 19:14:13', '2025-02-08 20:02:33');
INSERT INTO `tiempos` VALUES (894, 28, 99, '11:38:00.0', '12:47:47.0', '01:09:47.0', NULL, NULL, '2025-02-08 19:14:39', '2025-02-08 20:11:51');
INSERT INTO `tiempos` VALUES (895, 28, 100, '11:38:30.0', '12:22:34.0', '00:44:04.0', NULL, NULL, '2025-02-08 19:15:02', '2025-02-08 19:42:31');
INSERT INTO `tiempos` VALUES (896, 28, 101, '11:39:00.0', '12:28:15.0', '00:49:15.0', NULL, NULL, '2025-02-08 19:15:26', '2025-02-08 19:48:29');
INSERT INTO `tiempos` VALUES (898, 28, 103, '11:40:00.0', '12:26:19.0', '00:46:19.0', NULL, NULL, '2025-02-08 19:16:24', '2025-02-08 19:47:55');
INSERT INTO `tiempos` VALUES (902, 28, 107, '11:42:00.0', '12:31:12.0', '00:49:12.0', NULL, NULL, '2025-02-08 19:19:57', '2025-02-08 19:55:53');
INSERT INTO `tiempos` VALUES (903, 28, 108, '11:42:30.0', '12:50:11.0', '01:07:41.0', NULL, NULL, '2025-02-08 19:20:14', '2025-02-08 20:12:33');
INSERT INTO `tiempos` VALUES (904, 28, 109, '11:43:00.0', '12:32:49.0', '00:49:49.0', NULL, NULL, '2025-02-08 19:20:36', '2025-02-08 20:01:58');
INSERT INTO `tiempos` VALUES (905, 28, 110, '11:43:30.0', '12:36:50.0', '00:53:20.0', NULL, NULL, '2025-02-08 19:20:53', '2025-02-08 20:05:34');
INSERT INTO `tiempos` VALUES (906, 28, 111, '11:44:00.0', '12:32:00.0', '00:48:00.0', NULL, NULL, '2025-02-08 19:21:29', '2025-02-08 19:52:21');
INSERT INTO `tiempos` VALUES (907, 28, 112, '11:44:30.0', '12:32:44.0', '00:48:14.0', NULL, NULL, '2025-02-08 19:21:40', '2025-02-08 19:56:35');
INSERT INTO `tiempos` VALUES (908, 28, 113, '11:45:00.0', '12:53:49.0', '01:08:49.0', NULL, NULL, '2025-02-08 19:21:56', '2025-02-08 22:04:55');
INSERT INTO `tiempos` VALUES (909, 28, 114, '11:45:30.0', '13:01:19.0', '01:15:49.0', NULL, NULL, '2025-02-08 19:22:09', '2025-02-08 22:06:29');
INSERT INTO `tiempos` VALUES (910, 28, 115, '11:46:00.0', '12:29:48.0', '00:43:48.0', NULL, NULL, '2025-02-08 19:22:38', '2025-02-08 23:22:54');
INSERT INTO `tiempos` VALUES (911, 28, 116, '11:46:30.0', '12:26:15.0', '00:39:45.0', NULL, NULL, '2025-02-08 19:23:01', '2025-02-08 19:47:20');
INSERT INTO `tiempos` VALUES (912, 28, 117, '11:47:00.0', '12:36:01.0', '00:49:01.0', NULL, NULL, '2025-02-08 19:23:29', '2025-02-08 20:04:57');
INSERT INTO `tiempos` VALUES (913, 28, 118, '11:47:30.0', '12:36:05.0', '00:48:35.0', NULL, NULL, '2025-02-08 19:23:46', '2025-02-08 20:06:07');
INSERT INTO `tiempos` VALUES (914, 28, 119, '11:48:00.0', '12:33:02.0', '00:45:02.0', NULL, NULL, '2025-02-08 19:24:03', '2025-02-08 20:03:58');
INSERT INTO `tiempos` VALUES (915, 28, 120, '11:48:30.0', '12:30:31.0', '00:42:01.0', NULL, NULL, '2025-02-08 19:24:30', '2025-02-08 19:51:18');
INSERT INTO `tiempos` VALUES (917, 28, 122, '11:49:30.0', '12:41:22.0', '00:51:52.0', NULL, NULL, '2025-02-08 19:25:32', '2025-02-08 20:08:16');
INSERT INTO `tiempos` VALUES (918, 28, 123, '11:50:00.0', '12:39:55.0', '00:49:55.0', NULL, NULL, '2025-02-08 19:26:15', '2025-02-08 20:07:37');
INSERT INTO `tiempos` VALUES (919, 28, 124, '11:50:30.0', '12:30:00.0', '00:39:30.0', NULL, NULL, '2025-02-08 19:26:33', '2025-02-08 19:50:08');
INSERT INTO `tiempos` VALUES (920, 28, 125, '11:51:00.0', '12:33:07.0', '00:42:07.0', NULL, NULL, '2025-02-08 19:26:51', '2025-02-08 20:00:59');
INSERT INTO `tiempos` VALUES (922, 28, 127, '11:52:00.0', '12:31:17.0', '00:39:17.0', NULL, NULL, '2025-02-08 19:27:29', '2025-02-08 19:51:43');
INSERT INTO `tiempos` VALUES (923, 28, 128, '11:52:30.0', '12:34:15.0', '00:41:45.0', NULL, NULL, '2025-02-08 19:27:43', '2025-02-08 20:03:39');
INSERT INTO `tiempos` VALUES (924, 28, 129, '11:53:00.0', '12:38:29.0', '00:45:29.0', NULL, NULL, '2025-02-08 19:28:13', '2025-02-08 20:06:56');
INSERT INTO `tiempos` VALUES (925, 28, 130, '11:53:30.0', '12:31:46.0', '00:38:16.0', NULL, NULL, '2025-02-08 19:28:31', '2025-02-08 19:51:58');
INSERT INTO `tiempos` VALUES (927, 28, 132, '11:54:30.0', '12:37:10.0', '00:42:40.0', NULL, NULL, '2025-02-08 19:29:13', '2025-02-08 20:06:33');
INSERT INTO `tiempos` VALUES (928, 28, 133, '11:55:00.0', '12:40:18.0', '00:45:18.0', NULL, NULL, '2025-02-08 19:29:38', '2025-02-08 20:07:59');
INSERT INTO `tiempos` VALUES (929, 28, 134, '11:55:30.0', '12:46:05.0', '00:50:35.0', NULL, NULL, '2025-02-08 19:29:54', '2025-02-08 20:11:10');
INSERT INTO `tiempos` VALUES (930, 28, 135, '11:56:00.0', '12:44:09.0', '00:48:09.0', NULL, NULL, '2025-02-08 19:30:08', '2025-02-08 20:10:24');
INSERT INTO `tiempos` VALUES (931, 28, 136, '11:56:30.0', '12:44:06.0', '00:47:36.0', NULL, NULL, '2025-02-08 19:30:34', '2025-02-08 20:08:38');
INSERT INTO `tiempos` VALUES (932, 28, 137, '11:57:00.0', '12:45:00.0', '00:48:00.0', NULL, NULL, '2025-02-08 19:30:55', '2025-02-08 20:10:39');
INSERT INTO `tiempos` VALUES (933, 28, 138, '11:57:30.0', '12:39:50.0', '00:42:20.0', NULL, NULL, '2025-02-08 19:31:09', '2025-02-08 20:07:21');
INSERT INTO `tiempos` VALUES (934, 28, 148, '11:58:00.0', '12:44:08.0', '00:46:08.0', NULL, NULL, '2025-02-08 19:31:31', '2025-02-08 20:09:06');
INSERT INTO `tiempos` VALUES (935, 28, 149, '11:58:30.0', '12:45:23.0', '00:46:53.0', NULL, NULL, '2025-02-08 19:31:44', '2025-02-08 20:11:21');
INSERT INTO `tiempos` VALUES (936, 28, 139, '11:59:00.0', '12:52:00.0', '00:53:00.0', NULL, NULL, '2025-02-08 19:32:33', '2025-02-08 20:12:46');
INSERT INTO `tiempos` VALUES (938, 28, 141, '12:00:00.0', '13:01:39.0', '01:01:39.0', NULL, NULL, '2025-02-08 19:33:30', '2025-02-08 22:07:51');
INSERT INTO `tiempos` VALUES (940, 27, 140, '09:48:00.0', '10:15:10.0', '00:27:10.0', NULL, NULL, '2025-02-08 21:50:22', '2025-02-09 00:22:45');
INSERT INTO `tiempos` VALUES (942, 27, 144, '09:50:30.0', '10:17:10.0', '00:26:40.0', NULL, NULL, '2025-02-08 21:52:54', '2025-02-09 00:27:21');
INSERT INTO `tiempos` VALUES (943, 27, 143, '09:49:30.0', '10:17:15.0', '00:27:45.0', NULL, NULL, '2025-02-08 21:53:58', '2025-02-09 00:25:07');
INSERT INTO `tiempos` VALUES (944, 28, 145, '12:00:30.0', '13:17:59.0', '01:17:29.0', NULL, NULL, '2025-02-08 22:12:45', '2025-02-08 23:14:44');
INSERT INTO `tiempos` VALUES (945, 28, 144, '12:01:00.0', '13:19:19.0', '01:18:19.0', NULL, NULL, '2025-02-08 23:32:27', '2025-02-08 23:32:27');
INSERT INTO `tiempos` VALUES (946, 27, 145, '09:50:00.0', '10:17:05.0', '00:27:05.0', NULL, NULL, '2025-02-08 23:38:37', '2025-02-09 00:26:38');
INSERT INTO `tiempos` VALUES (947, 27, 149, '09:47:00.0', '10:10:31.0', '00:23:31.0', NULL, NULL, '2025-02-09 00:21:39', '2025-02-09 00:21:39');
INSERT INTO `tiempos` VALUES (948, 29, 83, '14:40:00.0', '15:00:00.0', '00:20:00.0', NULL, NULL, '2025-02-09 00:38:16', '2025-02-09 00:38:16');
INSERT INTO `tiempos` VALUES (949, 29, 84, '14:40:30.0', '14:58:43.0', '00:18:13.0', NULL, NULL, '2025-02-09 00:38:36', '2025-02-09 00:38:36');
INSERT INTO `tiempos` VALUES (950, 29, 85, '14:41:00.0', '15:00:37.0', '00:19:37.0', NULL, NULL, '2025-02-09 00:39:00', '2025-02-09 00:39:00');
INSERT INTO `tiempos` VALUES (951, 29, 86, '14:41:30.0', '15:03:20.0', '00:21:50.0', NULL, NULL, '2025-02-09 00:39:23', '2025-02-09 00:39:23');
INSERT INTO `tiempos` VALUES (952, 29, 87, '14:42:00.0', '15:01:26.0', '00:19:26.0', NULL, NULL, '2025-02-09 00:39:45', '2025-02-09 00:39:45');
INSERT INTO `tiempos` VALUES (953, 29, 88, '14:42:30.0', '15:05:37.0', '00:23:07.0', NULL, NULL, '2025-02-09 00:40:06', '2025-02-09 00:40:06');
INSERT INTO `tiempos` VALUES (954, 29, 89, '14:43:00.0', '15:16:10.0', '00:33:10.0', NULL, NULL, '2025-02-09 00:40:37', '2025-02-09 00:40:37');
INSERT INTO `tiempos` VALUES (955, 29, 90, '14:43:30.0', '15:06:07.0', '00:22:37.0', NULL, NULL, '2025-02-09 00:41:04', '2025-02-09 00:41:04');
INSERT INTO `tiempos` VALUES (956, 29, 91, '14:44:00.0', '15:09:14.0', '00:25:14.0', NULL, NULL, '2025-02-09 00:41:26', '2025-02-09 00:41:26');
INSERT INTO `tiempos` VALUES (957, 29, 92, '14:44:30.0', '15:03:59.0', '00:19:29.0', NULL, NULL, '2025-02-09 00:41:53', '2025-02-09 00:41:53');
INSERT INTO `tiempos` VALUES (958, 29, 93, '14:45:00.0', '15:05:55.0', '00:20:55.0', NULL, NULL, '2025-02-09 00:43:36', '2025-02-09 00:43:36');
INSERT INTO `tiempos` VALUES (959, 29, 94, '14:45:30.0', '15:07:54.0', '00:22:24.0', NULL, NULL, '2025-02-09 00:43:58', '2025-02-09 00:43:58');
INSERT INTO `tiempos` VALUES (960, 29, 95, '14:46:00.0', '15:04:15.0', '00:18:15.0', NULL, NULL, '2025-02-09 00:44:24', '2025-02-09 00:44:24');
INSERT INTO `tiempos` VALUES (961, 29, 96, '14:46:30.0', '15:09:03.0', '00:22:33.0', NULL, NULL, '2025-02-09 00:45:00', '2025-02-09 00:45:00');
INSERT INTO `tiempos` VALUES (962, 29, 97, '14:47:00.0', '15:08:10.0', '00:21:10.0', NULL, NULL, '2025-02-09 00:45:49', '2025-02-09 00:45:49');
INSERT INTO `tiempos` VALUES (963, 29, 98, '14:47:30.0', '15:07:36.0', '00:20:06.0', NULL, NULL, '2025-02-09 00:46:14', '2025-02-09 00:46:14');
INSERT INTO `tiempos` VALUES (964, 29, 99, '14:48:00.0', '15:27:55.0', '00:39:55.0', NULL, NULL, '2025-02-09 00:46:47', '2025-02-09 00:46:47');
INSERT INTO `tiempos` VALUES (965, 29, 100, '14:48:30.0', '15:07:29.0', '00:18:59.0', NULL, NULL, '2025-02-09 00:47:14', '2025-02-09 00:47:14');
INSERT INTO `tiempos` VALUES (966, 29, 101, '14:49:00.0', '15:11:58.0', '00:22:58.0', NULL, NULL, '2025-02-09 00:49:24', '2025-02-09 00:49:24');
INSERT INTO `tiempos` VALUES (967, 29, 103, '14:50:00.0', '15:09:00.0', '00:19:00.0', NULL, NULL, '2025-02-09 00:49:58', '2025-02-09 00:49:58');
INSERT INTO `tiempos` VALUES (968, 29, 107, '14:52:00.0', '15:15:40.0', '00:23:40.0', NULL, NULL, '2025-02-09 00:50:46', '2025-02-09 00:50:46');
INSERT INTO `tiempos` VALUES (969, 29, 108, '14:52:30.0', '15:14:00.0', '00:21:30.0', NULL, NULL, '2025-02-09 00:51:12', '2025-02-09 00:51:12');
INSERT INTO `tiempos` VALUES (970, 29, 109, '14:53:00.0', '15:16:20.0', '00:23:20.0', NULL, NULL, '2025-02-09 00:51:35', '2025-02-09 00:51:35');
INSERT INTO `tiempos` VALUES (971, 29, 110, '14:53:30.0', '15:13:15.0', '00:19:45.0', NULL, NULL, '2025-02-09 00:51:57', '2025-02-09 00:51:57');
INSERT INTO `tiempos` VALUES (972, 29, 111, '14:54:00.0', '15:16:04.0', '00:22:04.0', NULL, NULL, '2025-02-09 00:52:18', '2025-02-09 00:52:18');
INSERT INTO `tiempos` VALUES (973, 29, 112, '14:54:30.0', '15:16:23.0', '00:21:53.0', NULL, NULL, '2025-02-09 00:52:38', '2025-02-09 00:52:38');
INSERT INTO `tiempos` VALUES (974, 29, 114, '14:55:30.0', '15:15:42.0', '00:20:12.0', NULL, NULL, '2025-02-09 00:55:39', '2025-02-09 00:55:39');
INSERT INTO `tiempos` VALUES (975, 29, 115, '14:56:00.0', '15:15:44.0', '00:19:44.0', NULL, NULL, '2025-02-09 00:56:12', '2025-02-09 00:56:12');
INSERT INTO `tiempos` VALUES (976, 29, 116, '14:56:30.0', '15:14:18.0', '00:17:48.0', NULL, NULL, '2025-02-09 00:56:35', '2025-02-09 00:56:35');
INSERT INTO `tiempos` VALUES (977, 29, 117, '14:57:00.0', '15:17:59.0', '00:20:59.0', NULL, NULL, '2025-02-09 00:56:56', '2025-02-09 00:56:56');
INSERT INTO `tiempos` VALUES (978, 29, 118, '14:57:30.0', '15:18:59.0', '00:21:29.0', NULL, NULL, '2025-02-09 00:57:13', '2025-02-09 00:57:13');
INSERT INTO `tiempos` VALUES (979, 29, 119, '14:58:00.0', '15:15:42.0', '00:17:42.0', NULL, NULL, '2025-02-09 00:57:28', '2025-02-09 00:57:28');
INSERT INTO `tiempos` VALUES (980, 29, 120, '14:58:30.0', '15:16:38.0', '00:18:08.0', NULL, NULL, '2025-02-09 00:57:49', '2025-02-09 00:57:49');
INSERT INTO `tiempos` VALUES (981, 29, 122, '14:59:30.0', '15:26:04.0', '00:26:34.0', NULL, NULL, '2025-02-09 01:00:16', '2025-02-09 01:00:16');
INSERT INTO `tiempos` VALUES (982, 29, 123, '15:00:00.0', '15:23:15.0', '00:23:15.0', NULL, NULL, '2025-02-09 01:01:28', '2025-02-09 01:01:28');
INSERT INTO `tiempos` VALUES (983, 29, 124, '15:00:30.0', '15:17:27.0', '00:16:57.0', NULL, NULL, '2025-02-09 01:01:55', '2025-02-09 01:01:55');
INSERT INTO `tiempos` VALUES (984, 29, 125, '15:01:00.0', '15:20:50.0', '00:19:50.0', NULL, NULL, '2025-02-09 01:02:26', '2025-02-09 01:02:26');
INSERT INTO `tiempos` VALUES (985, 29, 127, '15:02:00.0', '15:19:15.0', '00:17:15.0', NULL, NULL, '2025-02-09 01:03:34', '2025-02-09 01:03:34');
INSERT INTO `tiempos` VALUES (986, 29, 128, '15:02:30.0', '15:18:40.0', '00:16:10.0', NULL, NULL, '2025-02-09 01:03:57', '2025-02-09 01:03:57');
INSERT INTO `tiempos` VALUES (987, 29, 129, '15:03:00.0', '15:22:59.0', '00:19:59.0', NULL, NULL, '2025-02-09 01:04:21', '2025-02-09 01:04:21');
INSERT INTO `tiempos` VALUES (988, 29, 130, '15:03:30.0', '15:19:41.0', '00:16:11.0', NULL, NULL, '2025-02-09 01:04:45', '2025-02-09 01:04:58');
INSERT INTO `tiempos` VALUES (989, 29, 132, '15:04:30.0', '15:24:29.0', '00:19:59.0', NULL, NULL, '2025-02-09 01:05:19', '2025-02-09 01:05:19');
INSERT INTO `tiempos` VALUES (990, 29, 133, '15:05:00.0', '15:26:00.0', '00:21:00.0', NULL, NULL, '2025-02-09 01:05:40', '2025-02-09 01:05:40');
INSERT INTO `tiempos` VALUES (991, 29, 134, '15:05:30.0', '15:27:13.0', '00:21:43.0', NULL, NULL, '2025-02-09 01:06:40', '2025-02-09 01:06:40');
INSERT INTO `tiempos` VALUES (992, 29, 135, '15:06:00.0', '15:28:13.0', '00:22:13.0', NULL, NULL, '2025-02-09 01:06:58', '2025-02-09 01:06:58');
INSERT INTO `tiempos` VALUES (993, 29, 136, '15:06:30.0', '15:27:40.0', '00:21:10.0', NULL, NULL, '2025-02-09 01:07:21', '2025-02-09 01:07:21');
INSERT INTO `tiempos` VALUES (994, 29, 137, '15:07:00.0', '15:31:35.0', '00:24:35.0', NULL, NULL, '2025-02-09 01:07:41', '2025-02-09 01:07:41');
INSERT INTO `tiempos` VALUES (995, 29, 138, '15:07:30.0', '15:26:11.0', '00:18:41.0', NULL, NULL, '2025-02-09 01:08:00', '2025-02-09 01:08:00');
INSERT INTO `tiempos` VALUES (996, 29, 148, '15:08:00.0', '15:28:44.0', '00:20:44.0', NULL, NULL, '2025-02-09 01:09:30', '2025-02-09 01:09:30');
INSERT INTO `tiempos` VALUES (997, 29, 121, '14:59:00.0', '15:21:30.0', '00:22:30.0', NULL, NULL, '2025-02-09 01:10:54', '2025-02-09 01:10:54');
INSERT INTO `tiempos` VALUES (998, 29, 139, '15:09:00.0', '15:36:03.0', '00:27:03.0', NULL, NULL, '2025-02-09 01:11:24', '2025-02-09 01:11:24');
INSERT INTO `tiempos` VALUES (999, 29, 145, '15:11:30.0', '15:42:15.0', '00:30:45.0', NULL, NULL, '2025-02-09 01:11:53', '2025-02-09 01:11:53');
INSERT INTO `tiempos` VALUES (1000, 29, 144, '15:12:00.0', '15:42:26.0', '00:30:26.0', NULL, NULL, '2025-02-09 01:13:31', '2025-02-09 01:13:31');
INSERT INTO `tiempos` VALUES (1001, 28, 104, NULL, NULL, '01:18:19.0', NULL, NULL, '2025-02-09 02:30:47', '2025-02-09 02:30:47');
INSERT INTO `tiempos` VALUES (1002, 29, 104, NULL, NULL, '00:39:55.0', NULL, NULL, '2025-02-09 02:31:44', '2025-02-09 02:31:44');
INSERT INTO `tiempos` VALUES (1003, 31, 130, '12:35:00.0', '13:14:57.0', '00:39:57.0', NULL, NULL, '2025-02-09 18:15:37', '2025-02-09 18:15:37');
INSERT INTO `tiempos` VALUES (1004, 31, 124, '12:36:00.0', '13:17:05.0', '00:41:05.0', NULL, NULL, '2025-02-09 18:18:02', '2025-02-09 18:22:34');
INSERT INTO `tiempos` VALUES (1005, 31, 127, '12:38:00.0', '13:20:18.0', '00:42:18.0', NULL, NULL, '2025-02-09 18:21:05', '2025-02-09 18:22:56');
INSERT INTO `tiempos` VALUES (1006, 31, 116, '12:37:00.0', '13:20:54.0', '00:43:54.0', NULL, NULL, '2025-02-09 18:22:03', '2025-02-09 18:22:03');
INSERT INTO `tiempos` VALUES (1007, 31, 128, '12:39:00.0', '13:23:52.0', '00:44:52.0', NULL, NULL, '2025-02-09 18:24:33', '2025-02-09 18:24:33');
INSERT INTO `tiempos` VALUES (1008, 31, 119, '12:41:00.0', '13:23:58.0', '00:42:58.0', NULL, NULL, '2025-02-09 18:25:05', '2025-02-09 18:25:05');
INSERT INTO `tiempos` VALUES (1009, 31, 138, '12:40:00.0', '13:25:16.0', '00:45:16.0', NULL, NULL, '2025-02-09 18:26:07', '2025-02-09 18:26:07');
INSERT INTO `tiempos` VALUES (1010, 31, 95, '12:43:00.0', '13:28:30.0', '00:45:30.0', NULL, NULL, '2025-02-09 18:29:20', '2025-02-09 18:29:20');
INSERT INTO `tiempos` VALUES (1011, 31, 132, '12:44:00.0', '13:29:24.0', '00:45:24.0', NULL, NULL, '2025-02-09 18:30:21', '2025-02-09 18:30:21');
INSERT INTO `tiempos` VALUES (1012, 31, 115, '12:45:00.0', '13:29:49.0', '00:44:49.0', NULL, NULL, '2025-02-09 18:30:45', '2025-02-09 18:31:20');
INSERT INTO `tiempos` VALUES (1013, 31, 97, '12:47:00.0', '13:31:56.0', '00:44:56.0', NULL, NULL, '2025-02-09 18:32:45', '2025-02-09 18:32:45');
INSERT INTO `tiempos` VALUES (1014, 31, 84, '12:46:00.0', '13:32:02.0', '00:46:02.0', NULL, NULL, '2025-02-09 18:33:26', '2025-02-09 18:33:26');
INSERT INTO `tiempos` VALUES (1015, 31, 92, '12:49:00.0', '13:34:42.0', '00:45:42.0', NULL, NULL, '2025-02-09 18:35:58', '2025-02-09 18:35:58');
INSERT INTO `tiempos` VALUES (1016, 31, 100, '12:48:00.0', '13:34:53.0', '00:46:53.0', NULL, NULL, '2025-02-09 18:36:27', '2025-02-09 18:36:27');
INSERT INTO `tiempos` VALUES (1017, 31, 103, '12:50:00.0', '13:35:08.0', '00:45:08.0', NULL, NULL, '2025-02-09 18:37:07', '2025-02-09 18:37:07');
INSERT INTO `tiempos` VALUES (1018, 31, 120, '12:53:00.0', '13:38:07.0', '00:45:07.0', NULL, NULL, '2025-02-09 18:38:59', '2025-02-09 18:38:59');
INSERT INTO `tiempos` VALUES (1019, 31, 87, '12:51:00.0', '13:39:12.0', '00:48:12.0', NULL, NULL, '2025-02-09 18:39:51', '2025-02-09 18:39:51');
INSERT INTO `tiempos` VALUES (1020, 31, 148, '12:52:00.0', '13:39:54.0', '00:47:54.0', NULL, NULL, '2025-02-09 18:41:05', '2025-02-09 18:41:05');
INSERT INTO `tiempos` VALUES (1021, 31, 85, '12:54:00.0', '13:42:42.0', '00:48:42.0', NULL, NULL, '2025-02-09 18:43:41', '2025-02-09 18:43:41');
INSERT INTO `tiempos` VALUES (1022, 31, 83, '12:56:00.0', '13:43:09.0', '00:47:09.0', NULL, NULL, '2025-02-09 18:44:30', '2025-02-09 18:44:30');
INSERT INTO `tiempos` VALUES (1023, 31, 118, '12:58:00.0', '13:49:32.0', '00:51:32.0', NULL, NULL, '2025-02-09 18:50:17', '2025-02-09 18:50:17');
INSERT INTO `tiempos` VALUES (1024, 31, 136, '00:00:00.0', '13:49:11.0', '13:49:11.0', NULL, NULL, '2025-02-09 18:50:56', '2025-02-09 18:50:56');
INSERT INTO `tiempos` VALUES (1025, 31, 94, '12:57:00.0', '13:51:02.0', '00:54:02.0', NULL, NULL, '2025-02-09 18:51:56', '2025-02-09 18:51:56');
INSERT INTO `tiempos` VALUES (1026, 31, 117, '13:02:00.0', '13:51:17.0', '00:49:17.0', NULL, NULL, '2025-02-09 18:52:28', '2025-02-09 18:52:28');
INSERT INTO `tiempos` VALUES (1027, 31, 129, '13:03:00.0', '13:51:57.0', '00:48:57.0', NULL, NULL, '2025-02-09 18:53:22', '2025-02-09 18:53:22');
INSERT INTO `tiempos` VALUES (1028, 31, 111, '13:00:00.0', '13:52:50.0', '00:52:50.0', NULL, NULL, '2025-02-09 18:54:07', '2025-02-09 18:54:07');
INSERT INTO `tiempos` VALUES (1029, 31, 93, '13:05:00.0', '13:54:24.0', '00:49:24.0', NULL, NULL, '2025-02-09 18:55:41', '2025-02-09 18:55:41');
INSERT INTO `tiempos` VALUES (1030, 31, 112, '13:04:00.0', '13:54:45.0', '00:50:45.0', NULL, NULL, '2025-02-09 18:56:17', '2025-02-09 18:56:17');
INSERT INTO `tiempos` VALUES (1031, 31, 135, '13:01:00.0', '13:55:10.0', '00:54:10.0', NULL, NULL, '2025-02-09 18:56:54', '2025-02-09 18:56:54');
INSERT INTO `tiempos` VALUES (1032, 31, 110, '13:06:00.0', '13:57:44.0', '00:51:44.0', NULL, NULL, '2025-02-09 18:58:37', '2025-02-09 18:58:37');
INSERT INTO `tiempos` VALUES (1033, 31, 98, '13:15:00.0', '14:02:01.0', '00:47:01.0', NULL, NULL, '2025-02-09 19:02:53', '2025-02-09 19:02:53');
INSERT INTO `tiempos` VALUES (1034, 31, 90, '13:12:00.0', '14:02:55.0', '00:50:55.0', NULL, NULL, '2025-02-09 19:03:39', '2025-02-09 19:03:39');
INSERT INTO `tiempos` VALUES (1035, 31, 86, '13:11:00.0', '14:04:02.0', '00:53:02.0', NULL, NULL, '2025-02-09 19:04:48', '2025-02-09 19:04:48');
INSERT INTO `tiempos` VALUES (1036, 31, 109, '13:09:00.0', '14:05:55.0', '00:56:55.0', NULL, NULL, '2025-02-09 19:07:06', '2025-02-09 19:07:06');
INSERT INTO `tiempos` VALUES (1037, 31, 134, '13:10:00.0', '14:06:25.0', '00:56:25.0', NULL, NULL, '2025-02-09 19:07:34', '2025-02-09 19:07:34');
INSERT INTO `tiempos` VALUES (1038, 31, 101, '13:18:00.0', '14:08:35.0', '00:50:35.0', NULL, NULL, '2025-02-09 19:09:32', '2025-02-09 19:09:32');
INSERT INTO `tiempos` VALUES (1039, 31, 108, '13:20:00.0', '14:09:10.0', '00:49:10.0', NULL, NULL, '2025-02-09 19:10:21', '2025-02-09 19:10:21');
INSERT INTO `tiempos` VALUES (1040, 31, 88, '13:13:00.0', '14:09:50.0', '00:56:50.0', NULL, NULL, '2025-02-09 19:11:00', '2025-02-09 19:11:00');
INSERT INTO `tiempos` VALUES (1041, 31, 96, '13:16:00.0', '14:11:37.0', '00:55:37.0', NULL, NULL, '2025-02-09 19:12:49', '2025-02-09 19:12:49');
INSERT INTO `tiempos` VALUES (1042, 31, 114, '13:21:00.0', '14:11:58.0', '00:50:58.0', NULL, NULL, '2025-02-09 19:14:41', '2025-02-09 19:15:10');
INSERT INTO `tiempos` VALUES (1043, 31, 133, '12:55:00.0', '14:13:01.0', '01:18:01.0', NULL, NULL, '2025-02-09 19:15:39', '2025-02-09 19:15:39');
INSERT INTO `tiempos` VALUES (1044, 31, 107, '13:14:00.0', '14:14:12.0', '01:00:12.0', NULL, NULL, '2025-02-09 19:16:22', '2025-02-09 19:16:22');
INSERT INTO `tiempos` VALUES (1045, 31, 113, '13:26:00.0', '14:19:43.0', '00:53:43.0', NULL, NULL, '2025-02-09 19:21:06', '2025-02-09 19:21:06');
INSERT INTO `tiempos` VALUES (1046, 31, 89, '13:22:00.0', '14:20:06.0', '00:58:06.0', NULL, NULL, '2025-02-09 19:21:39', '2025-02-09 19:21:39');
INSERT INTO `tiempos` VALUES (1047, 31, 122, '13:17:00.0', '14:23:44.0', '01:06:44.0', NULL, NULL, '2025-02-09 19:25:44', '2025-02-09 19:25:44');
INSERT INTO `tiempos` VALUES (1048, 31, 121, '00:00:00.0', '14:24:42.0', '14:24:42.0', NULL, NULL, '2025-02-09 19:29:10', '2025-02-09 19:29:10');
INSERT INTO `tiempos` VALUES (1049, 31, 99, '13:23:00.0', '14:32:44.0', '01:09:44.0', NULL, NULL, '2025-02-09 19:33:59', '2025-02-09 19:33:59');
INSERT INTO `tiempos` VALUES (1050, 31, 104, '13:24:00.0', '14:32:45.0', '01:08:45.0', NULL, NULL, '2025-02-09 19:35:18', '2025-02-09 19:35:18');
INSERT INTO `tiempos` VALUES (1051, 31, 137, '13:07:00.0', '14:32:57.0', '01:25:57.0', NULL, NULL, '2025-02-09 19:36:04', '2025-02-09 19:36:04');
INSERT INTO `tiempos` VALUES (1052, 31, 91, '13:19:00.0', '14:39:36.0', '01:20:36.0', NULL, NULL, '2025-02-09 19:41:15', '2025-02-09 19:41:15');
INSERT INTO `tiempos` VALUES (1053, 31, 141, '00:00:00.0', '14:43:39.0', '14:43:39.0', NULL, NULL, '2025-02-09 19:44:33', '2025-02-09 19:44:33');
INSERT INTO `tiempos` VALUES (1054, 31, 144, '00:00:00.0', '14:47:50.0', '14:47:50.0', NULL, NULL, '2025-02-09 19:48:58', '2025-02-09 19:48:58');
INSERT INTO `tiempos` VALUES (1055, 31, 145, '00:00:00.0', '14:49:59.0', '14:49:59.0', NULL, NULL, '2025-02-09 19:51:09', '2025-02-09 19:51:09');
INSERT INTO `tiempos` VALUES (1056, 31, 139, '00:00:00.0', '14:50:10.0', '14:50:10.0', NULL, NULL, '2025-02-09 19:51:34', '2025-02-09 19:51:34');
INSERT INTO `tiempos` VALUES (1057, 30, 130, '09:10:00.0', '10:04:37.0', '00:54:37.0', NULL, NULL, '2025-02-09 20:12:08', '2025-02-09 20:12:08');
INSERT INTO `tiempos` VALUES (1058, 30, 124, '09:11:00.0', '10:06:33.0', '00:55:33.0', NULL, NULL, '2025-02-09 20:13:35', '2025-02-09 20:13:35');
INSERT INTO `tiempos` VALUES (1059, 30, 116, '09:12:00.0', '10:10:29.0', '00:58:29.0', NULL, NULL, '2025-02-09 20:14:28', '2025-02-09 20:14:28');
INSERT INTO `tiempos` VALUES (1060, 30, 127, '09:13:00.0', '10:10:35.0', '00:57:35.0', NULL, NULL, '2025-02-09 20:14:49', '2025-02-09 20:14:49');
INSERT INTO `tiempos` VALUES (1061, 30, 128, '09:14:00.0', '10:14:40.0', '01:00:40.0', NULL, NULL, '2025-02-09 20:15:08', '2025-02-09 20:15:08');
INSERT INTO `tiempos` VALUES (1062, 30, 119, '09:16:00.0', '10:15:26.0', '00:59:26.0', NULL, NULL, '2025-02-09 20:15:54', '2025-02-09 20:15:54');
INSERT INTO `tiempos` VALUES (1063, 30, 138, '09:15:00.0', '10:15:41.0', '01:00:41.0', NULL, NULL, '2025-02-09 20:16:17', '2025-02-09 20:16:17');
INSERT INTO `tiempos` VALUES (1064, 30, 132, '09:19:00.0', '10:19:00.0', '01:00:00.0', NULL, NULL, '2025-02-09 20:16:41', '2025-02-09 20:47:58');
INSERT INTO `tiempos` VALUES (1065, 30, 97, '09:22:00.0', '10:21:04.0', '00:59:04.0', NULL, NULL, '2025-02-09 20:17:00', '2025-02-09 20:17:00');
INSERT INTO `tiempos` VALUES (1066, 30, 115, '09:20:00.0', '10:21:44.0', '01:01:44.0', NULL, NULL, '2025-02-09 20:17:17', '2025-02-09 20:17:17');
INSERT INTO `tiempos` VALUES (1067, 30, 125, '09:17:00.0', '10:21:52.0', '01:04:52.0', NULL, NULL, '2025-02-09 20:17:30', '2025-02-09 20:17:30');
INSERT INTO `tiempos` VALUES (1068, 30, 84, '09:21:00.0', '10:22:07.0', '01:01:07.0', NULL, NULL, '2025-02-09 20:17:53', '2025-02-09 20:17:53');
INSERT INTO `tiempos` VALUES (1069, 30, 95, '09:18:00.0', '10:22:51.0', '01:04:51.0', NULL, NULL, '2025-02-09 20:18:22', '2025-02-09 20:18:22');
INSERT INTO `tiempos` VALUES (1070, 30, 100, '09:23:00.0', '10:25:16.0', '01:02:16.0', NULL, NULL, '2025-02-09 20:18:39', '2025-02-09 20:18:39');
INSERT INTO `tiempos` VALUES (1071, 30, 103, '09:25:00.0', '10:26:09.0', '01:01:09.0', NULL, NULL, '2025-02-09 20:18:51', '2025-02-09 20:18:51');
INSERT INTO `tiempos` VALUES (1072, 30, 120, '09:28:00.0', '10:27:22.0', '00:59:22.0', NULL, NULL, '2025-02-09 20:19:07', '2025-02-09 20:19:07');
INSERT INTO `tiempos` VALUES (1073, 30, 92, '09:24:00.0', '10:28:49.0', '01:04:49.0', NULL, NULL, '2025-02-09 20:19:27', '2025-02-09 20:19:27');
INSERT INTO `tiempos` VALUES (1074, 30, 148, '09:27:00.0', '10:30:53.0', '01:03:53.0', NULL, NULL, '2025-02-09 20:19:48', '2025-02-09 20:19:48');
INSERT INTO `tiempos` VALUES (1075, 30, 85, '09:29:00.0', '10:33:49.0', '01:04:49.0', NULL, NULL, '2025-02-09 20:20:03', '2025-02-09 20:20:03');
INSERT INTO `tiempos` VALUES (1076, 30, 83, '09:31:00.0', '10:35:11.0', '01:04:11.0', NULL, NULL, '2025-02-09 20:20:20', '2025-02-09 20:20:20');
INSERT INTO `tiempos` VALUES (1077, 30, 87, '09:26:00.0', '10:37:56.0', '01:11:56.0', NULL, NULL, '2025-02-09 20:21:18', '2025-02-09 20:21:18');
INSERT INTO `tiempos` VALUES (1078, 30, 133, '09:30:00.0', '10:38:00.0', '01:08:00.0', NULL, NULL, '2025-02-09 20:21:38', '2025-02-09 20:23:11');
INSERT INTO `tiempos` VALUES (1079, 30, 118, '09:33:00.0', '10:40:39.0', '01:07:39.0', NULL, NULL, '2025-02-09 20:23:30', '2025-02-09 20:23:30');
INSERT INTO `tiempos` VALUES (1080, 30, 136, '09:34:00.0', '10:41:35.0', '01:07:35.0', NULL, NULL, '2025-02-09 20:24:05', '2025-02-09 20:24:05');
INSERT INTO `tiempos` VALUES (1081, 30, 129, '09:38:00.0', '10:43:39.0', '01:05:39.0', NULL, NULL, '2025-02-09 20:24:23', '2025-02-09 20:24:23');
INSERT INTO `tiempos` VALUES (1082, 30, 135, '09:36:00.0', '10:43:52.0', '01:07:52.0', NULL, NULL, '2025-02-09 20:24:43', '2025-02-09 20:24:43');
INSERT INTO `tiempos` VALUES (1083, 30, 111, '09:35:00.0', '10:43:59.0', '01:08:59.0', NULL, NULL, '2025-02-09 20:27:10', '2025-02-09 20:27:10');
INSERT INTO `tiempos` VALUES (1084, 30, 117, '09:37:00.0', '10:45:51.0', '01:08:51.0', NULL, NULL, '2025-02-09 20:27:45', '2025-02-09 20:27:45');
INSERT INTO `tiempos` VALUES (1085, 30, 93, '09:40:00.0', '10:47:37.0', '01:07:37.0', NULL, NULL, '2025-02-09 20:28:35', '2025-02-09 20:28:35');
INSERT INTO `tiempos` VALUES (1086, 30, 112, '09:39:00.0', '10:51:12.0', '01:12:12.0', NULL, NULL, '2025-02-09 20:29:48', '2025-02-09 20:29:48');
INSERT INTO `tiempos` VALUES (1087, 30, 86, '09:46:00.0', '10:52:11.0', '01:06:11.0', NULL, NULL, '2025-02-09 20:30:06', '2025-02-09 23:59:58');
INSERT INTO `tiempos` VALUES (1088, 30, 137, '09:42:00.0', '10:52:52.0', '01:10:52.0', NULL, NULL, '2025-02-09 20:30:41', '2025-02-09 20:30:41');
INSERT INTO `tiempos` VALUES (1089, 30, 123, '09:43:00.0', '10:54:57.0', '01:11:57.0', NULL, NULL, '2025-02-09 20:31:24', '2025-02-09 20:31:24');
INSERT INTO `tiempos` VALUES (1090, 30, 98, '09:50:00.0', '10:55:23.0', '01:05:23.0', NULL, NULL, '2025-02-09 20:31:40', '2025-02-09 20:31:40');
INSERT INTO `tiempos` VALUES (1091, 30, 90, '09:47:00.0', '10:56:51.0', '01:09:51.0', NULL, NULL, '2025-02-09 20:31:55', '2025-02-09 20:31:55');
INSERT INTO `tiempos` VALUES (1092, 30, 88, '09:48:00.0', '11:01:14.0', '01:13:14.0', NULL, NULL, '2025-02-09 20:32:12', '2025-02-09 20:32:12');
INSERT INTO `tiempos` VALUES (1093, 30, 101, '09:54:00.0', '11:01:16.0', '01:07:16.0', NULL, NULL, '2025-02-09 20:32:30', '2025-02-09 20:32:30');
INSERT INTO `tiempos` VALUES (1094, 30, 114, '09:57:00.0', '11:01:41.0', '01:04:41.0', NULL, NULL, '2025-02-09 20:32:46', '2025-02-09 20:32:46');
INSERT INTO `tiempos` VALUES (1095, 30, 107, '09:49:00.0', '11:03:30.0', '01:14:30.0', NULL, NULL, '2025-02-09 20:33:07', '2025-02-09 20:33:07');
INSERT INTO `tiempos` VALUES (1096, 30, 108, '09:56:00.0', '11:03:38.0', '01:07:38.0', NULL, NULL, '2025-02-09 20:33:30', '2025-02-09 20:33:30');
INSERT INTO `tiempos` VALUES (1097, 30, 96, '09:51:00.0', '11:03:39.0', '01:12:39.0', NULL, NULL, '2025-02-09 20:33:47', '2025-02-09 20:33:47');
INSERT INTO `tiempos` VALUES (1098, 30, 113, '10:03:00.0', '11:13:19.0', '01:10:19.0', NULL, NULL, '2025-02-09 20:34:08', '2025-02-09 20:34:08');
INSERT INTO `tiempos` VALUES (1099, 30, 110, '09:41:00.0', '11:14:42.0', '01:33:42.0', NULL, NULL, '2025-02-09 20:34:40', '2025-02-09 20:34:40');
INSERT INTO `tiempos` VALUES (1100, 30, 89, '09:58:00.0', '11:14:44.0', '01:16:44.0', NULL, NULL, '2025-02-09 20:35:21', '2025-02-09 20:35:21');
INSERT INTO `tiempos` VALUES (1101, 30, 122, '09:53:00.0', '11:14:55.0', '01:21:55.0', NULL, NULL, '2025-02-09 20:36:11', '2025-02-09 20:36:11');
INSERT INTO `tiempos` VALUES (1102, 30, 94, '09:32:00.0', '11:16:40.0', '01:44:40.0', NULL, NULL, '2025-02-09 20:36:30', '2025-02-09 20:36:30');
INSERT INTO `tiempos` VALUES (1103, 30, 121, '10:01:00.0', '11:20:30.0', '01:19:30.0', NULL, NULL, '2025-02-09 20:37:06', '2025-02-09 20:37:06');
INSERT INTO `tiempos` VALUES (1104, 30, 106, '10:06:00.0', '11:21:38.0', '01:15:38.0', NULL, NULL, '2025-02-09 20:37:34', '2025-02-09 20:37:34');
INSERT INTO `tiempos` VALUES (1105, 30, 91, '09:55:00.0', '11:29:36.0', '01:34:36.0', NULL, NULL, '2025-02-09 20:38:29', '2025-02-09 20:38:29');
INSERT INTO `tiempos` VALUES (1106, 30, 99, '09:59:00.0', '11:29:39.0', '01:30:39.0', NULL, NULL, '2025-02-09 20:38:51', '2025-02-09 20:38:51');
INSERT INTO `tiempos` VALUES (1107, 30, 134, '09:45:00.0', '11:39:55.0', '01:54:55.0', NULL, NULL, '2025-02-09 20:39:21', '2025-02-09 20:39:21');
INSERT INTO `tiempos` VALUES (1108, 30, 109, '00:00:00.0', '11:36:24.0', '11:36:24.0', NULL, NULL, '2025-02-09 20:42:47', '2025-02-09 20:42:47');
INSERT INTO `tiempos` VALUES (1109, 32, 130, '17:00:00.0', '17:16:39.0', '00:16:39.0', NULL, NULL, '2025-02-09 22:17:03', '2025-02-09 22:17:03');
INSERT INTO `tiempos` VALUES (1110, 32, 124, '17:01:00.0', '17:17:37.0', '00:16:37.0', NULL, NULL, '2025-02-09 22:19:52', '2025-02-09 22:19:52');
INSERT INTO `tiempos` VALUES (1111, 32, 116, '17:02:00.0', '17:19:16.0', '00:17:16.0', NULL, NULL, '2025-02-09 22:20:54', '2025-02-09 22:20:54');
INSERT INTO `tiempos` VALUES (1112, 32, 127, '17:03:00.0', '17:21:17.0', '00:18:17.0', NULL, NULL, '2025-02-09 22:22:39', '2025-02-09 22:23:47');
INSERT INTO `tiempos` VALUES (1113, 32, 119, '17:06:00.0', '17:21:50.0', '00:15:50.0', NULL, NULL, '2025-02-09 22:23:15', '2025-02-09 22:23:15');
INSERT INTO `tiempos` VALUES (1114, 32, 138, '17:05:00.0', '17:22:02.0', '00:17:02.0', NULL, NULL, '2025-02-09 22:24:16', '2025-02-09 22:24:43');
INSERT INTO `tiempos` VALUES (1115, 32, 128, '17:04:00.0', '17:24:05.0', '00:20:05.0', NULL, NULL, '2025-02-09 22:25:11', '2025-02-09 22:25:11');
INSERT INTO `tiempos` VALUES (1116, 32, 125, '17:07:00.0', '17:24:15.0', '00:17:15.0', NULL, NULL, '2025-02-09 22:25:42', '2025-02-09 22:25:42');
INSERT INTO `tiempos` VALUES (1117, 32, 132, '17:09:00.0', '17:26:16.0', '00:17:16.0', NULL, NULL, '2025-02-09 22:27:02', '2025-02-09 22:27:02');
INSERT INTO `tiempos` VALUES (1118, 32, 95, '17:08:00.0', '17:26:26.0', '00:18:26.0', NULL, NULL, '2025-02-09 22:27:51', '2025-02-09 22:27:51');
INSERT INTO `tiempos` VALUES (1119, 32, 115, '17:10:00.0', '17:27:17.0', '00:17:17.0', NULL, NULL, '2025-02-09 22:28:28', '2025-02-09 22:28:28');
INSERT INTO `tiempos` VALUES (1120, 32, 84, '17:11:00.0', '17:29:13.0', '00:18:13.0', NULL, NULL, '2025-02-09 22:30:07', '2025-02-09 22:30:07');
INSERT INTO `tiempos` VALUES (1121, 32, 97, '17:12:00.0', '17:29:30.0', '00:17:30.0', NULL, NULL, '2025-02-09 22:30:42', '2025-02-09 22:30:42');
INSERT INTO `tiempos` VALUES (1122, 32, 92, '17:14:00.0', '17:32:08.0', '00:18:08.0', NULL, NULL, '2025-02-09 22:33:08', '2025-02-09 22:33:08');
INSERT INTO `tiempos` VALUES (1123, 32, 100, '17:13:00.0', '17:32:14.0', '00:19:14.0', NULL, NULL, '2025-02-09 22:33:58', '2025-02-09 22:33:58');
INSERT INTO `tiempos` VALUES (1124, 32, 103, '17:15:00.0', '17:33:33.0', '00:18:33.0', NULL, NULL, '2025-02-09 22:35:02', '2025-02-09 22:35:02');
INSERT INTO `tiempos` VALUES (1125, 32, 148, '17:17:00.0', '17:34:34.0', '00:17:34.0', NULL, NULL, '2025-02-09 22:37:39', '2025-02-09 22:37:39');
INSERT INTO `tiempos` VALUES (1126, 32, 120, '17:18:00.0', '17:34:44.0', '00:16:44.0', NULL, NULL, '2025-02-09 22:38:20', '2025-02-09 22:38:20');
INSERT INTO `tiempos` VALUES (1128, 32, 85, '17:19:00.0', '17:37:20.0', '00:18:20.0', NULL, NULL, '2025-02-09 23:33:51', '2025-02-09 23:33:51');
INSERT INTO `tiempos` VALUES (1129, 32, 133, '17:20:00.0', '17:40:07.0', '00:20:07.0', NULL, NULL, '2025-02-09 23:34:20', '2025-02-09 23:34:20');
INSERT INTO `tiempos` VALUES (1130, 32, 94, '17:22:00.0', '17:40:13.0', '00:18:13.0', NULL, NULL, '2025-02-09 23:34:37', '2025-02-09 23:34:37');
INSERT INTO `tiempos` VALUES (1131, 32, 83, '17:21:00.0', '17:40:46.0', '00:19:46.0', NULL, NULL, '2025-02-09 23:34:53', '2025-02-09 23:34:53');
INSERT INTO `tiempos` VALUES (1132, 32, 118, '17:23:00.0', '17:41:33.0', '00:18:33.0', NULL, NULL, '2025-02-09 23:35:44', '2025-02-09 23:35:44');
INSERT INTO `tiempos` VALUES (1133, 32, 136, '17:24:00.0', '17:42:35.0', '00:18:35.0', NULL, NULL, '2025-02-09 23:36:32', '2025-02-09 23:36:32');
INSERT INTO `tiempos` VALUES (1134, 32, 111, '17:25:00.0', '17:43:39.0', '00:18:39.0', NULL, NULL, '2025-02-09 23:36:57', '2025-02-09 23:36:57');
INSERT INTO `tiempos` VALUES (1135, 32, 135, '17:26:00.0', '17:44:44.0', '00:18:44.0', NULL, NULL, '2025-02-09 23:37:28', '2025-02-09 23:37:28');
INSERT INTO `tiempos` VALUES (1136, 32, 117, '17:27:00.0', '17:45:37.0', '00:18:37.0', NULL, NULL, '2025-02-09 23:37:53', '2025-02-09 23:37:53');
INSERT INTO `tiempos` VALUES (1137, 32, 129, '17:28:00.0', '17:47:45.0', '00:19:45.0', NULL, NULL, '2025-02-09 23:38:35', '2025-02-09 23:38:35');
INSERT INTO `tiempos` VALUES (1138, 32, 112, '17:29:00.0', '17:49:04.0', '00:20:04.0', NULL, NULL, '2025-02-09 23:38:52', '2025-02-09 23:38:52');
INSERT INTO `tiempos` VALUES (1139, 32, 110, '17:31:00.0', '17:49:44.0', '00:18:44.0', NULL, NULL, '2025-02-09 23:39:18', '2025-02-09 23:39:18');
INSERT INTO `tiempos` VALUES (1140, 32, 93, '17:30:00.0', '17:49:55.0', '00:19:55.0', NULL, NULL, '2025-02-09 23:39:40', '2025-02-09 23:39:40');
INSERT INTO `tiempos` VALUES (1141, 32, 123, '17:33:00.0', '17:53:09.0', '00:20:09.0', NULL, NULL, '2025-02-09 23:39:56', '2025-02-09 23:39:56');
INSERT INTO `tiempos` VALUES (1142, 32, 134, '17:35:00.0', '17:54:50.0', '00:19:50.0', NULL, NULL, '2025-02-09 23:40:18', '2025-02-09 23:40:18');
INSERT INTO `tiempos` VALUES (1143, 32, 109, '17:34:00.0', '17:55:09.0', '00:21:09.0', NULL, NULL, '2025-02-09 23:40:48', '2025-02-09 23:40:48');
INSERT INTO `tiempos` VALUES (1144, 32, 86, '17:36:00.0', '17:55:19.0', '00:19:19.0', NULL, NULL, '2025-02-09 23:41:05', '2025-02-09 23:41:05');
INSERT INTO `tiempos` VALUES (1145, 32, 90, '17:37:00.0', '17:56:37.0', '00:19:37.0', NULL, NULL, '2025-02-09 23:41:35', '2025-02-09 23:41:35');
INSERT INTO `tiempos` VALUES (1146, 32, 98, '17:40:00.0', '17:58:00.0', '00:18:00.0', NULL, NULL, '2025-02-09 23:41:53', '2025-02-09 23:41:53');
INSERT INTO `tiempos` VALUES (1147, 32, 88, '17:38:00.0', '17:59:13.0', '00:21:13.0', NULL, NULL, '2025-02-09 23:42:13', '2025-02-09 23:42:13');
INSERT INTO `tiempos` VALUES (1148, 32, 107, '17:39:00.0', '18:00:29.0', '00:21:29.0', NULL, NULL, '2025-02-09 23:42:58', '2025-02-09 23:42:58');
INSERT INTO `tiempos` VALUES (1149, 32, 96, '17:41:00.0', '18:01:52.0', '00:20:52.0', NULL, NULL, '2025-02-09 23:43:30', '2025-02-09 23:43:30');
INSERT INTO `tiempos` VALUES (1150, 32, 137, '17:32:00.0', '18:02:08.0', '00:30:08.0', NULL, NULL, '2025-02-09 23:43:57', '2025-02-09 23:43:57');
INSERT INTO `tiempos` VALUES (1151, 32, 122, '17:42:00.0', '18:03:55.0', '00:21:55.0', NULL, NULL, '2025-02-09 23:44:46', '2025-02-09 23:44:46');
INSERT INTO `tiempos` VALUES (1152, 32, 108, '17:45:00.0', '18:05:40.0', '00:20:40.0', NULL, NULL, '2025-02-09 23:45:08', '2025-02-09 23:45:08');
INSERT INTO `tiempos` VALUES (1153, 32, 114, '17:46:00.0', '18:05:41.0', '00:19:41.0', NULL, NULL, '2025-02-09 23:45:29', '2025-02-09 23:45:29');
INSERT INTO `tiempos` VALUES (1154, 32, 91, '17:44:00.0', '18:07:24.0', '00:23:24.0', NULL, NULL, '2025-02-09 23:47:54', '2025-02-09 23:47:54');
INSERT INTO `tiempos` VALUES (1155, 32, 121, '17:50:00.0', '18:11:00.0', '00:21:00.0', NULL, NULL, '2025-02-09 23:48:22', '2025-02-09 23:48:22');
INSERT INTO `tiempos` VALUES (1156, 32, 113, '17:51:00.0', '18:12:04.0', '00:21:04.0', NULL, NULL, '2025-02-09 23:48:44', '2025-02-09 23:48:44');
INSERT INTO `tiempos` VALUES (1157, 32, 89, '17:47:00.0', '18:12:12.0', '00:25:12.0', NULL, NULL, '2025-02-09 23:49:16', '2025-02-09 23:49:16');
INSERT INTO `tiempos` VALUES (1158, 32, 104, '17:49:00.0', '18:13:15.0', '00:24:15.0', NULL, NULL, '2025-02-09 23:49:57', '2025-02-09 23:49:57');
INSERT INTO `tiempos` VALUES (1159, 32, 99, '17:48:00.0', '18:13:31.0', '00:25:31.0', NULL, NULL, '2025-02-09 23:50:14', '2025-02-09 23:50:14');
INSERT INTO `tiempos` VALUES (1160, 32, 145, '17:53:00.0', '18:13:49.0', '00:20:49.0', NULL, NULL, '2025-02-09 23:50:47', '2025-02-09 23:50:47');
INSERT INTO `tiempos` VALUES (1161, 32, 144, '17:54:00.0', '18:15:50.0', '00:21:50.0', NULL, NULL, '2025-02-09 23:51:16', '2025-02-09 23:51:16');
INSERT INTO `tiempos` VALUES (1162, 32, 140, '17:55:00.0', '18:16:04.0', '00:21:04.0', NULL, NULL, '2025-02-09 23:51:36', '2025-02-09 23:51:36');
INSERT INTO `tiempos` VALUES (1163, 32, 106, '17:52:00.0', '18:16:59.0', '00:24:59.0', NULL, NULL, '2025-02-09 23:52:10', '2025-02-09 23:52:10');
INSERT INTO `tiempos` VALUES (1164, 32, 141, '17:56:00.0', '18:19:41.0', '00:23:41.0', NULL, NULL, '2025-02-09 23:52:59', '2025-02-09 23:52:59');
INSERT INTO `tiempos` VALUES (1166, 32, 87, '17:16:00.0', '17:34:24.0', '00:18:24.0', NULL, NULL, '2025-02-09 23:56:37', '2025-02-09 23:56:37');
INSERT INTO `tiempos` VALUES (1167, 36, 77, '10:22:00.0', '10:33:00.0', '00:11:00.0', NULL, NULL, '2025-02-26 05:20:55', '2025-02-26 05:21:39');
INSERT INTO `tiempos` VALUES (1168, 26, 77, '11:22:00.0', '11:55:00.0', '00:33:00.0', NULL, NULL, '2025-02-26 05:21:54', '2025-02-26 05:21:54');

-- ----------------------------
-- Table structure for tripulacions
-- ----------------------------
DROP TABLE IF EXISTS `tripulacions`;
CREATE TABLE `tripulacions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `piloto` bigint UNSIGNED NOT NULL,
  `navegante` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_num` int NOT NULL,
  `foto_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tripulacions_piloto_foreign`(`piloto` ASC) USING BTREE,
  INDEX `tripulacions_navegante_foreign`(`navegante` ASC) USING BTREE,
  INDEX `tripulacions_event_id_foreign`(`event_id` ASC) USING BTREE,
  CONSTRAINT `tripulacions_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tripulacions_navegante_foreign` FOREIGN KEY (`navegante`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tripulacions_piloto_foreign` FOREIGN KEY (`piloto`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tripulacions
-- ----------------------------
INSERT INTO `tripulacions` VALUES (65, 39, 97, 2, 'TIN', 'Mitsubishi', 797, NULL, '2024-12-22 16:52:36', '2024-12-22 16:52:36');
INSERT INTO `tripulacions` VALUES (66, 123, 74, 2, 'TIN', 'Mitsubishi', 708, NULL, '2024-12-22 16:57:56', '2024-12-22 16:57:56');
INSERT INTO `tripulacions` VALUES (67, 125, 145, 2, 'TIL', 'Subaru', 698, NULL, '2024-12-22 16:58:11', '2024-12-22 16:58:11');
INSERT INTO `tripulacions` VALUES (68, 126, 147, 2, 'ST', 'Honda', 401, NULL, '2024-12-22 16:58:30', '2024-12-22 16:58:30');
INSERT INTO `tripulacions` VALUES (69, 127, 127, 2, 'ST', 'Toyota', 492, NULL, '2024-12-22 16:59:17', '2024-12-22 16:59:17');
INSERT INTO `tripulacions` VALUES (70, 128, 148, 2, 'ST', 'Toyota', 319, NULL, '2024-12-22 17:00:22', '2024-12-22 17:00:22');
INSERT INTO `tripulacions` VALUES (71, 129, 149, 2, 'S2000', 'Toyota', 396, NULL, '2024-12-22 17:00:46', '2024-12-22 17:00:46');
INSERT INTO `tripulacions` VALUES (72, 130, 150, 2, 'S2000', 'Toyota', 356, NULL, '2024-12-22 17:01:11', '2024-12-22 17:01:11');
INSERT INTO `tripulacions` VALUES (73, 131, 151, 2, 'S2000', 'Honda', 399, NULL, '2024-12-22 17:01:31', '2024-12-22 17:01:31');
INSERT INTO `tripulacions` VALUES (74, 132, 152, 2, 'S2000', 'Nissan', 397, NULL, '2024-12-22 17:02:04', '2024-12-22 17:02:04');
INSERT INTO `tripulacions` VALUES (75, 133, 153, 2, 'S1600', 'Toyota', 218, NULL, '2024-12-22 17:02:28', '2024-12-22 17:02:28');
INSERT INTO `tripulacions` VALUES (76, 134, 154, 2, 'S1600', 'Toyota', 184, NULL, '2024-12-22 17:03:04', '2024-12-22 17:03:04');
INSERT INTO `tripulacions` VALUES (77, 135, 155, 2, 'S1600', 'Toyota', 209, NULL, '2024-12-22 17:03:16', '2024-12-22 17:03:16');
INSERT INTO `tripulacions` VALUES (78, 136, 156, 2, 'S1600', 'Toyota', 281, NULL, '2024-12-22 17:03:33', '2024-12-22 17:03:33');
INSERT INTO `tripulacions` VALUES (79, 137, 138, 2, 'S1600', 'Toyota', 299, NULL, '2024-12-22 17:04:01', '2024-12-22 17:04:01');
INSERT INTO `tripulacions` VALUES (80, 139, 140, 2, 'JOYNER', 'Joyner', 71, NULL, '2024-12-22 17:04:16', '2024-12-22 17:04:16');
INSERT INTO `tripulacions` VALUES (81, 141, 142, 2, 'JOYNER', 'Joyner', 10, NULL, '2024-12-22 17:04:29', '2024-12-22 17:04:29');
INSERT INTO `tripulacions` VALUES (82, 143, 144, 2, 'PROMO', 'Hyundai', 99, NULL, '2024-12-22 17:05:00', '2024-12-22 17:05:00');
INSERT INTO `tripulacions` VALUES (83, 157, 218, 3, 'SUPER_150cc', 'Moto', 4, NULL, '2025-02-08 05:34:10', '2025-02-08 05:34:10');
INSERT INTO `tripulacions` VALUES (84, 158, 218, 3, 'SUPER_150cc', 'Moto', 1, NULL, '2025-02-08 05:34:57', '2025-02-08 05:34:57');
INSERT INTO `tripulacions` VALUES (85, 159, 218, 3, 'SUPER_150cc', 'Moto', 70, NULL, '2025-02-08 05:36:16', '2025-02-08 05:36:16');
INSERT INTO `tripulacions` VALUES (86, 160, 218, 3, 'SUPER_150cc', 'Moto', 22, NULL, '2025-02-08 05:37:06', '2025-02-08 05:37:06');
INSERT INTO `tripulacions` VALUES (87, 161, 218, 3, 'SUPER_150cc', 'Moto', 17, NULL, '2025-02-08 05:37:28', '2025-02-08 05:37:28');
INSERT INTO `tripulacions` VALUES (88, 162, 218, 3, 'SUPER_150cc', 'Moto', 74, NULL, '2025-02-08 05:37:53', '2025-02-08 05:37:53');
INSERT INTO `tripulacions` VALUES (89, 163, 218, 3, 'SUPER_150cc', 'Moto', 21, NULL, '2025-02-08 05:38:14', '2025-02-08 05:38:14');
INSERT INTO `tripulacions` VALUES (90, 164, 218, 3, 'SUPER_150cc', 'Moto', 11, NULL, '2025-02-08 05:38:48', '2025-02-08 05:38:48');
INSERT INTO `tripulacions` VALUES (91, 165, 218, 3, 'SUPER_150cc', 'Moto', 88, NULL, '2025-02-08 05:39:15', '2025-02-08 05:39:15');
INSERT INTO `tripulacions` VALUES (92, 166, 218, 3, 'SUPER_150cc', 'Moto', 184, NULL, '2025-02-08 05:39:57', '2025-02-08 05:39:57');
INSERT INTO `tripulacions` VALUES (93, 167, 218, 3, 'SUPER_150cc', 'Moto', 425, NULL, '2025-02-08 05:40:36', '2025-02-08 05:40:36');
INSERT INTO `tripulacions` VALUES (94, 168, 218, 3, 'SUPER_150cc', 'Moto', 312, NULL, '2025-02-08 05:41:05', '2025-02-08 05:41:05');
INSERT INTO `tripulacions` VALUES (95, 169, 218, 3, 'SUPER_150cc', 'Moto', 34, NULL, '2025-02-08 05:41:49', '2025-02-08 05:41:49');
INSERT INTO `tripulacions` VALUES (96, 170, 218, 3, 'SUPER_200cc', 'Moto', 7, NULL, '2025-02-08 05:42:31', '2025-02-08 05:42:31');
INSERT INTO `tripulacions` VALUES (97, 171, 218, 3, 'SUPER_200cc', 'Moto', 46, NULL, '2025-02-08 05:43:07', '2025-02-08 05:43:07');
INSERT INTO `tripulacions` VALUES (98, 172, 218, 3, 'SUPER_200cc', 'Moto', 111, NULL, '2025-02-08 05:43:33', '2025-02-08 05:43:33');
INSERT INTO `tripulacions` VALUES (99, 173, 218, 3, 'SUPER_200cc', 'Moto', 697, NULL, '2025-02-08 05:44:07', '2025-02-08 05:44:07');
INSERT INTO `tripulacions` VALUES (100, 174, 218, 3, 'SUPER_200cc', 'Moto', 28, NULL, '2025-02-08 05:44:51', '2025-02-08 05:44:51');
INSERT INTO `tripulacions` VALUES (101, 175, 218, 3, 'SUPER_200cc', 'Moto', 12, NULL, '2025-02-08 05:45:10', '2025-02-08 05:45:10');
INSERT INTO `tripulacions` VALUES (102, 176, 218, 3, 'SUPER_200cc', 'Moto', 626, NULL, '2025-02-08 05:45:39', '2025-02-08 05:45:39');
INSERT INTO `tripulacions` VALUES (103, 177, 218, 3, 'SUPER_200cc', 'Moto', 16, NULL, '2025-02-08 05:46:05', '2025-02-08 05:46:05');
INSERT INTO `tripulacions` VALUES (104, 178, 218, 3, 'SUPER_200cc', 'Moto', 117, NULL, '2025-02-08 05:46:35', '2025-02-08 05:46:35');
INSERT INTO `tripulacions` VALUES (105, 179, 218, 3, 'SUPER_200cc', 'Moto', 71, NULL, '2025-02-08 05:46:59', '2025-02-08 05:46:59');
INSERT INTO `tripulacions` VALUES (106, 180, 218, 3, 'SUPER_200cc', 'Moto', 115, NULL, '2025-02-08 05:47:28', '2025-02-08 05:47:28');
INSERT INTO `tripulacions` VALUES (107, 181, 218, 3, 'SUPER_200cc', 'Moto', 23, NULL, '2025-02-08 05:47:52', '2025-02-08 05:47:52');
INSERT INTO `tripulacions` VALUES (108, 182, 218, 3, 'SUPER_200cc', 'Moto', 98, NULL, '2025-02-08 05:48:21', '2025-02-08 05:48:21');
INSERT INTO `tripulacions` VALUES (109, 183, 218, 3, 'SUPER_200cc', 'Moto', 6, NULL, '2025-02-08 05:48:41', '2025-02-08 05:48:41');
INSERT INTO `tripulacions` VALUES (110, 184, 218, 3, 'SUPER_200cc', 'Moto', 610, NULL, '2025-02-08 05:49:05', '2025-02-08 05:49:05');
INSERT INTO `tripulacions` VALUES (111, 185, 218, 3, 'SUPER_200cc', 'Moto', 2, NULL, '2025-02-08 05:49:36', '2025-02-08 05:49:36');
INSERT INTO `tripulacions` VALUES (112, 186, 218, 3, 'SUPER_200cc', 'Moto', 210, NULL, '2025-02-08 05:50:25', '2025-02-08 05:50:25');
INSERT INTO `tripulacions` VALUES (113, 187, 218, 3, 'SUPER_200cc', 'Moto', 8, NULL, '2025-02-08 05:50:45', '2025-02-08 05:50:45');
INSERT INTO `tripulacions` VALUES (114, 188, 218, 3, 'SUPER_200cc', 'Moto', 78, NULL, '2025-02-08 05:51:07', '2025-02-08 05:51:07');
INSERT INTO `tripulacions` VALUES (115, 189, 218, 3, 'SUPER_200cc', 'Moto', 89, NULL, '2025-02-08 05:51:35', '2025-02-08 05:51:35');
INSERT INTO `tripulacions` VALUES (116, 190, 218, 3, 'SUPER_200cc', 'Moto', 5, NULL, '2025-02-08 05:52:04', '2025-02-08 05:52:04');
INSERT INTO `tripulacions` VALUES (117, 191, 218, 3, 'SUPER_200cc', 'Moto', 99, NULL, '2025-02-08 05:52:27', '2025-02-08 05:52:27');
INSERT INTO `tripulacions` VALUES (118, 192, 218, 3, 'SUPER_250cc', 'Moto', 24, NULL, '2025-02-08 05:52:52', '2025-02-08 05:52:52');
INSERT INTO `tripulacions` VALUES (119, 193, 218, 3, 'SUPER_250cc', 'Moto', 211, NULL, '2025-02-08 05:53:44', '2025-02-08 05:53:44');
INSERT INTO `tripulacions` VALUES (120, 194, 218, 3, 'SUPER_250cc', 'Moto', 13, NULL, '2025-02-08 05:54:37', '2025-02-08 05:54:37');
INSERT INTO `tripulacions` VALUES (121, 195, 218, 3, 'SUPER_250cc', 'Moto', 525, NULL, '2025-02-08 05:54:59', '2025-02-08 05:54:59');
INSERT INTO `tripulacions` VALUES (122, 196, 218, 3, 'SUPER_250cc', 'Moto', 987, NULL, '2025-02-08 05:55:26', '2025-02-08 05:55:26');
INSERT INTO `tripulacions` VALUES (123, 197, 218, 3, 'SUPER_250cc', 'Moto', 895, NULL, '2025-02-08 05:56:07', '2025-02-08 05:56:07');
INSERT INTO `tripulacions` VALUES (124, 198, 218, 3, 'SUPER_250cc', 'Moto', 77, NULL, '2025-02-08 05:56:25', '2025-02-08 05:56:25');
INSERT INTO `tripulacions` VALUES (125, 199, 218, 3, 'SUPER_250cc', 'Moto', 69, NULL, '2025-02-08 05:56:49', '2025-02-08 05:56:49');
INSERT INTO `tripulacions` VALUES (126, 200, 218, 3, 'SUPER_250cc', 'Moto', 169, NULL, '2025-02-08 05:57:18', '2025-02-08 05:57:18');
INSERT INTO `tripulacions` VALUES (127, 201, 218, 3, 'SUPER_250cc', 'Moto', 222, NULL, '2025-02-08 05:57:54', '2025-02-08 05:57:54');
INSERT INTO `tripulacions` VALUES (128, 202, 218, 3, 'SUPER_250cc', 'Moto', 777, NULL, '2025-02-08 05:58:36', '2025-02-08 05:58:36');
INSERT INTO `tripulacions` VALUES (129, 203, 218, 3, 'SUPER_250cc', 'Moto', 125, NULL, '2025-02-08 05:59:03', '2025-02-08 05:59:03');
INSERT INTO `tripulacions` VALUES (130, 204, 218, 3, 'SUPER_250cc', 'Moto', 61, NULL, '2025-02-08 05:59:21', '2025-02-08 05:59:21');
INSERT INTO `tripulacions` VALUES (131, 205, 218, 3, 'SUPER_250cc', 'Moto', 951, NULL, '2025-02-08 05:59:45', '2025-02-08 05:59:45');
INSERT INTO `tripulacions` VALUES (132, 206, 218, 3, 'SUPER_250cc', 'Moto', 96, NULL, '2025-02-08 06:00:23', '2025-02-08 06:00:23');
INSERT INTO `tripulacions` VALUES (133, 207, 218, 3, 'SUPER_250cc', 'Moto', 95, NULL, '2025-02-08 06:00:50', '2025-02-08 06:00:50');
INSERT INTO `tripulacions` VALUES (134, 208, 218, 3, 'SUPER_250cc', 'Moto', 45, NULL, '2025-02-08 06:01:12', '2025-02-08 06:01:12');
INSERT INTO `tripulacions` VALUES (135, 209, 218, 3, 'SUPER_250cc', 'Moto', 310, NULL, '2025-02-08 06:01:34', '2025-02-08 06:01:34');
INSERT INTO `tripulacions` VALUES (136, 210, 218, 3, 'SUPER_250cc', 'Moto', 303, NULL, '2025-02-08 06:01:56', '2025-02-08 06:01:56');
INSERT INTO `tripulacions` VALUES (137, 211, 218, 3, 'SUPER_250cc', 'Moto', 18, NULL, '2025-02-08 06:02:14', '2025-02-08 06:02:14');
INSERT INTO `tripulacions` VALUES (138, 212, 218, 3, 'SUPER_250cc', 'Moto', 14, NULL, '2025-02-08 06:02:47', '2025-02-08 06:02:47');
INSERT INTO `tripulacions` VALUES (139, 213, 218, 3, 'Trimotos', 'Trimoto', 53, NULL, '2025-02-08 06:03:20', '2025-02-08 06:03:20');
INSERT INTO `tripulacions` VALUES (140, 214, 218, 3, 'Trimotos', 'Trimoto', 992, NULL, '2025-02-08 06:03:49', '2025-02-08 06:03:49');
INSERT INTO `tripulacions` VALUES (141, 215, 218, 3, 'Trimotos', 'Trimoto', 311, NULL, '2025-02-08 06:04:21', '2025-02-08 06:04:21');
INSERT INTO `tripulacions` VALUES (142, 216, 218, 3, 'Trimotos', 'Trimoto', 555, NULL, '2025-02-08 06:04:46', '2025-02-08 06:04:46');
INSERT INTO `tripulacions` VALUES (143, 217, 218, 3, 'Trimotos', 'Trimoto', 23, NULL, '2025-02-08 06:05:09', '2025-02-08 06:05:09');
INSERT INTO `tripulacions` VALUES (144, 219, 218, 3, 'Trimotos', 'Trimoto', 9, NULL, '2025-02-08 14:22:49', '2025-02-08 14:22:49');
INSERT INTO `tripulacions` VALUES (145, 220, 218, 3, 'Trimotos', 'Trimoto', 17, NULL, '2025-02-08 14:23:56', '2025-02-08 14:23:56');
INSERT INTO `tripulacions` VALUES (146, 221, 218, 3, 'SUPER_200cc', 'Moto', 811, NULL, '2025-02-08 14:24:41', '2025-02-08 14:24:41');
INSERT INTO `tripulacions` VALUES (147, 222, 218, 3, 'SUPER_150cc', 'Moto', 150, NULL, '2025-02-08 14:27:17', '2025-02-08 14:27:17');
INSERT INTO `tripulacions` VALUES (148, 223, 218, 3, 'SUPER_200cc', 'Moto', 112, NULL, '2025-02-08 14:27:45', '2025-02-08 14:27:45');
INSERT INTO `tripulacions` VALUES (149, 224, 218, 3, 'SUPER_150cc', 'Moto', 20, NULL, '2025-02-08 14:28:14', '2025-02-08 14:28:14');

-- ----------------------------
-- Table structure for ubigeos
-- ----------------------------
DROP TABLE IF EXISTS `ubigeos`;
CREATE TABLE `ubigeos`  (
  `codigo` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('departamento','provincia','distrito') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_dep` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_prov` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_dist` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubigeos
-- ----------------------------
INSERT INTO `ubigeos` VALUES ('010000', 'departamento', '01', '00', '00', 'Amazonas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010100', 'provincia', '01', '01', '00', 'Chachapoyas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010101', 'distrito', '01', '01', '01', 'Chachapoyas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010102', 'distrito', '01', '01', '02', 'Asuncion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010103', 'distrito', '01', '01', '03', 'Balsas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010104', 'distrito', '01', '01', '04', 'Cheto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010105', 'distrito', '01', '01', '05', 'Chiliquin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010106', 'distrito', '01', '01', '06', 'Chuquibamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010107', 'distrito', '01', '01', '07', 'Granada', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010108', 'distrito', '01', '01', '08', 'Huancas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010109', 'distrito', '01', '01', '09', 'La Jalca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010110', 'distrito', '01', '01', '10', 'Leimebamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010111', 'distrito', '01', '01', '11', 'Levanto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010112', 'distrito', '01', '01', '12', 'Magdalena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010113', 'distrito', '01', '01', '13', 'Mariscal Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010114', 'distrito', '01', '01', '14', 'Molinopampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010115', 'distrito', '01', '01', '15', 'Montevideo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010116', 'distrito', '01', '01', '16', 'Olleros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010117', 'distrito', '01', '01', '17', 'Quinjalca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010118', 'distrito', '01', '01', '18', 'San Francisco de Daguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010119', 'distrito', '01', '01', '19', 'San Isidro de Maino', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010120', 'distrito', '01', '01', '20', 'Soloco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010121', 'distrito', '01', '01', '21', 'Sonche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010200', 'provincia', '01', '02', '00', 'Bagua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010201', 'distrito', '01', '02', '01', 'Bagua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010202', 'distrito', '01', '02', '02', 'Aramango', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010203', 'distrito', '01', '02', '03', 'Copallin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010204', 'distrito', '01', '02', '04', 'El Parco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010205', 'distrito', '01', '02', '05', 'Imaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010206', 'distrito', '01', '02', '06', 'La Peca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010300', 'provincia', '01', '03', '00', 'Bongara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010301', 'distrito', '01', '03', '01', 'Jumbilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010302', 'distrito', '01', '03', '02', 'Chisquilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010303', 'distrito', '01', '03', '03', 'Churuja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010304', 'distrito', '01', '03', '04', 'Corosha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010305', 'distrito', '01', '03', '05', 'Cuispes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010306', 'distrito', '01', '03', '06', 'Florida', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010307', 'distrito', '01', '03', '07', 'Jazan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010308', 'distrito', '01', '03', '08', 'Recta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010309', 'distrito', '01', '03', '09', 'San Carlos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010310', 'distrito', '01', '03', '10', 'Shipasbamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010311', 'distrito', '01', '03', '11', 'Valera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010312', 'distrito', '01', '03', '12', 'Yambrasbamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010400', 'provincia', '01', '04', '00', 'Condorcanqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010401', 'distrito', '01', '04', '01', 'Nieva', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010402', 'distrito', '01', '04', '02', 'El Cenepa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010403', 'distrito', '01', '04', '03', 'Rio Santiago', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010500', 'provincia', '01', '05', '00', 'Luya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010501', 'distrito', '01', '05', '01', 'Lamud', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010502', 'distrito', '01', '05', '02', 'Camporredondo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010503', 'distrito', '01', '05', '03', 'Cocabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010504', 'distrito', '01', '05', '04', 'Colcamar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010505', 'distrito', '01', '05', '05', 'Conila', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010506', 'distrito', '01', '05', '06', 'Inguilpata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010507', 'distrito', '01', '05', '07', 'Longuita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010508', 'distrito', '01', '05', '08', 'Lonya Chico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010509', 'distrito', '01', '05', '09', 'Luya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010510', 'distrito', '01', '05', '10', 'Luya Viejo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010511', 'distrito', '01', '05', '11', 'Maria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010512', 'distrito', '01', '05', '12', 'Ocalli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010513', 'distrito', '01', '05', '13', 'Ocumal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010514', 'distrito', '01', '05', '14', 'Pisuquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010515', 'distrito', '01', '05', '15', 'Providencia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010516', 'distrito', '01', '05', '16', 'San Cristobal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010517', 'distrito', '01', '05', '17', 'San Francisco del Yeso', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010518', 'distrito', '01', '05', '18', 'San Jeronimo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010519', 'distrito', '01', '05', '19', 'San Juan de Lopecancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010520', 'distrito', '01', '05', '20', 'Santa Catalina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010521', 'distrito', '01', '05', '21', 'Santo Tomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010522', 'distrito', '01', '05', '22', 'Tingo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010523', 'distrito', '01', '05', '23', 'Trita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010600', 'provincia', '01', '06', '00', 'Rodriguez de Mendoza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010601', 'distrito', '01', '06', '01', 'San Nicolas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010602', 'distrito', '01', '06', '02', 'Chirimoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010603', 'distrito', '01', '06', '03', 'Cochamal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010604', 'distrito', '01', '06', '04', 'Huambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010605', 'distrito', '01', '06', '05', 'Limabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010606', 'distrito', '01', '06', '06', 'Longar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010607', 'distrito', '01', '06', '07', 'Mariscal Benavides', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010608', 'distrito', '01', '06', '08', 'Milpuc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010609', 'distrito', '01', '06', '09', 'Omia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010610', 'distrito', '01', '06', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010611', 'distrito', '01', '06', '11', 'Totora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010612', 'distrito', '01', '06', '12', 'Vista Alegre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010700', 'provincia', '01', '07', '00', 'Utcubamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010701', 'distrito', '01', '07', '01', 'Bagua Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010702', 'distrito', '01', '07', '02', 'Cajaruro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010703', 'distrito', '01', '07', '03', 'Cumba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010704', 'distrito', '01', '07', '04', 'El Milagro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010705', 'distrito', '01', '07', '05', 'Jamalca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010706', 'distrito', '01', '07', '06', 'Lonya Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('010707', 'distrito', '01', '07', '07', 'Yamon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020000', 'departamento', '02', '00', '00', 'Ancash', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020100', 'provincia', '02', '01', '00', 'Huaraz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020101', 'distrito', '02', '01', '01', 'Huaraz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020102', 'distrito', '02', '01', '02', 'Cochabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020103', 'distrito', '02', '01', '03', 'Colcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020104', 'distrito', '02', '01', '04', 'Huanchay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020105', 'distrito', '02', '01', '05', 'Icod_dependencia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020106', 'distrito', '02', '01', '06', 'Jangas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020107', 'distrito', '02', '01', '07', 'La Libertad', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020108', 'distrito', '02', '01', '08', 'Olleros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020109', 'distrito', '02', '01', '09', 'Pampas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020110', 'distrito', '02', '01', '10', 'Pariacoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020111', 'distrito', '02', '01', '11', 'Pira', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020112', 'distrito', '02', '01', '12', 'Tarica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020200', 'provincia', '02', '02', '00', 'Aija', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020201', 'distrito', '02', '02', '01', 'Aija', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020202', 'distrito', '02', '02', '02', 'Coris', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020203', 'distrito', '02', '02', '03', 'Huacllan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020204', 'distrito', '02', '02', '04', 'La Merced', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020205', 'distrito', '02', '02', '05', 'Succha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020300', 'provincia', '02', '03', '00', 'Antonio Raymondi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020301', 'distrito', '02', '03', '01', 'Llamellin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020302', 'distrito', '02', '03', '02', 'Aczo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020303', 'distrito', '02', '03', '03', 'Chaccho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020304', 'distrito', '02', '03', '04', 'Chingas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020305', 'distrito', '02', '03', '05', 'Mirgas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020306', 'distrito', '02', '03', '06', 'San Juan de Rontoy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020400', 'provincia', '02', '04', '00', 'Asuncion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020401', 'distrito', '02', '04', '01', 'Chacas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020402', 'distrito', '02', '04', '02', 'Acochaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020500', 'provincia', '02', '05', '00', 'Bolognesi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020501', 'distrito', '02', '05', '01', 'Chiquian', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020502', 'distrito', '02', '05', '02', 'Abelardo Pardo Lezameta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020503', 'distrito', '02', '05', '03', 'Antonio Raymondi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020504', 'distrito', '02', '05', '04', 'Aquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020505', 'distrito', '02', '05', '05', 'Cajacay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020506', 'distrito', '02', '05', '06', 'Canis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020507', 'distrito', '02', '05', '07', 'Colquioc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020508', 'distrito', '02', '05', '08', 'Huallanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020509', 'distrito', '02', '05', '09', 'Huasta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020510', 'distrito', '02', '05', '10', 'Huayllacayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020511', 'distrito', '02', '05', '11', 'La Primavera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020512', 'distrito', '02', '05', '12', 'Mangas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020513', 'distrito', '02', '05', '13', 'Pacllon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020514', 'distrito', '02', '05', '14', 'San Miguel de Corpanqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020515', 'distrito', '02', '05', '15', 'Ticllos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020600', 'provincia', '02', '06', '00', 'Carhuaz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020601', 'distrito', '02', '06', '01', 'Carhuaz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020602', 'distrito', '02', '06', '02', 'Acopampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020603', 'distrito', '02', '06', '03', 'Amashca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020604', 'distrito', '02', '06', '04', 'Anta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020605', 'distrito', '02', '06', '05', 'Ataquero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020606', 'distrito', '02', '06', '06', 'Marcara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020607', 'distrito', '02', '06', '07', 'Pariahuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020608', 'distrito', '02', '06', '08', 'San Miguel de Aco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020609', 'distrito', '02', '06', '09', 'Shilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020610', 'distrito', '02', '06', '10', 'Tinco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020611', 'distrito', '02', '06', '11', 'Yungar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020700', 'provincia', '02', '07', '00', 'Carlos Fermin Fitzca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020701', 'distrito', '02', '07', '01', 'San Luis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020702', 'distrito', '02', '07', '02', 'San Nicolas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020703', 'distrito', '02', '07', '03', 'Yauya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020800', 'provincia', '02', '08', '00', 'Casma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020801', 'distrito', '02', '08', '01', 'Casma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020802', 'distrito', '02', '08', '02', 'Buena Vista Alta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020803', 'distrito', '02', '08', '03', 'Comandante Noel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020804', 'distrito', '02', '08', '04', 'Yautan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020900', 'provincia', '02', '09', '00', 'Corongo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020901', 'distrito', '02', '09', '01', 'Corongo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020902', 'distrito', '02', '09', '02', 'Aco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020903', 'distrito', '02', '09', '03', 'Bambas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020904', 'distrito', '02', '09', '04', 'Cusca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020905', 'distrito', '02', '09', '05', 'La Pampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020906', 'distrito', '02', '09', '06', 'Yanac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('020907', 'distrito', '02', '09', '07', 'Yupan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021000', 'provincia', '02', '10', '00', 'Huari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021001', 'distrito', '02', '10', '01', 'Huari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021002', 'distrito', '02', '10', '02', 'Anra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021003', 'distrito', '02', '10', '03', 'Cajay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021004', 'distrito', '02', '10', '04', 'Chavin de Huantar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021005', 'distrito', '02', '10', '05', 'Huacachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021006', 'distrito', '02', '10', '06', 'Huacchis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021007', 'distrito', '02', '10', '07', 'Huachis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021008', 'distrito', '02', '10', '08', 'Huantar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021009', 'distrito', '02', '10', '09', 'Masin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021010', 'distrito', '02', '10', '10', 'Paucas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021011', 'distrito', '02', '10', '11', 'Ponto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021012', 'distrito', '02', '10', '12', 'Rahuapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021013', 'distrito', '02', '10', '13', 'Rapayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021014', 'distrito', '02', '10', '14', 'San Marcos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021015', 'distrito', '02', '10', '15', 'San Pedro de Chana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021016', 'distrito', '02', '10', '16', 'Uco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021100', 'provincia', '02', '11', '00', 'Huarmey', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021101', 'distrito', '02', '11', '01', 'Huarmey', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021102', 'distrito', '02', '11', '02', 'Cochapeti', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021103', 'distrito', '02', '11', '03', 'Culebras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021104', 'distrito', '02', '11', '04', 'Huayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021105', 'distrito', '02', '11', '05', 'Malvas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021200', 'provincia', '02', '12', '00', 'Huaylas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021201', 'distrito', '02', '12', '01', 'Caraz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021202', 'distrito', '02', '12', '02', 'Huallanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021203', 'distrito', '02', '12', '03', 'Huata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021204', 'distrito', '02', '12', '04', 'Huaylas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021205', 'distrito', '02', '12', '05', 'Mato', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021206', 'distrito', '02', '12', '06', 'Pamparomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021207', 'distrito', '02', '12', '07', 'Pueblo Libre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021208', 'distrito', '02', '12', '08', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021209', 'distrito', '02', '12', '09', 'Santo Toribio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021210', 'distrito', '02', '12', '10', 'Yuracmarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021300', 'provincia', '02', '13', '00', 'Mariscal Luzuriaga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021301', 'distrito', '02', '13', '01', 'Piscobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021302', 'distrito', '02', '13', '02', 'Casca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021303', 'distrito', '02', '13', '03', 'Eleazar Guzman Barron', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021304', 'distrito', '02', '13', '04', 'Fidel Olivas Escudero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021305', 'distrito', '02', '13', '05', 'Llama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021306', 'distrito', '02', '13', '06', 'Llumpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021307', 'distrito', '02', '13', '07', 'Lucma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021308', 'distrito', '02', '13', '08', 'Musga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021400', 'provincia', '02', '14', '00', 'Ocros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021401', 'distrito', '02', '14', '01', 'Ocros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021402', 'distrito', '02', '14', '02', 'Acas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021403', 'distrito', '02', '14', '03', 'Cajamarquilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021404', 'distrito', '02', '14', '04', 'Carhuapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021405', 'distrito', '02', '14', '05', 'Cochas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021406', 'distrito', '02', '14', '06', 'Congas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021407', 'distrito', '02', '14', '07', 'Llipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021408', 'distrito', '02', '14', '08', 'San Cristobal de Rajan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021409', 'distrito', '02', '14', '09', 'San Pedro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021410', 'distrito', '02', '14', '10', 'Santiago de Chilcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021500', 'provincia', '02', '15', '00', 'Pallasca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021501', 'distrito', '02', '15', '01', 'Cabana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021502', 'distrito', '02', '15', '02', 'Bolognesi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021503', 'distrito', '02', '15', '03', 'Conchucos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021504', 'distrito', '02', '15', '04', 'Huacaschuque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021505', 'distrito', '02', '15', '05', 'Huandoval', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021506', 'distrito', '02', '15', '06', 'Lacabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021507', 'distrito', '02', '15', '07', 'Llapo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021508', 'distrito', '02', '15', '08', 'Pallasca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021509', 'distrito', '02', '15', '09', 'Pampas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021510', 'distrito', '02', '15', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021511', 'distrito', '02', '15', '11', 'Tauca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021600', 'provincia', '02', '16', '00', 'Pomabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021601', 'distrito', '02', '16', '01', 'Pomabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021602', 'distrito', '02', '16', '02', 'Huayllan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021603', 'distrito', '02', '16', '03', 'Parobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021604', 'distrito', '02', '16', '04', 'Quinuabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021700', 'provincia', '02', '17', '00', 'Recuay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021701', 'distrito', '02', '17', '01', 'Recuay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021702', 'distrito', '02', '17', '02', 'Catac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021703', 'distrito', '02', '17', '03', 'Cotaparaco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021704', 'distrito', '02', '17', '04', 'Huayllapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021705', 'distrito', '02', '17', '05', 'Llacllin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021706', 'distrito', '02', '17', '06', 'Marca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021707', 'distrito', '02', '17', '07', 'Pampas Chico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021708', 'distrito', '02', '17', '08', 'Pararin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021709', 'distrito', '02', '17', '09', 'Tapacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021710', 'distrito', '02', '17', '10', 'Ticapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021800', 'provincia', '02', '18', '00', 'Santa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021801', 'distrito', '02', '18', '01', 'Chimbote', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021802', 'distrito', '02', '18', '02', 'Caceres del Peru', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021803', 'distrito', '02', '18', '03', 'Coishco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021804', 'distrito', '02', '18', '04', 'Macate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021805', 'distrito', '02', '18', '05', 'Moro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021806', 'distrito', '02', '18', '06', 'Nepeña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021807', 'distrito', '02', '18', '07', 'Samanco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021808', 'distrito', '02', '18', '08', 'Santa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021809', 'distrito', '02', '18', '09', 'Nuevo Chimbote', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021900', 'provincia', '02', '19', '00', 'Sihuas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021901', 'distrito', '02', '19', '01', 'Sihuas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021902', 'distrito', '02', '19', '02', 'Acobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021903', 'distrito', '02', '19', '03', 'Alfonso Ugarte', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021904', 'distrito', '02', '19', '04', 'Cashapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021905', 'distrito', '02', '19', '05', 'Chingalpo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021906', 'distrito', '02', '19', '06', 'Huayllabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021907', 'distrito', '02', '19', '07', 'Quiches', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021908', 'distrito', '02', '19', '08', 'Ragash', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021909', 'distrito', '02', '19', '09', 'San Juan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('021910', 'distrito', '02', '19', '10', 'Sicsibamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022000', 'provincia', '02', '20', '00', 'Yungay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022001', 'distrito', '02', '20', '01', 'Yungay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022002', 'distrito', '02', '20', '02', 'Cascapara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022003', 'distrito', '02', '20', '03', 'Mancos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022004', 'distrito', '02', '20', '04', 'Matacoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022005', 'distrito', '02', '20', '05', 'Quillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022006', 'distrito', '02', '20', '06', 'Ranrahirca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022007', 'distrito', '02', '20', '07', 'Shupluy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('022008', 'distrito', '02', '20', '08', 'Yanama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030000', 'departamento', '03', '00', '00', 'Apurimac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030100', 'provincia', '03', '01', '00', 'Abancay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030101', 'distrito', '03', '01', '01', 'Abancay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030102', 'distrito', '03', '01', '02', 'Chacoche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030103', 'distrito', '03', '01', '03', 'Circa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030104', 'distrito', '03', '01', '04', 'Curahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030105', 'distrito', '03', '01', '05', 'Huanipaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030106', 'distrito', '03', '01', '06', 'Lambrama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030107', 'distrito', '03', '01', '07', 'Pichirhua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030108', 'distrito', '03', '01', '08', 'San Pedro de Cachora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030109', 'distrito', '03', '01', '09', 'Tamburco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030200', 'provincia', '03', '02', '00', 'Andahuaylas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030201', 'distrito', '03', '02', '01', 'Andahuaylas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030202', 'distrito', '03', '02', '02', 'Andarapa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030203', 'distrito', '03', '02', '03', 'Chiara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030204', 'distrito', '03', '02', '04', 'Huancarama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030205', 'distrito', '03', '02', '05', 'Huancaray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030206', 'distrito', '03', '02', '06', 'Huayana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030207', 'distrito', '03', '02', '07', 'Kishuara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030208', 'distrito', '03', '02', '08', 'Pacobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030209', 'distrito', '03', '02', '09', 'Pacucha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030210', 'distrito', '03', '02', '10', 'Pampachiri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030211', 'distrito', '03', '02', '11', 'Pomacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030212', 'distrito', '03', '02', '12', 'San Antonio de Cachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030213', 'distrito', '03', '02', '13', 'San Jeronimo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030214', 'distrito', '03', '02', '14', 'San Miguel de Chaccrampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030215', 'distrito', '03', '02', '15', 'Santa Maria de Chicmo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030216', 'distrito', '03', '02', '16', 'Talavera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030217', 'distrito', '03', '02', '17', 'Tumay Huaraca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030218', 'distrito', '03', '02', '18', 'Turpo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030219', 'distrito', '03', '02', '19', 'Kaquiabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030220', 'distrito', '03', '02', '20', 'José María Arguedas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030300', 'provincia', '03', '03', '00', 'Antabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030301', 'distrito', '03', '03', '01', 'Antabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030302', 'distrito', '03', '03', '02', 'El Oro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030303', 'distrito', '03', '03', '03', 'Huaquirca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030304', 'distrito', '03', '03', '04', 'Juan Espinoza Medrano', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030305', 'distrito', '03', '03', '05', 'Oropesa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030306', 'distrito', '03', '03', '06', 'Pachaconas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030307', 'distrito', '03', '03', '07', 'Sabaino', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030400', 'provincia', '03', '04', '00', 'Aymaraes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030401', 'distrito', '03', '04', '01', 'Chalhuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030402', 'distrito', '03', '04', '02', 'Capaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030403', 'distrito', '03', '04', '03', 'Caraybamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030404', 'distrito', '03', '04', '04', 'Chapimarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030405', 'distrito', '03', '04', '05', 'Colcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030406', 'distrito', '03', '04', '06', 'Cotaruse', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030407', 'distrito', '03', '04', '07', 'Huayllo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030408', 'distrito', '03', '04', '08', 'Justo Apu Sahuaraura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030409', 'distrito', '03', '04', '09', 'Lucre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030410', 'distrito', '03', '04', '10', 'Pocohuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030411', 'distrito', '03', '04', '11', 'San Juan de Chacña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030412', 'distrito', '03', '04', '12', 'Sañayca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030413', 'distrito', '03', '04', '13', 'Soraya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030414', 'distrito', '03', '04', '14', 'Tapairihua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030415', 'distrito', '03', '04', '15', 'Tintay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030416', 'distrito', '03', '04', '16', 'Toraya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030417', 'distrito', '03', '04', '17', 'Yanaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030500', 'provincia', '03', '05', '00', 'Cotabambas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030501', 'distrito', '03', '05', '01', 'Tambobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030502', 'distrito', '03', '05', '02', 'Cotabambas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030503', 'distrito', '03', '05', '03', 'Coyllurqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030504', 'distrito', '03', '05', '04', 'Haquira', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030505', 'distrito', '03', '05', '05', 'Mara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030506', 'distrito', '03', '05', '06', 'Challhuahuacho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030600', 'provincia', '03', '06', '00', 'Chincheros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030601', 'distrito', '03', '06', '01', 'Chincheros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030602', 'distrito', '03', '06', '02', 'Anco_Huallo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030603', 'distrito', '03', '06', '03', 'Cocharcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030604', 'distrito', '03', '06', '04', 'Huaccana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030605', 'distrito', '03', '06', '05', 'Ocobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030606', 'distrito', '03', '06', '06', 'Ongoy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030607', 'distrito', '03', '06', '07', 'Uranmarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030608', 'distrito', '03', '06', '08', 'Ranracancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030609', 'distrito', '03', '06', '09', 'Rocchacc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030610', 'distrito', '03', '06', '10', 'El Porvenir', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030611', 'distrito', '03', '06', '11', 'Los Chankas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030700', 'provincia', '03', '07', '00', 'Grau', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030701', 'distrito', '03', '07', '01', 'Chuquibambilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030702', 'distrito', '03', '07', '02', 'Curpahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030703', 'distrito', '03', '07', '03', 'Gamarra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030704', 'distrito', '03', '07', '04', 'Huayllati', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030705', 'distrito', '03', '07', '05', 'Mamara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030706', 'distrito', '03', '07', '06', 'Micaela Bastidas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030707', 'distrito', '03', '07', '07', 'Pataypampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030708', 'distrito', '03', '07', '08', 'Progreso', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030709', 'distrito', '03', '07', '09', 'San Antonio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030710', 'distrito', '03', '07', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030711', 'distrito', '03', '07', '11', 'Turpay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030712', 'distrito', '03', '07', '12', 'Vilcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030713', 'distrito', '03', '07', '13', 'Virundo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('030714', 'distrito', '03', '07', '14', 'Curasco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040000', 'departamento', '04', '00', '00', 'Arequipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040100', 'provincia', '04', '01', '00', 'Arequipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040101', 'distrito', '04', '01', '01', 'Arequipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040102', 'distrito', '04', '01', '02', 'Alto Selva Alegre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040103', 'distrito', '04', '01', '03', 'Cayma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040104', 'distrito', '04', '01', '04', 'Cerro Colorado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040105', 'distrito', '04', '01', '05', 'Characato', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040106', 'distrito', '04', '01', '06', 'Chiguata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040107', 'distrito', '04', '01', '07', 'Jacobo Hunter', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040108', 'distrito', '04', '01', '08', 'La Joya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040109', 'distrito', '04', '01', '09', 'Mariano Melgar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040110', 'distrito', '04', '01', '10', 'Miraflores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040111', 'distrito', '04', '01', '11', 'Mollebaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040112', 'distrito', '04', '01', '12', 'Paucarpata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040113', 'distrito', '04', '01', '13', 'Pocsi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040114', 'distrito', '04', '01', '14', 'Polobaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040115', 'distrito', '04', '01', '15', 'Quequeña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040116', 'distrito', '04', '01', '16', 'Sabandia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040117', 'distrito', '04', '01', '17', 'Sachaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040118', 'distrito', '04', '01', '18', 'San Juan de Siguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040119', 'distrito', '04', '01', '19', 'San Juan de Tarucani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040120', 'distrito', '04', '01', '20', 'Santa Isabel de Siguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040121', 'distrito', '04', '01', '21', 'Santa Rita de Siguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040122', 'distrito', '04', '01', '22', 'Socabaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040123', 'distrito', '04', '01', '23', 'Tiabaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040124', 'distrito', '04', '01', '24', 'Uchumayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040125', 'distrito', '04', '01', '25', 'Vitor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040126', 'distrito', '04', '01', '26', 'Yanahuara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040127', 'distrito', '04', '01', '27', 'Yarabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040128', 'distrito', '04', '01', '28', 'Yura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040129', 'distrito', '04', '01', '29', 'Jose Luis Bustamante y Rivero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040200', 'provincia', '04', '02', '00', 'Camana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040201', 'distrito', '04', '02', '01', 'Camana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040202', 'distrito', '04', '02', '02', 'Jose Maria Quimper', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040203', 'distrito', '04', '02', '03', 'Mariano Nicolas Valcarcel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040204', 'distrito', '04', '02', '04', 'Mariscal Caceres', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040205', 'distrito', '04', '02', '05', 'Nicolas de Pierola', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040206', 'distrito', '04', '02', '06', 'Ocoña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040207', 'distrito', '04', '02', '07', 'Quilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040208', 'distrito', '04', '02', '08', 'Samuel Pastor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040300', 'provincia', '04', '03', '00', 'Caraveli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040301', 'distrito', '04', '03', '01', 'Caraveli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040302', 'distrito', '04', '03', '02', 'Acari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040303', 'distrito', '04', '03', '03', 'Atico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040304', 'distrito', '04', '03', '04', 'Atiquipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040305', 'distrito', '04', '03', '05', 'Bella Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040306', 'distrito', '04', '03', '06', 'Cahuacho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040307', 'distrito', '04', '03', '07', 'Chala', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040308', 'distrito', '04', '03', '08', 'Chaparra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040309', 'distrito', '04', '03', '09', 'Huanuhuanu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040310', 'distrito', '04', '03', '10', 'Jaqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040311', 'distrito', '04', '03', '11', 'Lomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040312', 'distrito', '04', '03', '12', 'Quicacha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040313', 'distrito', '04', '03', '13', 'Yauca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040400', 'provincia', '04', '04', '00', 'Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040401', 'distrito', '04', '04', '01', 'Aplao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040402', 'distrito', '04', '04', '02', 'Andagua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040403', 'distrito', '04', '04', '03', 'Ayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040404', 'distrito', '04', '04', '04', 'Chachas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040405', 'distrito', '04', '04', '05', 'Chilcaymarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040406', 'distrito', '04', '04', '06', 'Choco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040407', 'distrito', '04', '04', '07', 'Huancarqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040408', 'distrito', '04', '04', '08', 'Machaguay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040409', 'distrito', '04', '04', '09', 'Orcopampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040410', 'distrito', '04', '04', '10', 'Pampacolca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040411', 'distrito', '04', '04', '11', 'Tipan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040412', 'distrito', '04', '04', '12', 'Uñon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040413', 'distrito', '04', '04', '13', 'Uraca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040414', 'distrito', '04', '04', '14', 'Viraco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040500', 'provincia', '04', '05', '00', 'Caylloma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040501', 'distrito', '04', '05', '01', 'Chivay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040502', 'distrito', '04', '05', '02', 'Achoma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040503', 'distrito', '04', '05', '03', 'Cabanaconde', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040504', 'distrito', '04', '05', '04', 'Callalli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040505', 'distrito', '04', '05', '05', 'Caylloma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040506', 'distrito', '04', '05', '06', 'Coporaque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040507', 'distrito', '04', '05', '07', 'Huambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040508', 'distrito', '04', '05', '08', 'Huanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040509', 'distrito', '04', '05', '09', 'Ichupampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040510', 'distrito', '04', '05', '10', 'Lari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040511', 'distrito', '04', '05', '11', 'Lluta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040512', 'distrito', '04', '05', '12', 'Maca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040513', 'distrito', '04', '05', '13', 'Madrigal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040514', 'distrito', '04', '05', '14', 'San Antonio de Chuca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040515', 'distrito', '04', '05', '15', 'Sibayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040516', 'distrito', '04', '05', '16', 'Tapay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040517', 'distrito', '04', '05', '17', 'Tisco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040518', 'distrito', '04', '05', '18', 'Tuti', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040519', 'distrito', '04', '05', '19', 'Yanque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040520', 'distrito', '04', '05', '20', 'Majes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040600', 'provincia', '04', '06', '00', 'Condesuyos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040601', 'distrito', '04', '06', '01', 'Chuquibamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040602', 'distrito', '04', '06', '02', 'Andaray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040603', 'distrito', '04', '06', '03', 'Cayarani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040604', 'distrito', '04', '06', '04', 'Chichas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040605', 'distrito', '04', '06', '05', 'Iray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040606', 'distrito', '04', '06', '06', 'Rio Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040607', 'distrito', '04', '06', '07', 'Salamanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040608', 'distrito', '04', '06', '08', 'Yanaquihua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040700', 'provincia', '04', '07', '00', 'Islay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040701', 'distrito', '04', '07', '01', 'Mollendo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040702', 'distrito', '04', '07', '02', 'Cocachacra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040703', 'distrito', '04', '07', '03', 'Dean Valdivia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040704', 'distrito', '04', '07', '04', 'Islay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040705', 'distrito', '04', '07', '05', 'Mejia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040706', 'distrito', '04', '07', '06', 'Punta de Bombon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040800', 'provincia', '04', '08', '00', 'La Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040801', 'distrito', '04', '08', '01', 'Cotahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040802', 'distrito', '04', '08', '02', 'Alca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040803', 'distrito', '04', '08', '03', 'Charcana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040804', 'distrito', '04', '08', '04', 'Huaynacotas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040805', 'distrito', '04', '08', '05', 'Pampamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040806', 'distrito', '04', '08', '06', 'Puyca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040807', 'distrito', '04', '08', '07', 'Quechualla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040808', 'distrito', '04', '08', '08', 'Sayla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040809', 'distrito', '04', '08', '09', 'Tauria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040810', 'distrito', '04', '08', '10', 'Tomepampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('040811', 'distrito', '04', '08', '11', 'Toro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050000', 'departamento', '05', '00', '00', 'Ayacucho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050100', 'provincia', '05', '01', '00', 'Huamanga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050101', 'distrito', '05', '01', '01', 'Ayacucho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050102', 'distrito', '05', '01', '02', 'Acocro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050103', 'distrito', '05', '01', '03', 'Acos Vinchos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050104', 'distrito', '05', '01', '04', 'Carmen Alto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050105', 'distrito', '05', '01', '05', 'Chiara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050106', 'distrito', '05', '01', '06', 'Ocros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050107', 'distrito', '05', '01', '07', 'Pacaycasa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050108', 'distrito', '05', '01', '08', 'Quinua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050109', 'distrito', '05', '01', '09', 'San Jose de Ticllas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050110', 'distrito', '05', '01', '10', 'San Juan Bautista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050111', 'distrito', '05', '01', '11', 'Santiago de Pischa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050112', 'distrito', '05', '01', '12', 'Socos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050113', 'distrito', '05', '01', '13', 'Tambillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050114', 'distrito', '05', '01', '14', 'Vinchos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050115', 'distrito', '05', '01', '15', 'Jesus Nazareno', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050116', 'distrito', '05', '01', '16', 'Andrés Avelino Cáceres Dorregaray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050200', 'provincia', '05', '02', '00', 'Cangallo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050201', 'distrito', '05', '02', '01', 'Cangallo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050202', 'distrito', '05', '02', '02', 'Chuschi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050203', 'distrito', '05', '02', '03', 'Los Morochucos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050204', 'distrito', '05', '02', '04', 'Maria Parado de Bellido', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050205', 'distrito', '05', '02', '05', 'Paras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050206', 'distrito', '05', '02', '06', 'Totos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050300', 'provincia', '05', '03', '00', 'Huanca Sancos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050301', 'distrito', '05', '03', '01', 'Sancos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050302', 'distrito', '05', '03', '02', 'Carapo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050303', 'distrito', '05', '03', '03', 'Sacsamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050304', 'distrito', '05', '03', '04', 'Santiago de Lucanamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050400', 'provincia', '05', '04', '00', 'Huanta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050401', 'distrito', '05', '04', '01', 'Huanta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050402', 'distrito', '05', '04', '02', 'Ayahuanco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050403', 'distrito', '05', '04', '03', 'Huamanguilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050404', 'distrito', '05', '04', '04', 'Iguain', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050405', 'distrito', '05', '04', '05', 'Luricocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050406', 'distrito', '05', '04', '06', 'Santillana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050407', 'distrito', '05', '04', '07', 'Sivia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050408', 'distrito', '05', '04', '08', 'Llochegua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050409', 'distrito', '05', '04', '09', 'Canayre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050410', 'distrito', '05', '04', '10', 'Uchuraccay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050411', 'distrito', '05', '04', '11', 'Pucacolpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050412', 'distrito', '05', '04', '12', 'Chaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050500', 'provincia', '05', '05', '00', 'La Mar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050501', 'distrito', '05', '05', '01', 'San Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050502', 'distrito', '05', '05', '02', 'Anco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050503', 'distrito', '05', '05', '03', 'Ayna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050504', 'distrito', '05', '05', '04', 'Chilcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050505', 'distrito', '05', '05', '05', 'Chungui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050506', 'distrito', '05', '05', '06', 'Luis Carranza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050507', 'distrito', '05', '05', '07', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050508', 'distrito', '05', '05', '08', 'Tambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050509', 'distrito', '05', '05', '09', 'Samugari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050510', 'distrito', '05', '05', '10', 'Anchihuay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050511', 'distrito', '05', '05', '11', 'Oronccoy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050600', 'provincia', '05', '06', '00', 'Lucanas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050601', 'distrito', '05', '06', '01', 'Puquio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050602', 'distrito', '05', '06', '02', 'Aucara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050603', 'distrito', '05', '06', '03', 'Cabana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050604', 'distrito', '05', '06', '04', 'Carmen Salcedo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050605', 'distrito', '05', '06', '05', 'Chaviña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050606', 'distrito', '05', '06', '06', 'Chipao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050607', 'distrito', '05', '06', '07', 'Huac-Huas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050608', 'distrito', '05', '06', '08', 'Laramate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050609', 'distrito', '05', '06', '09', 'Leoncio Prado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050610', 'distrito', '05', '06', '10', 'Llauta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050611', 'distrito', '05', '06', '11', 'Lucanas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050612', 'distrito', '05', '06', '12', 'Ocaña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050613', 'distrito', '05', '06', '13', 'Otoca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050614', 'distrito', '05', '06', '14', 'Saisa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050615', 'distrito', '05', '06', '15', 'San Cristobal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050616', 'distrito', '05', '06', '16', 'San Juan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050617', 'distrito', '05', '06', '17', 'San Pedro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050618', 'distrito', '05', '06', '18', 'San Pedro de Palco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050619', 'distrito', '05', '06', '19', 'Sancos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050620', 'distrito', '05', '06', '20', 'Santa Ana de Huaycahuacho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050621', 'distrito', '05', '06', '21', 'Santa Lucia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050700', 'provincia', '05', '07', '00', 'Parinacochas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050701', 'distrito', '05', '07', '01', 'Coracora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050702', 'distrito', '05', '07', '02', 'Chumpi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050703', 'distrito', '05', '07', '03', 'Coronel Castañeda', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050704', 'distrito', '05', '07', '04', 'Pacapausa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050705', 'distrito', '05', '07', '05', 'Pullo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050706', 'distrito', '05', '07', '06', 'Puyusca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050707', 'distrito', '05', '07', '07', 'San Francisco de Ravacayco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050708', 'distrito', '05', '07', '08', 'Upahuacho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050800', 'provincia', '05', '08', '00', 'Paucar del Sara Sara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050801', 'distrito', '05', '08', '01', 'Pausa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050802', 'distrito', '05', '08', '02', 'Colta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050803', 'distrito', '05', '08', '03', 'Corculla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050804', 'distrito', '05', '08', '04', 'Lampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050805', 'distrito', '05', '08', '05', 'Marcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050806', 'distrito', '05', '08', '06', 'Oyolo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050807', 'distrito', '05', '08', '07', 'Pararca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050808', 'distrito', '05', '08', '08', 'San Javier de Alpabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050809', 'distrito', '05', '08', '09', 'San Jose de Ushua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050810', 'distrito', '05', '08', '10', 'Sara Sara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050900', 'provincia', '05', '09', '00', 'Sucre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050901', 'distrito', '05', '09', '01', 'Querobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050902', 'distrito', '05', '09', '02', 'Belen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050903', 'distrito', '05', '09', '03', 'Chalcos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050904', 'distrito', '05', '09', '04', 'Chilcayoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050905', 'distrito', '05', '09', '05', 'Huacaña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050906', 'distrito', '05', '09', '06', 'Morcolla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050907', 'distrito', '05', '09', '07', 'Paico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050908', 'distrito', '05', '09', '08', 'San Pedro de Larcay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050909', 'distrito', '05', '09', '09', 'San Salvador de Quije', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050910', 'distrito', '05', '09', '10', 'Santiago de Paucaray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('050911', 'distrito', '05', '09', '11', 'Soras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051000', 'provincia', '05', '10', '00', 'Victor Fajardo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051001', 'distrito', '05', '10', '01', 'Huancapi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051002', 'distrito', '05', '10', '02', 'Alcamenca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051003', 'distrito', '05', '10', '03', 'Apongo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051004', 'distrito', '05', '10', '04', 'Asquipata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051005', 'distrito', '05', '10', '05', 'Canaria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051006', 'distrito', '05', '10', '06', 'Cayara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051007', 'distrito', '05', '10', '07', 'Colca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051008', 'distrito', '05', '10', '08', 'Huamanquiquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051009', 'distrito', '05', '10', '09', 'Huancaraylla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051010', 'distrito', '05', '10', '10', 'Huaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051011', 'distrito', '05', '10', '11', 'Sarhua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051012', 'distrito', '05', '10', '12', 'Vilcanchos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051100', 'provincia', '05', '11', '00', 'Vilcas Huaman', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051101', 'distrito', '05', '11', '01', 'Vilcas Huaman', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051102', 'distrito', '05', '11', '02', 'Accomarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051103', 'distrito', '05', '11', '03', 'Carhuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051104', 'distrito', '05', '11', '04', 'Concepcion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051105', 'distrito', '05', '11', '05', 'Huambalpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051106', 'distrito', '05', '11', '06', 'Icod_dependencia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051107', 'distrito', '05', '11', '07', 'Saurama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('051108', 'distrito', '05', '11', '08', 'Vischongo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060000', 'departamento', '06', '00', '00', 'Cajamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060100', 'provincia', '06', '01', '00', 'Cajamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060101', 'distrito', '06', '01', '01', 'Cajamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060102', 'distrito', '06', '01', '02', 'Asuncion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060103', 'distrito', '06', '01', '03', 'Chetilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060104', 'distrito', '06', '01', '04', 'Cospan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060105', 'distrito', '06', '01', '05', 'Encañada', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060106', 'distrito', '06', '01', '06', 'Jesus', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060107', 'distrito', '06', '01', '07', 'Llacanora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060108', 'distrito', '06', '01', '08', 'Los Baños del Inca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060109', 'distrito', '06', '01', '09', 'Magdalena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060110', 'distrito', '06', '01', '10', 'Matara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060111', 'distrito', '06', '01', '11', 'Namora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060112', 'distrito', '06', '01', '12', 'San Juan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060200', 'provincia', '06', '02', '00', 'Cajabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060201', 'distrito', '06', '02', '01', 'Cajabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060202', 'distrito', '06', '02', '02', 'Cachachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060203', 'distrito', '06', '02', '03', 'Condebamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060204', 'distrito', '06', '02', '04', 'Sitacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060300', 'provincia', '06', '03', '00', 'Celendin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060301', 'distrito', '06', '03', '01', 'Celendin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060302', 'distrito', '06', '03', '02', 'Chumuch', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060303', 'distrito', '06', '03', '03', 'Cortegana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060304', 'distrito', '06', '03', '04', 'Huasmin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060305', 'distrito', '06', '03', '05', 'Jorge Chavez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060306', 'distrito', '06', '03', '06', 'Jose Galvez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060307', 'distrito', '06', '03', '07', 'Miguel Iglesias', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060308', 'distrito', '06', '03', '08', 'Oxamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060309', 'distrito', '06', '03', '09', 'Sorochuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060310', 'distrito', '06', '03', '10', 'Sucre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060311', 'distrito', '06', '03', '11', 'Utco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060312', 'distrito', '06', '03', '12', 'La Libertad de Pallan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060400', 'provincia', '06', '04', '00', 'Chota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060401', 'distrito', '06', '04', '01', 'Chota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060402', 'distrito', '06', '04', '02', 'Anguia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060403', 'distrito', '06', '04', '03', 'Chadin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060404', 'distrito', '06', '04', '04', 'Chiguirip', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060405', 'distrito', '06', '04', '05', 'Chimban', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060406', 'distrito', '06', '04', '06', 'Choropampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060407', 'distrito', '06', '04', '07', 'Cochabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060408', 'distrito', '06', '04', '08', 'Conchan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060409', 'distrito', '06', '04', '09', 'Huambos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060410', 'distrito', '06', '04', '10', 'Lajas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060411', 'distrito', '06', '04', '11', 'Llama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060412', 'distrito', '06', '04', '12', 'Miracosta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060413', 'distrito', '06', '04', '13', 'Paccha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060414', 'distrito', '06', '04', '14', 'Pion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060415', 'distrito', '06', '04', '15', 'Querocoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060416', 'distrito', '06', '04', '16', 'San Juan de Licupis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060417', 'distrito', '06', '04', '17', 'Tacabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060418', 'distrito', '06', '04', '18', 'Tocmoche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060419', 'distrito', '06', '04', '19', 'Chalamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060500', 'provincia', '06', '05', '00', 'Contumaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060501', 'distrito', '06', '05', '01', 'Contumaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060502', 'distrito', '06', '05', '02', 'Chilete', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060503', 'distrito', '06', '05', '03', 'Cupisnique', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060504', 'distrito', '06', '05', '04', 'Guzmango', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060505', 'distrito', '06', '05', '05', 'San Benito', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060506', 'distrito', '06', '05', '06', 'Santa Cruz de Toled', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060507', 'distrito', '06', '05', '07', 'Tantarica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060508', 'distrito', '06', '05', '08', 'Yonan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060600', 'provincia', '06', '06', '00', 'Cutervo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060601', 'distrito', '06', '06', '01', 'Cutervo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060602', 'distrito', '06', '06', '02', 'Callayuc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060603', 'distrito', '06', '06', '03', 'Choros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060604', 'distrito', '06', '06', '04', 'Cujillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060605', 'distrito', '06', '06', '05', 'La Ramada', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060606', 'distrito', '06', '06', '06', 'Pimpingos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060607', 'distrito', '06', '06', '07', 'Querocotillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060608', 'distrito', '06', '06', '08', 'San Andres de Cutervo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060609', 'distrito', '06', '06', '09', 'San Juan de Cutervo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060610', 'distrito', '06', '06', '10', 'San Luis de Lucma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060611', 'distrito', '06', '06', '11', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060612', 'distrito', '06', '06', '12', 'Santo Domingo de La Capilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060613', 'distrito', '06', '06', '13', 'Santo Tomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060614', 'distrito', '06', '06', '14', 'Socota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060615', 'distrito', '06', '06', '15', 'Toribio Casanova', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060700', 'provincia', '06', '07', '00', 'Hualgayoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060701', 'distrito', '06', '07', '01', 'Bambamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060702', 'distrito', '06', '07', '02', 'Chugur', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060703', 'distrito', '06', '07', '03', 'Hualgayoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060800', 'provincia', '06', '08', '00', 'Jaen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060801', 'distrito', '06', '08', '01', 'Jaen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060802', 'distrito', '06', '08', '02', 'Bellavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060803', 'distrito', '06', '08', '03', 'Chontali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060804', 'distrito', '06', '08', '04', 'Colasay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060805', 'distrito', '06', '08', '05', 'Huabal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060806', 'distrito', '06', '08', '06', 'Las Pirias', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060807', 'distrito', '06', '08', '07', 'Pomahuaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060808', 'distrito', '06', '08', '08', 'Pucara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060809', 'distrito', '06', '08', '09', 'Sallique', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060810', 'distrito', '06', '08', '10', 'San Felipe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060811', 'distrito', '06', '08', '11', 'San Jose del Alto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060812', 'distrito', '06', '08', '12', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060900', 'provincia', '06', '09', '00', 'San Ignacio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060901', 'distrito', '06', '09', '01', 'San Ignacio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060902', 'distrito', '06', '09', '02', 'Chirinos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060903', 'distrito', '06', '09', '03', 'Huarango', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060904', 'distrito', '06', '09', '04', 'La Coipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060905', 'distrito', '06', '09', '05', 'Namballe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060906', 'distrito', '06', '09', '06', 'San Jose de Lourdes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('060907', 'distrito', '06', '09', '07', 'Tabaconas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061000', 'provincia', '06', '10', '00', 'San Marcos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061001', 'distrito', '06', '10', '01', 'Pedro Galvez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061002', 'distrito', '06', '10', '02', 'Chancay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061003', 'distrito', '06', '10', '03', 'Eduardo Villanueva', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061004', 'distrito', '06', '10', '04', 'Gregorio Pita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061005', 'distrito', '06', '10', '05', 'Ichocan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061006', 'distrito', '06', '10', '06', 'Jose Manuel Quiroz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061007', 'distrito', '06', '10', '07', 'Jose Sabogal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061100', 'provincia', '06', '11', '00', 'San Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061101', 'distrito', '06', '11', '01', 'San Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061102', 'distrito', '06', '11', '02', 'Bolivar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061103', 'distrito', '06', '11', '03', 'Calquis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061104', 'distrito', '06', '11', '04', 'Catilluc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061105', 'distrito', '06', '11', '05', 'El Prado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061106', 'distrito', '06', '11', '06', 'La Florida', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061107', 'distrito', '06', '11', '07', 'Llapa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061108', 'distrito', '06', '11', '08', 'Nanchoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061109', 'distrito', '06', '11', '09', 'Niepos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061110', 'distrito', '06', '11', '10', 'San Gregorio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061111', 'distrito', '06', '11', '11', 'San Silvestre de Cochan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061112', 'distrito', '06', '11', '12', 'Tongod', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061113', 'distrito', '06', '11', '13', 'Union Agua Blanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061200', 'provincia', '06', '12', '00', 'San Pablo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061201', 'distrito', '06', '12', '01', 'San Pablo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061202', 'distrito', '06', '12', '02', 'San Bernardino', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061203', 'distrito', '06', '12', '03', 'San Luis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061204', 'distrito', '06', '12', '04', 'Tumbaden', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061300', 'provincia', '06', '13', '00', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061301', 'distrito', '06', '13', '01', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061302', 'distrito', '06', '13', '02', 'Andabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061303', 'distrito', '06', '13', '03', 'Catache', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061304', 'distrito', '06', '13', '04', 'Chancaybaños', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061305', 'distrito', '06', '13', '05', 'La Esperanza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061306', 'distrito', '06', '13', '06', 'Ninabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061307', 'distrito', '06', '13', '07', 'Pulan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061308', 'distrito', '06', '13', '08', 'Saucepampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061309', 'distrito', '06', '13', '09', 'Sexi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061310', 'distrito', '06', '13', '10', 'Uticyacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('061311', 'distrito', '06', '13', '11', 'Yauyucan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070000', 'departamento', '07', '00', '00', 'Callao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070100', 'provincia', '07', '01', '00', 'Callao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070101', 'distrito', '07', '01', '01', 'Callao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070102', 'distrito', '07', '01', '02', 'Bellavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070103', 'distrito', '07', '01', '03', 'Carmen de La Legua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070104', 'distrito', '07', '01', '04', 'La Perla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070105', 'distrito', '07', '01', '05', 'La Punta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070106', 'distrito', '07', '01', '06', 'Ventanilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('070107', 'distrito', '07', '01', '07', 'Mi Peru', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080000', 'departamento', '08', '00', '00', 'Cusco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080100', 'provincia', '08', '01', '00', 'Cusco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080101', 'distrito', '08', '01', '01', 'Cusco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080102', 'distrito', '08', '01', '02', 'Ccorca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080103', 'distrito', '08', '01', '03', 'Poroy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080104', 'distrito', '08', '01', '04', 'San Jeronimo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080105', 'distrito', '08', '01', '05', 'San Sebastian', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080106', 'distrito', '08', '01', '06', 'Santiago', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080107', 'distrito', '08', '01', '07', 'Saylla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080108', 'distrito', '08', '01', '08', 'Wanchaq', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080200', 'provincia', '08', '02', '00', 'Acomayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080201', 'distrito', '08', '02', '01', 'Acomayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080202', 'distrito', '08', '02', '02', 'Acopia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080203', 'distrito', '08', '02', '03', 'Acos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080204', 'distrito', '08', '02', '04', 'Mosoc Llacta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080205', 'distrito', '08', '02', '05', 'Pomacanchi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080206', 'distrito', '08', '02', '06', 'Rondocan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080207', 'distrito', '08', '02', '07', 'Sangarara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080300', 'provincia', '08', '03', '00', 'Anta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080301', 'distrito', '08', '03', '01', 'Anta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080302', 'distrito', '08', '03', '02', 'Ancahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080303', 'distrito', '08', '03', '03', 'Cachimayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080304', 'distrito', '08', '03', '04', 'Chinchaypujio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080305', 'distrito', '08', '03', '05', 'Huarocondo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080306', 'distrito', '08', '03', '06', 'Limatambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080307', 'distrito', '08', '03', '07', 'Mollepata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080308', 'distrito', '08', '03', '08', 'Pucyura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080309', 'distrito', '08', '03', '09', 'Zurite', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080400', 'provincia', '08', '04', '00', 'Calca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080401', 'distrito', '08', '04', '01', 'Calca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080402', 'distrito', '08', '04', '02', 'Coya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080403', 'distrito', '08', '04', '03', 'Lamay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080404', 'distrito', '08', '04', '04', 'Lares', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080405', 'distrito', '08', '04', '05', 'Pisac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080406', 'distrito', '08', '04', '06', 'San Salvador', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080407', 'distrito', '08', '04', '07', 'Taray', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080408', 'distrito', '08', '04', '08', 'Yanatile', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080500', 'provincia', '08', '05', '00', 'Canas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080501', 'distrito', '08', '05', '01', 'Yanaoca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080502', 'distrito', '08', '05', '02', 'Checca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080503', 'distrito', '08', '05', '03', 'Kunturkanki', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080504', 'distrito', '08', '05', '04', 'Langui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080505', 'distrito', '08', '05', '05', 'Layo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080506', 'distrito', '08', '05', '06', 'Pampamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080507', 'distrito', '08', '05', '07', 'Quehue', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080508', 'distrito', '08', '05', '08', 'Tupac Amaru', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080600', 'provincia', '08', '06', '00', 'Canchis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080601', 'distrito', '08', '06', '01', 'Sicuani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080602', 'distrito', '08', '06', '02', 'Checacupe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080603', 'distrito', '08', '06', '03', 'Combapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080604', 'distrito', '08', '06', '04', 'Marangani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080605', 'distrito', '08', '06', '05', 'Pitumarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080606', 'distrito', '08', '06', '06', 'San Pablo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080607', 'distrito', '08', '06', '07', 'San Pedro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080608', 'distrito', '08', '06', '08', 'Tinta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080700', 'provincia', '08', '07', '00', 'Chumbivilcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080701', 'distrito', '08', '07', '01', 'Santo Tomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080702', 'distrito', '08', '07', '02', 'Capacmarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080703', 'distrito', '08', '07', '03', 'Chamaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080704', 'distrito', '08', '07', '04', 'Colquemarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080705', 'distrito', '08', '07', '05', 'Livitaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080706', 'distrito', '08', '07', '06', 'Llusco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080707', 'distrito', '08', '07', '07', 'Quiñota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080708', 'distrito', '08', '07', '08', 'Velille', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080800', 'provincia', '08', '08', '00', 'Espinar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080801', 'distrito', '08', '08', '01', 'Espinar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080802', 'distrito', '08', '08', '02', 'Condoroma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080803', 'distrito', '08', '08', '03', 'Coporaque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080804', 'distrito', '08', '08', '04', 'Ocoruro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080805', 'distrito', '08', '08', '05', 'Pallpata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080806', 'distrito', '08', '08', '06', 'Pichigua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080807', 'distrito', '08', '08', '07', 'Suyckutambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080808', 'distrito', '08', '08', '08', 'Alto Pichigua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080900', 'provincia', '08', '09', '00', 'La Convencion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080901', 'distrito', '08', '09', '01', 'Santa Ana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080902', 'distrito', '08', '09', '02', 'Echarate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080903', 'distrito', '08', '09', '03', 'Huayopata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080904', 'distrito', '08', '09', '04', 'Maranura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080905', 'distrito', '08', '09', '05', 'Ocobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080906', 'distrito', '08', '09', '06', 'Quellouno', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080907', 'distrito', '08', '09', '07', 'Kimbiri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080908', 'distrito', '08', '09', '08', 'Santa Teresa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080909', 'distrito', '08', '09', '09', 'Vilcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080910', 'distrito', '08', '09', '10', 'Pichari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080911', 'distrito', '08', '09', '11', 'Inkawasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080912', 'distrito', '08', '09', '12', 'Villa Virgen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080913', 'distrito', '08', '09', '13', 'Villa Kintiarina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('080914', 'distrito', '08', '09', '14', 'Megantoni', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081000', 'provincia', '08', '10', '00', 'Paruro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081001', 'distrito', '08', '10', '01', 'Paruro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081002', 'distrito', '08', '10', '02', 'Accha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081003', 'distrito', '08', '10', '03', 'Ccapi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081004', 'distrito', '08', '10', '04', 'Colcha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081005', 'distrito', '08', '10', '05', 'Huanoquite', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081006', 'distrito', '08', '10', '06', 'Omacha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081007', 'distrito', '08', '10', '07', 'Paccaritambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081008', 'distrito', '08', '10', '08', 'Pillpinto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081009', 'distrito', '08', '10', '09', 'Yaurisque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081100', 'provincia', '08', '11', '00', 'Paucartambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081101', 'distrito', '08', '11', '01', 'Paucartambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081102', 'distrito', '08', '11', '02', 'Caicay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081103', 'distrito', '08', '11', '03', 'Challabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081104', 'distrito', '08', '11', '04', 'Colquepata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081105', 'distrito', '08', '11', '05', 'Huancarani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081106', 'distrito', '08', '11', '06', 'Kosñipata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081200', 'provincia', '08', '12', '00', 'Quispicanchi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081201', 'distrito', '08', '12', '01', 'Urcos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081202', 'distrito', '08', '12', '02', 'Andahuaylillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081203', 'distrito', '08', '12', '03', 'Camanti', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081204', 'distrito', '08', '12', '04', 'Ccarhuayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081205', 'distrito', '08', '12', '05', 'Ccatca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081206', 'distrito', '08', '12', '06', 'Cusipata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081207', 'distrito', '08', '12', '07', 'Huaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081208', 'distrito', '08', '12', '08', 'Lucre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081209', 'distrito', '08', '12', '09', 'Marcapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081210', 'distrito', '08', '12', '10', 'Ocongate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081211', 'distrito', '08', '12', '11', 'Oropesa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081212', 'distrito', '08', '12', '12', 'Quiquijana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081300', 'provincia', '08', '13', '00', 'Urubamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081301', 'distrito', '08', '13', '01', 'Urubamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081302', 'distrito', '08', '13', '02', 'Chinchero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081303', 'distrito', '08', '13', '03', 'Huayllabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081304', 'distrito', '08', '13', '04', 'Machupicchu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081305', 'distrito', '08', '13', '05', 'Maras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081306', 'distrito', '08', '13', '06', 'Ollantaytambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('081307', 'distrito', '08', '13', '07', 'Yucay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090000', 'departamento', '09', '00', '00', 'Huancavelica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090100', 'provincia', '09', '01', '00', 'Huancavelica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090101', 'distrito', '09', '01', '01', 'Huancavelica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090102', 'distrito', '09', '01', '02', 'Acobambilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090103', 'distrito', '09', '01', '03', 'Acoria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090104', 'distrito', '09', '01', '04', 'Conayca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090105', 'distrito', '09', '01', '05', 'Cuenca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090106', 'distrito', '09', '01', '06', 'Huachocolpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090107', 'distrito', '09', '01', '07', 'Huayllahuara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090108', 'distrito', '09', '01', '08', 'Izcuchaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090109', 'distrito', '09', '01', '09', 'Laria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090110', 'distrito', '09', '01', '10', 'Manta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090111', 'distrito', '09', '01', '11', 'Mariscal Caceres', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090112', 'distrito', '09', '01', '12', 'Moya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090113', 'distrito', '09', '01', '13', 'Nuevo Occoro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090114', 'distrito', '09', '01', '14', 'Palca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090115', 'distrito', '09', '01', '15', 'Pilchaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090116', 'distrito', '09', '01', '16', 'Vilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090117', 'distrito', '09', '01', '17', 'Yauli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090118', 'distrito', '09', '01', '18', 'Ascension', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090119', 'distrito', '09', '01', '19', 'Huando', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090200', 'provincia', '09', '02', '00', 'Acobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090201', 'distrito', '09', '02', '01', 'Acobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090202', 'distrito', '09', '02', '02', 'Andabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090203', 'distrito', '09', '02', '03', 'Anta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090204', 'distrito', '09', '02', '04', 'Caja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090205', 'distrito', '09', '02', '05', 'Marcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090206', 'distrito', '09', '02', '06', 'Paucara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090207', 'distrito', '09', '02', '07', 'Pomacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090208', 'distrito', '09', '02', '08', 'Rosario', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090300', 'provincia', '09', '03', '00', 'Angaraes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090301', 'distrito', '09', '03', '01', 'Lircay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090302', 'distrito', '09', '03', '02', 'Anchonga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090303', 'distrito', '09', '03', '03', 'Callanmarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090304', 'distrito', '09', '03', '04', 'Ccochaccasa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090305', 'distrito', '09', '03', '05', 'Chincho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090306', 'distrito', '09', '03', '06', 'Congalla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090307', 'distrito', '09', '03', '07', 'Huanca-Huanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090308', 'distrito', '09', '03', '08', 'Huayllay Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090309', 'distrito', '09', '03', '09', 'Julcamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090310', 'distrito', '09', '03', '10', 'San Antonio de Antaparco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090311', 'distrito', '09', '03', '11', 'Santo Tomas de Pata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090312', 'distrito', '09', '03', '12', 'Secclla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090400', 'provincia', '09', '04', '00', 'Castrovirreyna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090401', 'distrito', '09', '04', '01', 'Castrovirreyna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090402', 'distrito', '09', '04', '02', 'Arma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090403', 'distrito', '09', '04', '03', 'Aurahua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090404', 'distrito', '09', '04', '04', 'Capillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090405', 'distrito', '09', '04', '05', 'Chupamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090406', 'distrito', '09', '04', '06', 'Cocas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090407', 'distrito', '09', '04', '07', 'Huachos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090408', 'distrito', '09', '04', '08', 'Huamatambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090409', 'distrito', '09', '04', '09', 'Mollepampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090410', 'distrito', '09', '04', '10', 'San Juan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090411', 'distrito', '09', '04', '11', 'Santa Ana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090412', 'distrito', '09', '04', '12', 'Tantara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090413', 'distrito', '09', '04', '13', 'Ticrapo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090500', 'provincia', '09', '05', '00', 'Churcampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090501', 'distrito', '09', '05', '01', 'Churcampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090502', 'distrito', '09', '05', '02', 'Anco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090503', 'distrito', '09', '05', '03', 'Chinchihuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090504', 'distrito', '09', '05', '04', 'El Carmen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090505', 'distrito', '09', '05', '05', 'La Merced', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090506', 'distrito', '09', '05', '06', 'Locroja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090507', 'distrito', '09', '05', '07', 'Paucarbamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090508', 'distrito', '09', '05', '08', 'San Miguel de Mayocc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090509', 'distrito', '09', '05', '09', 'San Pedro de Coris', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090510', 'distrito', '09', '05', '10', 'Pachamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090511', 'distrito', '09', '05', '11', 'Cosme', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090600', 'provincia', '09', '06', '00', 'Huaytara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090601', 'distrito', '09', '06', '01', 'Huaytara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090602', 'distrito', '09', '06', '02', 'Ayavi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090603', 'distrito', '09', '06', '03', 'Cordova', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090604', 'distrito', '09', '06', '04', 'Huayacundo Arma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090605', 'distrito', '09', '06', '05', 'Laramarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090606', 'distrito', '09', '06', '06', 'Ocoyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090607', 'distrito', '09', '06', '07', 'Pilpichaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090608', 'distrito', '09', '06', '08', 'Querco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090609', 'distrito', '09', '06', '09', 'Quito-Arma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090610', 'distrito', '09', '06', '10', 'San Antonio de Cusicancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090611', 'distrito', '09', '06', '11', 'San Francisco de Sangayaico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090612', 'distrito', '09', '06', '12', 'San Isidro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090613', 'distrito', '09', '06', '13', 'Santiago de Chocorvos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090614', 'distrito', '09', '06', '14', 'Santiago de Quirahuara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090615', 'distrito', '09', '06', '15', 'Santo Domingo de Capillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090616', 'distrito', '09', '06', '16', 'Tambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090700', 'provincia', '09', '07', '00', 'Tayacaja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090701', 'distrito', '09', '07', '01', 'Pampas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090702', 'distrito', '09', '07', '02', 'Acostambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090703', 'distrito', '09', '07', '03', 'Acraquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090704', 'distrito', '09', '07', '04', 'Ahuaycha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090705', 'distrito', '09', '07', '05', 'Colcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090706', 'distrito', '09', '07', '06', 'Daniel Hernandez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090707', 'distrito', '09', '07', '07', 'Huachocolpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090709', 'distrito', '09', '07', '09', 'Huaribamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090710', 'distrito', '09', '07', '10', 'Ñahuimpuquio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090711', 'distrito', '09', '07', '11', 'Pazos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090713', 'distrito', '09', '07', '13', 'Quishuar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090714', 'distrito', '09', '07', '14', 'Salcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090715', 'distrito', '09', '07', '15', 'Salcahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090716', 'distrito', '09', '07', '16', 'San Marcos de Rocchac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090717', 'distrito', '09', '07', '17', 'Surcubamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090718', 'distrito', '09', '07', '18', 'Tintay Puncu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090719', 'distrito', '09', '07', '19', 'Quichuas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090720', 'distrito', '09', '07', '20', 'Andaymarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090721', 'distrito', '09', '07', '21', 'Roble', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090722', 'distrito', '09', '07', '22', 'Pichos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('090723', 'distrito', '09', '07', '23', 'Santiago de Túcuma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100000', 'departamento', '10', '00', '00', 'Huanuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100100', 'provincia', '10', '01', '00', 'Huanuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100101', 'distrito', '10', '01', '01', 'Huanuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100102', 'distrito', '10', '01', '02', 'Amarilis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100103', 'distrito', '10', '01', '03', 'Chinchao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100104', 'distrito', '10', '01', '04', 'Churubamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100105', 'distrito', '10', '01', '05', 'Margos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100106', 'distrito', '10', '01', '06', 'Quisqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100107', 'distrito', '10', '01', '07', 'San Francisco de Cayran', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100108', 'distrito', '10', '01', '08', 'San Pedro de Chaulan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100109', 'distrito', '10', '01', '09', 'Santa Maria del Valle', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100110', 'distrito', '10', '01', '10', 'Yarumayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100111', 'distrito', '10', '01', '11', 'Pillco Marca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100112', 'distrito', '10', '01', '12', 'Yacus', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100113', 'distrito', '10', '01', '13', 'San Pablo de Pillao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100200', 'provincia', '10', '02', '00', 'Ambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100201', 'distrito', '10', '02', '01', 'Ambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100202', 'distrito', '10', '02', '02', 'Cayna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100203', 'distrito', '10', '02', '03', 'Colpas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100204', 'distrito', '10', '02', '04', 'Conchamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100205', 'distrito', '10', '02', '05', 'Huacar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100206', 'distrito', '10', '02', '06', 'San Francisco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100207', 'distrito', '10', '02', '07', 'San Rafael', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100208', 'distrito', '10', '02', '08', 'Tomay Kichwa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100300', 'provincia', '10', '03', '00', 'Dos de Mayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100301', 'distrito', '10', '03', '01', 'La Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100307', 'distrito', '10', '03', '07', 'Chuquis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100311', 'distrito', '10', '03', '11', 'Marias', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100313', 'distrito', '10', '03', '13', 'Pachas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100316', 'distrito', '10', '03', '16', 'Quivilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100317', 'distrito', '10', '03', '17', 'Ripan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100321', 'distrito', '10', '03', '21', 'Shunqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100322', 'distrito', '10', '03', '22', 'Sillapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100323', 'distrito', '10', '03', '23', 'Yanas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100400', 'provincia', '10', '04', '00', 'Huacaybamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100401', 'distrito', '10', '04', '01', 'Huacaybamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100402', 'distrito', '10', '04', '02', 'Canchabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100403', 'distrito', '10', '04', '03', 'Cochabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100404', 'distrito', '10', '04', '04', 'Pinra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100500', 'provincia', '10', '05', '00', 'Huamalies', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100501', 'distrito', '10', '05', '01', 'Llata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100502', 'distrito', '10', '05', '02', 'Arancay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100503', 'distrito', '10', '05', '03', 'Chavin de Pariarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100504', 'distrito', '10', '05', '04', 'Jacas Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100505', 'distrito', '10', '05', '05', 'Jircan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100506', 'distrito', '10', '05', '06', 'Miraflores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100507', 'distrito', '10', '05', '07', 'Monzon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100508', 'distrito', '10', '05', '08', 'Punchao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100509', 'distrito', '10', '05', '09', 'Puños', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100510', 'distrito', '10', '05', '10', 'Singa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100511', 'distrito', '10', '05', '11', 'Tantamayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100600', 'provincia', '10', '06', '00', 'Leoncio Prado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100601', 'distrito', '10', '06', '01', 'Rupa-Rupa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100602', 'distrito', '10', '06', '02', 'Daniel Alomias Robles', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100603', 'distrito', '10', '06', '03', 'Hermilio Valdizan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100604', 'distrito', '10', '06', '04', 'Jose Crespo y Castillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100605', 'distrito', '10', '06', '05', 'Luyando', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100606', 'distrito', '10', '06', '06', 'Mariano Damaso Beraun', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100607', 'distrito', '10', '06', '07', 'Pucayacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100608', 'distrito', '10', '06', '08', 'Castillo Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100609', 'distrito', '10', '06', '09', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100610', 'distrito', '10', '06', '10', 'Santo Domingo de Anda', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100700', 'provincia', '10', '07', '00', 'Marañon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100701', 'distrito', '10', '07', '01', 'Huacrachuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100702', 'distrito', '10', '07', '02', 'Cholon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100703', 'distrito', '10', '07', '03', 'San Buenaventura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100704', 'distrito', '10', '07', '04', 'La Morada', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100705', 'distrito', '10', '07', '05', 'Santa Rosa de Alto Yanajanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100800', 'provincia', '10', '08', '00', 'Pachitea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100801', 'distrito', '10', '08', '01', 'Panao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100802', 'distrito', '10', '08', '02', 'Chaglla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100803', 'distrito', '10', '08', '03', 'Molino', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100804', 'distrito', '10', '08', '04', 'Umari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100900', 'provincia', '10', '09', '00', 'Puerto Inca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100901', 'distrito', '10', '09', '01', 'Puerto Inca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100902', 'distrito', '10', '09', '02', 'Codo del Pozuzo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100903', 'distrito', '10', '09', '03', 'Honoria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100904', 'distrito', '10', '09', '04', 'Tournavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('100905', 'distrito', '10', '09', '05', 'Yuyapichis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101000', 'provincia', '10', '10', '00', 'Lauricocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101001', 'distrito', '10', '10', '01', 'Jesus', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101002', 'distrito', '10', '10', '02', 'Baños', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101003', 'distrito', '10', '10', '03', 'Jivia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101004', 'distrito', '10', '10', '04', 'Queropalca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101005', 'distrito', '10', '10', '05', 'Rondos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101006', 'distrito', '10', '10', '06', 'San Francisco de Asis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101007', 'distrito', '10', '10', '07', 'San Miguel de Cauri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101100', 'provincia', '10', '11', '00', 'Yarowilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101101', 'distrito', '10', '11', '01', 'Chavinillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101102', 'distrito', '10', '11', '02', 'Cahuac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101103', 'distrito', '10', '11', '03', 'Chacabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101104', 'distrito', '10', '11', '04', 'Aparicio Pomares', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101105', 'distrito', '10', '11', '05', 'Jacas Chico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101106', 'distrito', '10', '11', '06', 'Obas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101107', 'distrito', '10', '11', '07', 'Pampamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('101108', 'distrito', '10', '11', '08', 'Choras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110000', 'departamento', '11', '00', '00', 'Ica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110100', 'provincia', '11', '01', '00', 'Ica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110101', 'distrito', '11', '01', '01', 'Ica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110102', 'distrito', '11', '01', '02', 'La Tinguiña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110103', 'distrito', '11', '01', '03', 'Los Aquijes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110104', 'distrito', '11', '01', '04', 'Ocucaje', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110105', 'distrito', '11', '01', '05', 'Pachacutec', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110106', 'distrito', '11', '01', '06', 'Parcona', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110107', 'distrito', '11', '01', '07', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110108', 'distrito', '11', '01', '08', 'Salas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110109', 'distrito', '11', '01', '09', 'San Jose de los Molinos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110110', 'distrito', '11', '01', '10', 'San Juan Bautista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110111', 'distrito', '11', '01', '11', 'Santiago', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110112', 'distrito', '11', '01', '12', 'Subtanjalla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110113', 'distrito', '11', '01', '13', 'Tate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110114', 'distrito', '11', '01', '14', 'Yauca del Rosario', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110200', 'provincia', '11', '02', '00', 'Chincha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110201', 'distrito', '11', '02', '01', 'Chincha Alta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110202', 'distrito', '11', '02', '02', 'Alto Laran', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110203', 'distrito', '11', '02', '03', 'Chavin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110204', 'distrito', '11', '02', '04', 'Chincha Baja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110205', 'distrito', '11', '02', '05', 'El Carmen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110206', 'distrito', '11', '02', '06', 'Grocio Prado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110207', 'distrito', '11', '02', '07', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110208', 'distrito', '11', '02', '08', 'San Juan de Yanac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110209', 'distrito', '11', '02', '09', 'San Pedro de Huacarpana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110210', 'distrito', '11', '02', '10', 'Sunampe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110211', 'distrito', '11', '02', '11', 'Tambo de Mora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110300', 'provincia', '11', '03', '00', 'Nazca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110301', 'distrito', '11', '03', '01', 'Nazca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110302', 'distrito', '11', '03', '02', 'Changuillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110303', 'distrito', '11', '03', '03', 'El Ingenio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110304', 'distrito', '11', '03', '04', 'Marcona', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110305', 'distrito', '11', '03', '05', 'Vista Alegre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110400', 'provincia', '11', '04', '00', 'Palpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110401', 'distrito', '11', '04', '01', 'Palpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110402', 'distrito', '11', '04', '02', 'Llipata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110403', 'distrito', '11', '04', '03', 'Rio Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110404', 'distrito', '11', '04', '04', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110405', 'distrito', '11', '04', '05', 'Tibillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110500', 'provincia', '11', '05', '00', 'Pisco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110501', 'distrito', '11', '05', '01', 'Pisco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110502', 'distrito', '11', '05', '02', 'Huancano', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110503', 'distrito', '11', '05', '03', 'Humay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110504', 'distrito', '11', '05', '04', 'Icod_dependencia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110505', 'distrito', '11', '05', '05', 'Paracas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110506', 'distrito', '11', '05', '06', 'San Andres', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110507', 'distrito', '11', '05', '07', 'San Clemente', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('110508', 'distrito', '11', '05', '08', 'Tupac Amaru Inca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120000', 'departamento', '12', '00', '00', 'Junin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120100', 'provincia', '12', '01', '00', 'Huancayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120101', 'distrito', '12', '01', '01', 'Huancayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120104', 'distrito', '12', '01', '04', 'Carhuacallanga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120105', 'distrito', '12', '01', '05', 'Chacapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120106', 'distrito', '12', '01', '06', 'Chicche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120107', 'distrito', '12', '01', '07', 'Chilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120108', 'distrito', '12', '01', '08', 'Chongos Alto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120111', 'distrito', '12', '01', '11', 'Chupuro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120112', 'distrito', '12', '01', '12', 'Colca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120113', 'distrito', '12', '01', '13', 'Cullhuas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120114', 'distrito', '12', '01', '14', 'El Tambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120116', 'distrito', '12', '01', '16', 'Huacrapuquio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120117', 'distrito', '12', '01', '17', 'Hualhuas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120119', 'distrito', '12', '01', '19', 'Huancan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120120', 'distrito', '12', '01', '20', 'Huasicancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120121', 'distrito', '12', '01', '21', 'Huayucachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120122', 'distrito', '12', '01', '22', 'Ingenio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120124', 'distrito', '12', '01', '24', 'Pariahuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120125', 'distrito', '12', '01', '25', 'Pilcomayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120126', 'distrito', '12', '01', '26', 'Pucara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120127', 'distrito', '12', '01', '27', 'Quichuay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120128', 'distrito', '12', '01', '28', 'Quilcas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120129', 'distrito', '12', '01', '29', 'San Agustin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120130', 'distrito', '12', '01', '30', 'San Jeronimo de Tunan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120132', 'distrito', '12', '01', '32', 'Saño', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120133', 'distrito', '12', '01', '33', 'Sapallanga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120134', 'distrito', '12', '01', '34', 'Sicaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120135', 'distrito', '12', '01', '35', 'Santo Domingo de Acobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120136', 'distrito', '12', '01', '36', 'Viques', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120200', 'provincia', '12', '02', '00', 'Concepcion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120201', 'distrito', '12', '02', '01', 'Concepcion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120202', 'distrito', '12', '02', '02', 'Aco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120203', 'distrito', '12', '02', '03', 'Andamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120204', 'distrito', '12', '02', '04', 'Chambara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120205', 'distrito', '12', '02', '05', 'Cochas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120206', 'distrito', '12', '02', '06', 'Comas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120207', 'distrito', '12', '02', '07', 'Heroinas Toledo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120208', 'distrito', '12', '02', '08', 'Manzanares', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120209', 'distrito', '12', '02', '09', 'Mariscal Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120210', 'distrito', '12', '02', '10', 'Matahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120211', 'distrito', '12', '02', '11', 'Mito', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120212', 'distrito', '12', '02', '12', 'Nueve de Julio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120213', 'distrito', '12', '02', '13', 'Orcotuna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120214', 'distrito', '12', '02', '14', 'San Jose de Quero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120215', 'distrito', '12', '02', '15', 'Santa Rosa de Ocopa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120300', 'provincia', '12', '03', '00', 'Chanchamayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120301', 'distrito', '12', '03', '01', 'Chanchamayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120302', 'distrito', '12', '03', '02', 'Perene', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120303', 'distrito', '12', '03', '03', 'Pichanaqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120304', 'distrito', '12', '03', '04', 'San Luis de Shuaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120305', 'distrito', '12', '03', '05', 'San Ramon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120306', 'distrito', '12', '03', '06', 'Vitoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120400', 'provincia', '12', '04', '00', 'Jauja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120401', 'distrito', '12', '04', '01', 'Jauja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120402', 'distrito', '12', '04', '02', 'Acolla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120403', 'distrito', '12', '04', '03', 'Apata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120404', 'distrito', '12', '04', '04', 'Ataura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120405', 'distrito', '12', '04', '05', 'Canchayllo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120406', 'distrito', '12', '04', '06', 'Curicaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120407', 'distrito', '12', '04', '07', 'El Mantaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120408', 'distrito', '12', '04', '08', 'Huamali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120409', 'distrito', '12', '04', '09', 'Huaripampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120410', 'distrito', '12', '04', '10', 'Huertas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120411', 'distrito', '12', '04', '11', 'Janjaillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120412', 'distrito', '12', '04', '12', 'Julcan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120413', 'distrito', '12', '04', '13', 'Leonor Ordoñez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120414', 'distrito', '12', '04', '14', 'Llocllapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120415', 'distrito', '12', '04', '15', 'Marco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120416', 'distrito', '12', '04', '16', 'Masma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120417', 'distrito', '12', '04', '17', 'Masma Chicche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120418', 'distrito', '12', '04', '18', 'Molinos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120419', 'distrito', '12', '04', '19', 'Monobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120420', 'distrito', '12', '04', '20', 'Muqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120421', 'distrito', '12', '04', '21', 'Muquiyauyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120422', 'distrito', '12', '04', '22', 'Paca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120423', 'distrito', '12', '04', '23', 'Paccha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120424', 'distrito', '12', '04', '24', 'Pancan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120425', 'distrito', '12', '04', '25', 'Parco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120426', 'distrito', '12', '04', '26', 'Pomacancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120427', 'distrito', '12', '04', '27', 'Ricran', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120428', 'distrito', '12', '04', '28', 'San Lorenzo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120429', 'distrito', '12', '04', '29', 'San Pedro de Chunan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120430', 'distrito', '12', '04', '30', 'Sausa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120431', 'distrito', '12', '04', '31', 'Sincos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120432', 'distrito', '12', '04', '32', 'Tunan Marca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120433', 'distrito', '12', '04', '33', 'Yauli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120434', 'distrito', '12', '04', '34', 'Yauyos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120500', 'provincia', '12', '05', '00', 'Junin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120501', 'distrito', '12', '05', '01', 'Junin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120502', 'distrito', '12', '05', '02', 'Carhuamayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120503', 'distrito', '12', '05', '03', 'Ondores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120504', 'distrito', '12', '05', '04', 'Ulcumayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120600', 'provincia', '12', '06', '00', 'Satipo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120601', 'distrito', '12', '06', '01', 'Satipo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120602', 'distrito', '12', '06', '02', 'Coviriali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120603', 'distrito', '12', '06', '03', 'Llaylla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120604', 'distrito', '12', '06', '04', 'Mazamari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120605', 'distrito', '12', '06', '05', 'Pampa Hermosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120606', 'distrito', '12', '06', '06', 'Pangoa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120607', 'distrito', '12', '06', '07', 'Rio Negro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120608', 'distrito', '12', '06', '08', 'Rio Tambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120609', 'distrito', '12', '06', '09', 'Vizcatán del Ene', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120700', 'provincia', '12', '07', '00', 'Tarma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120701', 'distrito', '12', '07', '01', 'Tarma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120702', 'distrito', '12', '07', '02', 'Acobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120703', 'distrito', '12', '07', '03', 'Huaricolca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120704', 'distrito', '12', '07', '04', 'Huasahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120705', 'distrito', '12', '07', '05', 'La Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120706', 'distrito', '12', '07', '06', 'Palca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120707', 'distrito', '12', '07', '07', 'Palcamayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120708', 'distrito', '12', '07', '08', 'San Pedro de Cajas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120709', 'distrito', '12', '07', '09', 'Tapo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120800', 'provincia', '12', '08', '00', 'Yauli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120801', 'distrito', '12', '08', '01', 'La Oroya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120802', 'distrito', '12', '08', '02', 'Chacapalpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120803', 'distrito', '12', '08', '03', 'Huay-Huay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120804', 'distrito', '12', '08', '04', 'Marcapomacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120805', 'distrito', '12', '08', '05', 'Morococha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120806', 'distrito', '12', '08', '06', 'Paccha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120807', 'distrito', '12', '08', '07', 'Santa Barbara de Carhuacayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120808', 'distrito', '12', '08', '08', 'Santa Rosa de Sacco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120809', 'distrito', '12', '08', '09', 'Suitucancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120810', 'distrito', '12', '08', '10', 'Yauli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120900', 'provincia', '12', '09', '00', 'Chupaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120901', 'distrito', '12', '09', '01', 'Chupaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120902', 'distrito', '12', '09', '02', 'Ahuac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120903', 'distrito', '12', '09', '03', 'Chongos Bajo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120904', 'distrito', '12', '09', '04', 'Huachac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120905', 'distrito', '12', '09', '05', 'Huamancaca Chico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120906', 'distrito', '12', '09', '06', 'San Juan de Yscos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120907', 'distrito', '12', '09', '07', 'San Juan de Jarpa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120908', 'distrito', '12', '09', '08', 'Tres de Diciembre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('120909', 'distrito', '12', '09', '09', 'Yanacancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130000', 'departamento', '13', '00', '00', 'La Libertad', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130100', 'provincia', '13', '01', '00', 'Trujillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130101', 'distrito', '13', '01', '01', 'Trujillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130102', 'distrito', '13', '01', '02', 'El Porvenir', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130103', 'distrito', '13', '01', '03', 'Florencia de Mora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130104', 'distrito', '13', '01', '04', 'Huanchaco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130105', 'distrito', '13', '01', '05', 'La Esperanza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130106', 'distrito', '13', '01', '06', 'Laredo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130107', 'distrito', '13', '01', '07', 'Moche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130108', 'distrito', '13', '01', '08', 'Poroto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130109', 'distrito', '13', '01', '09', 'Salaverry', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130110', 'distrito', '13', '01', '10', 'Simbal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130111', 'distrito', '13', '01', '11', 'Victor Larco Herrera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130200', 'provincia', '13', '02', '00', 'Ascope', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130201', 'distrito', '13', '02', '01', 'Ascope', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130202', 'distrito', '13', '02', '02', 'Chicama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130203', 'distrito', '13', '02', '03', 'Chocope', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130204', 'distrito', '13', '02', '04', 'Magdalena de Cao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130205', 'distrito', '13', '02', '05', 'Paijan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130206', 'distrito', '13', '02', '06', 'Razuri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130207', 'distrito', '13', '02', '07', 'Santiago de Cao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130208', 'distrito', '13', '02', '08', 'Casa Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130300', 'provincia', '13', '03', '00', 'Bolivar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130301', 'distrito', '13', '03', '01', 'Bolivar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130302', 'distrito', '13', '03', '02', 'Bambamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130303', 'distrito', '13', '03', '03', 'Condormarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130304', 'distrito', '13', '03', '04', 'Longotea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130305', 'distrito', '13', '03', '05', 'Uchumarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130306', 'distrito', '13', '03', '06', 'Ucuncha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130400', 'provincia', '13', '04', '00', 'Chepen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130401', 'distrito', '13', '04', '01', 'Chepen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130402', 'distrito', '13', '04', '02', 'Pacanga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130403', 'distrito', '13', '04', '03', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130500', 'provincia', '13', '05', '00', 'Julcan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130501', 'distrito', '13', '05', '01', 'Julcan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130502', 'distrito', '13', '05', '02', 'Calamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130503', 'distrito', '13', '05', '03', 'Carabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130504', 'distrito', '13', '05', '04', 'Huaso', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130600', 'provincia', '13', '06', '00', 'Otuzco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130601', 'distrito', '13', '06', '01', 'Otuzco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130602', 'distrito', '13', '06', '02', 'Agallpampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130604', 'distrito', '13', '06', '04', 'Charat', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130605', 'distrito', '13', '06', '05', 'Huaranchal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130606', 'distrito', '13', '06', '06', 'La Cuesta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130608', 'distrito', '13', '06', '08', 'Mache', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130610', 'distrito', '13', '06', '10', 'Paranday', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130611', 'distrito', '13', '06', '11', 'Salpo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130613', 'distrito', '13', '06', '13', 'Sinsicap', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130614', 'distrito', '13', '06', '14', 'Usquil', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130700', 'provincia', '13', '07', '00', 'Pacasmayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130701', 'distrito', '13', '07', '01', 'San Pedro de Lloc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130702', 'distrito', '13', '07', '02', 'Guadalupe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130703', 'distrito', '13', '07', '03', 'Jequetepeque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130704', 'distrito', '13', '07', '04', 'Pacasmayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130705', 'distrito', '13', '07', '05', 'San Jose', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130800', 'provincia', '13', '08', '00', 'Pataz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130801', 'distrito', '13', '08', '01', 'Tayabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130802', 'distrito', '13', '08', '02', 'Buldibuyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130803', 'distrito', '13', '08', '03', 'Chillia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130804', 'distrito', '13', '08', '04', 'Huancaspata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130805', 'distrito', '13', '08', '05', 'Huaylillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130806', 'distrito', '13', '08', '06', 'Huayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130807', 'distrito', '13', '08', '07', 'Ongon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130808', 'distrito', '13', '08', '08', 'Parcoy', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130809', 'distrito', '13', '08', '09', 'Pataz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130810', 'distrito', '13', '08', '10', 'Pias', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130811', 'distrito', '13', '08', '11', 'Santiago de Challas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130812', 'distrito', '13', '08', '12', 'Taurija', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130813', 'distrito', '13', '08', '13', 'Urpay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130900', 'provincia', '13', '09', '00', 'Sanchez Carrion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130901', 'distrito', '13', '09', '01', 'Huamachuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130902', 'distrito', '13', '09', '02', 'Chugay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130903', 'distrito', '13', '09', '03', 'Cochorco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130904', 'distrito', '13', '09', '04', 'Curgos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130905', 'distrito', '13', '09', '05', 'Marcabal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130906', 'distrito', '13', '09', '06', 'Sanagoran', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130907', 'distrito', '13', '09', '07', 'Sarin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('130908', 'distrito', '13', '09', '08', 'Sartimbamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131000', 'provincia', '13', '10', '00', 'Santiago de Chuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131001', 'distrito', '13', '10', '01', 'Santiago de Chuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131002', 'distrito', '13', '10', '02', 'Angasmarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131003', 'distrito', '13', '10', '03', 'Cachicadan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131004', 'distrito', '13', '10', '04', 'Mollebamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131005', 'distrito', '13', '10', '05', 'Mollepata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131006', 'distrito', '13', '10', '06', 'Quiruvilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131007', 'distrito', '13', '10', '07', 'Santa Cruz de Chuca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131008', 'distrito', '13', '10', '08', 'Sitabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131100', 'provincia', '13', '11', '00', 'Gran Chimu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131101', 'distrito', '13', '11', '01', 'Cascas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131102', 'distrito', '13', '11', '02', 'Lucma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131103', 'distrito', '13', '11', '03', 'Compin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131104', 'distrito', '13', '11', '04', 'Sayapullo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131200', 'provincia', '13', '12', '00', 'Viru', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131201', 'distrito', '13', '12', '01', 'Viru', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131202', 'distrito', '13', '12', '02', 'Chao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('131203', 'distrito', '13', '12', '03', 'Guadalupito', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140000', 'departamento', '14', '00', '00', 'Lambayeque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140100', 'provincia', '14', '01', '00', 'Chiclayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140101', 'distrito', '14', '01', '01', 'Chiclayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140102', 'distrito', '14', '01', '02', 'Chongoyape', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140103', 'distrito', '14', '01', '03', 'Eten', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140104', 'distrito', '14', '01', '04', 'Eten Puerto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140105', 'distrito', '14', '01', '05', 'Jose Leonardo Ortiz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140106', 'distrito', '14', '01', '06', 'La Victoria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140107', 'distrito', '14', '01', '07', 'Lagunas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140108', 'distrito', '14', '01', '08', 'Monsefu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140109', 'distrito', '14', '01', '09', 'Nueva Arica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140110', 'distrito', '14', '01', '10', 'Oyotun', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140111', 'distrito', '14', '01', '11', 'Picsi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140112', 'distrito', '14', '01', '12', 'Pimentel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140113', 'distrito', '14', '01', '13', 'Reque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140114', 'distrito', '14', '01', '14', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140115', 'distrito', '14', '01', '15', 'Saña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140116', 'distrito', '14', '01', '16', 'Cayalti', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140117', 'distrito', '14', '01', '17', 'Patapo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140118', 'distrito', '14', '01', '18', 'Pomalca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140119', 'distrito', '14', '01', '19', 'Pucala', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140120', 'distrito', '14', '01', '20', 'Tuman', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140200', 'provincia', '14', '02', '00', 'Ferreñafe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140201', 'distrito', '14', '02', '01', 'Ferreñafe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140202', 'distrito', '14', '02', '02', 'Cañaris', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140203', 'distrito', '14', '02', '03', 'Incahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140204', 'distrito', '14', '02', '04', 'Manuel Antonio Mesones Muro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140205', 'distrito', '14', '02', '05', 'Pitipo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140206', 'distrito', '14', '02', '06', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140300', 'provincia', '14', '03', '00', 'Lambayeque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140301', 'distrito', '14', '03', '01', 'Lambayeque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140302', 'distrito', '14', '03', '02', 'Chochope', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140303', 'distrito', '14', '03', '03', 'Illimo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140304', 'distrito', '14', '03', '04', 'Jayanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140305', 'distrito', '14', '03', '05', 'Mochumi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140306', 'distrito', '14', '03', '06', 'Morrope', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140307', 'distrito', '14', '03', '07', 'Motupe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140308', 'distrito', '14', '03', '08', 'Olmos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140309', 'distrito', '14', '03', '09', 'Pacora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140310', 'distrito', '14', '03', '10', 'Salas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140311', 'distrito', '14', '03', '11', 'San Jose', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('140312', 'distrito', '14', '03', '12', 'Tucume', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150000', 'departamento', '15', '00', '00', 'Lima', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150100', 'provincia', '15', '01', '00', 'Lima', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150101', 'distrito', '15', '01', '01', 'Lima', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150102', 'distrito', '15', '01', '02', 'Ancon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150103', 'distrito', '15', '01', '03', 'Ate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150104', 'distrito', '15', '01', '04', 'Barranco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150105', 'distrito', '15', '01', '05', 'Breña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150106', 'distrito', '15', '01', '06', 'Carabayllo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150107', 'distrito', '15', '01', '07', 'Chaclacayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150108', 'distrito', '15', '01', '08', 'Chorrillos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150109', 'distrito', '15', '01', '09', 'Cieneguilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150110', 'distrito', '15', '01', '10', 'Comas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150111', 'distrito', '15', '01', '11', 'El Agustino', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150112', 'distrito', '15', '01', '12', 'Icod_dependencia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150113', 'distrito', '15', '01', '13', 'Jesus Maria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150114', 'distrito', '15', '01', '14', 'La Molina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150115', 'distrito', '15', '01', '15', 'La Victoria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150116', 'distrito', '15', '01', '16', 'Lince', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150117', 'distrito', '15', '01', '17', 'Los Olivos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150118', 'distrito', '15', '01', '18', 'Lurigancho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150119', 'distrito', '15', '01', '19', 'Lurin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150120', 'distrito', '15', '01', '20', 'Magdalena del Mar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150121', 'distrito', '15', '01', '21', 'Pueblo Libre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150122', 'distrito', '15', '01', '22', 'Miraflores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150123', 'distrito', '15', '01', '23', 'Pachacamac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150124', 'distrito', '15', '01', '24', 'Pucusana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150125', 'distrito', '15', '01', '25', 'Puente Piedra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150126', 'distrito', '15', '01', '26', 'Punta Hermosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150127', 'distrito', '15', '01', '27', 'Punta Negra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150128', 'distrito', '15', '01', '28', 'Rimac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150129', 'distrito', '15', '01', '29', 'San Bartolo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150130', 'distrito', '15', '01', '30', 'San Borja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150131', 'distrito', '15', '01', '31', 'San Isidro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150132', 'distrito', '15', '01', '32', 'San Juan de Lurigancho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150133', 'distrito', '15', '01', '33', 'San Juan de Miraflores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150134', 'distrito', '15', '01', '34', 'San Luis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150135', 'distrito', '15', '01', '35', 'San Martin de Porres', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150136', 'distrito', '15', '01', '36', 'San Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150137', 'distrito', '15', '01', '37', 'Santa Anita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150138', 'distrito', '15', '01', '38', 'Santa Maria del Mar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150139', 'distrito', '15', '01', '39', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150140', 'distrito', '15', '01', '40', 'Santiago de Surco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150141', 'distrito', '15', '01', '41', 'Surquillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150142', 'distrito', '15', '01', '42', 'Villa El Salvador', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150143', 'distrito', '15', '01', '43', 'Villa Maria del Triunfo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150200', 'provincia', '15', '02', '00', 'Barranca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150201', 'distrito', '15', '02', '01', 'Barranca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150202', 'distrito', '15', '02', '02', 'Paramonga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150203', 'distrito', '15', '02', '03', 'Pativilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150204', 'distrito', '15', '02', '04', 'Supe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150205', 'distrito', '15', '02', '05', 'Supe Puerto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150300', 'provincia', '15', '03', '00', 'Cajatambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150301', 'distrito', '15', '03', '01', 'Cajatambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150302', 'distrito', '15', '03', '02', 'Copa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150303', 'distrito', '15', '03', '03', 'Gorgor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150304', 'distrito', '15', '03', '04', 'Huancapon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150305', 'distrito', '15', '03', '05', 'Manas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150400', 'provincia', '15', '04', '00', 'Canta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150401', 'distrito', '15', '04', '01', 'Canta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150402', 'distrito', '15', '04', '02', 'Arahuay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150403', 'distrito', '15', '04', '03', 'Huamantanga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150404', 'distrito', '15', '04', '04', 'Huaros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150405', 'distrito', '15', '04', '05', 'Lachaqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150406', 'distrito', '15', '04', '06', 'San Buenaventura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150407', 'distrito', '15', '04', '07', 'Santa Rosa de Quives', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150500', 'provincia', '15', '05', '00', 'Cañete', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150501', 'distrito', '15', '05', '01', 'San Vicente de Cañete', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150502', 'distrito', '15', '05', '02', 'Asia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150503', 'distrito', '15', '05', '03', 'Calango', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150504', 'distrito', '15', '05', '04', 'Cerro Azul', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150505', 'distrito', '15', '05', '05', 'Chilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150506', 'distrito', '15', '05', '06', 'Coayllo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150507', 'distrito', '15', '05', '07', 'Imperial', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150508', 'distrito', '15', '05', '08', 'Lunahuana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150509', 'distrito', '15', '05', '09', 'Mala', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150510', 'distrito', '15', '05', '10', 'Nuevo Imperial', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150511', 'distrito', '15', '05', '11', 'Pacaran', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150512', 'distrito', '15', '05', '12', 'Quilmana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150513', 'distrito', '15', '05', '13', 'San Antonio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150514', 'distrito', '15', '05', '14', 'San Luis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150515', 'distrito', '15', '05', '15', 'Santa Cruz de Flores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150516', 'distrito', '15', '05', '16', 'Zuñiga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150600', 'provincia', '15', '06', '00', 'Huaral', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150601', 'distrito', '15', '06', '01', 'Huaral', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150602', 'distrito', '15', '06', '02', 'Atavillos Alto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150603', 'distrito', '15', '06', '03', 'Atavillos Bajo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150604', 'distrito', '15', '06', '04', 'Aucallama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150605', 'distrito', '15', '06', '05', 'Chancay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150606', 'distrito', '15', '06', '06', 'Ihuari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150607', 'distrito', '15', '06', '07', 'Lampian', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150608', 'distrito', '15', '06', '08', 'Pacaraos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150609', 'distrito', '15', '06', '09', 'San Miguel de Acos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150610', 'distrito', '15', '06', '10', 'Santa Cruz de Andamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150611', 'distrito', '15', '06', '11', 'Sumbilca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150612', 'distrito', '15', '06', '12', 'Veintisiete de Noviembre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150700', 'provincia', '15', '07', '00', 'Huarochiri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150701', 'distrito', '15', '07', '01', 'Matucana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150702', 'distrito', '15', '07', '02', 'Antioquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150703', 'distrito', '15', '07', '03', 'Callahuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150704', 'distrito', '15', '07', '04', 'Carampoma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150705', 'distrito', '15', '07', '05', 'Chicla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150706', 'distrito', '15', '07', '06', 'Cuenca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150707', 'distrito', '15', '07', '07', 'Huachupampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150708', 'distrito', '15', '07', '08', 'Huanza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150709', 'distrito', '15', '07', '09', 'Huarochiri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150710', 'distrito', '15', '07', '10', 'Lahuaytambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150711', 'distrito', '15', '07', '11', 'Langa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150712', 'distrito', '15', '07', '12', 'Laraos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150713', 'distrito', '15', '07', '13', 'Mariatana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150714', 'distrito', '15', '07', '14', 'Ricardo Palma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150715', 'distrito', '15', '07', '15', 'San Andres de Tupicocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150716', 'distrito', '15', '07', '16', 'San Antonio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150717', 'distrito', '15', '07', '17', 'San Bartolome', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150718', 'distrito', '15', '07', '18', 'San Damian', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150719', 'distrito', '15', '07', '19', 'San Juan de Iris', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150720', 'distrito', '15', '07', '20', 'San Juan de Tantaranche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150721', 'distrito', '15', '07', '21', 'San Lorenzo de Quinti', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150722', 'distrito', '15', '07', '22', 'San Mateo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150723', 'distrito', '15', '07', '23', 'San Mateo de Otao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150724', 'distrito', '15', '07', '24', 'San Pedro de Casta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150725', 'distrito', '15', '07', '25', 'San Pedro de Huancayre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150726', 'distrito', '15', '07', '26', 'Sangallaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150727', 'distrito', '15', '07', '27', 'Santa Cruz de Cocachacra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150728', 'distrito', '15', '07', '28', 'Santa Eulalia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150729', 'distrito', '15', '07', '29', 'Santiago de Anchucaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150730', 'distrito', '15', '07', '30', 'Santiago de Tuna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150731', 'distrito', '15', '07', '31', 'Santo Domingo de los Olleros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150732', 'distrito', '15', '07', '32', 'Surco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150800', 'provincia', '15', '08', '00', 'Huaura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150801', 'distrito', '15', '08', '01', 'Huacho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150802', 'distrito', '15', '08', '02', 'Ambar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150803', 'distrito', '15', '08', '03', 'Caleta de Carquin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150804', 'distrito', '15', '08', '04', 'Checras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150805', 'distrito', '15', '08', '05', 'Hualmay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150806', 'distrito', '15', '08', '06', 'Huaura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150807', 'distrito', '15', '08', '07', 'Leoncio Prado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150808', 'distrito', '15', '08', '08', 'Paccho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150809', 'distrito', '15', '08', '09', 'Santa Leonor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150810', 'distrito', '15', '08', '10', 'Santa Maria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150811', 'distrito', '15', '08', '11', 'Sayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150812', 'distrito', '15', '08', '12', 'Vegueta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150900', 'provincia', '15', '09', '00', 'Oyon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150901', 'distrito', '15', '09', '01', 'Oyon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150902', 'distrito', '15', '09', '02', 'Andajes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150903', 'distrito', '15', '09', '03', 'Caujul', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150904', 'distrito', '15', '09', '04', 'Cochamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150905', 'distrito', '15', '09', '05', 'Navan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('150906', 'distrito', '15', '09', '06', 'Pachangara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151000', 'provincia', '15', '10', '00', 'Yauyos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151001', 'distrito', '15', '10', '01', 'Yauyos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151002', 'distrito', '15', '10', '02', 'Alis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151003', 'distrito', '15', '10', '03', 'Ayauca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151004', 'distrito', '15', '10', '04', 'Ayaviri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151005', 'distrito', '15', '10', '05', 'Azangaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151006', 'distrito', '15', '10', '06', 'Cacra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151007', 'distrito', '15', '10', '07', 'Carania', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151008', 'distrito', '15', '10', '08', 'Catahuasi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151009', 'distrito', '15', '10', '09', 'Chocos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151010', 'distrito', '15', '10', '10', 'Cochas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151011', 'distrito', '15', '10', '11', 'Colonia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151012', 'distrito', '15', '10', '12', 'Hongos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151013', 'distrito', '15', '10', '13', 'Huampara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151014', 'distrito', '15', '10', '14', 'Huancaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151015', 'distrito', '15', '10', '15', 'Huangascar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151016', 'distrito', '15', '10', '16', 'Huantan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151017', 'distrito', '15', '10', '17', 'Huañec', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151018', 'distrito', '15', '10', '18', 'Laraos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151019', 'distrito', '15', '10', '19', 'Lincha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151020', 'distrito', '15', '10', '20', 'Madean', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151021', 'distrito', '15', '10', '21', 'Miraflores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151022', 'distrito', '15', '10', '22', 'Omas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151023', 'distrito', '15', '10', '23', 'Putinza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151024', 'distrito', '15', '10', '24', 'Quinches', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151025', 'distrito', '15', '10', '25', 'Quinocay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151026', 'distrito', '15', '10', '26', 'San Joaquin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151027', 'distrito', '15', '10', '27', 'San Pedro de Pilas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151028', 'distrito', '15', '10', '28', 'Tanta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151029', 'distrito', '15', '10', '29', 'Tauripampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151030', 'distrito', '15', '10', '30', 'Tomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151031', 'distrito', '15', '10', '31', 'Tupe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151032', 'distrito', '15', '10', '32', 'Viñac', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('151033', 'distrito', '15', '10', '33', 'Vitis', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160000', 'departamento', '16', '00', '00', 'Loreto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160100', 'provincia', '16', '01', '00', 'Maynas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160101', 'distrito', '16', '01', '01', 'Iquitos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160102', 'distrito', '16', '01', '02', 'Alto Nanay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160103', 'distrito', '16', '01', '03', 'Fernando Lores', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160104', 'distrito', '16', '01', '04', 'Indiana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160105', 'distrito', '16', '01', '05', 'Las Amazonas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160106', 'distrito', '16', '01', '06', 'Mazan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160107', 'distrito', '16', '01', '07', 'Napo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160108', 'distrito', '16', '01', '08', 'Punchana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160110', 'distrito', '16', '01', '10', 'Torres Causana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160112', 'distrito', '16', '01', '12', 'Belen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160113', 'distrito', '16', '01', '13', 'San Juan Bautista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160200', 'provincia', '16', '02', '00', 'Alto Amazonas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160201', 'distrito', '16', '02', '01', 'Yurimaguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160202', 'distrito', '16', '02', '02', 'Balsapuerto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160205', 'distrito', '16', '02', '05', 'Jeberos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160206', 'distrito', '16', '02', '06', 'Lagunas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160210', 'distrito', '16', '02', '10', 'Santa Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160211', 'distrito', '16', '02', '11', 'Teniente Cesar Lopez Rojas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160300', 'provincia', '16', '03', '00', 'Loreto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160301', 'distrito', '16', '03', '01', 'Nauta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160302', 'distrito', '16', '03', '02', 'Parinari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160303', 'distrito', '16', '03', '03', 'Tigre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160304', 'distrito', '16', '03', '04', 'Trompeteros', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160305', 'distrito', '16', '03', '05', 'Urarinas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160400', 'provincia', '16', '04', '00', 'Mariscal Ramon Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160401', 'distrito', '16', '04', '01', 'Ramon Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160402', 'distrito', '16', '04', '02', 'Pebas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160403', 'distrito', '16', '04', '03', 'Yavari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160404', 'distrito', '16', '04', '04', 'San Pablo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160500', 'provincia', '16', '05', '00', 'Requena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160501', 'distrito', '16', '05', '01', 'Requena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160502', 'distrito', '16', '05', '02', 'Alto Tapiche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160503', 'distrito', '16', '05', '03', 'Capelo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160504', 'distrito', '16', '05', '04', 'Emilio San Martin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160505', 'distrito', '16', '05', '05', 'Maquia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160506', 'distrito', '16', '05', '06', 'Puinahua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160507', 'distrito', '16', '05', '07', 'Saquena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160508', 'distrito', '16', '05', '08', 'Soplin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160509', 'distrito', '16', '05', '09', 'Tapiche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160510', 'distrito', '16', '05', '10', 'Jenaro Herrera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160511', 'distrito', '16', '05', '11', 'Yaquerana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160600', 'provincia', '16', '06', '00', 'Ucayali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160601', 'distrito', '16', '06', '01', 'Contamana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160602', 'distrito', '16', '06', '02', 'Inahuaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160603', 'distrito', '16', '06', '03', 'Padre Marquez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160604', 'distrito', '16', '06', '04', 'Pampa Hermosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160605', 'distrito', '16', '06', '05', 'Sarayacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160606', 'distrito', '16', '06', '06', 'Vargas Guerra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160700', 'provincia', '16', '07', '00', 'Datem del Marañon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160701', 'distrito', '16', '07', '01', 'Barranca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160702', 'distrito', '16', '07', '02', 'Cahuapanas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160703', 'distrito', '16', '07', '03', 'Manseriche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160704', 'distrito', '16', '07', '04', 'Morona', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160705', 'distrito', '16', '07', '05', 'Pastaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160706', 'distrito', '16', '07', '06', 'Andoas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160801', 'distrito', '16', '08', '01', 'Putumayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160802', 'distrito', '16', '08', '02', 'Rosa Panduro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160803', 'distrito', '16', '08', '03', 'Teniente Manuel Clavero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('160804', 'distrito', '16', '08', '04', 'Yaguas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170000', 'departamento', '17', '00', '00', 'Madre de Dios', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170100', 'provincia', '17', '01', '00', 'Tambopata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170101', 'distrito', '17', '01', '01', 'Tambopata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170102', 'distrito', '17', '01', '02', 'Inambari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170103', 'distrito', '17', '01', '03', 'Las Piedras', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170104', 'distrito', '17', '01', '04', 'Laberinto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170200', 'provincia', '17', '02', '00', 'Manu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170201', 'distrito', '17', '02', '01', 'Manu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170202', 'distrito', '17', '02', '02', 'Fitzcarrald', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170203', 'distrito', '17', '02', '03', 'Madre de Dios', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170204', 'distrito', '17', '02', '04', 'Huepetuhe', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170300', 'provincia', '17', '03', '00', 'Tahuamanu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170301', 'distrito', '17', '03', '01', 'Iñapari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170302', 'distrito', '17', '03', '02', 'Iberia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('170303', 'distrito', '17', '03', '03', 'Tahuamanu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180000', 'departamento', '18', '00', '00', 'Moquegua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180100', 'provincia', '18', '01', '00', 'Mariscal Nieto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180101', 'distrito', '18', '01', '01', 'Moquegua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180102', 'distrito', '18', '01', '02', 'Carumas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180103', 'distrito', '18', '01', '03', 'Cuchumbaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180104', 'distrito', '18', '01', '04', 'Samegua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180105', 'distrito', '18', '01', '05', 'San Cristobal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180106', 'distrito', '18', '01', '06', 'Torata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180200', 'provincia', '18', '02', '00', 'General Sanchez Cerr', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180201', 'distrito', '18', '02', '01', 'Omate', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180202', 'distrito', '18', '02', '02', 'Chojata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180203', 'distrito', '18', '02', '03', 'Coalaque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180204', 'distrito', '18', '02', '04', 'Ichuña', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180205', 'distrito', '18', '02', '05', 'La Capilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180206', 'distrito', '18', '02', '06', 'Lloque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180207', 'distrito', '18', '02', '07', 'Matalaque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180208', 'distrito', '18', '02', '08', 'Puquina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180209', 'distrito', '18', '02', '09', 'Quinistaquillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180210', 'distrito', '18', '02', '10', 'Ubinas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180211', 'distrito', '18', '02', '11', 'Yunga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180300', 'provincia', '18', '03', '00', 'Ilo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180301', 'distrito', '18', '03', '01', 'Ilo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180302', 'distrito', '18', '03', '02', 'El Algarrobal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('180303', 'distrito', '18', '03', '03', 'Pacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190000', 'departamento', '19', '00', '00', 'Pasco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190100', 'provincia', '19', '01', '00', 'Pasco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190101', 'distrito', '19', '01', '01', 'Chaupimarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190102', 'distrito', '19', '01', '02', 'Huachon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190103', 'distrito', '19', '01', '03', 'Huariaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190104', 'distrito', '19', '01', '04', 'Huayllay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190105', 'distrito', '19', '01', '05', 'Ninacaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190106', 'distrito', '19', '01', '06', 'Pallanchacra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190107', 'distrito', '19', '01', '07', 'Paucartambo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190108', 'distrito', '19', '01', '08', 'San Francisco de Asis de Yarusyacan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190109', 'distrito', '19', '01', '09', 'Simon Bolivar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190110', 'distrito', '19', '01', '10', 'Ticlacayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190111', 'distrito', '19', '01', '11', 'Tinyahuarco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190112', 'distrito', '19', '01', '12', 'Vicco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190113', 'distrito', '19', '01', '13', 'Yanacancha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190200', 'provincia', '19', '02', '00', 'Daniel Alcides Carri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190201', 'distrito', '19', '02', '01', 'Yanahuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190202', 'distrito', '19', '02', '02', 'Chacayan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190203', 'distrito', '19', '02', '03', 'Goyllarisquizga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190204', 'distrito', '19', '02', '04', 'Paucar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190205', 'distrito', '19', '02', '05', 'San Pedro de Pillao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190206', 'distrito', '19', '02', '06', 'Santa Ana de Tusi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190207', 'distrito', '19', '02', '07', 'Tapuc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190208', 'distrito', '19', '02', '08', 'Vilcabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190300', 'provincia', '19', '03', '00', 'Oxapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190301', 'distrito', '19', '03', '01', 'Oxapampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190302', 'distrito', '19', '03', '02', 'Chontabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190303', 'distrito', '19', '03', '03', 'Huancabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190304', 'distrito', '19', '03', '04', 'Palcazu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190305', 'distrito', '19', '03', '05', 'Pozuzo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190306', 'distrito', '19', '03', '06', 'Puerto Bermudez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190307', 'distrito', '19', '03', '07', 'Villa Rica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('190308', 'distrito', '19', '03', '08', 'Constitución', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200000', 'departamento', '20', '00', '00', 'Piura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200100', 'provincia', '20', '01', '00', 'Piura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200101', 'distrito', '20', '01', '01', 'Piura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200104', 'distrito', '20', '01', '04', 'Castilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200105', 'distrito', '20', '01', '05', 'Catacaos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200107', 'distrito', '20', '01', '07', 'Cura Mori', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200108', 'distrito', '20', '01', '08', 'El Tallan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200109', 'distrito', '20', '01', '09', 'La Arena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200110', 'distrito', '20', '01', '10', 'La Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200111', 'distrito', '20', '01', '11', 'Las Lomas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200114', 'distrito', '20', '01', '14', 'Tambo Grande', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200115', 'distrito', '20', '01', '15', '26 de Octubre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200200', 'provincia', '20', '02', '00', 'Ayabaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200201', 'distrito', '20', '02', '01', 'Ayabaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200202', 'distrito', '20', '02', '02', 'Frias', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200203', 'distrito', '20', '02', '03', 'Jilili', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200204', 'distrito', '20', '02', '04', 'Lagunas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200205', 'distrito', '20', '02', '05', 'Montero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200206', 'distrito', '20', '02', '06', 'Pacaipampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200207', 'distrito', '20', '02', '07', 'Paimas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200208', 'distrito', '20', '02', '08', 'Sapillica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200209', 'distrito', '20', '02', '09', 'Sicchez', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200210', 'distrito', '20', '02', '10', 'Suyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200300', 'provincia', '20', '03', '00', 'Huancabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200301', 'distrito', '20', '03', '01', 'Huancabamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200302', 'distrito', '20', '03', '02', 'Canchaque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200303', 'distrito', '20', '03', '03', 'El Carmen de La Frontera', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200304', 'distrito', '20', '03', '04', 'Huarmaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200305', 'distrito', '20', '03', '05', 'Lalaquiz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200306', 'distrito', '20', '03', '06', 'San Miguel de El Faique', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200307', 'distrito', '20', '03', '07', 'Sondor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200308', 'distrito', '20', '03', '08', 'Sondorillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200400', 'provincia', '20', '04', '00', 'Morropon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200401', 'distrito', '20', '04', '01', 'Chulucanas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200402', 'distrito', '20', '04', '02', 'Buenos Aires', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200403', 'distrito', '20', '04', '03', 'Chalaco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200404', 'distrito', '20', '04', '04', 'La Matanza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200405', 'distrito', '20', '04', '05', 'Morropon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200406', 'distrito', '20', '04', '06', 'Salitral', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200407', 'distrito', '20', '04', '07', 'San Juan de Bigote', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200408', 'distrito', '20', '04', '08', 'Santa Catalina de Mossa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200409', 'distrito', '20', '04', '09', 'Santo Domingo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200410', 'distrito', '20', '04', '10', 'Yamango', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200500', 'provincia', '20', '05', '00', 'Paita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200501', 'distrito', '20', '05', '01', 'Paita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200502', 'distrito', '20', '05', '02', 'Amotape', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200503', 'distrito', '20', '05', '03', 'Arenal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200504', 'distrito', '20', '05', '04', 'Colan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200505', 'distrito', '20', '05', '05', 'La Huaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200506', 'distrito', '20', '05', '06', 'Tamarindo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200507', 'distrito', '20', '05', '07', 'Vichayal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200600', 'provincia', '20', '06', '00', 'Sullana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200601', 'distrito', '20', '06', '01', 'Sullana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200602', 'distrito', '20', '06', '02', 'Bellavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200603', 'distrito', '20', '06', '03', 'Ignacio Escudero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200604', 'distrito', '20', '06', '04', 'Lancones', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200605', 'distrito', '20', '06', '05', 'Marcavelica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200606', 'distrito', '20', '06', '06', 'Miguel Checa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200607', 'distrito', '20', '06', '07', 'Querecotillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200608', 'distrito', '20', '06', '08', 'Salitral', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200700', 'provincia', '20', '07', '00', 'Talara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200701', 'distrito', '20', '07', '01', 'Pariñas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200702', 'distrito', '20', '07', '02', 'El Alto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200703', 'distrito', '20', '07', '03', 'La Brea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200704', 'distrito', '20', '07', '04', 'Lobitos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200705', 'distrito', '20', '07', '05', 'Los Organos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200706', 'distrito', '20', '07', '06', 'Mancora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200800', 'provincia', '20', '08', '00', 'Sechura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200801', 'distrito', '20', '08', '01', 'Sechura', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200802', 'distrito', '20', '08', '02', 'Bellavista de La Union', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200803', 'distrito', '20', '08', '03', 'Bernal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200804', 'distrito', '20', '08', '04', 'Cristo Nos Valga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200805', 'distrito', '20', '08', '05', 'Vice', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('200806', 'distrito', '20', '08', '06', 'Rinconada Llicuar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210000', 'departamento', '21', '00', '00', 'Puno', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210100', 'provincia', '21', '01', '00', 'Puno', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210101', 'distrito', '21', '01', '01', 'Puno', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210102', 'distrito', '21', '01', '02', 'Acora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210103', 'distrito', '21', '01', '03', 'Amantani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210104', 'distrito', '21', '01', '04', 'Atuncolla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210105', 'distrito', '21', '01', '05', 'Capachica', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210106', 'distrito', '21', '01', '06', 'Chucuito', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210107', 'distrito', '21', '01', '07', 'Coata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210108', 'distrito', '21', '01', '08', 'Huata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210109', 'distrito', '21', '01', '09', 'Mañazo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210110', 'distrito', '21', '01', '10', 'Paucarcolla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210111', 'distrito', '21', '01', '11', 'Pichacani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210112', 'distrito', '21', '01', '12', 'Plateria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210113', 'distrito', '21', '01', '13', 'San Antonio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210114', 'distrito', '21', '01', '14', 'Tiquillaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210115', 'distrito', '21', '01', '15', 'Vilque', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210200', 'provincia', '21', '02', '00', 'Azangaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210201', 'distrito', '21', '02', '01', 'Azangaro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210202', 'distrito', '21', '02', '02', 'Achaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210203', 'distrito', '21', '02', '03', 'Arapa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210204', 'distrito', '21', '02', '04', 'Asillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210205', 'distrito', '21', '02', '05', 'Caminaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210206', 'distrito', '21', '02', '06', 'Chupa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210207', 'distrito', '21', '02', '07', 'Jose Domingo Choquehuanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210208', 'distrito', '21', '02', '08', 'Muñani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210209', 'distrito', '21', '02', '09', 'Potoni', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210210', 'distrito', '21', '02', '10', 'Saman', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210211', 'distrito', '21', '02', '11', 'San Anton', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210212', 'distrito', '21', '02', '12', 'San Jose', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210213', 'distrito', '21', '02', '13', 'San Juan de Salinas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210214', 'distrito', '21', '02', '14', 'Santiago de Pupuja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210215', 'distrito', '21', '02', '15', 'Tirapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210300', 'provincia', '21', '03', '00', 'Carabaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210301', 'distrito', '21', '03', '01', 'Macusani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210302', 'distrito', '21', '03', '02', 'Ajoyani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210303', 'distrito', '21', '03', '03', 'Ayapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210304', 'distrito', '21', '03', '04', 'Coasa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210305', 'distrito', '21', '03', '05', 'Corani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210306', 'distrito', '21', '03', '06', 'Crucero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210307', 'distrito', '21', '03', '07', 'Ituata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210308', 'distrito', '21', '03', '08', 'Ollachea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210309', 'distrito', '21', '03', '09', 'San Gaban', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210310', 'distrito', '21', '03', '10', 'Usicayos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210400', 'provincia', '21', '04', '00', 'Chucuito', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210401', 'distrito', '21', '04', '01', 'Juli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210402', 'distrito', '21', '04', '02', 'Desaguadero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210403', 'distrito', '21', '04', '03', 'Huacullani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210404', 'distrito', '21', '04', '04', 'Kelluyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210405', 'distrito', '21', '04', '05', 'Pisacoma', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210406', 'distrito', '21', '04', '06', 'Pomata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210407', 'distrito', '21', '04', '07', 'Zepita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210500', 'provincia', '21', '05', '00', 'El Collao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210501', 'distrito', '21', '05', '01', 'Ilave', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210502', 'distrito', '21', '05', '02', 'Capazo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210503', 'distrito', '21', '05', '03', 'Pilcuyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210504', 'distrito', '21', '05', '04', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210505', 'distrito', '21', '05', '05', 'Conduriri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210600', 'provincia', '21', '06', '00', 'Huancane', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210601', 'distrito', '21', '06', '01', 'Huancane', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210602', 'distrito', '21', '06', '02', 'Cojata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210603', 'distrito', '21', '06', '03', 'Huatasani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210604', 'distrito', '21', '06', '04', 'Inchupalla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210605', 'distrito', '21', '06', '05', 'Pusi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210606', 'distrito', '21', '06', '06', 'Rosaspata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210607', 'distrito', '21', '06', '07', 'Taraco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210608', 'distrito', '21', '06', '08', 'Vilque Chico', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210700', 'provincia', '21', '07', '00', 'Lampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210701', 'distrito', '21', '07', '01', 'Lampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210702', 'distrito', '21', '07', '02', 'Cabanilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210703', 'distrito', '21', '07', '03', 'Calapuja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210704', 'distrito', '21', '07', '04', 'Nicasio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210705', 'distrito', '21', '07', '05', 'Ocuviri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210706', 'distrito', '21', '07', '06', 'Palca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210707', 'distrito', '21', '07', '07', 'Paratia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210708', 'distrito', '21', '07', '08', 'Pucara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210709', 'distrito', '21', '07', '09', 'Santa Lucia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210710', 'distrito', '21', '07', '10', 'Vilavila', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210800', 'provincia', '21', '08', '00', 'Melgar', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210801', 'distrito', '21', '08', '01', 'Ayaviri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210802', 'distrito', '21', '08', '02', 'Antauta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210803', 'distrito', '21', '08', '03', 'Cupi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210804', 'distrito', '21', '08', '04', 'Llalli', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210805', 'distrito', '21', '08', '05', 'Macari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210806', 'distrito', '21', '08', '06', 'Nuñoa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210807', 'distrito', '21', '08', '07', 'Orurillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210808', 'distrito', '21', '08', '08', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210809', 'distrito', '21', '08', '09', 'Umachiri', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210900', 'provincia', '21', '09', '00', 'Moho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210901', 'distrito', '21', '09', '01', 'Moho', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210902', 'distrito', '21', '09', '02', 'Conima', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210903', 'distrito', '21', '09', '03', 'Huayrapata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('210904', 'distrito', '21', '09', '04', 'Tilali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211000', 'provincia', '21', '10', '00', 'San Antonio de Putin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211001', 'distrito', '21', '10', '01', 'Putina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211002', 'distrito', '21', '10', '02', 'Ananea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211003', 'distrito', '21', '10', '03', 'Pedro Vilca Apaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211004', 'distrito', '21', '10', '04', 'Quilcapuncu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211005', 'distrito', '21', '10', '05', 'Sina', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211100', 'provincia', '21', '11', '00', 'San Roman', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211101', 'distrito', '21', '11', '01', 'Juliaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211102', 'distrito', '21', '11', '02', 'Cabana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211103', 'distrito', '21', '11', '03', 'Cabanillas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211104', 'distrito', '21', '11', '04', 'Caracoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211105', 'distrito', '21', '11', '05', 'San Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211200', 'provincia', '21', '12', '00', 'Sandia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211201', 'distrito', '21', '12', '01', 'Sandia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211202', 'distrito', '21', '12', '02', 'Cuyocuyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211203', 'distrito', '21', '12', '03', 'Limbani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211204', 'distrito', '21', '12', '04', 'Patambuco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211205', 'distrito', '21', '12', '05', 'Phara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211206', 'distrito', '21', '12', '06', 'Quiaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211207', 'distrito', '21', '12', '07', 'San Juan del Oro', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211208', 'distrito', '21', '12', '08', 'Yanahuaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211209', 'distrito', '21', '12', '09', 'Alto Inambari', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211210', 'distrito', '21', '12', '10', 'San Pedro de Putina Punco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211300', 'provincia', '21', '13', '00', 'Yunguyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211301', 'distrito', '21', '13', '01', 'Yunguyo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211302', 'distrito', '21', '13', '02', 'Anapia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211303', 'distrito', '21', '13', '03', 'Copani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211304', 'distrito', '21', '13', '04', 'Cuturapi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211305', 'distrito', '21', '13', '05', 'Ollaraya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211306', 'distrito', '21', '13', '06', 'Tinicachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('211307', 'distrito', '21', '13', '07', 'Unicachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220000', 'departamento', '22', '00', '00', 'San Martin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220100', 'provincia', '22', '01', '00', 'Moyobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220101', 'distrito', '22', '01', '01', 'Moyobamba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220102', 'distrito', '22', '01', '02', 'Calzada', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220103', 'distrito', '22', '01', '03', 'Habana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220104', 'distrito', '22', '01', '04', 'Jepelacio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220105', 'distrito', '22', '01', '05', 'Soritor', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220106', 'distrito', '22', '01', '06', 'Yantalo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220200', 'provincia', '22', '02', '00', 'Bellavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220201', 'distrito', '22', '02', '01', 'Bellavista', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220202', 'distrito', '22', '02', '02', 'Alto Biavo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220203', 'distrito', '22', '02', '03', 'Bajo Biavo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220204', 'distrito', '22', '02', '04', 'Huallaga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220205', 'distrito', '22', '02', '05', 'San Pablo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220206', 'distrito', '22', '02', '06', 'San Rafael', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220300', 'provincia', '22', '03', '00', 'El Dorado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220301', 'distrito', '22', '03', '01', 'San Jose de Sisa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220302', 'distrito', '22', '03', '02', 'Agua Blanca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220303', 'distrito', '22', '03', '03', 'San Martin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220304', 'distrito', '22', '03', '04', 'Santa Rosa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220305', 'distrito', '22', '03', '05', 'Shatoja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220400', 'provincia', '22', '04', '00', 'Huallaga', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220401', 'distrito', '22', '04', '01', 'Saposoa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220402', 'distrito', '22', '04', '02', 'Alto Saposoa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220403', 'distrito', '22', '04', '03', 'El Eslabon', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220404', 'distrito', '22', '04', '04', 'Piscoyacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220405', 'distrito', '22', '04', '05', 'Sacanche', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220406', 'distrito', '22', '04', '06', 'Tingo de Saposoa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220500', 'provincia', '22', '05', '00', 'Lamas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220501', 'distrito', '22', '05', '01', 'Lamas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220502', 'distrito', '22', '05', '02', 'Alonso de Alvarado', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220503', 'distrito', '22', '05', '03', 'Barranquita', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220504', 'distrito', '22', '05', '04', 'Caynarachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220505', 'distrito', '22', '05', '05', 'Cuñumbuqui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220506', 'distrito', '22', '05', '06', 'Pinto Recodo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220507', 'distrito', '22', '05', '07', 'Rumisapa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220508', 'distrito', '22', '05', '08', 'San Roque de Cumbaza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220509', 'distrito', '22', '05', '09', 'Shanao', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220510', 'distrito', '22', '05', '10', 'Tabalosos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220511', 'distrito', '22', '05', '11', 'Zapatero', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220600', 'provincia', '22', '06', '00', 'Mariscal Caceres', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220601', 'distrito', '22', '06', '01', 'Juanjui', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220602', 'distrito', '22', '06', '02', 'Campanilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220603', 'distrito', '22', '06', '03', 'Huicungo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220604', 'distrito', '22', '06', '04', 'Pachiza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220605', 'distrito', '22', '06', '05', 'Pajarillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220700', 'provincia', '22', '07', '00', 'Picota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220701', 'distrito', '22', '07', '01', 'Picota', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220702', 'distrito', '22', '07', '02', 'Buenos Aires', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220703', 'distrito', '22', '07', '03', 'Caspisapa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220704', 'distrito', '22', '07', '04', 'Pilluana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220705', 'distrito', '22', '07', '05', 'Pucacaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220706', 'distrito', '22', '07', '06', 'San Cristobal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220707', 'distrito', '22', '07', '07', 'San Hilarion', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220708', 'distrito', '22', '07', '08', 'Shamboyacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220709', 'distrito', '22', '07', '09', 'Tingo de Ponasa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220710', 'distrito', '22', '07', '10', 'Tres Unidos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220800', 'provincia', '22', '08', '00', 'Rioja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220801', 'distrito', '22', '08', '01', 'Rioja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220802', 'distrito', '22', '08', '02', 'Awajun', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220803', 'distrito', '22', '08', '03', 'Elias Soplin Vargas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220804', 'distrito', '22', '08', '04', 'Nueva Cajamarca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220805', 'distrito', '22', '08', '05', 'Pardo Miguel', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220806', 'distrito', '22', '08', '06', 'Posic', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220807', 'distrito', '22', '08', '07', 'San Fernando', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220808', 'distrito', '22', '08', '08', 'Yorongos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220809', 'distrito', '22', '08', '09', 'Yuracyacu', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220900', 'provincia', '22', '09', '00', 'San Martin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220901', 'distrito', '22', '09', '01', 'Tarapoto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220902', 'distrito', '22', '09', '02', 'Alberto Leveau', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220903', 'distrito', '22', '09', '03', 'Cacatachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220904', 'distrito', '22', '09', '04', 'Chazuta', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220905', 'distrito', '22', '09', '05', 'Chipurana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220906', 'distrito', '22', '09', '06', 'El Porvenir', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220907', 'distrito', '22', '09', '07', 'Huimbayoc', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220908', 'distrito', '22', '09', '08', 'Juan Guerra', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220909', 'distrito', '22', '09', '09', 'La Banda de Shilcayo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220910', 'distrito', '22', '09', '10', 'Morales', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220911', 'distrito', '22', '09', '11', 'Papaplaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220912', 'distrito', '22', '09', '12', 'San Antonio', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220913', 'distrito', '22', '09', '13', 'Sauce', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('220914', 'distrito', '22', '09', '14', 'Shapaja', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221000', 'provincia', '22', '10', '00', 'Tocache', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221001', 'distrito', '22', '10', '01', 'Tocache', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221002', 'distrito', '22', '10', '02', 'Nuevo Progreso', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221003', 'distrito', '22', '10', '03', 'Polvora', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221004', 'distrito', '22', '10', '04', 'Shunte', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('221005', 'distrito', '22', '10', '05', 'Uchiza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230000', 'departamento', '23', '00', '00', 'Tacna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230100', 'provincia', '23', '01', '00', 'Tacna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230101', 'distrito', '23', '01', '01', 'Tacna', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230102', 'distrito', '23', '01', '02', 'Alto de La Alianza', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230103', 'distrito', '23', '01', '03', 'Calana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230104', 'distrito', '23', '01', '04', 'Ciudad Nueva', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230105', 'distrito', '23', '01', '05', 'Inclan', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230106', 'distrito', '23', '01', '06', 'Pachia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230107', 'distrito', '23', '01', '07', 'Palca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230108', 'distrito', '23', '01', '08', 'Pocollay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230109', 'distrito', '23', '01', '09', 'Sama', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230110', 'distrito', '23', '01', '10', 'Coronel Gregorio Albarracin Lanchipa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230111', 'distrito', '23', '01', '11', 'La Yarada-Los Palos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230200', 'provincia', '23', '02', '00', 'Candarave', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230201', 'distrito', '23', '02', '01', 'Candarave', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230202', 'distrito', '23', '02', '02', 'Cairani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230203', 'distrito', '23', '02', '03', 'Camilaca', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230204', 'distrito', '23', '02', '04', 'Curibaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230205', 'distrito', '23', '02', '05', 'Huanuara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230206', 'distrito', '23', '02', '06', 'Quilahuani', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230300', 'provincia', '23', '03', '00', 'Jorge Basadre', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230301', 'distrito', '23', '03', '01', 'Locumba', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230302', 'distrito', '23', '03', '02', 'Ilabaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230303', 'distrito', '23', '03', '03', 'Ite', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230400', 'provincia', '23', '04', '00', 'Tarata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230401', 'distrito', '23', '04', '01', 'Tarata', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230402', 'distrito', '23', '04', '02', 'Heroes Albarracin', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230403', 'distrito', '23', '04', '03', 'Estique', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230404', 'distrito', '23', '04', '04', 'Estique-Pampa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230405', 'distrito', '23', '04', '05', 'Sitajara', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230406', 'distrito', '23', '04', '06', 'Susapaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230407', 'distrito', '23', '04', '07', 'Tarucachi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('230408', 'distrito', '23', '04', '08', 'Ticaco', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240000', 'departamento', '24', '00', '00', 'Tumbes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240100', 'provincia', '24', '01', '00', 'Tumbes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240101', 'distrito', '24', '01', '01', 'Tumbes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240102', 'distrito', '24', '01', '02', 'Corrales', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240103', 'distrito', '24', '01', '03', 'La Cruz', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240104', 'distrito', '24', '01', '04', 'Pampas de Hospital', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240105', 'distrito', '24', '01', '05', 'San Jacinto', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240106', 'distrito', '24', '01', '06', 'San Juan de La Virgen', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240200', 'provincia', '24', '02', '00', 'Contralmirante Villa', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240201', 'distrito', '24', '02', '01', 'Zorritos', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240202', 'distrito', '24', '02', '02', 'Casitas', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240203', 'distrito', '24', '02', '03', 'Canoas de Punta Sal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240300', 'provincia', '24', '03', '00', 'Zarumilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240301', 'distrito', '24', '03', '01', 'Zarumilla', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240302', 'distrito', '24', '03', '02', 'Aguas Verdes', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240303', 'distrito', '24', '03', '03', 'Matapalo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('240304', 'distrito', '24', '03', '04', 'Papayal', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250000', 'departamento', '25', '00', '00', 'Ucayali', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250100', 'provincia', '25', '01', '00', 'Coronel Portillo', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250101', 'distrito', '25', '01', '01', 'Calleria', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250102', 'distrito', '25', '01', '02', 'Campoverde', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250103', 'distrito', '25', '01', '03', 'Iparia', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250104', 'distrito', '25', '01', '04', 'Masisea', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250105', 'distrito', '25', '01', '05', 'Yarinacocha', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250106', 'distrito', '25', '01', '06', 'Nueva Requena', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250107', 'distrito', '25', '01', '07', 'Manantay', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250200', 'provincia', '25', '02', '00', 'Atalaya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250201', 'distrito', '25', '02', '01', 'Raymondi', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250202', 'distrito', '25', '02', '02', 'Sepahua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250203', 'distrito', '25', '02', '03', 'Tahuania', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250204', 'distrito', '25', '02', '04', 'Yurua', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250300', 'provincia', '25', '03', '00', 'Padre Abad', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250301', 'distrito', '25', '03', '01', 'Padre Abad', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250302', 'distrito', '25', '03', '02', 'Irazola', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250303', 'distrito', '25', '03', '03', 'Curimana', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250304', 'distrito', '25', '03', '04', 'Neshuya', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250305', 'distrito', '25', '03', '05', 'Alexander von Humboldt', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250400', 'provincia', '25', '04', '00', 'Purus', NULL, NULL);
INSERT INTO `ubigeos` VALUES ('250401', 'distrito', '25', '04', '01', 'Purus', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin Test', 'arhyel@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, '2025-02-22 03:35:31', '2025-02-22 03:35:31');

SET FOREIGN_KEY_CHECKS = 1;
