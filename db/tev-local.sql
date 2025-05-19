/*
 Navicat Premium Dump SQL

 Source Server         : PGLocal
 Source Server Type    : PostgreSQL
 Source Server Version : 150008 (150008)
 Source Host           : localhost:5432
 Source Catalog        : tiempos_en_vivo
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150008 (150008)
 File Encoding         : 65001

 Date: 02/05/2025 08:58:59
*/


-- ----------------------------
-- Sequence structure for categorias_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categorias_id_seq";
CREATE SEQUENCE "public"."categorias_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for drivers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drivers_id_seq";
CREATE SEQUENCE "public"."drivers_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for especials_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."especials_id_seq";
CREATE SEQUENCE "public"."especials_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for events_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."events_id_seq";
CREATE SEQUENCE "public"."events_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_clients_id_seq";
CREATE SEQUENCE "public"."oauth_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_personal_access_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_personal_access_clients_id_seq";
CREATE SEQUENCE "public"."oauth_personal_access_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for opartidas_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."opartidas_id_seq";
CREATE SEQUENCE "public"."opartidas_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for orgs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."orgs_id_seq";
CREATE SEQUENCE "public"."orgs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for parametros_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."parametros_id_seq";
CREATE SEQUENCE "public"."parametros_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permissions_id_seq";
CREATE SEQUENCE "public"."permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for personal_access_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."personal_access_tokens_id_seq";
CREATE SEQUENCE "public"."personal_access_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roles_id_seq";
CREATE SEQUENCE "public"."roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tiempos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tiempos_id_seq";
CREATE SEQUENCE "public"."tiempos_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tripulacions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tripulacions_id_seq";
CREATE SEQUENCE "public"."tripulacions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS "public"."categorias";
CREATE TABLE "public"."categorias" (
  "id" int8 NOT NULL DEFAULT nextval('categorias_id_seq'::regclass),
  "event_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO "public"."categorias" VALUES (14, 2, 'TIN', '2024-12-22 16:51:36', '2024-12-22 16:51:36');
INSERT INTO "public"."categorias" VALUES (15, 2, 'TIL', '2024-12-22 16:51:39', '2024-12-22 16:51:39');
INSERT INTO "public"."categorias" VALUES (16, 2, 'ST', '2024-12-22 16:51:44', '2024-12-22 16:51:44');
INSERT INTO "public"."categorias" VALUES (17, 2, 'S2000', '2024-12-22 16:51:51', '2024-12-22 16:51:51');
INSERT INTO "public"."categorias" VALUES (18, 2, 'S1600', '2024-12-22 16:51:54', '2024-12-22 16:51:58');
INSERT INTO "public"."categorias" VALUES (19, 2, 'JOYNER', '2024-12-22 16:52:04', '2024-12-22 16:52:04');
INSERT INTO "public"."categorias" VALUES (20, 2, 'PROMO', '2024-12-22 16:52:08', '2024-12-22 16:52:08');
INSERT INTO "public"."categorias" VALUES (25, 4, 'TIP', '2025-03-16 17:55:33', '2025-03-16 17:55:33');
INSERT INTO "public"."categorias" VALUES (26, 4, 'TIL', '2025-03-16 17:55:38', '2025-03-16 17:55:38');
INSERT INTO "public"."categorias" VALUES (27, 4, 'ST', '2025-03-16 17:55:43', '2025-03-16 17:55:43');
INSERT INTO "public"."categorias" VALUES (28, 4, 'S2000', '2025-03-16 17:55:52', '2025-03-16 17:55:52');
INSERT INTO "public"."categorias" VALUES (29, 4, 'S1600', '2025-03-16 17:55:57', '2025-03-16 17:55:57');
INSERT INTO "public"."categorias" VALUES (30, 4, 'JOYNER', '2025-03-16 17:56:14', '2025-03-16 17:56:14');
INSERT INTO "public"."categorias" VALUES (31, 4, 'PROMO', '2025-03-16 20:08:07', '2025-03-16 20:08:07');
INSERT INTO "public"."categorias" VALUES (32, 4, 'CAM', '2025-03-16 20:12:07', '2025-03-16 20:12:07');
INSERT INTO "public"."categorias" VALUES (33, 5, 'Rally 4', '2025-04-02 01:53:31', '2025-04-02 01:53:31');
INSERT INTO "public"."categorias" VALUES (34, 5, 'TIN', '2025-04-02 01:53:39', '2025-04-02 01:53:39');
INSERT INTO "public"."categorias" VALUES (35, 5, 'CAM', '2025-04-02 01:53:46', '2025-04-02 01:53:46');
INSERT INTO "public"."categorias" VALUES (36, 5, 'ST', '2025-04-02 01:53:57', '2025-04-02 01:53:57');
INSERT INTO "public"."categorias" VALUES (37, 5, 'S2000', '2025-04-02 01:54:05', '2025-04-02 01:54:05');
INSERT INTO "public"."categorias" VALUES (38, 5, 'S1600', '2025-04-02 01:54:10', '2025-04-02 01:54:10');
INSERT INTO "public"."categorias" VALUES (40, 8, 'TIL', '2025-04-27 00:53:20', '2025-04-27 00:53:20');
INSERT INTO "public"."categorias" VALUES (41, 8, 'ST', '2025-04-27 00:53:25', '2025-04-27 00:53:25');
INSERT INTO "public"."categorias" VALUES (42, 8, 'S2000', '2025-04-27 00:53:45', '2025-04-27 00:53:45');
INSERT INTO "public"."categorias" VALUES (43, 8, 'S1600', '2025-04-27 00:53:52', '2025-04-27 00:53:52');
INSERT INTO "public"."categorias" VALUES (44, 8, 'CAM', '2025-04-27 00:53:55', '2025-04-27 00:53:55');
INSERT INTO "public"."categorias" VALUES (45, 8, 'JOYNER', '2025-04-27 00:54:00', '2025-04-27 00:54:00');

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS "public"."drivers";
CREATE TABLE "public"."drivers" (
  "id" int8 NOT NULL DEFAULT nextval('drivers_id_seq'::regclass),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "apellidos" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nacionalidad" varchar(100) COLLATE "pg_catalog"."default",
  "tipo_sangre" varchar(10) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date,
  "foto_url" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of drivers
-- ----------------------------
INSERT INTO "public"."drivers" VALUES (1, 'Anibal', 'Aliaga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (2, 'Diego', 'Malaga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (3, 'Alvaro', 'Silva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (4, 'Percy', 'Ccoyo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (5, 'Luis', 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (6, 'Dany', 'Leiva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (7, 'Isaac', 'Paliza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (8, 'Ronaldo', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (9, 'José', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (10, 'Fabiola', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (11, 'David', 'Fernandez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (12, 'Alfredo', 'Peralta', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (13, 'Cesar', 'Vega', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (14, 'Nelson', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (15, 'Carlos', 'Zegarra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (16, 'Paul', 'Olazabal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (17, 'Luis', 'Ledesma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (18, 'David', 'Cahuana', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (19, 'Takeo', 'Matayoshi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (20, 'Santiago', 'Aguayo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (21, 'Marlon', 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (22, 'Fredy', 'Pezua', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (23, 'Junior', 'Ellesca', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (24, 'Jenrry', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (25, 'Gustavo', 'Vilcapoma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (26, 'Jorge', 'Hirose', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (27, 'Raúl', 'Romero', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (28, 'Mandela', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (29, 'Edgardo', 'Arimborgo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (30, 'Ricardo', 'Mendiola', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (31, 'Jeff', 'Gavancho', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (32, 'Celestino', 'Garrido', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (33, 'Ricardo', 'Dasso', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (34, 'Miguel', 'Alayza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (35, 'Rosmel', 'Chumpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (36, 'Marko', 'Garces', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (37, 'Roberto', 'Parraga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (38, 'Vidal', 'Barrantes', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (39, 'Jimber', 'Aramayo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (40, 'Luis', 'Alayza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (41, 'Edison', 'Loa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (42, 'Ronmel', 'Palomino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (43, 'Richard', 'Palomino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (44, 'Rolynd', 'Juarez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (45, 'Andre', 'Martinez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (46, 'Jorge', 'Martinez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (47, 'Manuel', 'Yañez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (48, 'Raúl', 'Ccoyo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (49, 'Carlos', 'Castro', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (50, 'Samuel', 'Dyer', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (51, 'Joe', 'Zagal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (52, 'Eduardo', 'Castro', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (53, 'Samuel', 'Benedetti', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (54, 'Raul', 'Velit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (55, 'Javier', 'Arce', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (56, 'Javier', 'Marchese', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (57, 'Oswaldo', 'Carbone', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (58, 'Paolo', 'Zani', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (59, 'Miguel', 'Makino', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (60, 'Jehndie', 'Tapia', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (61, 'Armando', 'Sugobono', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (62, 'Ricardo', 'Saloma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (63, 'Lino', 'Bernachea', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (64, 'Thais', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (65, 'Paul', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (66, 'Keyko', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (67, 'Jose', 'Amador', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (68, 'Josmell', 'Peralta', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (69, 'Nicolas', 'Vega', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (70, 'Erik', 'Quispe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (71, 'Renzo', 'Gutierrez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (72, 'Facundo', 'Olazabal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (73, 'Juan', 'Cueva', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (74, 'Erick', 'Alarcon', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (75, 'Carlos', 'Asencio', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (76, 'Cesar', 'Suarez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (77, 'Edwin', 'Saravia', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (78, 'Luis', 'Chumpitaz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (79, 'Joel', 'Escobar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (80, 'Franklin', 'Ellesca', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (81, 'Renzo', 'Carpio', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (82, 'Monica', 'Espinoza', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (83, 'Julio', 'Sota', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (84, 'Jose', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (85, 'Ronald', 'Llihua', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (86, 'Gonzalo', 'Mendiola', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (87, 'Maicol', 'Silvera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (88, 'Percy', 'Salcedo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (89, 'Alvaro', 'Rivera', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (90, 'Renzo', 'Lercari', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (91, 'Jaime', 'Zeballos', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (92, 'Orlando', 'Pittaluga', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (93, 'Reynaldo', 'Chumpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (94, 'Diego', 'Oblitas', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (95, 'Ronald', 'Uribe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (96, 'Ademir', 'Huallpa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (97, 'Ivan', 'Figueroa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (98, 'Gabriel', 'Lozada', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (99, 'Edgar', 'Loa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (100, 'Gustavo', 'Medina', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (101, 'Ronald', 'Laurante', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (102, 'Matias', 'Aranguren', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (103, 'Jose', 'Aros', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (104, 'Manuel', 'Villafuerte', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (105, 'Miguel', 'Saavedra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (106, 'Carlos', 'Peral', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (107, 'José', 'Bedoya', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (108, 'Diego', 'Vallejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (109, 'Julio', 'Mickle', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (110, 'Manuel', 'Nuñez', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (111, 'Julio', 'Echazu', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (112, 'Mario', 'Costa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (113, 'Jhohan', 'Castillo L.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (114, 'Ricardo', 'Flores R.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (115, 'Carlos', 'Fernandez F.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (116, 'Carlos', 'Fernandez Z.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (117, 'Jhohan', 'Castillo R.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (118, 'Samuel', 'Dyer Jr.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (119, 'Jose Carlos', 'Vallejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (120, 'Jesus Ll', 'Chullo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (121, 'Juan Carlos', 'Cornejo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (122, 'Juan Pedro', 'Cilloniz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."drivers" VALUES (123, 'Miguel', 'Quispe', NULL, NULL, NULL, NULL, '2024-12-22 16:52:47', '2024-12-22 16:52:47');
INSERT INTO "public"."drivers" VALUES (124, 'Erick', 'Alarcon', NULL, NULL, NULL, NULL, '2024-12-22 16:52:56', '2024-12-22 16:52:56');
INSERT INTO "public"."drivers" VALUES (125, 'Gilmer', 'Salas', NULL, NULL, NULL, NULL, '2024-12-22 16:53:05', '2024-12-22 16:53:05');
INSERT INTO "public"."drivers" VALUES (126, 'Oscar', 'Salas', NULL, NULL, NULL, NULL, '2024-12-22 16:53:14', '2024-12-22 16:53:14');
INSERT INTO "public"."drivers" VALUES (127, 'Alexander', 'Barrientos', NULL, NULL, NULL, NULL, '2024-12-22 16:53:27', '2024-12-22 16:53:27');
INSERT INTO "public"."drivers" VALUES (128, 'Julio', 'Huacasi', NULL, NULL, NULL, NULL, '2024-12-22 16:53:38', '2024-12-22 16:53:38');
INSERT INTO "public"."drivers" VALUES (129, 'Marco', 'Quintana', NULL, NULL, NULL, NULL, '2024-12-22 16:53:50', '2024-12-22 16:53:50');
INSERT INTO "public"."drivers" VALUES (130, 'Jimmy', 'Gomez', NULL, NULL, NULL, NULL, '2024-12-22 16:54:00', '2024-12-22 16:54:00');
INSERT INTO "public"."drivers" VALUES (131, 'Juan', 'Moreno', NULL, NULL, NULL, NULL, '2024-12-22 16:54:08', '2024-12-22 16:54:08');
INSERT INTO "public"."drivers" VALUES (132, 'German', 'Sihuayro', NULL, NULL, NULL, NULL, '2024-12-22 16:54:17', '2024-12-22 16:54:17');
INSERT INTO "public"."drivers" VALUES (133, 'Washinton', 'Marron', NULL, NULL, NULL, NULL, '2024-12-22 16:54:27', '2024-12-22 16:54:27');
INSERT INTO "public"."drivers" VALUES (134, 'Rodolfo', 'La Torre', NULL, NULL, NULL, NULL, '2024-12-22 16:54:35', '2024-12-22 16:54:35');
INSERT INTO "public"."drivers" VALUES (135, 'Ayrton', 'Ortega', NULL, NULL, NULL, NULL, '2024-12-22 16:54:45', '2024-12-22 16:54:45');
INSERT INTO "public"."drivers" VALUES (136, 'Leonardo', 'Cuba', NULL, NULL, NULL, NULL, '2024-12-22 16:54:54', '2024-12-22 16:54:54');
INSERT INTO "public"."drivers" VALUES (137, 'Pedro', 'Ñaca', NULL, NULL, NULL, NULL, '2024-12-22 16:55:00', '2024-12-22 16:55:00');
INSERT INTO "public"."drivers" VALUES (138, 'Shirley', 'Ñaca', NULL, NULL, NULL, NULL, '2024-12-22 16:55:11', '2024-12-22 16:55:11');
INSERT INTO "public"."drivers" VALUES (139, 'Mario', 'Gamero', NULL, NULL, NULL, NULL, '2024-12-22 16:55:26', '2024-12-22 16:55:26');
INSERT INTO "public"."drivers" VALUES (140, 'Roands', 'Gamero', NULL, NULL, NULL, NULL, '2024-12-22 16:55:37', '2024-12-22 16:55:37');
INSERT INTO "public"."drivers" VALUES (141, 'Ray', 'Chirinos', NULL, NULL, NULL, NULL, '2024-12-22 16:55:44', '2024-12-22 16:55:44');
INSERT INTO "public"."drivers" VALUES (142, 'Eder', 'Chirinos', NULL, NULL, NULL, NULL, '2024-12-22 16:55:50', '2024-12-22 16:55:50');
INSERT INTO "public"."drivers" VALUES (143, 'Anthony', 'Fernandez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:02', '2024-12-22 16:56:02');
INSERT INTO "public"."drivers" VALUES (144, 'Maricarmen', 'Fernandez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:08', '2024-12-22 16:56:08');
INSERT INTO "public"."drivers" VALUES (145, 'Godofredo', 'Pari', NULL, NULL, NULL, NULL, '2024-12-22 16:56:17', '2024-12-22 16:56:17');
INSERT INTO "public"."drivers" VALUES (146, 'Nilson', 'Perez', NULL, NULL, NULL, NULL, '2024-12-22 16:56:23', '2024-12-22 16:56:23');
INSERT INTO "public"."drivers" VALUES (147, 'Ronald', 'Machicado', NULL, NULL, NULL, NULL, '2024-12-22 16:56:29', '2024-12-22 16:56:29');
INSERT INTO "public"."drivers" VALUES (148, 'Wilson', 'Mujica', NULL, NULL, NULL, NULL, '2024-12-22 16:56:38', '2024-12-22 16:56:38');
INSERT INTO "public"."drivers" VALUES (149, 'Fernando', 'Quintana', NULL, NULL, NULL, NULL, '2024-12-22 16:56:45', '2024-12-22 16:56:45');
INSERT INTO "public"."drivers" VALUES (150, 'Alexis', 'Ponce', NULL, NULL, NULL, NULL, '2024-12-22 16:56:54', '2024-12-22 16:56:54');
INSERT INTO "public"."drivers" VALUES (151, 'Walter', 'Achata', NULL, NULL, NULL, NULL, '2024-12-22 16:57:02', '2024-12-22 16:57:02');
INSERT INTO "public"."drivers" VALUES (152, 'Ever', 'Vilca', NULL, NULL, NULL, NULL, '2024-12-22 16:57:08', '2024-12-22 16:57:08');
INSERT INTO "public"."drivers" VALUES (153, 'Fisher', 'Quispe', NULL, NULL, NULL, NULL, '2024-12-22 16:57:14', '2024-12-22 16:57:14');
INSERT INTO "public"."drivers" VALUES (154, 'Erick', 'Ocampo', NULL, NULL, NULL, NULL, '2024-12-22 16:57:22', '2024-12-22 16:57:22');
INSERT INTO "public"."drivers" VALUES (155, 'Jeancarlo', 'Bellido', NULL, NULL, NULL, NULL, '2024-12-22 16:57:27', '2024-12-22 16:57:27');
INSERT INTO "public"."drivers" VALUES (156, 'Ronald', 'Cuba', NULL, NULL, NULL, NULL, '2024-12-22 16:57:35', '2024-12-22 16:57:35');
INSERT INTO "public"."drivers" VALUES (157, 'Ronal', 'Ancori', NULL, NULL, NULL, NULL, '2025-02-08 05:17:49', '2025-02-08 05:17:49');
INSERT INTO "public"."drivers" VALUES (158, 'Carlos', 'Tapara', NULL, NULL, NULL, NULL, '2025-02-08 05:18:03', '2025-02-08 05:18:03');
INSERT INTO "public"."drivers" VALUES (159, 'Edwin', 'Luna', NULL, NULL, NULL, NULL, '2025-02-08 05:18:14', '2025-02-08 05:18:14');
INSERT INTO "public"."drivers" VALUES (160, 'Alex', 'Gutierrez', NULL, NULL, NULL, NULL, '2025-02-08 05:18:45', '2025-02-08 05:18:45');
INSERT INTO "public"."drivers" VALUES (161, 'Yony', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:18:59', '2025-02-08 05:18:59');
INSERT INTO "public"."drivers" VALUES (162, 'Kenyo', 'Choque', NULL, NULL, NULL, NULL, '2025-02-08 05:19:09', '2025-02-08 05:19:09');
INSERT INTO "public"."drivers" VALUES (163, 'Demetrio', 'Taype', NULL, NULL, NULL, NULL, '2025-02-08 05:19:29', '2025-02-08 05:19:29');
INSERT INTO "public"."drivers" VALUES (164, 'Aldo', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:19:42', '2025-02-08 05:19:42');
INSERT INTO "public"."drivers" VALUES (165, 'José', 'Carrasco', NULL, NULL, NULL, NULL, '2025-02-08 05:19:52', '2025-02-08 05:19:52');
INSERT INTO "public"."drivers" VALUES (166, 'Yhenrry', 'Ccoyto', NULL, NULL, NULL, NULL, '2025-02-08 05:20:11', '2025-02-08 05:20:11');
INSERT INTO "public"."drivers" VALUES (167, 'Walter', 'Gutierrez', NULL, NULL, NULL, NULL, '2025-02-08 05:20:39', '2025-02-08 05:20:39');
INSERT INTO "public"."drivers" VALUES (168, 'Jorge', 'Vilca', NULL, NULL, NULL, NULL, '2025-02-08 05:20:48', '2025-02-08 05:20:48');
INSERT INTO "public"."drivers" VALUES (169, 'Rudy', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 05:20:57', '2025-02-08 05:20:57');
INSERT INTO "public"."drivers" VALUES (170, 'Franshei', 'Perales', NULL, NULL, NULL, NULL, '2025-02-08 05:21:31', '2025-02-08 05:21:31');
INSERT INTO "public"."drivers" VALUES (171, 'Froylan', 'Luna', NULL, NULL, NULL, NULL, '2025-02-08 05:21:42', '2025-02-08 05:21:42');
INSERT INTO "public"."drivers" VALUES (172, 'Michael', 'Villagra', NULL, NULL, NULL, NULL, '2025-02-08 05:21:54', '2025-02-08 05:21:54');
INSERT INTO "public"."drivers" VALUES (173, 'Leonel', 'Murillo', NULL, NULL, NULL, NULL, '2025-02-08 05:22:10', '2025-02-08 05:22:10');
INSERT INTO "public"."drivers" VALUES (174, 'Rudy', 'Mamani', NULL, NULL, NULL, NULL, '2025-02-08 05:22:21', '2025-02-08 05:22:21');
INSERT INTO "public"."drivers" VALUES (175, 'Gilber', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:22:30', '2025-02-08 05:22:30');
INSERT INTO "public"."drivers" VALUES (176, 'Hector', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:22:51', '2025-02-08 05:22:51');
INSERT INTO "public"."drivers" VALUES (177, 'Osbaldo', 'Solis', NULL, NULL, NULL, NULL, '2025-02-08 05:23:05', '2025-02-08 05:23:05');
INSERT INTO "public"."drivers" VALUES (178, 'Jhampier', 'Huancco', NULL, NULL, NULL, NULL, '2025-02-08 05:23:43', '2025-02-08 05:23:43');
INSERT INTO "public"."drivers" VALUES (179, 'Walter', 'Pacco', NULL, NULL, NULL, NULL, '2025-02-08 05:24:05', '2025-02-08 05:24:05');
INSERT INTO "public"."drivers" VALUES (180, 'Rolin', 'Humalla', NULL, NULL, NULL, NULL, '2025-02-08 05:24:17', '2025-02-08 05:24:17');
INSERT INTO "public"."drivers" VALUES (181, 'Alberto', 'Pumaquispe', NULL, NULL, NULL, NULL, '2025-02-08 05:24:30', '2025-02-08 05:24:30');
INSERT INTO "public"."drivers" VALUES (182, 'Arturo', 'Puma', NULL, NULL, NULL, NULL, '2025-02-08 05:24:39', '2025-02-08 05:24:39');
INSERT INTO "public"."drivers" VALUES (183, 'Jhan', 'Linares', NULL, NULL, NULL, NULL, '2025-02-08 05:24:51', '2025-02-08 05:24:51');
INSERT INTO "public"."drivers" VALUES (184, 'Yonel', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:25:01', '2025-02-08 05:25:01');
INSERT INTO "public"."drivers" VALUES (185, 'Nicanor', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:25:17', '2025-02-08 05:25:17');
INSERT INTO "public"."drivers" VALUES (186, 'Rene', 'Caceres', NULL, NULL, NULL, NULL, '2025-02-08 05:25:30', '2025-02-08 05:25:30');
INSERT INTO "public"."drivers" VALUES (187, 'Jhon', 'Copa', NULL, NULL, NULL, NULL, '2025-02-08 05:25:45', '2025-02-08 05:25:45');
INSERT INTO "public"."drivers" VALUES (188, 'Fidel', 'Mamani', NULL, NULL, NULL, NULL, '2025-02-08 05:25:56', '2025-02-08 05:25:56');
INSERT INTO "public"."drivers" VALUES (189, 'Sergio', 'Choque', NULL, NULL, NULL, NULL, '2025-02-08 05:26:06', '2025-02-08 05:26:06');
INSERT INTO "public"."drivers" VALUES (190, 'Alex', 'Aguilar', NULL, NULL, NULL, NULL, '2025-02-08 05:26:18', '2025-02-08 05:26:18');
INSERT INTO "public"."drivers" VALUES (191, 'Fredy', 'Turpo', NULL, NULL, NULL, NULL, '2025-02-08 05:26:27', '2025-02-08 05:26:27');
INSERT INTO "public"."drivers" VALUES (192, 'Samuel', 'Chicahuari', NULL, NULL, NULL, NULL, '2025-02-08 05:26:41', '2025-02-08 05:26:41');
INSERT INTO "public"."drivers" VALUES (193, 'Alex', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:27:10', '2025-02-08 05:27:10');
INSERT INTO "public"."drivers" VALUES (194, 'Luis', 'Pari', NULL, NULL, NULL, NULL, '2025-02-08 05:28:02', '2025-02-08 05:28:02');
INSERT INTO "public"."drivers" VALUES (195, 'Finehas', 'Salgado', NULL, NULL, NULL, NULL, '2025-02-08 05:28:21', '2025-02-08 05:28:21');
INSERT INTO "public"."drivers" VALUES (196, 'Aldair', 'Ramos', NULL, NULL, NULL, NULL, '2025-02-08 05:28:33', '2025-02-08 05:28:33');
INSERT INTO "public"."drivers" VALUES (197, 'Randy', 'Murillo', NULL, NULL, NULL, NULL, '2025-02-08 05:28:43', '2025-02-08 05:28:43');
INSERT INTO "public"."drivers" VALUES (198, 'Meyshon', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:28:56', '2025-02-08 05:28:56');
INSERT INTO "public"."drivers" VALUES (199, 'Royer', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 05:29:08', '2025-02-08 05:29:08');
INSERT INTO "public"."drivers" VALUES (200, 'Oscar', 'Apaza', NULL, NULL, NULL, NULL, '2025-02-08 05:29:24', '2025-02-08 05:29:24');
INSERT INTO "public"."drivers" VALUES (201, 'Abelardo', 'Quiñones', NULL, NULL, NULL, NULL, '2025-02-08 05:29:45', '2025-02-08 05:29:45');
INSERT INTO "public"."drivers" VALUES (202, 'Rudy', 'Quiñones', NULL, NULL, NULL, NULL, '2025-02-08 05:29:57', '2025-02-08 05:29:57');
INSERT INTO "public"."drivers" VALUES (203, 'Plasido', 'Anahua', NULL, NULL, NULL, NULL, '2025-02-08 05:30:09', '2025-02-08 05:30:09');
INSERT INTO "public"."drivers" VALUES (204, 'Ubert', 'Martinez', NULL, NULL, NULL, NULL, '2025-02-08 05:30:20', '2025-02-08 05:30:20');
INSERT INTO "public"."drivers" VALUES (205, 'Juan', 'Huaricallo', NULL, NULL, NULL, NULL, '2025-02-08 05:30:31', '2025-02-08 05:30:31');
INSERT INTO "public"."drivers" VALUES (206, 'Froilan', 'Ccoyto', NULL, NULL, NULL, NULL, '2025-02-08 05:31:01', '2025-02-08 05:31:01');
INSERT INTO "public"."drivers" VALUES (207, 'Henrry', 'Peralta', NULL, NULL, NULL, NULL, '2025-02-08 05:31:13', '2025-02-08 05:31:13');
INSERT INTO "public"."drivers" VALUES (208, 'Jorge', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:31:25', '2025-02-08 05:31:25');
INSERT INTO "public"."drivers" VALUES (209, 'Sergio', 'Chura', NULL, NULL, NULL, NULL, '2025-02-08 05:31:35', '2025-02-08 05:31:35');
INSERT INTO "public"."drivers" VALUES (210, 'Adrian', 'Huaman', NULL, NULL, NULL, NULL, '2025-02-08 05:31:47', '2025-02-08 05:31:47');
INSERT INTO "public"."drivers" VALUES (211, 'Rene', 'Onofre', NULL, NULL, NULL, NULL, '2025-02-08 05:31:57', '2025-02-08 05:31:57');
INSERT INTO "public"."drivers" VALUES (212, 'Ronal', 'Mendoza', NULL, NULL, NULL, NULL, '2025-02-08 05:32:12', '2025-02-08 05:32:12');
INSERT INTO "public"."drivers" VALUES (213, 'Diego', 'Choquehuayta', NULL, NULL, NULL, NULL, '2025-02-08 05:32:25', '2025-02-08 05:32:25');
INSERT INTO "public"."drivers" VALUES (214, 'Sixto', 'Huaquisto', NULL, NULL, NULL, NULL, '2025-02-08 05:32:37', '2025-02-08 05:32:37');
INSERT INTO "public"."drivers" VALUES (215, 'Sergio', 'Quispe', NULL, NULL, NULL, NULL, '2025-02-08 05:32:45', '2025-02-08 05:32:45');
INSERT INTO "public"."drivers" VALUES (216, 'Efrain', 'Vasquez', NULL, NULL, NULL, NULL, '2025-02-08 05:32:56', '2025-02-08 05:32:56');
INSERT INTO "public"."drivers" VALUES (217, 'Michael', 'Abirro', NULL, NULL, NULL, NULL, '2025-02-08 05:33:07', '2025-02-08 05:33:07');
INSERT INTO "public"."drivers" VALUES (218, '-', '-', NULL, NULL, NULL, NULL, '2025-02-08 05:33:22', '2025-02-08 05:33:22');
INSERT INTO "public"."drivers" VALUES (219, 'Levi', 'Rojas', NULL, NULL, NULL, NULL, '2025-02-08 14:20:22', '2025-02-08 14:20:22');
INSERT INTO "public"."drivers" VALUES (220, 'Jhampier', 'Castro', NULL, NULL, NULL, NULL, '2025-02-08 14:20:40', '2025-02-08 14:20:40');
INSERT INTO "public"."drivers" VALUES (221, 'Richard', 'Mollo', NULL, NULL, NULL, NULL, '2025-02-08 14:20:56', '2025-02-08 14:20:56');
INSERT INTO "public"."drivers" VALUES (222, 'Fortunato', 'Lope', NULL, NULL, NULL, NULL, '2025-02-08 14:21:10', '2025-02-08 14:21:10');
INSERT INTO "public"."drivers" VALUES (223, 'Yoneton', 'Flores', NULL, NULL, NULL, NULL, '2025-02-08 14:21:58', '2025-02-08 14:21:58');
INSERT INTO "public"."drivers" VALUES (224, 'Felipe', 'Pequeño', NULL, NULL, NULL, NULL, '2025-02-08 14:22:08', '2025-02-08 14:22:08');
INSERT INTO "public"."drivers" VALUES (225, 'Johann', 'Lanza', NULL, NULL, NULL, NULL, '2025-03-16 17:57:32', '2025-03-16 17:57:32');
INSERT INTO "public"."drivers" VALUES (226, 'Sergio', 'Valencia', NULL, NULL, NULL, NULL, '2025-03-16 18:04:15', '2025-03-16 18:04:15');
INSERT INTO "public"."drivers" VALUES (227, 'Yinelsy', 'Gamero', NULL, NULL, NULL, NULL, '2025-03-16 18:04:37', '2025-03-16 18:04:37');
INSERT INTO "public"."drivers" VALUES (228, 'Alex', 'Cruz', NULL, NULL, NULL, NULL, '2025-03-16 18:08:29', '2025-03-16 18:08:29');
INSERT INTO "public"."drivers" VALUES (229, 'Leonardo', 'Cruz', NULL, NULL, NULL, NULL, '2025-03-16 18:08:36', '2025-03-16 18:08:36');
INSERT INTO "public"."drivers" VALUES (230, 'Jim Rossel', 'Mejia', NULL, NULL, NULL, NULL, '2025-03-16 18:11:03', '2025-03-16 18:11:03');
INSERT INTO "public"."drivers" VALUES (231, 'Alonso', 'Ávalos', NULL, NULL, NULL, NULL, '2025-03-16 18:11:11', '2025-03-16 18:11:11');
INSERT INTO "public"."drivers" VALUES (232, 'Paulo', 'Gamero', NULL, NULL, NULL, NULL, '2025-03-16 18:12:08', '2025-03-16 18:12:08');
INSERT INTO "public"."drivers" VALUES (233, 'Carlos', 'Miovich', NULL, NULL, NULL, NULL, '2025-03-16 20:02:13', '2025-03-16 20:02:13');
INSERT INTO "public"."drivers" VALUES (234, 'Isaura', 'Huallpartupa', NULL, NULL, NULL, NULL, '2025-03-16 20:07:08', '2025-03-16 20:07:08');
INSERT INTO "public"."drivers" VALUES (235, 'Roger', 'Cruz', NULL, NULL, NULL, NULL, '2025-03-16 20:13:02', '2025-03-16 20:13:02');
INSERT INTO "public"."drivers" VALUES (236, 'Julio', 'Flores', NULL, NULL, NULL, NULL, '2025-03-16 20:14:59', '2025-03-16 20:14:59');
INSERT INTO "public"."drivers" VALUES (237, 'Daniel', 'Choque', NULL, NULL, NULL, NULL, '2025-03-16 20:56:05', '2025-03-16 20:56:05');
INSERT INTO "public"."drivers" VALUES (238, 'Bernardino', 'Huallpartupa', NULL, NULL, NULL, NULL, '2025-03-16 21:31:46', '2025-03-16 21:31:46');
INSERT INTO "public"."drivers" VALUES (239, 'César', 'Gamero C.', NULL, NULL, NULL, NULL, '2025-03-16 21:33:58', '2025-03-16 21:33:58');
INSERT INTO "public"."drivers" VALUES (240, 'Juan José', 'Luque', NULL, NULL, NULL, NULL, '2025-03-16 21:35:36', '2025-03-16 21:35:36');
INSERT INTO "public"."drivers" VALUES (241, 'Andre', 'Lozada', NULL, NULL, NULL, NULL, '2025-03-16 21:36:48', '2025-03-16 21:36:48');
INSERT INTO "public"."drivers" VALUES (242, 'Juan', 'Bellido', NULL, NULL, NULL, NULL, '2025-03-17 21:34:39', '2025-03-17 21:34:39');
INSERT INTO "public"."drivers" VALUES (243, 'José', 'Tomayconza', NULL, NULL, NULL, NULL, '2025-03-17 21:35:00', '2025-03-17 21:35:00');
INSERT INTO "public"."drivers" VALUES (244, 'Guillermo', 'Bellido', NULL, NULL, NULL, NULL, '2025-03-17 21:39:40', '2025-03-17 21:39:40');
INSERT INTO "public"."drivers" VALUES (245, 'Frank', 'Medina', NULL, NULL, NULL, NULL, '2025-03-17 21:39:54', '2025-03-17 21:39:54');
INSERT INTO "public"."drivers" VALUES (246, 'Enrique', 'Solorzano', NULL, NULL, NULL, NULL, '2025-03-17 21:42:08', '2025-03-17 21:42:08');
INSERT INTO "public"."drivers" VALUES (247, 'Miguel', 'Solorzano', NULL, NULL, NULL, NULL, '2025-03-17 21:42:15', '2025-03-17 21:42:15');
INSERT INTO "public"."drivers" VALUES (248, 'Arbin', 'Sánchez', NULL, NULL, NULL, NULL, '2025-03-17 23:06:52', '2025-03-17 23:06:52');
INSERT INTO "public"."drivers" VALUES (249, 'Elmer', 'Apaza', NULL, NULL, NULL, NULL, '2025-03-19 21:38:37', '2025-03-19 21:38:37');
INSERT INTO "public"."drivers" VALUES (250, 'Edisson', 'Apaza', NULL, NULL, NULL, NULL, '2025-03-19 21:49:17', '2025-03-19 21:49:17');
INSERT INTO "public"."drivers" VALUES (251, 'Otto', 'Guerra', NULL, NULL, NULL, NULL, '2025-03-19 21:50:07', '2025-03-19 21:50:07');
INSERT INTO "public"."drivers" VALUES (252, 'Fabrizio', 'Layme', NULL, NULL, NULL, NULL, '2025-03-19 21:56:24', '2025-03-19 21:56:24');
INSERT INTO "public"."drivers" VALUES (253, 'Ramiro', 'Torres', NULL, NULL, NULL, NULL, '2025-03-20 00:36:44', '2025-03-20 00:36:44');
INSERT INTO "public"."drivers" VALUES (254, 'Dany', 'Pérez', NULL, NULL, NULL, NULL, '2025-03-20 00:38:31', '2025-03-20 00:38:31');
INSERT INTO "public"."drivers" VALUES (255, 'Christian', 'Pérez', NULL, NULL, NULL, NULL, '2025-03-20 00:38:45', '2025-03-20 00:38:45');
INSERT INTO "public"."drivers" VALUES (256, 'Arturo', 'Quenaya', NULL, NULL, NULL, NULL, '2025-03-20 00:43:51', '2025-03-20 00:43:51');
INSERT INTO "public"."drivers" VALUES (257, 'Edy', 'Choquetaype', NULL, NULL, NULL, NULL, '2025-03-20 01:17:17', '2025-03-20 01:17:17');
INSERT INTO "public"."drivers" VALUES (258, 'Roberto', 'Cabanillas', NULL, NULL, NULL, NULL, '2025-04-02 01:39:07', '2025-04-02 01:39:07');
INSERT INTO "public"."drivers" VALUES (259, 'Crhistian', 'Santa María', NULL, NULL, NULL, NULL, '2025-04-02 01:39:21', '2025-04-02 01:39:21');
INSERT INTO "public"."drivers" VALUES (260, 'Nicolas', 'Pacheco', NULL, NULL, NULL, NULL, '2025-04-02 01:39:33', '2025-04-02 01:39:33');
INSERT INTO "public"."drivers" VALUES (261, 'Jonathan', 'Caceres', NULL, NULL, NULL, NULL, '2025-04-02 01:39:48', '2025-04-02 01:39:48');
INSERT INTO "public"."drivers" VALUES (262, 'José', 'Salazar', NULL, NULL, NULL, NULL, '2025-04-02 01:40:01', '2025-04-02 01:40:01');
INSERT INTO "public"."drivers" VALUES (263, 'José Luis', 'Sanca', NULL, NULL, NULL, NULL, '2025-04-02 01:40:13', '2025-04-02 01:40:13');
INSERT INTO "public"."drivers" VALUES (264, 'Gonzalo', 'Ticona', NULL, NULL, NULL, NULL, '2025-04-02 01:40:24', '2025-04-02 01:40:24');
INSERT INTO "public"."drivers" VALUES (265, 'Giancarlo', 'Prado', NULL, NULL, NULL, NULL, '2025-04-02 01:40:33', '2025-04-02 01:40:33');
INSERT INTO "public"."drivers" VALUES (266, 'Javier', 'Guillen', NULL, NULL, NULL, NULL, '2025-04-02 01:40:47', '2025-04-02 01:40:47');
INSERT INTO "public"."drivers" VALUES (267, 'David', 'Tellez', NULL, NULL, NULL, NULL, '2025-04-02 01:42:05', '2025-04-02 01:42:05');
INSERT INTO "public"."drivers" VALUES (268, 'José', 'Zúñiga', NULL, NULL, NULL, NULL, '2025-04-02 01:42:14', '2025-04-02 01:42:14');
INSERT INTO "public"."drivers" VALUES (269, 'Jesús', 'Gálvez', NULL, NULL, NULL, NULL, '2025-04-02 01:42:57', '2025-04-02 01:42:57');
INSERT INTO "public"."drivers" VALUES (270, 'Marco', 'Hidalgo', NULL, NULL, NULL, NULL, '2025-04-02 01:43:04', '2025-04-02 01:43:04');
INSERT INTO "public"."drivers" VALUES (271, 'Nabil', 'Tejada', NULL, NULL, NULL, NULL, '2025-04-02 01:43:12', '2025-04-02 01:43:12');
INSERT INTO "public"."drivers" VALUES (272, 'Johan', 'Gómez', NULL, NULL, NULL, NULL, '2025-04-02 01:43:19', '2025-04-02 01:43:19');
INSERT INTO "public"."drivers" VALUES (273, 'Gustavo', 'Carrera', NULL, NULL, NULL, NULL, '2025-04-02 01:43:27', '2025-04-02 01:43:27');
INSERT INTO "public"."drivers" VALUES (274, 'José Manuel', 'Valencia', NULL, NULL, NULL, NULL, '2025-04-02 01:43:35', '2025-04-02 01:43:35');
INSERT INTO "public"."drivers" VALUES (275, 'Sebastian', 'Mendiguri', NULL, NULL, NULL, NULL, '2025-04-02 01:43:43', '2025-04-02 01:43:43');
INSERT INTO "public"."drivers" VALUES (276, 'Juan Diego', 'De la Cuba', NULL, NULL, NULL, NULL, '2025-04-02 01:43:54', '2025-04-02 01:43:54');
INSERT INTO "public"."drivers" VALUES (277, 'José Miguel', 'Herrera', NULL, NULL, NULL, NULL, '2025-04-02 01:44:04', '2025-04-02 01:44:04');
INSERT INTO "public"."drivers" VALUES (278, 'Brian', 'Cáceres', NULL, NULL, NULL, NULL, '2025-04-02 01:44:13', '2025-04-02 01:44:13');
INSERT INTO "public"."drivers" VALUES (279, 'Rigoberto', 'Silva', NULL, NULL, NULL, NULL, '2025-04-02 01:44:21', '2025-04-02 01:44:21');
INSERT INTO "public"."drivers" VALUES (280, 'Yenses', 'Ojeda', NULL, NULL, NULL, NULL, '2025-04-02 01:44:32', '2025-04-02 01:44:32');
INSERT INTO "public"."drivers" VALUES (281, 'Marco Antonio', 'Salinas', NULL, NULL, NULL, NULL, '2025-04-02 01:44:41', '2025-04-02 01:44:41');
INSERT INTO "public"."drivers" VALUES (282, 'Giancarlo', 'Bustos', NULL, NULL, NULL, NULL, '2025-04-02 01:50:42', '2025-04-02 01:50:42');
INSERT INTO "public"."drivers" VALUES (283, 'Roy', 'Mayhua', NULL, NULL, NULL, NULL, '2025-04-02 01:50:53', '2025-04-02 01:50:53');
INSERT INTO "public"."drivers" VALUES (284, 'Jimmy', 'Delgado', NULL, NULL, NULL, NULL, '2025-04-02 01:51:01', '2025-04-02 01:51:01');
INSERT INTO "public"."drivers" VALUES (285, 'Edwin', 'Mestas', NULL, NULL, NULL, NULL, '2025-04-02 01:51:12', '2025-04-02 01:51:12');
INSERT INTO "public"."drivers" VALUES (286, 'Jorge Luis', 'Ochoa', NULL, NULL, NULL, NULL, '2025-04-02 01:51:22', '2025-04-02 01:51:22');
INSERT INTO "public"."drivers" VALUES (287, 'Yerry', 'Urday', NULL, NULL, NULL, NULL, '2025-04-02 01:51:30', '2025-04-02 01:51:30');
INSERT INTO "public"."drivers" VALUES (288, 'Fabricio', 'Laime', NULL, NULL, NULL, NULL, '2025-04-02 01:51:36', '2025-04-02 01:51:36');
INSERT INTO "public"."drivers" VALUES (289, 'Jonas', 'Condori', NULL, NULL, NULL, NULL, '2025-04-02 01:51:42', '2025-04-02 01:51:42');
INSERT INTO "public"."drivers" VALUES (290, 'Ivan', 'Condori', NULL, NULL, NULL, NULL, '2025-04-02 01:51:49', '2025-04-02 01:51:49');
INSERT INTO "public"."drivers" VALUES (291, 'David', 'Zeballos', NULL, NULL, NULL, NULL, '2025-04-05 12:17:35', '2025-04-05 12:17:35');
INSERT INTO "public"."drivers" VALUES (292, 'Yefrey', 'Pavio', NULL, NULL, NULL, NULL, '2025-04-27 00:54:43', '2025-04-27 00:54:43');
INSERT INTO "public"."drivers" VALUES (293, 'Charles', 'Rodriguez', NULL, NULL, NULL, NULL, '2025-04-27 00:54:54', '2025-04-27 00:54:54');
INSERT INTO "public"."drivers" VALUES (294, 'Grimaldo', 'Lupo', NULL, NULL, NULL, NULL, '2025-04-27 01:00:57', '2025-04-27 01:00:57');
INSERT INTO "public"."drivers" VALUES (295, 'Edwin', 'Lupo', NULL, NULL, NULL, NULL, '2025-04-27 01:01:07', '2025-04-27 01:01:07');
INSERT INTO "public"."drivers" VALUES (296, 'Berni', 'Justo', NULL, NULL, NULL, NULL, '2025-04-27 14:43:52', '2025-04-27 14:43:52');
INSERT INTO "public"."drivers" VALUES (297, 'Gregorio', 'Justo', NULL, NULL, NULL, NULL, '2025-04-27 14:44:04', '2025-04-27 14:44:04');

-- ----------------------------
-- Table structure for especials
-- ----------------------------
DROP TABLE IF EXISTS "public"."especials";
CREATE TABLE "public"."especials" (
  "id" int8 NOT NULL DEFAULT nextval('especials_id_seq'::regclass),
  "event_id" int8 NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "lugar" varchar(100) COLLATE "pg_catalog"."default",
  "distancia" numeric(10,2),
  "estado" int2,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of especials
-- ----------------------------
INSERT INTO "public"."especials" VALUES (22, 2, 'PE1', NULL, 2.00, 1, '2024-12-22 16:51:31', '2025-02-22 06:29:22');
INSERT INTO "public"."especials" VALUES (23, 2, 'PE2', NULL, NULL, 0, '2024-12-22 16:51:31', '2025-02-22 22:29:40');
INSERT INTO "public"."especials" VALUES (24, 2, 'PE3', NULL, NULL, 1, '2024-12-22 16:51:31', '2025-02-22 06:07:55');
INSERT INTO "public"."especials" VALUES (25, 2, 'PE4', NULL, NULL, 1, '2024-12-22 16:51:31', '2024-12-22 16:51:31');
INSERT INTO "public"."especials" VALUES (26, 2, 'PE5', NULL, NULL, 1, '2024-12-22 16:51:31', '2024-12-22 16:51:31');
INSERT INTO "public"."especials" VALUES (36, 4, 'Shakedown', NULL, NULL, 0, '2025-03-16 18:13:47', '2025-03-22 23:57:35');
INSERT INTO "public"."especials" VALUES (37, 4, 'EP1', NULL, NULL, 1, '2025-03-16 18:14:04', '2025-03-16 18:14:04');
INSERT INTO "public"."especials" VALUES (38, 4, 'EP2', NULL, NULL, 1, '2025-03-16 18:14:10', '2025-03-16 18:14:10');
INSERT INTO "public"."especials" VALUES (39, 4, 'EP3', NULL, NULL, 1, '2025-03-16 18:14:13', '2025-03-16 18:14:13');
INSERT INTO "public"."especials" VALUES (40, 4, 'EP4', NULL, NULL, 1, '2025-03-16 18:14:19', '2025-03-16 18:14:19');
INSERT INTO "public"."especials" VALUES (41, 4, 'EP5', NULL, NULL, 1, '2025-03-16 18:14:31', '2025-03-16 18:14:31');
INSERT INTO "public"."especials" VALUES (42, 4, 'EP6', NULL, NULL, 1, '2025-03-16 18:14:37', '2025-03-16 18:14:37');
INSERT INTO "public"."especials" VALUES (45, 5, 'EP1', NULL, NULL, 1, '2025-04-01 15:59:15', '2025-04-01 15:59:15');
INSERT INTO "public"."especials" VALUES (46, 5, 'EP2', NULL, NULL, 1, '2025-04-01 16:07:41', '2025-04-01 16:07:41');
INSERT INTO "public"."especials" VALUES (47, 5, 'EP3', NULL, NULL, 1, '2025-04-01 16:07:46', '2025-04-01 16:07:46');
INSERT INTO "public"."especials" VALUES (48, 5, 'EP4', NULL, NULL, 1, '2025-04-01 16:07:51', '2025-04-01 16:07:51');
INSERT INTO "public"."especials" VALUES (49, 5, 'EP5', NULL, NULL, 1, '2025-04-01 16:07:56', '2025-04-01 16:07:56');
INSERT INTO "public"."especials" VALUES (50, 5, 'EP6', NULL, NULL, 1, '2025-04-01 16:08:03', '2025-04-01 16:08:03');
INSERT INTO "public"."especials" VALUES (54, 8, 'EP1', NULL, NULL, 1, '2025-04-23 12:20:09', '2025-04-23 12:20:09');
INSERT INTO "public"."especials" VALUES (55, 8, 'EP2', NULL, NULL, 1, '2025-04-23 12:20:14', '2025-04-23 12:20:14');
INSERT INTO "public"."especials" VALUES (56, 8, 'EP3', NULL, NULL, 1, '2025-04-23 12:20:19', '2025-04-23 12:20:19');
INSERT INTO "public"."especials" VALUES (57, 8, 'EP4', NULL, NULL, 1, '2025-04-23 12:20:23', '2025-04-23 12:20:23');
INSERT INTO "public"."especials" VALUES (58, 8, 'EP5', NULL, NULL, 1, '2025-04-23 12:20:27', '2025-04-23 12:20:27');

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS "public"."events";
CREATE TABLE "public"."events" (
  "id" int8 NOT NULL DEFAULT nextval('events_id_seq'::regclass),
  "org_id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "tipo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "ubigeo_id" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "fecha" date,
  "hora" time(6),
  "foto_url" text COLLATE "pg_catalog"."default",
  "ruta_url" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO "public"."events" VALUES (2, 1, 'Rally Clausura ACJ 2024', NULL, 'Rally', '210101', '2024-12-22', '09:00:00', '/storage/fotografias/K9ziyX0Fx9uNQJoSa9Ve9UZTM4fWA3TAzhq2Pjsi.jpg', NULL, '2024-12-22 16:50:54', '2025-04-23 12:09:15');
INSERT INTO "public"."events" VALUES (4, 1, 'Rally Hanss Gamero 2025', NULL, 'Rally', '210701', '2025-03-23', '09:00:00', '/storage/fotografias/4eZySHgJR5aKfts9PjwvGGzzyExhVMVhjjOnAsog.jpg', NULL, '2025-03-16 17:44:52', '2025-04-23 12:12:38');
INSERT INTO "public"."events" VALUES (5, 1, 'Rally Castilla ACA', 'Rally Castilla, 2da fecha sobre asfalto para continuar con el campeonato regional de Rally?, una ruta muy técnica para las tripulaciones que irán con todo a desafiar las curvas del valle. Deseamos mucha suerte a todos los participantes. ¡Nos vemos en la partida! ?️?', 'Rally', '040401', '2025-04-06', '08:55:00', '/storage/fotografias/9v8oR5crc3pRQwUjh8L5Wp39efyYlaSCQVLCzD9Z.jpg', NULL, '2025-04-01 15:52:20', '2025-04-23 12:12:52');
INSERT INTO "public"."events" VALUES (8, 1, 'Rally Aniversario de Paucarcolla 2025', 'La segunda fecha del Campeonato Regional del Automóvil Club Juliaca', 'Rally', '210110', '2025-04-27', '09:00:00', '/storage/fotografias/CnHIqmWov4Xr3my1N1cquOokYXAWdVdWV531Umhz.jpg', NULL, '2025-04-23 11:23:45', '2025-04-23 12:13:03');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (10, '2023_11_04_053555_create_permission_tables', 1);
INSERT INTO "public"."migrations" VALUES (11, '2023_11_10_054823_create_ubigeos_table', 1);
INSERT INTO "public"."migrations" VALUES (12, '2024_09_11_120240_create_orgs_table', 1);
INSERT INTO "public"."migrations" VALUES (13, '2024_09_12_115932_create_events_table', 1);
INSERT INTO "public"."migrations" VALUES (14, '2024_09_12_115933_create_categorias_table', 1);
INSERT INTO "public"."migrations" VALUES (15, '2024_09_16_012101_create_drivers_table', 1);
INSERT INTO "public"."migrations" VALUES (16, '2024_09_16_014058_create_tripulacions_table', 1);
INSERT INTO "public"."migrations" VALUES (17, '2024_09_16_030740_create_especials_table', 1);
INSERT INTO "public"."migrations" VALUES (18, '2024_09_18_024153_create_tiempos_table', 1);
INSERT INTO "public"."migrations" VALUES (19, '2025_02_13_053712_add_estado_to_especials_table', 1);
INSERT INTO "public"."migrations" VALUES (20, '2025_02_14_015938_create_parametros_table', 1);
INSERT INTO "public"."migrations" VALUES (21, '2025_02_14_171310_create_opartidas_table', 1);
INSERT INTO "public"."migrations" VALUES (22, '2025_03_28_043937_update_foreign_key_tiempos', 2);
INSERT INTO "public"."migrations" VALUES (23, '2025_04_15_050049_add_foreign_key_orgs_users', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_has_permissions";
CREATE TABLE "public"."model_has_permissions" (
  "permission_id" int8 NOT NULL,
  "model_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_has_roles";
CREATE TABLE "public"."model_has_roles" (
  "role_id" int8 NOT NULL,
  "model_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO "public"."model_has_roles" VALUES (1, 'App\Models\User', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_access_tokens";
CREATE TABLE "public"."oauth_access_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "client_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "expires_at" timestamp(6)
)
;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO "public"."oauth_access_tokens" VALUES ('01791a836c16545e47b05b3f4b2d16626e9a73961655928d4eabadbd7d98768dfff9c5dc601a837b', 1, 1, NULL, '[]', 0, '2025-03-22 22:24:00', '2025-03-22 22:24:00', '2026-03-22 22:24:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('03350874f9d842f1d8975263a03e78e1e8750cbc1273c8daca3b68b2eb9314907e75b3d0124b9252', 1, 1, NULL, '[]', 0, '2025-04-23 11:44:59', '2025-04-23 11:44:59', '2026-04-23 11:44:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0399239ce03542fd0906e3c28728ea95098145ea41225c53f5a4be6581aba59de79f7dafd9e5b6b1', 1, 1, NULL, '[]', 0, '2025-03-22 18:18:07', '2025-03-22 18:18:07', '2026-03-22 18:18:07');
INSERT INTO "public"."oauth_access_tokens" VALUES ('03dd50c1fe4b90c114f0147460c0383aa3dfd10e5765a96bf887f4e91ee92da60a8fb9a33d58302e', 1, 1, NULL, '[]', 0, '2025-03-23 19:29:23', '2025-03-23 19:29:23', '2026-03-23 19:29:23');
INSERT INTO "public"."oauth_access_tokens" VALUES ('0cde5fc235833eeb6c2234f1b5e3127e3ac14e8d0fc077f7da28b7a2b8898f72200ee3c8a0d1c569', 1, 1, NULL, '[]', 0, '2025-03-23 12:35:26', '2025-03-23 12:35:26', '2026-03-23 12:35:26');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1116dc39ed7bed7e53734b72d72e2b1c07ebaeca81a8c9082bad54aea3f4316dda983c52aa91249d', 1, 1, NULL, '[]', 0, '2025-04-05 19:23:14', '2025-04-05 19:23:14', '2026-04-05 19:23:14');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1195346844a0429f680aeb81c4e40232228ecbecf7848043aa07b1e993394e4ca1fd3c4ad3d2a78b', 1, 1, NULL, '[]', 0, '2025-04-30 23:05:13', '2025-04-30 23:05:13', '2026-04-30 23:05:13');
INSERT INTO "public"."oauth_access_tokens" VALUES ('177a57550d0ca8f62ec6f02d583520d26e53572c1ba5b9ed13bce2a5827ca053eb3383aacdc0d0cb', 1, 1, NULL, '[]', 0, '2025-03-14 14:50:08', '2025-03-14 14:50:08', '2026-03-14 14:50:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('17b600e28694c55aee0103f23e485d794684c548915f2d4b527849c3181c07a03883c500312920c3', 1, 1, NULL, '[]', 0, '2025-03-22 20:35:20', '2025-03-22 20:35:20', '2026-03-22 20:35:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1a1f20b7d9eb91e5a05429c25590dcbabd816735f4e94eab19a21a0a66c527f203143df362c84922', 1, 1, NULL, '[]', 0, '2025-03-17 20:45:31', '2025-03-17 20:45:31', '2026-03-17 20:45:31');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1ee7626a30484a04acb4167e7015c5d750e9a7d1a9a18668f6a084c1d975d6fa28c3ff381ed40fa9', 1, 1, NULL, '[]', 0, '2025-03-24 14:53:21', '2025-03-24 14:53:21', '2026-03-24 14:53:21');
INSERT INTO "public"."oauth_access_tokens" VALUES ('218576bfb8dc67b041cbe1a31654b413a8615727fbf58d006ffcca8fbe83739d0f15660cd845589b', 1, 1, NULL, '[]', 0, '2025-04-23 12:08:56', '2025-04-23 12:08:56', '2026-04-23 12:08:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('23954901ac6308724e2073ae6171aaea90d04d0e20aa32db1f8af5975bfaa8a57f4d8a56b6a454d0', 1, 1, NULL, '[]', 0, '2025-04-05 22:00:49', '2025-04-05 22:00:49', '2026-04-05 22:00:49');
INSERT INTO "public"."oauth_access_tokens" VALUES ('25710980a80b7cbd5f5e709b6a1b50b5fd7a556bf24cddef207f405d3dd524876eeda44c8036bb0f', 1, 1, NULL, '[]', 0, '2025-04-05 21:27:45', '2025-04-05 21:27:45', '2026-04-05 21:27:45');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3223bae2843b76750c9596b6280bbfa3637dbfccb27272e862f5d223389889535bad0494398ce2b9', 1, 1, NULL, '[]', 0, '2025-03-16 20:01:42', '2025-03-16 20:01:42', '2026-03-16 20:01:42');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3b79ac6ced910526848db7724e6307efebadb781b799262c2cc6c25eb04e008caea069069792b41e', 1, 1, NULL, '[]', 0, '2025-04-11 21:51:39', '2025-04-11 21:51:39', '2026-04-11 21:51:39');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3f82681563902ee6a45e17bf87129442740cd030752443f2604adaa26061721d93a3f481b9eae14f', 1, 1, NULL, '[]', 0, '2025-04-23 14:41:20', '2025-04-23 14:41:20', '2026-04-23 14:41:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('3ffc8ecd4fdfc117a1fabbfb32fd920c3ef906cc06ad079d418684c61cfa430f472a47a0e9178818', 1, 1, NULL, '[]', 0, '2025-04-05 03:49:01', '2025-04-05 03:49:01', '2026-04-05 03:49:01');
INSERT INTO "public"."oauth_access_tokens" VALUES ('411520e4718998d2a54f0dba1d352118bfa3151bd49dc9677ee6adb72027047894228250d3f025fa', 1, 1, NULL, '[]', 0, '2025-04-27 17:56:17', '2025-04-27 17:56:17', '2026-04-27 17:56:17');
INSERT INTO "public"."oauth_access_tokens" VALUES ('44b087c4ba9ea5faba4f98e6f1e0afcf3815a12b9231dfaa7612b1b5f10c210cf03b2a8d745f2d7a', 1, 1, NULL, '[]', 0, '2025-04-11 17:15:38', '2025-04-11 17:15:38', '2026-04-11 17:15:38');
INSERT INTO "public"."oauth_access_tokens" VALUES ('4524870a8232f9fd53f0f0617f794370d3f706410172b4ea142f01d19b0744b19ab1546b7a2cb200', 1, 1, NULL, '[]', 0, '2025-04-05 04:05:35', '2025-04-05 04:05:35', '2026-04-05 04:05:35');
INSERT INTO "public"."oauth_access_tokens" VALUES ('453f48da67d988e454d4886e929c233030221927dfb50f9052d1e3ac057e484e494605f24b98667d', 1, 1, NULL, '[]', 0, '2025-03-16 18:42:34', '2025-03-16 18:42:34', '2026-03-16 18:42:34');
INSERT INTO "public"."oauth_access_tokens" VALUES ('49d472b6d27d4a9efbbc8c941eb7b24fb52267667b81c43bbddd293901aa6963937a0802da4e9d56', 1, 1, NULL, '[]', 0, '2025-03-19 21:33:58', '2025-03-19 21:33:58', '2026-03-19 21:33:58');
INSERT INTO "public"."oauth_access_tokens" VALUES ('503e5d7a649e34f44a779d28d4d0b42eb1627a409b519d6f14ef5372e8f266a5070105b2b6668228', 1, 1, NULL, '[]', 0, '2025-04-23 21:21:49', '2025-04-23 21:21:49', '2026-04-23 21:21:49');
INSERT INTO "public"."oauth_access_tokens" VALUES ('5300746f1d28cbe2cca31c4f550360d92f6b5dfc1db7eebe7e07d19b16462558d86ac6941e2f320a', 1, 1, NULL, '[]', 0, '2025-03-23 19:19:12', '2025-03-23 19:19:12', '2026-03-23 19:19:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('57d127dd3323cdbb1135acda4939f8c5291147fe27d4a4fbd18dbebbfeffddc9de279482e4d10bb3', 1, 1, NULL, '[]', 0, '2025-02-22 22:28:10', '2025-02-22 22:28:10', '2026-02-22 22:28:10');
INSERT INTO "public"."oauth_access_tokens" VALUES ('597460e9b276570fee8ce3397c3b745c70083f4df726491e22ca52a905b49bdba10ed50e57412c83', 1, 1, NULL, '[]', 0, '2025-04-23 17:25:54', '2025-04-23 17:25:54', '2026-04-23 17:25:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('5a1af255a396349f6d579fdfdce5142ce9c6edd7aea0c5427a8aaf90a646b8e099668367b2f62a23', 1, 1, NULL, '[]', 0, '2025-03-16 17:18:40', '2025-03-16 17:18:40', '2026-03-16 17:18:40');
INSERT INTO "public"."oauth_access_tokens" VALUES ('676bfb785b409a456bf0272b9c029c0dd3932bf24b432fee37aaad9e4816edae715c380b71b8675e', 1, 1, NULL, '[]', 0, '2025-04-01 15:56:20', '2025-04-01 15:56:20', '2026-04-01 15:56:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6829155c45a59a526d63a9997627c6942e1410f65b33bba783244896c3fbe3162540f2f94c478c66', 1, 1, NULL, '[]', 0, '2025-04-27 00:52:47', '2025-04-27 00:52:47', '2026-04-27 00:52:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6950187cc5eb436deed7aff5e48d023af966c0a7d52772559aa89ab85cb73ee70d74888fa78619f9', 1, 1, NULL, '[]', 0, '2025-04-27 17:36:54', '2025-04-27 17:36:54', '2026-04-27 17:36:54');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6d90ca993ea4e5242da177828d6d4f1cdd9f1d9b457454942baf8de113d1893014b945520b901c64', 1, 1, NULL, '[]', 0, '2025-03-23 13:32:41', '2025-03-23 13:32:41', '2026-03-23 13:32:41');
INSERT INTO "public"."oauth_access_tokens" VALUES ('6e242559470767de296dc2afb33e3ed4eb515c44301484a12e04a07fb7725de6d3f7e1621338bdfa', 1, 1, NULL, '[]', 0, '2025-04-27 13:56:47', '2025-04-27 13:56:47', '2026-04-27 13:56:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('71ba26cd43082d98775301b59cb4d25ff7bcee1e34519cd976427360d830f1cb964598d5d09067a0', 1, 1, NULL, '[]', 0, '2025-03-22 11:51:10', '2025-03-22 11:51:10', '2026-03-22 11:51:10');
INSERT INTO "public"."oauth_access_tokens" VALUES ('768fac9a284c85dcadf4b36137dcaec921b720032e48e42dbcc27091f384c9e8073a1b4d1aa8fd39', 1, 1, NULL, '[]', 0, '2025-04-27 18:28:59', '2025-04-27 18:28:59', '2026-04-27 18:28:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('7a13f4745d0cf18d7800bdcc7283e6e404b611a4b5f2c14751d1b1a54a656a2eb29b7dbcd208f9eb', 1, 1, NULL, '[]', 0, '2025-03-16 19:01:45', '2025-03-16 19:01:45', '2026-03-16 19:01:45');
INSERT INTO "public"."oauth_access_tokens" VALUES ('7d20e564d85e09c2d57386cfd3e7dcfb90857ecb0b026d19ddd7389b6b0f42bdab93f62312ba093a', 1, 1, NULL, '[]', 0, '2025-03-23 15:06:01', '2025-03-23 15:06:01', '2026-03-23 15:06:01');
INSERT INTO "public"."oauth_access_tokens" VALUES ('7efa137b28313261e4961c033a1ee65b8a1598cac70062cad4dec90a2708a93c729ccf25c8583158', 1, 1, NULL, '[]', 0, '2025-03-23 01:50:18', '2025-03-23 01:50:18', '2026-03-23 01:50:18');
INSERT INTO "public"."oauth_access_tokens" VALUES ('80417f17f15eef58cdb263977c6347358b71b00f0847de0d6130ef855d3474e25e886b250f952ce4', 1, 1, NULL, '[]', 0, '2025-03-15 19:19:03', '2025-03-15 19:19:03', '2026-03-15 19:19:03');
INSERT INTO "public"."oauth_access_tokens" VALUES ('856259b932831a4536419d9f95f756150c9643d1603baf8a10a64de4a6d21d98863600e66146c4c6', 1, 1, NULL, '[]', 0, '2025-04-05 12:00:20', '2025-04-05 12:00:20', '2026-04-05 12:00:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('8596bcc489f398a7747dca1f4bcb5ea9f027a669fc177ed5963d0c7a05faf03019bf8ccefeac0474', 1, 1, NULL, '[]', 0, '2025-04-05 19:18:39', '2025-04-05 19:18:39', '2026-04-05 19:18:39');
INSERT INTO "public"."oauth_access_tokens" VALUES ('875e4c99ed4259b3fc3d5bc57ae003a865ddbb1caee14ffded0e4c4af72b76772d5d9e19cc2ca546', 1, 1, NULL, '[]', 0, '2025-03-20 00:35:10', '2025-03-20 00:35:10', '2026-03-20 00:35:10');
INSERT INTO "public"."oauth_access_tokens" VALUES ('89e4331c7052d405940a3914e1efc1c264e70b34a8d53a6bfa34f3a74601292ab9962b7279489262', 1, 1, NULL, '[]', 0, '2025-04-27 15:49:24', '2025-04-27 15:49:24', '2026-04-27 15:49:24');
INSERT INTO "public"."oauth_access_tokens" VALUES ('91e5c487b604f2757433243711fbd6df4e8723eca8a0e6cedc34f7a3ab2b8126c26b97ac486bd7b4', 1, 1, NULL, '[]', 0, '2025-03-16 16:57:27', '2025-03-16 16:57:27', '2026-03-16 16:57:27');
INSERT INTO "public"."oauth_access_tokens" VALUES ('95d8d59d70fcbeabed48a66f3c09b66882ab37f0b2c377eda1666a380de5191b5a3b87c8e45a4cfb', 1, 1, NULL, '[]', 0, '2025-03-14 14:48:22', '2025-03-14 14:48:22', '2026-03-14 14:48:22');
INSERT INTO "public"."oauth_access_tokens" VALUES ('96615ed0e6ee108142437c1aa7c8885a60fab2a0e24b71f8649ce4700c21aa949f17d1445654b211', 1, 1, NULL, '[]', 0, '2025-04-05 19:23:47', '2025-04-05 19:23:47', '2026-04-05 19:23:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('980cb4cfe212e060d0d9087c6e1133614e07151aedde9f3d3f118c52a3d29c4afb1ed9bafbfc6e78', 1, 1, NULL, '[]', 0, '2025-04-27 14:50:17', '2025-04-27 14:50:17', '2026-04-27 14:50:17');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a5f09a78bc596fd0fc524316aa326d00784d7555fdf7f238674bb739493dbcca2c30b422067bfd18', 1, 1, NULL, '[]', 0, '2025-04-01 15:46:45', '2025-04-01 15:46:45', '2026-04-01 15:46:45');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a61959328332e30359d25bd46b4501341c62bc6499219d952499e43fe4d915586e6ad58796d11228', 1, 1, NULL, '[]', 0, '2025-02-28 16:34:55', '2025-02-28 16:34:55', '2026-02-28 16:34:55');
INSERT INTO "public"."oauth_access_tokens" VALUES ('a822f03abfbb1697a9f51fc6c491bcde59638f7f3c2e938a1ee82b0eed52caba7c2297adde44ec74', 1, 1, NULL, '[]', 0, '2025-03-16 17:38:19', '2025-03-16 17:38:19', '2026-03-16 17:38:19');
INSERT INTO "public"."oauth_access_tokens" VALUES ('aa2cdb47cc5d60091f572dbae1d39968772bbcbce48373265bae9b08fc5a8bca64c0b0af84217ce2', 1, 1, NULL, '[]', 0, '2025-03-22 18:12:59', '2025-03-22 18:12:59', '2026-03-22 18:12:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ab3b6cb9d147e4cf818e062025d4699b68727d116805e3c44e162e48a11eae80d92ebe1e87ec544b', 1, 1, NULL, '[]', 0, '2025-04-04 10:56:30', '2025-04-04 10:56:30', '2026-04-04 10:56:30');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ab4e37f612523910273b5f26e279e044cb0f5ca70063e112627014f501eaf06b2d87455698e9974c', 1, 1, NULL, '[]', 0, '2025-04-05 14:48:30', '2025-04-05 14:48:30', '2026-04-05 14:48:30');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ad96ce1e03ef5a524484a887ee35488187bc1d19bb1fe3ae51cb7534f98bbb92a399c1e354c9efbf', 1, 1, NULL, '[]', 0, '2025-02-22 05:32:27', '2025-02-22 05:32:27', '2026-02-22 05:32:27');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ae4d235e6865b7416328b51a15f9ff64277c449ee69027c95125864015b4e16582b0a76b777177f6', 1, 1, NULL, '[]', 0, '2025-03-22 20:16:07', '2025-03-22 20:16:07', '2026-03-22 20:16:07');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ae656703f4ad353af9ac786a82338f4ada852129ca490b911a07e2af0b9300cc61d877cd01d5f061', 1, 1, NULL, '[]', 0, '2025-04-05 19:28:52', '2025-04-05 19:28:52', '2026-04-05 19:28:52');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b20ede363e353e6e1ebcc84e1ed4b6d2960c9cedfb7540190268536faa467d095057eaedf433d0c2', 1, 1, NULL, '[]', 0, '2025-03-23 15:05:59', '2025-03-23 15:05:59', '2026-03-23 15:05:59');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b315b4e1b1ae98c2fa4de4adf6bff7d928248760574dacf9e1a9849f10883a008ecf1cb4acef7a87', 1, 1, NULL, '[]', 0, '2025-03-21 23:30:20', '2025-03-21 23:30:20', '2026-03-21 23:30:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b8320f94c52c56ac2c2526980fcbff84da69ff288784fdb38ccaa130dbde6e8ba018ebc120cfe29f', 1, 1, NULL, '[]', 0, '2025-04-23 11:22:15', '2025-04-23 11:22:15', '2026-04-23 11:22:15');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b87d02e3ef11655f1e6f858683edf37a657de5b2dbe65ecab17f12a4b8084768e9b8531a39dd08de', 1, 1, NULL, '[]', 0, '2025-03-16 02:15:00', '2025-03-16 02:15:00', '2026-03-16 02:15:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('b9a41c1877104263b108b361f05b9035562f56ae10807d4bd5e04b9df2a58946a205424c68fd4290', 1, 1, NULL, '[]', 0, '2025-04-02 01:27:29', '2025-04-02 01:27:29', '2026-04-02 01:27:29');
INSERT INTO "public"."oauth_access_tokens" VALUES ('babccc8138aac2dd6ab66016af736cf58e3b97bcfc97921de39272d706973595cf70ba1837bd8051', 1, 1, NULL, '[]', 0, '2025-03-18 15:00:26', '2025-03-18 15:00:26', '2026-03-18 15:00:26');
INSERT INTO "public"."oauth_access_tokens" VALUES ('be792eed3b1f57b9bbe51a025b6ef22c3f82752b6c60fe125ff93d03b37bd551a7b2268f73b7ff78', 1, 1, NULL, '[]', 0, '2025-02-22 07:10:02', '2025-02-22 07:10:02', '2026-02-22 07:10:02');
INSERT INTO "public"."oauth_access_tokens" VALUES ('bfc466aa2a267ae13972f6b768229941fcba45d69352bdeb70bdae8e850d34b54449b04ef08f3ad9', 1, 1, NULL, '[]', 0, '2025-03-14 02:59:20', '2025-03-14 02:59:20', '2026-03-14 02:59:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('c7b334fdf5102bfff50b5d9354cbedf346aadb286827d4109cf3bdb0c7b048f1e28db1f845768c9d', 1, 1, NULL, '[]', 0, '2025-03-23 20:30:56', '2025-03-23 20:30:56', '2026-03-23 20:30:56');
INSERT INTO "public"."oauth_access_tokens" VALUES ('cc87fc7dc96db8e42ada01c6bbf6c83b77b0906284ace908849c99bea8dc01dbea213a09b0c63280', 1, 1, NULL, '[]', 0, '2025-03-01 00:55:22', '2025-03-01 00:55:22', '2026-03-01 00:55:22');
INSERT INTO "public"."oauth_access_tokens" VALUES ('cd586efbd1d71007692fca4bffd209f9ee6fcd5c80cb6dd7306dccbfaf3b17af4b8f52070a02922b', 1, 1, NULL, '[]', 0, '2025-03-22 12:53:12', '2025-03-22 12:53:12', '2026-03-22 12:53:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d102cbde27d6ad305e15671c54a59b832edf17e909c65e223051ddcf580955403ba9b3c519a2774b', 1, 1, NULL, '[]', 0, '2025-03-22 20:26:19', '2025-03-22 20:26:19', '2026-03-22 20:26:19');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d267e99ad0abb166dc79f593b07db0e8b5d44cc7fa3fc5d0dc68bb739b4a1088ab8cf82d4d060294', 1, 1, NULL, '[]', 0, '2025-04-05 20:02:06', '2025-04-05 20:02:06', '2026-04-05 20:02:06');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d2f4154a1309f24388c2a7bf4920e718c9ee771585e99a6b3637abe71f70f22e583a61e7855d9744', 1, 1, NULL, '[]', 0, '2025-03-22 16:17:23', '2025-03-22 16:17:23', '2026-03-22 16:17:23');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d4648480061825f43cba4534352491e6a77d125f6c316e1ca9702e024296732820f4ec28a67fe6c6', 1, 1, NULL, '[]', 0, '2025-04-27 03:14:12', '2025-04-27 03:14:12', '2026-04-27 03:14:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('d4f17ff4aaf532ca10840b1d16e64c1fcd3b699f8c1b1b85b27dfbd67ffef373fddf8e52353b2e3a', 1, 1, NULL, '[]', 0, '2025-03-16 13:36:03', '2025-03-16 13:36:03', '2026-03-16 13:36:03');
INSERT INTO "public"."oauth_access_tokens" VALUES ('db4be5e4a5613cdea99528f7649829a87103333d7340ce2878640003da541b30f0ce6d7b109e631c', 1, 1, NULL, '[]', 0, '2025-03-22 17:19:42', '2025-03-22 17:19:42', '2026-03-22 17:19:42');
INSERT INTO "public"."oauth_access_tokens" VALUES ('dd38138f54b71d7389fe791372419ed9b6738a4381469669053b6abb97a10cfe87f455a7080ce9e2', 1, 1, NULL, '[]', 0, '2025-04-23 11:08:46', '2025-04-23 11:08:46', '2026-04-23 11:08:46');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e00212420020bc26a13fe3c42d1ab88ea0466ceaa304f252514e79900704309c11332ab3f222ca28', 1, 1, NULL, '[]', 0, '2025-03-31 23:37:25', '2025-03-31 23:37:25', '2026-03-31 23:37:25');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e05fd3329d2af087f9d56d0cc06c0b78761716b6f8c1a01bf60ac2ad523fd19f55ab984354b09f44', 1, 1, NULL, '[]', 0, '2025-04-27 20:53:04', '2025-04-27 20:53:04', '2026-04-27 20:53:04');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e4e7c3a1ce4ecb76de0763332cdbcb301c1e459eb3ce99b840db6ab10fd4a241d21d2abf9520d4a1', 1, 1, NULL, '[]', 0, '2025-03-01 13:57:43', '2025-03-01 13:57:43', '2026-03-01 13:57:43');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e963f12043b4a308c737fa761795194af9108fb3125ca573366008f05d48457d203fd1f5fe57ead7', 1, 1, NULL, '[]', 0, '2025-04-30 14:44:41', '2025-04-30 14:44:41', '2026-04-30 14:44:41');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ecb98c6e941deb877ca1c19304706c346049bbf91708d05da1afcfb10e74581113142fba5ca242f6', 1, 1, NULL, '[]', 0, '2025-03-17 21:34:00', '2025-03-17 21:34:00', '2026-03-17 21:34:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('ef7b7e27d90f9118cbf1f62e6332b0023009c1d6f54d8fe0e3f28eccf1244482bba4722c68e73440', 1, 1, NULL, '[]', 0, '2025-02-22 23:00:12', '2025-02-22 23:00:12', '2026-02-22 23:00:12');
INSERT INTO "public"."oauth_access_tokens" VALUES ('efb1b28859b802f5456a26516b18af86abec7325fcc7c5d985de233ac9c15189d44a12ab0d807329', 1, 1, NULL, '[]', 0, '2025-03-23 02:30:47', '2025-03-23 02:30:47', '2026-03-23 02:30:47');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f69504c88cc814d3ea0d67b7d39bd2d1ebcdc3292fd84dc5d8af83d8b15ad249de195f1c01e9f046', 1, 1, NULL, '[]', 0, '2025-03-22 20:26:00', '2025-03-22 20:26:00', '2026-03-22 20:26:00');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fa20e77a1e54d0ac7af3fe32c4e52eab3f1bf638da7ee6a11ed1ba94f44b271397b6ff3020037365', 1, 1, NULL, '[]', 0, '2025-04-27 14:43:20', '2025-04-27 14:43:20', '2026-04-27 14:43:20');
INSERT INTO "public"."oauth_access_tokens" VALUES ('fe715910c1f7e212f15f3ac551ef9fbd114b07d0a3c6284c7aa0bcc1de196900a9f8d334dc84258f', 1, 1, NULL, '[]', 0, '2025-04-05 19:43:24', '2025-04-05 19:43:24', '2026-04-05 19:43:24');
INSERT INTO "public"."oauth_access_tokens" VALUES ('012c82c25c534e566550b7ebbafc7ccffc97c5dfb4b1bf359e1e640a4564ef4b77c60c64e47acdfb', 1, 1, NULL, '[]', 0, '2025-05-01 17:00:59', '2025-05-01 17:00:59', '2026-05-01 17:00:59');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_auth_codes";
CREATE TABLE "public"."oauth_auth_codes" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL,
  "client_id" int8 NOT NULL,
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" int2 NOT NULL,
  "expires_at" timestamp(6)
)
;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_clients";
CREATE TABLE "public"."oauth_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_clients_id_seq'::regclass),
  "user_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(100) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" text COLLATE "pg_catalog"."default" NOT NULL,
  "personal_access_client" int2 NOT NULL,
  "password_client" int2 NOT NULL,
  "revoked" int2 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO "public"."oauth_clients" VALUES (1, NULL, 'Laravel Password Grant Client', 'g179NrxEhLKvZTNDAZy6muwpR8TQ7WPoWuIJr6tz', 'users', 'http://localhost', 0, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_personal_access_clients";
CREATE TABLE "public"."oauth_personal_access_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_personal_access_clients_id_seq'::regclass),
  "client_id" int8 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_refresh_tokens";
CREATE TABLE "public"."oauth_refresh_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "revoked" int2 NOT NULL,
  "expires_at" timestamp(6)
)
;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('013ff3c09c70ca81998d7386de76b48c78d105b2df48e356794e4c610c5d103277f3811ec6b4bae6', '7efa137b28313261e4961c033a1ee65b8a1598cac70062cad4dec90a2708a93c729ccf25c8583158', 0, '2026-03-23 01:50:18');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('05320af0fef4916c1987429be039720f0ada05a0b75e00513e6996ce9162e6f94006837a5fb7d3ac', '6829155c45a59a526d63a9997627c6942e1410f65b33bba783244896c3fbe3162540f2f94c478c66', 0, '2026-04-27 00:52:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('08fde1d558dfac98567a9d09cc60ab01230ad9311b1fbe62af38e49fa5f121d5ae970b3c963979c2', '89e4331c7052d405940a3914e1efc1c264e70b34a8d53a6bfa34f3a74601292ab9962b7279489262', 0, '2026-04-27 15:49:24');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('0d4fa1f4fbc17305448c631302bf9309cd38317724d54ad1782c14434538275588ef3ab15eae90b7', 'b315b4e1b1ae98c2fa4de4adf6bff7d928248760574dacf9e1a9849f10883a008ecf1cb4acef7a87', 0, '2026-03-21 23:30:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('13eda9ba340a8e1321a820cab4381bcb58aece0da51ece830062aa248bd66bf22bbb70a0d06f4a72', 'db4be5e4a5613cdea99528f7649829a87103333d7340ce2878640003da541b30f0ce6d7b109e631c', 0, '2026-03-22 17:19:42');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1a86519d604c9c1a3d2c166557f1733b65f1640b71d2727dfd77b05735fcb368808a85bd8a08f85d', 'ae4d235e6865b7416328b51a15f9ff64277c449ee69027c95125864015b4e16582b0a76b777177f6', 0, '2026-03-22 20:16:07');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1b41772fae180ad3d013c33803c9de7772f1d9c7634e5121a15a7750fbbc21ec03948a3fd741cd90', '503e5d7a649e34f44a779d28d4d0b42eb1627a409b519d6f14ef5372e8f266a5070105b2b6668228', 0, '2026-04-23 21:21:49');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1be259b9c6643e3ee1709be5d50fc3cf429c0eeb2aeb8008d738e83de45e7f0a69ae6fb900481334', 'ad96ce1e03ef5a524484a887ee35488187bc1d19bb1fe3ae51cb7534f98bbb92a399c1e354c9efbf', 0, '2026-02-22 05:32:27');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('1d803f07f0dfb87e9819cd90fbd0e133a88fded3c71a27eb2a6c765e1ef2791d825e4e00786645f4', '856259b932831a4536419d9f95f756150c9643d1603baf8a10a64de4a6d21d98863600e66146c4c6', 0, '2026-04-05 12:00:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('21c2406b27eebaf946b2dd4466fdc33a180863d306980b62fb0ae529104f370f47c6c66eb9918e01', '5a1af255a396349f6d579fdfdce5142ce9c6edd7aea0c5427a8aaf90a646b8e099668367b2f62a23', 0, '2026-03-16 17:18:40');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('25335cd9529f96058b224c12bb864805a8563f90bbc72b6383bbf7d0976f9788b1a0bb00c7b7e8a1', 'd2f4154a1309f24388c2a7bf4920e718c9ee771585e99a6b3637abe71f70f22e583a61e7855d9744', 0, '2026-03-22 16:17:23');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('260fe224681100fd06f2d7900859728106324d4fdcbb2d5f9b7d3d5e5bd1ad0b1f74a6cd2df32f85', '453f48da67d988e454d4886e929c233030221927dfb50f9052d1e3ac057e484e494605f24b98667d', 0, '2026-03-16 18:42:34');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2b1d06ae472d239525f12835d3ce9bd01ebd4ac3ae4018278954915ad3056b0a9ea266f6c1d995b9', 'aa2cdb47cc5d60091f572dbae1d39968772bbcbce48373265bae9b08fc5a8bca64c0b0af84217ce2', 0, '2026-03-22 18:12:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2b2605a10ee59ac37abc411ebfe3882496a1ef2f3c2e0f00e1052b160f39a53c167802037fb8d4ed', '6e242559470767de296dc2afb33e3ed4eb515c44301484a12e04a07fb7725de6d3f7e1621338bdfa', 0, '2026-04-27 13:56:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2b2f6cd8e87a32dfe387239519114fbd3b09c241accb4e6261b7caa7ef31be02c5cbf7000ce6bcdd', '7a13f4745d0cf18d7800bdcc7283e6e404b611a4b5f2c14751d1b1a54a656a2eb29b7dbcd208f9eb', 0, '2026-03-16 19:01:45');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('2fa148846b8b1b38debeb061ee2fb417c16aca86e20eaf484a1ec0551acb18e82e3e82535c441f98', 'b20ede363e353e6e1ebcc84e1ed4b6d2960c9cedfb7540190268536faa467d095057eaedf433d0c2', 0, '2026-03-23 15:05:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('31f2301858e428988d1b209f7634698b73be55f52e77b3c79656fbca5ff10493be643cfbedc3657f', '3ffc8ecd4fdfc117a1fabbfb32fd920c3ef906cc06ad079d418684c61cfa430f472a47a0e9178818', 0, '2026-04-05 03:49:01');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('33ec666476058c27db1cb30208e73b9340eb78b45f5995fd23a87e7b7fcc774b10c304653974c59b', '95d8d59d70fcbeabed48a66f3c09b66882ab37f0b2c377eda1666a380de5191b5a3b87c8e45a4cfb', 0, '2026-03-14 14:48:22');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('34f4d5e7e6fdd94b1a4cdf88c7a87e03a0156fa131b93eac21fe7e84c273b3a58a58d3934ac840ec', '03350874f9d842f1d8975263a03e78e1e8750cbc1273c8daca3b68b2eb9314907e75b3d0124b9252', 0, '2026-04-23 11:44:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('35d3f9319f745acf532aef0a855210c4f93843cd8edc38e8eb3cf364e72d4145f99875f6011a8a90', '03dd50c1fe4b90c114f0147460c0383aa3dfd10e5765a96bf887f4e91ee92da60a8fb9a33d58302e', 0, '2026-03-23 19:29:23');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('383dfd868d8bb2599341de502c32f34d93e32a4731d1832d474a90a2595949a359793c36ae647a6d', '6d90ca993ea4e5242da177828d6d4f1cdd9f1d9b457454942baf8de113d1893014b945520b901c64', 0, '2026-03-23 13:32:41');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('38a4bb07d648c5831a16c3aa2e5ad1eee8637d6a229bdd0d4f2c09f531505cd45b3866dd3adcc25c', '411520e4718998d2a54f0dba1d352118bfa3151bd49dc9677ee6adb72027047894228250d3f025fa', 0, '2026-04-27 17:56:17');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3c2e41e435226de25e7beb03fdaae2e9c499509e2fb6437e10dac12c9ec22738c8c70be645da048a', 'd267e99ad0abb166dc79f593b07db0e8b5d44cc7fa3fc5d0dc68bb739b4a1088ab8cf82d4d060294', 0, '2026-04-05 20:02:06');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3c75478db7d24931777d236bc4c5187e50dd0d81c08ba794425b0348e6dceee66745fcc01a122bc8', 'b87d02e3ef11655f1e6f858683edf37a657de5b2dbe65ecab17f12a4b8084768e9b8531a39dd08de', 0, '2026-03-16 02:15:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3da948c00bd5d027bf20abf1f85c3bc2218af85af31c01c602d5082cec55212020d4d8ef979b43ec', '3223bae2843b76750c9596b6280bbfa3637dbfccb27272e862f5d223389889535bad0494398ce2b9', 0, '2026-03-16 20:01:42');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3db719c7af25a41a491dab083cddd16eb0434f557c7600fd7f869e860225d388c368c2e533af6665', 'cd586efbd1d71007692fca4bffd209f9ee6fcd5c80cb6dd7306dccbfaf3b17af4b8f52070a02922b', 0, '2026-03-22 12:53:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3edb3006c88f5347dd5a8fe41a8c757f195bd393732c67f11838a4234a13f31328a30ca7711729c8', '44b087c4ba9ea5faba4f98e6f1e0afcf3815a12b9231dfaa7612b1b5f10c210cf03b2a8d745f2d7a', 0, '2026-04-11 17:15:38');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('3fb0206b6188cd87dc4304b567111c83e87a8dbf262cb24524d840f0515d7989ed191f541ef7f285', '3b79ac6ced910526848db7724e6307efebadb781b799262c2cc6c25eb04e008caea069069792b41e', 0, '2026-04-11 21:51:39');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('46eef6e8befdf92320dda37502269ea7d2922550b2c7615f5e6c9450123bb0c8dcd971d8e8fc5a46', 'e4e7c3a1ce4ecb76de0763332cdbcb301c1e459eb3ce99b840db6ab10fd4a241d21d2abf9520d4a1', 0, '2026-03-01 13:57:43');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('477e2754de9e03dcfb78c1bd81b0e5100b8d4629d53ba7cadd82b1556e64fa60a472ff47d0410694', '7d20e564d85e09c2d57386cfd3e7dcfb90857ecb0b026d19ddd7389b6b0f42bdab93f62312ba093a', 0, '2026-03-23 15:06:01');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4a7dbc2375ba5472c1d96f98814c68e1cdf8541485526c44f5135b79bf2b37823f5a9b58b6fa8a25', '23954901ac6308724e2073ae6171aaea90d04d0e20aa32db1f8af5975bfaa8a57f4d8a56b6a454d0', 0, '2026-04-05 22:00:49');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4b05f321044e43d15254721f2784d62fb41726aa8cbe6bb324c3c6d4d3a3e1701afd801cb2817327', 'e05fd3329d2af087f9d56d0cc06c0b78761716b6f8c1a01bf60ac2ad523fd19f55ab984354b09f44', 0, '2026-04-27 20:53:04');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4b2b42153e02baa0083f86addd6574fb8cf7173ed6fa7f3762de525a8c13f6f467b4c511d5cd2795', '6950187cc5eb436deed7aff5e48d023af966c0a7d52772559aa89ab85cb73ee70d74888fa78619f9', 0, '2026-04-27 17:36:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('4d01e3d09b2366d401dce962b99d1003907c7fa584859a849b1d13e0b9baf4e337c7e614fa43a046', '597460e9b276570fee8ce3397c3b745c70083f4df726491e22ca52a905b49bdba10ed50e57412c83', 0, '2026-04-23 17:25:54');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('519698fdd0418699c602005a91005c362e5fad44a5e7adbbe690aefa0efb1f5599f664e9831a8a79', 'a61959328332e30359d25bd46b4501341c62bc6499219d952499e43fe4d915586e6ad58796d11228', 0, '2026-02-28 16:34:55');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('54fe2f42df11ba5f1cdddd9e79a8af6eec124a124ac3040267cba5a9f5ab84bcd18982ea4b3b957f', 'd4648480061825f43cba4534352491e6a77d125f6c316e1ca9702e024296732820f4ec28a67fe6c6', 0, '2026-04-27 03:14:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('555bc8148869d9c49ab7216577940246a5cde5893a146ae4bd0432f019b86ae73d06ab268093c3cd', '1a1f20b7d9eb91e5a05429c25590dcbabd816735f4e94eab19a21a0a66c527f203143df362c84922', 0, '2026-03-17 20:45:31');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('559e5757138b66b976b1efa457dd7830e182f340f604a322b42b16be1c4d5da0b79715079cf48dc9', '01791a836c16545e47b05b3f4b2d16626e9a73961655928d4eabadbd7d98768dfff9c5dc601a837b', 0, '2026-03-22 22:24:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('5b9e6fa9fe4e3ab319b48deb6a410368ebea7a7bf9e9abe7b40fc0f3e456d6de975ec0df7c2c6202', 'e963f12043b4a308c737fa761795194af9108fb3125ca573366008f05d48457d203fd1f5fe57ead7', 0, '2026-04-30 14:44:41');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6186f89ce075617b42a77d912989fddbbbf7402d51b5be4e5fed1c5c6325d66171b342e3350094bc', 'ab3b6cb9d147e4cf818e062025d4699b68727d116805e3c44e162e48a11eae80d92ebe1e87ec544b', 0, '2026-04-04 10:56:30');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6ac3aa238622497a2306318e7cc6fa00f60cd08406ba928fd75dc304a1cf1f60b1ee080060d2e8a1', 'c7b334fdf5102bfff50b5d9354cbedf346aadb286827d4109cf3bdb0c7b048f1e28db1f845768c9d', 0, '2026-03-23 20:30:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('6d76ac239ca110617bfc4ac4fc997038fb75d76969d80ce144be549e032e2a33afd9fb6096f979d1', '177a57550d0ca8f62ec6f02d583520d26e53572c1ba5b9ed13bce2a5827ca053eb3383aacdc0d0cb', 0, '2026-03-14 14:50:08');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7ad6529a3f5c8c38faaa0e49944d3bd410d11376b4d94cba7c34d8e351574a6f551d6ca9e13770dc', '25710980a80b7cbd5f5e709b6a1b50b5fd7a556bf24cddef207f405d3dd524876eeda44c8036bb0f', 0, '2026-04-05 21:27:45');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7be92281b9bd450bc48e3f9d61ab89908262a82fb6eacfcd8fbc6bbcfa938812b46ec4b5d5fbccd1', '17b600e28694c55aee0103f23e485d794684c548915f2d4b527849c3181c07a03883c500312920c3', 0, '2026-03-22 20:35:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('7da3a107dc381f0e2fcac61d56997e29afd1c2be4ec77c461bae5c1595b77b5f80cbb1d7ba914c10', 'ecb98c6e941deb877ca1c19304706c346049bbf91708d05da1afcfb10e74581113142fba5ca242f6', 0, '2026-03-17 21:34:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('8d3befb51852a154e0b2f90399909fa345c16f5ee58000c383163be51fcd3cae487886670390cf03', '8596bcc489f398a7747dca1f4bcb5ea9f027a669fc177ed5963d0c7a05faf03019bf8ccefeac0474', 0, '2026-04-05 19:18:39');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('90b963ff9eb198161210319a8bf1cf44c4ac43abb1e4baac6458cdda6aba1c194bfa698bb974136e', '676bfb785b409a456bf0272b9c029c0dd3932bf24b432fee37aaad9e4816edae715c380b71b8675e', 0, '2026-04-01 15:56:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('919a70e2380801e94247386abeb32bd7583c2c9af74defa58187461d46f9c32e616919e0f7750a0f', 'd102cbde27d6ad305e15671c54a59b832edf17e909c65e223051ddcf580955403ba9b3c519a2774b', 0, '2026-03-22 20:26:19');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9228035b071c96aef472cd78d06876f0d4dbf36ab7f889972e849071f099473fdaa55af27d693548', 'a5f09a78bc596fd0fc524316aa326d00784d7555fdf7f238674bb739493dbcca2c30b422067bfd18', 0, '2026-04-01 15:46:45');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('96c710f0ef102daa3ff8b1e18e62d8bd116a68496727e20ca397561dcd5a3f67550de120ddaa6b63', 'babccc8138aac2dd6ab66016af736cf58e3b97bcfc97921de39272d706973595cf70ba1837bd8051', 0, '2026-03-18 15:00:26');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('981cc9acd55dfc861e40200170cbe8e3cd75aadce4d835ecce1288400039cb43f3f059cee7987f3b', '768fac9a284c85dcadf4b36137dcaec921b720032e48e42dbcc27091f384c9e8073a1b4d1aa8fd39', 0, '2026-04-27 18:28:59');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('98e0e6441c7832961e1da4cc683f44bb712f619636eaf586d32c049dbd10c98ae91f7f948b269ea4', '218576bfb8dc67b041cbe1a31654b413a8615727fbf58d006ffcca8fbe83739d0f15660cd845589b', 0, '2026-04-23 12:08:56');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('997083bb1e1cdcd0b024e2a79f262029c57932ff05f647a6c3a5fe60d53224be42d46cd35ffb2c33', 'e00212420020bc26a13fe3c42d1ab88ea0466ceaa304f252514e79900704309c11332ab3f222ca28', 0, '2026-03-31 23:37:25');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9ef71e7b50ec31e48abf7d6cd74d0025db894abdaf9c8bd74921dc04eab88fa9eabdc756f7e732c5', 'f69504c88cc814d3ea0d67b7d39bd2d1ebcdc3292fd84dc5d8af83d8b15ad249de195f1c01e9f046', 0, '2026-03-22 20:26:00');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a0065f159ead31d35f9f02e9a02c28e70259f957cab3a61508e9ee64e9a865303c908ba08f73709b', '875e4c99ed4259b3fc3d5bc57ae003a865ddbb1caee14ffded0e4c4af72b76772d5d9e19cc2ca546', 0, '2026-03-20 00:35:10');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a1f9966071916e799cd9f3dfc7b4353aa68b378943df3e0f84bb5bc1d3f573f1559bd9be10b81349', 'be792eed3b1f57b9bbe51a025b6ef22c3f82752b6c60fe125ff93d03b37bd551a7b2268f73b7ff78', 0, '2026-02-22 07:10:02');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a33feb9ba6004f65577353c2459c7cfb1adfd785a8d2101bf24652ecec1e60ed31dfc90d291fd4c1', '1195346844a0429f680aeb81c4e40232228ecbecf7848043aa07b1e993394e4ca1fd3c4ad3d2a78b', 0, '2026-04-30 23:05:13');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('a4d695ac1c2ecd34d4d255d912b92a290694a6d48462aaa9ef386b88f60713de66245b406185ef3a', '96615ed0e6ee108142437c1aa7c8885a60fab2a0e24b71f8649ce4700c21aa949f17d1445654b211', 0, '2026-04-05 19:23:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('acb4080507b1084759f0a5d8d5cb59ff71194bbebc404f0382e78aa1812eab07b8a651592ee62c8c', '49d472b6d27d4a9efbbc8c941eb7b24fb52267667b81c43bbddd293901aa6963937a0802da4e9d56', 0, '2026-03-19 21:33:58');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('af1a23498e9821fa6131b91e82e4b102ffcf92c65b8250a435d8cc7dceac462468dd0a8c7dbdff9f', 'fe715910c1f7e212f15f3ac551ef9fbd114b07d0a3c6284c7aa0bcc1de196900a9f8d334dc84258f', 0, '2026-04-05 19:43:24');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('b0f39905021af687d5223939e2bbc7ad3d254e03c427969c4e39e85763fc85e5c2b92f6c02c9c70d', 'd4f17ff4aaf532ca10840b1d16e64c1fcd3b699f8c1b1b85b27dfbd67ffef373fddf8e52353b2e3a', 0, '2026-03-16 13:36:03');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('bcdd2a9713fb48e38f78861f2c20ab92394d21831217503ba6cc90338b6bece93b3be3c5605128d4', '71ba26cd43082d98775301b59cb4d25ff7bcee1e34519cd976427360d830f1cb964598d5d09067a0', 0, '2026-03-22 11:51:10');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c2d08f176fdc46979fc091a260e72baa48b51a7f9041c198ecbc98205f4376e2737884bdabd0a77e', 'dd38138f54b71d7389fe791372419ed9b6738a4381469669053b6abb97a10cfe87f455a7080ce9e2', 0, '2026-04-23 11:08:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c3a8a94160831eff39475e42364b9c2e8768c605d53a632eef4a9b50efd2b1839b33724e6cf352ab', 'ab4e37f612523910273b5f26e279e044cb0f5ca70063e112627014f501eaf06b2d87455698e9974c', 0, '2026-04-05 14:48:30');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c493c8e0e2072eff53bd1658a35a1a8706f970bf0ea79840ddd2f0eef9630f180d0f0af7d453d45d', 'b8320f94c52c56ac2c2526980fcbff84da69ff288784fdb38ccaa130dbde6e8ba018ebc120cfe29f', 0, '2026-04-23 11:22:15');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('c68051506e2fdf72a33e12b1da67c408bd3a9f965e87a4a9f8071c92a80684ce3f5d02444c4c2005', 'ef7b7e27d90f9118cbf1f62e6332b0023009c1d6f54d8fe0e3f28eccf1244482bba4722c68e73440', 0, '2026-02-22 23:00:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('cd11543239ded47ec916bf5b2da3fcc239e711f425353a20dc9d3df935f9a2b2e28518682248133e', 'efb1b28859b802f5456a26516b18af86abec7325fcc7c5d985de233ac9c15189d44a12ab0d807329', 0, '2026-03-23 02:30:47');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('cdf9793e969117e2fbeffe1d58854b4ad8a9566a550130344347099bf06e016cc0ce0b66f5631327', '1116dc39ed7bed7e53734b72d72e2b1c07ebaeca81a8c9082bad54aea3f4316dda983c52aa91249d', 0, '2026-04-05 19:23:14');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ce1f72992d1dc2e0b30efb268cf2854d76e5d9d12ee71ee17842d52a3ee004a55783c81863b87043', '0cde5fc235833eeb6c2234f1b5e3127e3ac14e8d0fc077f7da28b7a2b8898f72200ee3c8a0d1c569', 0, '2026-03-23 12:35:26');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d2035582adaeab589f0ce05aa5fa74e7164708fcacf6ec15c0d7faac607f3332516cdadbcd9f7753', '91e5c487b604f2757433243711fbd6df4e8723eca8a0e6cedc34f7a3ab2b8126c26b97ac486bd7b4', 0, '2026-03-16 16:57:27');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d30017c85ff2ed67bde907894d94b5b1ba692976da86f2a8baa8cc368d8ee6646c459a99b4533fc1', 'bfc466aa2a267ae13972f6b768229941fcba45d69352bdeb70bdae8e850d34b54449b04ef08f3ad9', 0, '2026-03-14 02:59:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d57b640f25608bcfd07d2634932ff6866a946fa0a7cf776e555d7a8075a3de82c2ddc0d547b3157c', '57d127dd3323cdbb1135acda4939f8c5291147fe27d4a4fbd18dbebbfeffddc9de279482e4d10bb3', 0, '2026-02-22 22:28:10');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('d719fd0c366193ead36fa8faf9ab484127e8a3c331eacf7be9e203a0cd11854f380281eacb4e90f4', 'a822f03abfbb1697a9f51fc6c491bcde59638f7f3c2e938a1ee82b0eed52caba7c2297adde44ec74', 0, '2026-03-16 17:38:19');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('eb543d24892cc8c71903a63d9c7d68eeab08b88e9b52903f3fc34864b44b28fbb53d47a806c75101', '80417f17f15eef58cdb263977c6347358b71b00f0847de0d6130ef855d3474e25e886b250f952ce4', 0, '2026-03-15 19:19:03');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ecf54e81fc2ba84d7803ddbd15285af18e6ad3b855294b23619fde1e96ed4da8e6f8b946724e8528', '1ee7626a30484a04acb4167e7015c5d750e9a7d1a9a18668f6a084c1d975d6fa28c3ff381ed40fa9', 0, '2026-03-24 14:53:21');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ed4268e0d6fb555a752868cd683d5ef34b76c604004e1d157a7c2a1cdba0bf34a5cc8366e48394e3', 'ae656703f4ad353af9ac786a82338f4ada852129ca490b911a07e2af0b9300cc61d877cd01d5f061', 0, '2026-04-05 19:28:52');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ed6478e466aa8d334fad9c629760d6661371ba168b8f4c3a76fcc964e043519b4e6485cd8d0aaa34', '0399239ce03542fd0906e3c28728ea95098145ea41225c53f5a4be6581aba59de79f7dafd9e5b6b1', 0, '2026-03-22 18:18:07');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ed7b509978279ee890e93e5ec56097ee552be82620478ce4a172d1002c275afd22c75f7987b1fd6d', '4524870a8232f9fd53f0f0617f794370d3f706410172b4ea142f01d19b0744b19ab1546b7a2cb200', 0, '2026-04-05 04:05:35');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ee7a4ce682a19352b0847992f45bf654af2088cd20b5119ff3e3bc5c201f5b32350c98bbd539477f', '3f82681563902ee6a45e17bf87129442740cd030752443f2604adaa26061721d93a3f481b9eae14f', 0, '2026-04-23 14:41:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('ee9c0dfcfc191affe88c7afad6bf569780d8c655780b1a8667614ee6666c22d7985d29e73c01efb7', '5300746f1d28cbe2cca31c4f550360d92f6b5dfc1db7eebe7e07d19b16462558d86ac6941e2f320a', 0, '2026-03-23 19:19:12');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('eea9e051047c626baaa8c93e1d8d65fea8b0e4d37152921dc8f9e57cc4572df6f1747a1c36997483', 'b9a41c1877104263b108b361f05b9035562f56ae10807d4bd5e04b9df2a58946a205424c68fd4290', 0, '2026-04-02 01:27:29');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('efbe7cb0f67d660962a057d2d0db961a151162612303228c2bf96055c0ce2c7fa12d08025ce88666', 'fa20e77a1e54d0ac7af3fe32c4e52eab3f1bf638da7ee6a11ed1ba94f44b271397b6ff3020037365', 0, '2026-04-27 14:43:20');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('f994345e7531c592c4506379ac4136c0850c8231e29ae1ae6c3a19405d00af0163ddca282094a868', 'cc87fc7dc96db8e42ada01c6bbf6c83b77b0906284ace908849c99bea8dc01dbea213a09b0c63280', 0, '2026-03-01 00:55:22');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('fb1ebb677107eff51dff23f8b15d94107e078da27f215cb1ee0e876debe86e58755fe5439188f995', '980cb4cfe212e060d0d9087c6e1133614e07151aedde9f3d3f118c52a3d29c4afb1ed9bafbfc6e78', 0, '2026-04-27 14:50:17');
INSERT INTO "public"."oauth_refresh_tokens" VALUES ('9b72d20d55840d8437acb264eb6d9eded6f4d5ce40cdd8ce1183ddd712943d7a154a84b85842005e', '012c82c25c534e566550b7ebbafc7ccffc97c5dfb4b1bf359e1e640a4564ef4b77c60c64e47acdfb', 0, '2026-05-01 17:00:59');

-- ----------------------------
-- Table structure for opartidas
-- ----------------------------
DROP TABLE IF EXISTS "public"."opartidas";
CREATE TABLE "public"."opartidas" (
  "id" int8 NOT NULL DEFAULT nextval('opartidas_id_seq'::regclass),
  "event_id" int8 NOT NULL,
  "tripulacion_id" int8 NOT NULL,
  "hora_salida" time(1),
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of opartidas
-- ----------------------------
INSERT INTO "public"."opartidas" VALUES (163, 2, 65, '09:00:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (164, 2, 66, '09:01:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (165, 2, 77, '09:02:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (166, 2, 78, '09:03:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (167, 2, 67, '09:04:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (168, 2, 70, '09:05:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (169, 2, 76, '09:06:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (170, 2, 80, '09:07:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (171, 2, 82, '09:08:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (172, 2, 72, '09:09:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (173, 2, 69, '09:10:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (174, 2, 75, '09:11:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (175, 2, 71, '09:12:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (176, 2, 74, '09:13:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (177, 2, 81, '09:14:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (178, 2, 79, '09:15:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (179, 2, 73, '09:16:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (180, 2, 68, '09:17:00', '2025-03-22 17:26:19', '2025-03-22 17:26:19');
INSERT INTO "public"."opartidas" VALUES (517, 4, 173, '11:00:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (518, 4, 177, '11:01:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (519, 4, 154, '11:02:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (520, 4, 171, '11:03:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (521, 4, 152, '11:04:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (522, 4, 175, '11:05:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (523, 4, 151, '11:06:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (524, 4, 168, '11:07:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (525, 4, 176, '11:08:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (526, 4, 157, '11:09:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (527, 4, 170, '11:10:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (528, 4, 172, '11:11:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (529, 4, 156, '11:12:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (530, 4, 159, '11:13:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (531, 4, 153, '11:14:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (532, 4, 160, '11:15:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (533, 4, 169, '11:16:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (534, 4, 162, '11:17:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (535, 4, 167, '11:18:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (536, 4, 161, '11:19:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (537, 4, 163, '11:20:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (538, 4, 165, '11:21:00', '2025-04-04 10:57:32', '2025-04-04 10:57:32');
INSERT INTO "public"."opartidas" VALUES (716, 5, 189, '14:40:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (717, 5, 178, '14:41:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (718, 5, 187, '14:42:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (720, 5, 190, '14:44:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (721, 5, 193, '14:45:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (722, 5, 192, '14:46:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (723, 5, 191, '14:47:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (724, 5, 195, '14:48:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (725, 5, 180, '14:49:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (726, 5, 184, '14:50:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (728, 5, 197, '14:52:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (729, 5, 200, '14:53:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (730, 5, 201, '14:54:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (731, 5, 202, '14:55:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');
INSERT INTO "public"."opartidas" VALUES (732, 5, 186, '14:56:00', '2025-04-05 20:08:43', '2025-04-05 20:08:43');

-- ----------------------------
-- Table structure for orgs
-- ----------------------------
DROP TABLE IF EXISTS "public"."orgs";
CREATE TABLE "public"."orgs" (
  "id" int8 NOT NULL DEFAULT nextval('orgs_id_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "ubigeo_id" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "foto_url" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of orgs
-- ----------------------------
INSERT INTO "public"."orgs" VALUES (1, 'Rally Cronos', NULL, '211101', NULL, NULL, NULL);
INSERT INTO "public"."orgs" VALUES (2, 'Automóvil Club Juliaca', NULL, '211101', NULL, NULL, NULL);
INSERT INTO "public"."orgs" VALUES (3, 'Automóvil Club Arequipa', NULL, '040101', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for parametros
-- ----------------------------
DROP TABLE IF EXISTS "public"."parametros";
CREATE TABLE "public"."parametros" (
  "id" int8 NOT NULL DEFAULT nextval('parametros_id_seq'::regclass),
  "event_id" int8 NOT NULL,
  "set_especial" int4,
  "hora_partida" time(1),
  "intervalo" time(1),
  "esp_hora_salida" time(1),
  "esp_intervalo" time(1),
  "modo_partida" varchar(255) COLLATE "pg_catalog"."default",
  "estado_evento" int2,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO "public"."parametros" VALUES (1, 2, 26, '09:00:00', '00:01:00', NULL, NULL, 'acumulado', 0, NULL, '2025-03-23 02:05:44');
INSERT INTO "public"."parametros" VALUES (3, 4, 42, '11:00:00', '00:01:00', NULL, NULL, 'shakedown', 0, '2025-03-16 17:44:52', '2025-04-04 10:57:32');
INSERT INTO "public"."parametros" VALUES (4, 5, 50, '14:40:00', '00:01:00', NULL, NULL, 'inscritos', 0, '2025-04-01 15:52:20', '2025-04-05 20:08:43');
INSERT INTO "public"."parametros" VALUES (7, 8, 58, NULL, NULL, NULL, NULL, NULL, 0, '2025-04-23 11:23:45', '2025-04-27 18:13:49');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_reset_tokens";
CREATE TABLE "public"."password_reset_tokens" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6)
)
;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "id" int8 NOT NULL DEFAULT nextval('permissions_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "guard_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES (1, 'admin-permisos', 'Administrar Permisos', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO "public"."permissions" VALUES (2, 'admin-roles', 'Administrar usuarios', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO "public"."permissions" VALUES (3, 'admin-usuarios', 'Administrar usuarios', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_access_tokens";
CREATE TABLE "public"."personal_access_tokens" (
  "id" int8 NOT NULL DEFAULT nextval('personal_access_tokens_id_seq'::regclass),
  "tokenable_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tokenable_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "abilities" text COLLATE "pg_catalog"."default",
  "last_used_at" timestamp(6),
  "expires_at" timestamp(6),
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."role_has_permissions";
CREATE TABLE "public"."role_has_permissions" (
  "permission_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO "public"."role_has_permissions" VALUES (1, 1);
INSERT INTO "public"."role_has_permissions" VALUES (2, 1);
INSERT INTO "public"."role_has_permissions" VALUES (3, 1);
INSERT INTO "public"."role_has_permissions" VALUES (1, 2);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id" int8 NOT NULL DEFAULT nextval('roles_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "guard_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" VALUES (1, 'GOD', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO "public"."roles" VALUES (2, 'Administrador', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');
INSERT INTO "public"."roles" VALUES (3, 'Oficial', 'api', '2025-02-22 03:35:30', '2025-02-22 03:35:30');

-- ----------------------------
-- Table structure for tiempos
-- ----------------------------
DROP TABLE IF EXISTS "public"."tiempos";
CREATE TABLE "public"."tiempos" (
  "id" int8 NOT NULL DEFAULT nextval('tiempos_id_seq'::regclass),
  "especial_id" int8,
  "tripulacion_id" int8 NOT NULL,
  "hora_salida" time(1),
  "hora_llegada" time(1),
  "hora_marcado" time(1),
  "penalizacion" time(1),
  "registrador" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of tiempos
-- ----------------------------
INSERT INTO "public"."tiempos" VALUES (737, 24, 67, '10:50:00', '10:59:48', '00:09:48', NULL, NULL, '2024-12-22 17:05:52', '2024-12-22 17:05:52');
INSERT INTO "public"."tiempos" VALUES (738, 24, 73, '10:52:00', '11:01:31', '00:09:31', NULL, NULL, '2024-12-22 17:06:08', '2024-12-22 17:06:08');
INSERT INTO "public"."tiempos" VALUES (739, 24, 77, '10:54:00', '11:02:48', '00:08:48', NULL, NULL, '2024-12-22 17:06:54', '2024-12-22 17:06:54');
INSERT INTO "public"."tiempos" VALUES (740, 24, 74, '10:56:00', '11:07:04', '00:11:04', NULL, NULL, '2024-12-22 17:07:37', '2024-12-22 17:07:37');
INSERT INTO "public"."tiempos" VALUES (742, 24, 70, '10:58:00', '11:07:44', '00:09:44', NULL, NULL, '2024-12-22 17:08:27', '2024-12-22 17:08:43');
INSERT INTO "public"."tiempos" VALUES (743, 24, 76, '11:00:00', '11:09:44', '00:09:44', NULL, NULL, '2024-12-22 17:12:21', '2024-12-22 17:12:21');
INSERT INTO "public"."tiempos" VALUES (744, 24, 72, '11:02:00', '11:12:22', '00:10:22', NULL, NULL, '2024-12-22 17:12:43', '2024-12-22 17:12:43');
INSERT INTO "public"."tiempos" VALUES (745, 24, 75, '11:04:00', '11:14:31', '00:10:31', NULL, NULL, '2024-12-22 17:13:16', '2024-12-22 17:13:16');
INSERT INTO "public"."tiempos" VALUES (746, 24, 69, '11:06:00', '11:16:32', '00:10:32', NULL, NULL, '2024-12-22 17:13:38', '2024-12-22 17:13:38');
INSERT INTO "public"."tiempos" VALUES (747, 24, 71, '11:08:00', '11:18:20', '00:10:20', NULL, NULL, '2024-12-22 17:14:02', '2024-12-22 17:14:02');
INSERT INTO "public"."tiempos" VALUES (748, 24, 79, '11:10:00', '11:21:06', '00:11:06', NULL, NULL, '2024-12-22 17:14:39', '2024-12-22 17:14:39');
INSERT INTO "public"."tiempos" VALUES (749, 24, 65, '11:14:00', '11:22:03', '00:08:03', NULL, NULL, '2024-12-22 17:14:58', '2024-12-22 17:14:58');
INSERT INTO "public"."tiempos" VALUES (750, 24, 66, '11:16:00', '11:24:47', '00:08:47', NULL, NULL, '2024-12-22 17:15:56', '2024-12-22 17:17:01');
INSERT INTO "public"."tiempos" VALUES (751, 24, 78, '11:18:00', '11:27:40', '00:09:40', NULL, NULL, '2024-12-22 17:16:24', '2024-12-22 17:16:24');
INSERT INTO "public"."tiempos" VALUES (752, 24, 82, '11:20:00', '11:30:24', '00:10:24', NULL, NULL, '2024-12-22 17:17:46', '2024-12-22 17:17:46');
INSERT INTO "public"."tiempos" VALUES (753, 24, 80, '11:22:00', '11:32:00', '00:10:00', NULL, NULL, '2024-12-22 17:18:04', '2024-12-22 17:18:04');
INSERT INTO "public"."tiempos" VALUES (754, 24, 81, '11:24:00', '11:34:52', '00:10:52', NULL, NULL, '2024-12-22 17:18:24', '2024-12-22 17:18:24');
INSERT INTO "public"."tiempos" VALUES (755, 24, 68, '11:26:00', '11:39:26', '00:13:26', NULL, NULL, '2024-12-22 17:18:43', '2024-12-22 17:18:43');
INSERT INTO "public"."tiempos" VALUES (756, 23, 67, '10:00:00', '10:09:33', '00:09:33', NULL, NULL, '2024-12-22 17:19:22', '2024-12-22 17:21:19');
INSERT INTO "public"."tiempos" VALUES (757, 23, 73, '10:02:00', '10:11:32', '00:09:32', NULL, NULL, '2024-12-22 17:19:41', '2024-12-22 17:21:30');
INSERT INTO "public"."tiempos" VALUES (758, 23, 77, '10:04:00', '10:13:02', '00:09:02', NULL, NULL, '2024-12-22 17:19:58', '2024-12-22 17:21:46');
INSERT INTO "public"."tiempos" VALUES (759, 23, 74, '10:06:00', '10:17:11', '00:11:11', NULL, NULL, '2024-12-22 17:20:16', '2024-12-22 17:22:03');
INSERT INTO "public"."tiempos" VALUES (760, 23, 70, '10:08:00', '10:17:53', '00:09:53', NULL, NULL, '2024-12-22 17:22:27', '2024-12-22 17:22:27');
INSERT INTO "public"."tiempos" VALUES (761, 23, 76, '10:10:00', '10:19:47', '00:09:47', NULL, NULL, '2024-12-22 17:22:46', '2024-12-22 17:22:46');
INSERT INTO "public"."tiempos" VALUES (762, 23, 72, '10:12:00', '10:22:26', '00:10:26', NULL, NULL, '2024-12-22 17:23:09', '2024-12-22 17:23:09');
INSERT INTO "public"."tiempos" VALUES (763, 23, 75, '10:14:00', '10:24:27', '00:10:27', NULL, NULL, '2024-12-22 17:23:40', '2024-12-22 17:23:40');
INSERT INTO "public"."tiempos" VALUES (764, 23, 69, '10:16:00', '10:26:38', '00:10:38', NULL, NULL, '2024-12-22 17:23:57', '2024-12-22 17:23:57');
INSERT INTO "public"."tiempos" VALUES (765, 23, 71, '10:18:00', '10:28:45', '00:10:45', NULL, NULL, '2024-12-22 17:24:24', '2024-12-22 17:24:24');
INSERT INTO "public"."tiempos" VALUES (766, 23, 79, '10:20:00', '10:31:16', '00:11:16', NULL, NULL, '2024-12-22 17:24:41', '2024-12-22 17:24:41');
INSERT INTO "public"."tiempos" VALUES (767, 23, 65, '10:24:00', '10:32:05', '00:08:05', NULL, NULL, '2024-12-22 17:25:07', '2024-12-22 17:25:44');
INSERT INTO "public"."tiempos" VALUES (768, 23, 66, '10:26:00', '10:34:42', '00:08:42', NULL, NULL, '2024-12-22 17:26:07', '2024-12-22 17:26:07');
INSERT INTO "public"."tiempos" VALUES (769, 23, 78, '10:28:00', '10:38:26', '00:10:26', NULL, NULL, '2024-12-22 17:26:25', '2024-12-22 17:26:25');
INSERT INTO "public"."tiempos" VALUES (770, 23, 82, '10:30:00', '10:40:30', '00:10:30', NULL, NULL, '2024-12-22 17:26:51', '2024-12-22 17:26:51');
INSERT INTO "public"."tiempos" VALUES (771, 23, 80, '10:32:00', '10:42:12', '00:10:12', NULL, NULL, '2024-12-22 17:27:09', '2024-12-22 17:27:09');
INSERT INTO "public"."tiempos" VALUES (772, 23, 81, '10:34:00', '10:45:01', '00:11:01', NULL, NULL, '2024-12-22 17:27:23', '2024-12-22 17:27:23');
INSERT INTO "public"."tiempos" VALUES (773, 23, 68, '10:36:00', '10:51:32', '00:15:32', NULL, NULL, '2024-12-22 17:27:48', '2024-12-22 17:27:48');
INSERT INTO "public"."tiempos" VALUES (774, 22, 67, '09:15:00', '09:24:52', '00:09:52', NULL, NULL, '2024-12-22 17:29:35', '2024-12-22 17:31:51');
INSERT INTO "public"."tiempos" VALUES (775, 22, 73, '09:17:00', '09:36:38', '00:19:38', NULL, NULL, '2024-12-22 17:29:54', '2024-12-22 17:30:27');
INSERT INTO "public"."tiempos" VALUES (776, 22, 77, '09:19:00', '09:28:16', '00:09:16', NULL, NULL, '2024-12-22 17:31:01', '2024-12-22 17:31:01');
INSERT INTO "public"."tiempos" VALUES (777, 22, 74, '09:21:00', '09:32:10', '00:11:10', NULL, NULL, '2024-12-22 17:31:33', '2024-12-22 17:31:33');
INSERT INTO "public"."tiempos" VALUES (778, 22, 76, '09:25:00', '09:34:51', '00:09:51', NULL, NULL, '2024-12-22 17:33:21', '2024-12-22 17:34:03');
INSERT INTO "public"."tiempos" VALUES (779, 22, 70, '09:23:00', '09:32:54', '00:09:54', NULL, NULL, '2024-12-22 17:34:28', '2024-12-22 17:34:28');
INSERT INTO "public"."tiempos" VALUES (780, 22, 72, '09:27:00', '09:37:30', '00:10:30', NULL, NULL, '2024-12-22 17:34:59', '2024-12-22 17:34:59');
INSERT INTO "public"."tiempos" VALUES (781, 22, 75, '09:29:00', '09:39:42', '00:10:42', NULL, NULL, '2024-12-22 17:35:21', '2024-12-22 17:35:21');
INSERT INTO "public"."tiempos" VALUES (782, 22, 69, '09:31:00', '09:41:40', '00:10:40', NULL, NULL, '2024-12-22 17:35:55', '2024-12-22 17:35:55');
INSERT INTO "public"."tiempos" VALUES (783, 22, 71, '09:33:00', '09:43:54', '00:10:54', NULL, NULL, '2024-12-22 17:36:20', '2024-12-22 17:36:20');
INSERT INTO "public"."tiempos" VALUES (784, 22, 79, '09:35:00', '09:46:11', '00:11:11', NULL, NULL, '2024-12-22 17:36:40', '2024-12-22 17:36:40');
INSERT INTO "public"."tiempos" VALUES (785, 22, 65, '09:38:00', '09:46:13', '00:08:13', NULL, NULL, '2024-12-22 17:37:17', '2024-12-22 17:37:17');
INSERT INTO "public"."tiempos" VALUES (786, 22, 66, '09:40:00', '09:49:02', '00:09:02', NULL, NULL, '2024-12-22 17:37:45', '2024-12-22 17:37:45');
INSERT INTO "public"."tiempos" VALUES (787, 22, 78, '09:42:00', '09:51:41', '00:09:41', NULL, NULL, '2024-12-22 17:38:45', '2024-12-22 17:38:45');
INSERT INTO "public"."tiempos" VALUES (788, 22, 82, '09:44:00', '09:54:43', '00:10:43', NULL, NULL, '2024-12-22 17:39:03', '2024-12-22 17:39:03');
INSERT INTO "public"."tiempos" VALUES (789, 22, 80, '09:46:00', '09:56:24', '00:10:24', NULL, NULL, '2024-12-22 17:40:38', '2024-12-22 17:40:38');
INSERT INTO "public"."tiempos" VALUES (790, 22, 81, '09:48:00', '09:59:30', '00:11:30', NULL, NULL, '2024-12-22 17:41:01', '2024-12-22 17:41:01');
INSERT INTO "public"."tiempos" VALUES (791, 22, 68, '09:50:00', '10:03:57', '00:13:57', NULL, NULL, '2024-12-22 17:41:40', '2024-12-22 17:41:40');
INSERT INTO "public"."tiempos" VALUES (792, 25, 65, '12:40:00', '12:47:51', '00:07:51', NULL, NULL, '2024-12-22 18:19:14', '2024-12-22 18:19:14');
INSERT INTO "public"."tiempos" VALUES (793, 25, 66, '12:42:00', '12:50:27', '00:08:27', NULL, NULL, '2024-12-22 18:19:39', '2024-12-22 18:19:39');
INSERT INTO "public"."tiempos" VALUES (794, 25, 67, '12:44:00', '12:53:28', '00:09:28', NULL, NULL, '2024-12-22 18:20:12', '2024-12-22 18:20:12');
INSERT INTO "public"."tiempos" VALUES (795, 25, 73, '12:46:00', '12:55:27', '00:09:27', NULL, NULL, '2024-12-22 18:20:35', '2024-12-22 18:20:35');
INSERT INTO "public"."tiempos" VALUES (796, 25, 77, '12:48:00', '12:56:55', '00:08:55', NULL, NULL, '2024-12-22 18:21:04', '2024-12-22 18:21:04');
INSERT INTO "public"."tiempos" VALUES (797, 25, 74, '12:50:00', '13:01:00', '00:11:00', NULL, NULL, '2024-12-22 18:22:01', '2024-12-22 18:22:01');
INSERT INTO "public"."tiempos" VALUES (798, 25, 70, '12:52:00', '13:01:47', '00:09:47', NULL, NULL, '2024-12-22 18:22:40', '2024-12-22 18:22:40');
INSERT INTO "public"."tiempos" VALUES (799, 25, 76, '12:54:00', '13:03:52', '00:09:52', NULL, NULL, '2024-12-22 18:23:08', '2024-12-22 18:23:08');
INSERT INTO "public"."tiempos" VALUES (800, 25, 72, '12:56:00', '13:06:35', '00:10:35', NULL, NULL, '2024-12-22 18:23:29', '2024-12-22 18:23:29');
INSERT INTO "public"."tiempos" VALUES (801, 25, 75, '12:58:00', '13:08:39', '00:10:39', NULL, NULL, '2024-12-22 18:24:03', '2024-12-22 18:24:03');
INSERT INTO "public"."tiempos" VALUES (802, 25, 69, '13:00:00', '13:10:40', '00:10:40', NULL, NULL, '2024-12-22 18:24:30', '2024-12-22 18:24:30');
INSERT INTO "public"."tiempos" VALUES (803, 25, 71, '13:02:00', '13:12:40', '00:10:40', NULL, NULL, '2024-12-22 18:24:49', '2024-12-22 18:24:49');
INSERT INTO "public"."tiempos" VALUES (804, 25, 79, '13:04:00', '13:15:20', '00:11:20', NULL, NULL, '2024-12-22 18:25:18', '2024-12-22 18:25:18');
INSERT INTO "public"."tiempos" VALUES (805, 25, 78, '13:06:00', '13:15:25', '00:09:25', NULL, NULL, '2024-12-22 18:25:43', '2024-12-22 18:25:43');
INSERT INTO "public"."tiempos" VALUES (806, 25, 82, '13:08:00', '13:18:15', '00:10:15', NULL, NULL, '2024-12-22 18:25:58', '2024-12-22 18:25:58');
INSERT INTO "public"."tiempos" VALUES (807, 25, 80, '13:10:00', '13:20:06', '00:10:06', NULL, NULL, '2024-12-22 18:28:37', '2024-12-22 18:28:37');
INSERT INTO "public"."tiempos" VALUES (808, 25, 81, '13:12:00', '13:22:55', '00:10:55', NULL, NULL, '2024-12-22 18:29:15', '2024-12-22 18:29:15');
INSERT INTO "public"."tiempos" VALUES (809, 25, 68, '13:14:00', '13:27:12', '00:13:12', NULL, NULL, '2024-12-22 18:29:45', '2024-12-22 18:29:45');
INSERT INTO "public"."tiempos" VALUES (1167, 26, 65, '09:00:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1168, 26, 66, '09:01:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1169, 26, 77, '09:02:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1170, 26, 78, '09:03:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1171, 26, 67, '09:04:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1172, 26, 70, '09:05:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1173, 26, 76, '09:06:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1174, 26, 80, '09:07:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1175, 26, 82, '09:08:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1176, 26, 72, '09:09:00', '09:16:25', '00:07:25', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:58');
INSERT INTO "public"."tiempos" VALUES (1177, 26, 69, '09:10:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1178, 26, 75, '09:11:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1179, 26, 71, '09:12:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1180, 26, 74, '09:13:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1181, 26, 81, '09:14:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1182, 26, 79, '09:15:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1183, 26, 73, '09:16:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1184, 26, 68, '09:17:00', NULL, '00:00:00', NULL, NULL, '2025-03-22 17:27:10', '2025-03-22 17:27:10');
INSERT INTO "public"."tiempos" VALUES (1185, 36, 161, '15:35:00', '15:39:40', '00:04:40', NULL, NULL, '2025-03-22 20:33:34', '2025-03-22 21:36:35');
INSERT INTO "public"."tiempos" VALUES (1186, 36, 156, '15:36:00', '15:40:15', '00:04:15', NULL, NULL, '2025-03-22 20:36:10', '2025-03-22 21:29:12');
INSERT INTO "public"."tiempos" VALUES (1187, 36, 162, '15:37:00', '15:41:30', '00:04:30', NULL, NULL, '2025-03-22 20:37:08', '2025-03-22 21:29:34');
INSERT INTO "public"."tiempos" VALUES (1188, 36, 172, '15:38:00', '15:42:12', '00:04:12', NULL, NULL, '2025-03-22 20:37:40', '2025-03-22 21:29:50');
INSERT INTO "public"."tiempos" VALUES (1189, 36, 169, '15:39:00', '15:43:28', '00:04:28', NULL, NULL, '2025-03-22 20:38:38', '2025-03-22 21:30:18');
INSERT INTO "public"."tiempos" VALUES (1190, 36, 151, '15:40:00', '15:43:43', '00:03:43', NULL, NULL, '2025-03-22 20:40:12', '2025-03-22 21:30:31');
INSERT INTO "public"."tiempos" VALUES (1191, 36, 160, '15:41:00', '15:45:27', '00:04:27', NULL, NULL, '2025-03-22 20:40:39', '2025-03-22 21:30:45');
INSERT INTO "public"."tiempos" VALUES (1192, 36, 157, '15:42:00', '15:46:05', '00:04:05', NULL, NULL, '2025-03-22 20:42:02', '2025-03-22 21:31:03');
INSERT INTO "public"."tiempos" VALUES (1193, 36, 167, '15:43:00', '15:47:32', '00:04:32', NULL, NULL, '2025-03-22 20:42:59', '2025-03-22 21:35:35');
INSERT INTO "public"."tiempos" VALUES (1194, 36, 159, '15:44:00', '15:48:19', '00:04:19', NULL, NULL, '2025-03-22 20:43:47', '2025-03-22 21:31:57');
INSERT INTO "public"."tiempos" VALUES (1195, 36, 176, '15:45:00', '15:49:00', '00:04:00', NULL, NULL, '2025-03-22 20:44:51', '2025-03-22 21:32:14');
INSERT INTO "public"."tiempos" VALUES (1196, 36, 175, '15:46:00', '15:49:37', '00:03:37', NULL, NULL, '2025-03-22 20:45:35', '2025-03-22 21:32:29');
INSERT INTO "public"."tiempos" VALUES (1197, 36, 177, '15:47:00', '15:50:26', '00:03:26', NULL, NULL, '2025-03-22 20:46:41', '2025-03-22 21:33:03');
INSERT INTO "public"."tiempos" VALUES (1198, 36, 168, '15:48:00', '15:51:46', '00:03:46', NULL, NULL, '2025-03-22 20:47:48', '2025-03-22 21:33:18');
INSERT INTO "public"."tiempos" VALUES (1199, 36, 170, '15:49:00', '15:53:06', '00:04:06', NULL, NULL, '2025-03-22 20:48:56', '2025-03-22 21:33:33');
INSERT INTO "public"."tiempos" VALUES (1201, 36, 152, '15:51:00', '15:54:36', '00:03:36', NULL, NULL, '2025-03-22 20:50:42', '2025-03-22 21:34:25');
INSERT INTO "public"."tiempos" VALUES (1202, 36, 154, '15:52:00', '15:55:28', '00:03:28', NULL, NULL, '2025-03-22 20:51:28', '2025-03-22 21:34:39');
INSERT INTO "public"."tiempos" VALUES (1203, 36, 153, '15:53:00', '15:57:19', '00:04:19', NULL, NULL, '2025-03-22 20:52:40', '2025-03-22 21:34:52');
INSERT INTO "public"."tiempos" VALUES (1204, 36, 173, '15:54:00', '15:57:24', '00:03:24', NULL, NULL, '2025-03-22 20:53:48', '2025-03-22 21:35:06');
INSERT INTO "public"."tiempos" VALUES (1205, 36, 171, '15:55:00', '15:58:35', '00:03:35', NULL, NULL, '2025-03-22 20:55:04', '2025-03-22 21:35:19');
INSERT INTO "public"."tiempos" VALUES (1207, 36, 163, '15:56:00', '16:01:00', '00:05:00', NULL, NULL, '2025-03-22 21:53:57', '2025-03-22 21:53:57');
INSERT INTO "public"."tiempos" VALUES (1210, 36, 165, NULL, NULL, '00:06:00', NULL, NULL, '2025-03-23 02:18:21', '2025-03-23 02:18:21');
INSERT INTO "public"."tiempos" VALUES (1235, 37, 173, '09:01:00', '09:07:28', '00:06:28', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:08:13');
INSERT INTO "public"."tiempos" VALUES (1236, 37, 177, '09:02:00', '09:08:26', '00:06:26', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:08:48');
INSERT INTO "public"."tiempos" VALUES (1237, 37, 154, '09:03:00', '09:09:41', '00:06:41', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:09:59');
INSERT INTO "public"."tiempos" VALUES (1238, 37, 171, '09:04:00', '09:10:17', '00:06:17', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:10:42');
INSERT INTO "public"."tiempos" VALUES (1239, 37, 152, '09:05:00', '09:11:20', '00:06:20', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:11:33');
INSERT INTO "public"."tiempos" VALUES (1240, 37, 175, '09:06:00', '09:12:49', '00:06:49', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:13:09');
INSERT INTO "public"."tiempos" VALUES (1241, 37, 151, '09:07:00', '09:13:48', '00:06:48', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:14:11');
INSERT INTO "public"."tiempos" VALUES (1242, 37, 168, '09:08:00', '09:15:13', '00:07:13', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:15:25');
INSERT INTO "public"."tiempos" VALUES (1243, 37, 176, '09:09:00', '09:15:58', '00:06:58', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:16:11');
INSERT INTO "public"."tiempos" VALUES (1244, 37, 157, '09:10:00', '09:17:10', '00:07:10', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:17:28');
INSERT INTO "public"."tiempos" VALUES (1245, 37, 170, '09:11:00', '09:18:06', '00:07:06', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:18:20');
INSERT INTO "public"."tiempos" VALUES (1246, 37, 172, '09:12:00', '09:19:34', '00:07:34', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:19:44');
INSERT INTO "public"."tiempos" VALUES (1247, 37, 156, '09:13:00', '09:20:53', '00:07:53', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:21:23');
INSERT INTO "public"."tiempos" VALUES (1248, 37, 159, '09:14:00', '09:23:00', '00:09:00', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:23:27');
INSERT INTO "public"."tiempos" VALUES (1249, 37, 153, '09:15:00', '09:21:51', '00:06:51', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:22:08');
INSERT INTO "public"."tiempos" VALUES (1250, 37, 160, '09:16:00', '09:23:52', '00:07:52', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:24:11');
INSERT INTO "public"."tiempos" VALUES (1251, 37, 169, '09:17:00', '09:24:55', '00:07:55', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:25:07');
INSERT INTO "public"."tiempos" VALUES (1252, 37, 162, '09:18:00', '09:25:49', '00:07:49', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:26:00');
INSERT INTO "public"."tiempos" VALUES (1253, 37, 167, '09:19:00', '09:27:03', '00:08:03', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:27:14');
INSERT INTO "public"."tiempos" VALUES (1254, 37, 161, '09:20:00', '09:28:28', '00:08:28', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:28:37');
INSERT INTO "public"."tiempos" VALUES (1255, 37, 163, '09:21:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 13:44:26');
INSERT INTO "public"."tiempos" VALUES (1256, 37, 165, '09:22:00', '09:29:15', '00:07:15', NULL, NULL, '2025-03-23 13:44:26', '2025-03-23 14:29:26');
INSERT INTO "public"."tiempos" VALUES (1257, 38, 174, '10:00:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 14:41:15');
INSERT INTO "public"."tiempos" VALUES (1258, 38, 173, '10:01:00', '10:06:55', '00:05:55', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:09:10');
INSERT INTO "public"."tiempos" VALUES (1259, 38, 177, '10:02:00', '10:08:01', '00:06:01', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:10:35');
INSERT INTO "public"."tiempos" VALUES (1260, 38, 154, '10:03:00', '10:09:26', '00:06:26', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:11:02');
INSERT INTO "public"."tiempos" VALUES (1261, 38, 171, '10:04:00', '10:09:53', '00:05:53', '00:00:00', NULL, '2025-03-23 14:41:15', '2025-03-23 20:13:38');
INSERT INTO "public"."tiempos" VALUES (1262, 38, 152, '10:05:00', '10:10:55', '00:05:55', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 19:20:43');
INSERT INTO "public"."tiempos" VALUES (1263, 38, 175, '10:06:00', '10:12:53', '00:06:53', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:14:17');
INSERT INTO "public"."tiempos" VALUES (1264, 38, 151, '10:07:00', '10:13:31', '00:06:31', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:14:53');
INSERT INTO "public"."tiempos" VALUES (1265, 38, 168, '10:08:00', '10:14:45', '00:06:45', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:15:25');
INSERT INTO "public"."tiempos" VALUES (1266, 38, 176, '10:09:00', '10:16:17', '00:07:17', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:18:20');
INSERT INTO "public"."tiempos" VALUES (1267, 38, 157, '10:10:00', '10:16:56', '00:06:56', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:18:48');
INSERT INTO "public"."tiempos" VALUES (1268, 38, 170, '10:11:00', '10:17:43', '00:06:43', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:19:43');
INSERT INTO "public"."tiempos" VALUES (1269, 38, 172, '10:12:00', '10:19:04', '00:07:04', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:20:13');
INSERT INTO "public"."tiempos" VALUES (1270, 38, 156, '10:13:00', '10:20:39', '00:07:39', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 19:58:12');
INSERT INTO "public"."tiempos" VALUES (1271, 38, 159, '10:15:00', '10:22:40', '00:07:40', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:47:07');
INSERT INTO "public"."tiempos" VALUES (1272, 38, 153, '10:15:00', '10:21:22', '00:06:22', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:22:09');
INSERT INTO "public"."tiempos" VALUES (1273, 38, 160, '10:16:00', '10:23:13', '00:07:13', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:23:37');
INSERT INTO "public"."tiempos" VALUES (1274, 38, 169, '10:17:00', '10:28:22', '00:11:22', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:29:08');
INSERT INTO "public"."tiempos" VALUES (1275, 38, 162, '10:18:00', '10:25:43', '00:07:43', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:26:25');
INSERT INTO "public"."tiempos" VALUES (1276, 38, 167, '10:19:00', '10:26:50', '00:07:50', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:27:30');
INSERT INTO "public"."tiempos" VALUES (1277, 38, 161, '10:20:00', '10:28:04', '00:08:04', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:28:41');
INSERT INTO "public"."tiempos" VALUES (1278, 38, 163, '10:21:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 14:41:15');
INSERT INTO "public"."tiempos" VALUES (1279, 38, 165, '10:21:00', '10:27:44', '00:06:44', NULL, NULL, '2025-03-23 14:41:15', '2025-03-23 15:35:04');
INSERT INTO "public"."tiempos" VALUES (1326, 39, 173, '10:50:00', '10:56:09', '00:06:09', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:56:16');
INSERT INTO "public"."tiempos" VALUES (1327, 39, 177, '10:51:00', '10:57:18', '00:06:18', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:57:25');
INSERT INTO "public"."tiempos" VALUES (1328, 39, 154, '10:52:00', '10:58:40', '00:06:40', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:58:52');
INSERT INTO "public"."tiempos" VALUES (1329, 39, 171, '10:53:00', '10:59:10', '00:06:10', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:59:24');
INSERT INTO "public"."tiempos" VALUES (1330, 39, 152, '10:54:00', '11:00:13', '00:06:13', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:00:24');
INSERT INTO "public"."tiempos" VALUES (1331, 39, 175, '10:55:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:53:54');
INSERT INTO "public"."tiempos" VALUES (1332, 39, 151, '10:55:00', '11:01:45', '00:06:45', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:20:49');
INSERT INTO "public"."tiempos" VALUES (1333, 39, 168, '10:56:00', '11:03:02', '00:07:02', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:21:08');
INSERT INTO "public"."tiempos" VALUES (1334, 39, 176, '10:58:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:53:54');
INSERT INTO "public"."tiempos" VALUES (1335, 39, 157, '10:57:00', '11:04:05', '00:07:05', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:21:19');
INSERT INTO "public"."tiempos" VALUES (1336, 39, 170, '10:58:00', '11:05:00', '00:07:00', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:21:36');
INSERT INTO "public"."tiempos" VALUES (1337, 39, 172, '10:59:00', '11:06:20', '00:07:20', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:21:48');
INSERT INTO "public"."tiempos" VALUES (1338, 39, 156, '11:00:00', '11:07:46', '00:07:46', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:22:09');
INSERT INTO "public"."tiempos" VALUES (1339, 39, 159, '11:02:00', '11:09:57', '00:07:57', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:22:36');
INSERT INTO "public"."tiempos" VALUES (1340, 39, 153, '11:01:00', '11:08:34', '00:07:34', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:16:43');
INSERT INTO "public"."tiempos" VALUES (1341, 39, 160, '11:03:00', '11:10:26', '00:07:26', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:22:50');
INSERT INTO "public"."tiempos" VALUES (1342, 39, 169, '11:06:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:53:54');
INSERT INTO "public"."tiempos" VALUES (1343, 39, 162, '11:04:00', '11:11:46', '00:07:46', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:23:09');
INSERT INTO "public"."tiempos" VALUES (1344, 39, 167, '11:05:00', '11:12:40', '00:07:40', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:23:22');
INSERT INTO "public"."tiempos" VALUES (1345, 39, 161, '11:06:00', '11:14:12', '00:08:12', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:23:34');
INSERT INTO "public"."tiempos" VALUES (1346, 39, 163, '11:10:00', NULL, '00:00:00', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 15:53:54');
INSERT INTO "public"."tiempos" VALUES (1347, 39, 165, '11:07:00', '11:13:59', '00:06:59', NULL, NULL, '2025-03-23 15:53:54', '2025-03-23 16:16:16');
INSERT INTO "public"."tiempos" VALUES (1348, 40, 173, '11:35:00', '11:40:50', '00:05:50', NULL, NULL, '2025-03-23 16:34:57', '2025-03-23 16:42:15');
INSERT INTO "public"."tiempos" VALUES (1349, 40, 177, '11:36:00', '11:42:01', '00:06:01', NULL, NULL, '2025-03-23 16:35:21', '2025-03-23 16:44:53');
INSERT INTO "public"."tiempos" VALUES (1350, 40, 154, '11:37:00', '11:43:20', '00:06:20', NULL, NULL, '2025-03-23 16:36:48', '2025-03-23 16:45:53');
INSERT INTO "public"."tiempos" VALUES (1351, 40, 171, '11:38:00', '11:43:54', '00:05:54', NULL, NULL, '2025-03-23 16:38:05', '2025-03-23 16:46:14');
INSERT INTO "public"."tiempos" VALUES (1352, 40, 152, '11:39:00', '11:44:57', '00:05:57', NULL, NULL, '2025-03-23 16:38:19', '2025-03-23 16:46:37');
INSERT INTO "public"."tiempos" VALUES (1353, 40, 151, '11:40:00', '11:46:29', '00:06:29', NULL, NULL, '2025-03-23 16:38:47', '2025-03-23 16:47:36');
INSERT INTO "public"."tiempos" VALUES (1354, 40, 168, '11:41:00', '11:47:49', '00:06:49', NULL, NULL, '2025-03-23 16:39:30', '2025-03-23 16:48:43');
INSERT INTO "public"."tiempos" VALUES (1355, 40, 170, '11:43:00', '11:49:37', '00:06:37', NULL, NULL, '2025-03-23 16:42:51', '2025-03-23 16:50:11');
INSERT INTO "public"."tiempos" VALUES (1356, 40, 172, '11:44:00', '11:51:05', '00:07:05', NULL, NULL, '2025-03-23 16:44:03', '2025-03-23 16:51:29');
INSERT INTO "public"."tiempos" VALUES (1357, 40, 156, '11:45:00', '11:52:35', '00:07:35', NULL, NULL, '2025-03-23 16:44:42', '2025-03-23 16:52:59');
INSERT INTO "public"."tiempos" VALUES (1358, 40, 153, '11:46:00', '11:53:13', '00:07:13', NULL, NULL, '2025-03-23 16:45:12', '2025-03-23 16:53:44');
INSERT INTO "public"."tiempos" VALUES (1359, 40, 159, '11:47:00', '11:54:46', '00:07:46', NULL, NULL, '2025-03-23 16:46:08', '2025-03-23 16:55:48');
INSERT INTO "public"."tiempos" VALUES (1360, 40, 160, '11:48:00', '12:01:04', '00:13:04', NULL, NULL, '2025-03-23 16:46:25', '2025-03-23 17:01:44');
INSERT INTO "public"."tiempos" VALUES (1361, 40, 162, '11:49:00', '11:57:06', '00:08:06', NULL, NULL, '2025-03-23 16:48:32', '2025-03-23 16:58:21');
INSERT INTO "public"."tiempos" VALUES (1362, 40, 167, '11:50:00', '11:57:28', '00:07:28', NULL, NULL, '2025-03-23 16:49:26', '2025-03-23 16:58:44');
INSERT INTO "public"."tiempos" VALUES (1363, 40, 161, '11:51:00', '11:58:57', '00:07:57', NULL, NULL, '2025-03-23 16:50:36', '2025-03-23 16:59:56');
INSERT INTO "public"."tiempos" VALUES (1364, 40, 165, '11:52:00', '11:58:50', '00:06:50', NULL, NULL, '2025-03-23 16:51:08', '2025-03-23 16:59:33');
INSERT INTO "public"."tiempos" VALUES (1365, 40, 157, '11:53:00', '11:59:56', '00:15:56', '00:09:00', NULL, '2025-03-23 16:52:54', '2025-03-23 20:31:48');
INSERT INTO "public"."tiempos" VALUES (1366, 41, 173, '12:50:00', '12:56:07', '00:06:07', NULL, NULL, '2025-03-23 17:50:19', '2025-03-23 17:56:29');
INSERT INTO "public"."tiempos" VALUES (1367, 41, 177, '12:51:00', '12:57:23', '00:06:23', NULL, NULL, '2025-03-23 17:51:17', '2025-03-23 17:57:37');
INSERT INTO "public"."tiempos" VALUES (1368, 41, 154, '12:52:00', '12:58:47', '00:06:47', NULL, NULL, '2025-03-23 17:52:15', '2025-03-23 17:58:59');
INSERT INTO "public"."tiempos" VALUES (1369, 41, 171, '12:53:00', '12:59:12', '00:06:12', NULL, NULL, '2025-03-23 17:53:16', '2025-03-23 17:59:25');
INSERT INTO "public"."tiempos" VALUES (1370, 41, 152, '12:54:00', '13:00:18', '00:06:18', NULL, NULL, '2025-03-23 17:54:21', '2025-03-23 18:00:30');
INSERT INTO "public"."tiempos" VALUES (1371, 41, 151, '12:55:00', '13:01:43', '00:06:43', NULL, NULL, '2025-03-23 17:55:19', '2025-03-23 18:02:06');
INSERT INTO "public"."tiempos" VALUES (1372, 41, 168, '12:56:00', '13:03:06', '00:07:06', NULL, NULL, '2025-03-23 17:56:00', '2025-03-23 18:03:18');
INSERT INTO "public"."tiempos" VALUES (1373, 41, 170, '12:57:00', '13:04:03', '00:07:03', NULL, NULL, '2025-03-23 17:57:14', '2025-03-23 18:04:52');
INSERT INTO "public"."tiempos" VALUES (1374, 41, 172, '12:58:00', '13:05:23', '00:07:23', NULL, NULL, '2025-03-23 17:58:17', '2025-03-23 18:05:34');
INSERT INTO "public"."tiempos" VALUES (1375, 41, 156, '12:59:00', '13:06:45', '00:07:45', NULL, NULL, '2025-03-23 17:59:18', '2025-03-23 18:06:58');
INSERT INTO "public"."tiempos" VALUES (1376, 41, 153, '13:00:00', '13:07:32', '00:07:32', NULL, NULL, '2025-03-23 18:00:23', '2025-03-23 18:07:54');
INSERT INTO "public"."tiempos" VALUES (1377, 41, 159, '13:01:00', '13:09:01', '00:08:01', NULL, NULL, '2025-03-23 18:01:15', '2025-03-23 18:09:11');
INSERT INTO "public"."tiempos" VALUES (1378, 41, 162, '13:02:00', '13:10:07', '00:08:07', NULL, NULL, '2025-03-23 18:02:08', '2025-03-23 18:10:13');
INSERT INTO "public"."tiempos" VALUES (1379, 41, 167, '13:03:00', '13:10:55', '00:07:55', NULL, NULL, '2025-03-23 18:03:14', '2025-03-23 18:11:10');
INSERT INTO "public"."tiempos" VALUES (1382, 41, 161, '13:04:00', '13:12:08', '00:08:08', NULL, NULL, '2025-03-23 18:04:04', '2025-03-23 18:12:34');
INSERT INTO "public"."tiempos" VALUES (1383, 41, 165, '13:05:00', '13:12:07', '00:07:07', NULL, NULL, '2025-03-23 18:04:30', '2025-03-23 18:12:54');
INSERT INTO "public"."tiempos" VALUES (1384, 41, 157, '13:06:00', '13:13:01', '00:07:01', NULL, NULL, '2025-03-23 18:11:38', '2025-03-23 18:13:17');
INSERT INTO "public"."tiempos" VALUES (1385, 42, 173, '13:30:00', '00:00:00', '00:00:00', NULL, NULL, '2025-03-23 18:27:15', '2025-04-04 11:54:25');
INSERT INTO "public"."tiempos" VALUES (1386, 42, 177, '13:31:00', '13:37:09', '00:06:09', NULL, NULL, '2025-03-23 18:30:25', '2025-03-23 18:37:48');
INSERT INTO "public"."tiempos" VALUES (1387, 42, 154, '13:32:00', '13:38:25', '00:06:25', NULL, NULL, '2025-03-23 18:31:23', '2025-03-23 18:39:07');
INSERT INTO "public"."tiempos" VALUES (1388, 42, 171, '13:33:00', '13:38:45', '00:05:45', NULL, NULL, '2025-03-23 18:32:19', '2025-03-23 18:39:29');
INSERT INTO "public"."tiempos" VALUES (1389, 42, 152, '13:34:00', '13:39:57', '00:05:57', NULL, NULL, '2025-03-23 18:32:41', '2025-03-23 18:40:21');
INSERT INTO "public"."tiempos" VALUES (1390, 42, 151, '13:35:00', '13:41:26', '00:06:26', NULL, NULL, '2025-03-23 18:33:12', '2025-03-23 18:42:01');
INSERT INTO "public"."tiempos" VALUES (1391, 42, 168, '13:36:00', '13:42:43', '00:06:43', NULL, NULL, '2025-03-23 18:34:23', '2025-03-23 18:43:16');
INSERT INTO "public"."tiempos" VALUES (1392, 42, 170, '13:37:00', '13:43:42', '00:06:42', NULL, NULL, '2025-03-23 18:35:20', '2025-03-23 18:44:47');
INSERT INTO "public"."tiempos" VALUES (1393, 42, 172, '13:38:00', '13:45:16', '00:07:16', NULL, NULL, '2025-03-23 18:36:19', '2025-03-23 18:45:51');
INSERT INTO "public"."tiempos" VALUES (1394, 42, 156, '13:39:00', '13:46:39', '00:07:39', NULL, NULL, '2025-03-23 18:36:37', '2025-03-23 18:47:13');
INSERT INTO "public"."tiempos" VALUES (1395, 42, 153, '13:40:00', '13:47:20', '00:07:20', NULL, NULL, '2025-03-23 18:38:16', '2025-03-23 18:47:50');
INSERT INTO "public"."tiempos" VALUES (1396, 42, 159, '13:41:00', '13:48:52', '00:07:52', NULL, NULL, '2025-03-23 18:39:42', '2025-03-23 18:49:28');
INSERT INTO "public"."tiempos" VALUES (1397, 42, 162, '13:42:00', '00:00:00', '00:00:00', NULL, NULL, '2025-03-23 18:41:07', '2025-03-23 18:41:07');
INSERT INTO "public"."tiempos" VALUES (1398, 42, 167, '13:43:00', '13:50:47', '00:07:47', NULL, NULL, '2025-03-23 18:42:42', '2025-03-23 18:51:17');
INSERT INTO "public"."tiempos" VALUES (1399, 42, 161, '13:44:00', '13:52:04', '00:08:04', NULL, NULL, '2025-03-23 18:43:19', '2025-03-23 18:53:19');
INSERT INTO "public"."tiempos" VALUES (1400, 42, 165, '13:45:00', '13:51:50', '00:06:50', NULL, NULL, '2025-03-23 18:44:16', '2025-03-23 18:52:43');
INSERT INTO "public"."tiempos" VALUES (1401, 42, 157, '13:46:00', '13:52:40', '00:06:40', NULL, NULL, '2025-03-23 18:45:28', '2025-03-23 18:53:40');
INSERT INTO "public"."tiempos" VALUES (1449, 45, 189, '09:30:00', '09:37:39', '00:07:39', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:18:51');
INSERT INTO "public"."tiempos" VALUES (1450, 45, 178, '09:31:00', '09:38:53', '00:07:53', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:19:07');
INSERT INTO "public"."tiempos" VALUES (1451, 45, 187, '09:32:00', '09:39:27', '00:07:27', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:19:49');
INSERT INTO "public"."tiempos" VALUES (1453, 45, 190, '09:34:00', '09:41:42', '00:07:42', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:22:37');
INSERT INTO "public"."tiempos" VALUES (1454, 45, 193, '09:35:00', '09:42:51', '00:07:51', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:22:48');
INSERT INTO "public"."tiempos" VALUES (1456, 45, 192, '09:37:00', '09:45:31', '00:08:31', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:23:02');
INSERT INTO "public"."tiempos" VALUES (1457, 45, 191, '09:38:00', '09:46:23', '00:08:23', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:23:22');
INSERT INTO "public"."tiempos" VALUES (1458, 45, 179, '09:39:00', '09:57:32', '00:18:32', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:26:43');
INSERT INTO "public"."tiempos" VALUES (1459, 45, 195, '09:40:00', '09:48:58', '00:08:58', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:23:36');
INSERT INTO "public"."tiempos" VALUES (1460, 45, 180, '09:41:00', '09:50:00', '00:09:00', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:23:52');
INSERT INTO "public"."tiempos" VALUES (1461, 45, 184, '09:42:00', '09:50:01', '00:08:01', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:24:08');
INSERT INTO "public"."tiempos" VALUES (1463, 45, 197, '09:44:00', '09:52:24', '00:08:24', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:24:43');
INSERT INTO "public"."tiempos" VALUES (1464, 45, 200, '09:45:00', '09:54:29', '00:09:29', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:25:11');
INSERT INTO "public"."tiempos" VALUES (1465, 45, 199, '09:46:00', '09:54:21', '00:08:21', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:25:00');
INSERT INTO "public"."tiempos" VALUES (1466, 45, 198, '09:47:00', '09:56:20', '00:09:20', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:26:26');
INSERT INTO "public"."tiempos" VALUES (1467, 45, 201, '09:48:00', '09:56:19', '00:08:19', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:25:24');
INSERT INTO "public"."tiempos" VALUES (1468, 45, 202, '09:49:00', '09:58:20', '00:09:20', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:26:56');
INSERT INTO "public"."tiempos" VALUES (1469, 45, 186, '09:50:00', '10:00:49', '00:10:49', NULL, NULL, '2025-04-05 14:52:14', '2025-04-05 15:27:21');
INSERT INTO "public"."tiempos" VALUES (1470, 46, 189, '10:30:00', '10:37:24', '00:07:24', NULL, NULL, '2025-04-05 16:09:49', '2025-04-05 16:09:49');
INSERT INTO "public"."tiempos" VALUES (1471, 46, 178, '10:31:00', '10:38:41', '00:07:41', NULL, NULL, '2025-04-05 16:10:29', '2025-04-05 16:10:29');
INSERT INTO "public"."tiempos" VALUES (1472, 46, 187, '10:32:00', '10:39:16', '00:07:16', NULL, NULL, '2025-04-05 16:12:42', '2025-04-05 16:12:42');
INSERT INTO "public"."tiempos" VALUES (1474, 46, 190, '10:34:00', '10:41:35', '00:07:35', NULL, NULL, '2025-04-05 16:20:58', '2025-04-05 16:20:58');
INSERT INTO "public"."tiempos" VALUES (1475, 46, 193, '10:35:00', '10:42:36', '00:07:36', NULL, NULL, '2025-04-05 16:21:41', '2025-04-05 16:21:41');
INSERT INTO "public"."tiempos" VALUES (1476, 46, 192, '10:36:00', '10:43:53', '00:07:53', NULL, NULL, '2025-04-05 16:22:25', '2025-04-05 16:22:25');
INSERT INTO "public"."tiempos" VALUES (1477, 46, 191, '10:37:00', '10:45:17', '00:08:17', NULL, NULL, '2025-04-05 16:23:35', '2025-04-05 16:23:35');
INSERT INTO "public"."tiempos" VALUES (1478, 46, 195, '10:40:00', '10:48:44', '00:08:44', NULL, NULL, '2025-04-05 16:24:15', '2025-04-05 16:24:15');
INSERT INTO "public"."tiempos" VALUES (1479, 46, 180, '10:41:00', '10:49:32', '00:08:32', NULL, NULL, '2025-04-05 16:24:52', '2025-04-05 16:24:52');
INSERT INTO "public"."tiempos" VALUES (1480, 46, 184, '10:42:00', '10:49:56', '00:07:56', NULL, NULL, '2025-04-05 16:25:21', '2025-04-05 16:25:21');
INSERT INTO "public"."tiempos" VALUES (1482, 46, 197, '10:44:00', '10:52:04', '00:08:04', NULL, NULL, '2025-04-05 16:26:29', '2025-04-05 16:26:29');
INSERT INTO "public"."tiempos" VALUES (1483, 46, 200, '10:45:00', '10:54:10', '00:09:10', NULL, NULL, '2025-04-05 16:26:54', '2025-04-05 16:26:54');
INSERT INTO "public"."tiempos" VALUES (1484, 46, 199, '10:46:00', '10:54:00', '00:08:00', NULL, NULL, '2025-04-05 16:27:56', '2025-04-05 16:27:56');
INSERT INTO "public"."tiempos" VALUES (1485, 46, 201, '10:48:00', '10:55:44', '00:07:44', NULL, NULL, '2025-04-05 16:29:18', '2025-04-05 16:29:18');
INSERT INTO "public"."tiempos" VALUES (1486, 46, 179, '10:49:00', '10:57:23', '00:08:23', NULL, NULL, '2025-04-05 16:29:35', '2025-04-05 16:29:35');
INSERT INTO "public"."tiempos" VALUES (1487, 46, 202, '10:50:00', '10:58:50', '00:08:50', NULL, NULL, '2025-04-05 16:29:51', '2025-04-05 16:29:51');
INSERT INTO "public"."tiempos" VALUES (1488, 46, 186, '10:51:00', '11:01:41', '00:10:41', NULL, NULL, '2025-04-05 16:30:12', '2025-04-05 16:30:12');
INSERT INTO "public"."tiempos" VALUES (1489, 47, 189, '11:30:00', '11:37:35', '00:07:35', NULL, NULL, '2025-04-05 17:08:24', '2025-04-05 17:08:24');
INSERT INTO "public"."tiempos" VALUES (1490, 47, 178, '11:33:00', '11:40:46', '00:07:46', NULL, NULL, '2025-04-05 17:08:50', '2025-04-05 17:08:50');
INSERT INTO "public"."tiempos" VALUES (1491, 47, 187, '11:34:00', '11:41:26', '00:07:26', NULL, NULL, '2025-04-05 17:09:05', '2025-04-05 17:09:05');
INSERT INTO "public"."tiempos" VALUES (1493, 47, 190, '11:36:00', '11:43:46', '00:07:46', NULL, NULL, '2025-04-05 17:09:46', '2025-04-05 17:09:46');
INSERT INTO "public"."tiempos" VALUES (1494, 47, 193, '11:37:00', '11:45:02', '00:08:02', NULL, NULL, '2025-04-05 17:10:02', '2025-04-05 17:10:02');
INSERT INTO "public"."tiempos" VALUES (1495, 47, 192, '11:38:00', '11:46:21', '00:08:21', NULL, NULL, '2025-04-05 17:10:19', '2025-04-05 17:10:19');
INSERT INTO "public"."tiempos" VALUES (1496, 47, 191, '11:39:00', '11:47:19', '00:08:19', NULL, NULL, '2025-04-05 17:10:36', '2025-04-05 17:10:36');
INSERT INTO "public"."tiempos" VALUES (1497, 47, 195, '11:40:00', '11:49:04', '00:09:04', NULL, NULL, '2025-04-05 17:10:49', '2025-04-05 17:10:49');
INSERT INTO "public"."tiempos" VALUES (1498, 47, 180, '11:41:00', '11:49:47', '00:08:47', NULL, NULL, '2025-04-05 17:11:07', '2025-04-05 17:11:07');
INSERT INTO "public"."tiempos" VALUES (1499, 47, 184, '11:42:00', '11:50:10', '00:08:10', NULL, NULL, '2025-04-05 17:12:10', '2025-04-05 17:12:10');
INSERT INTO "public"."tiempos" VALUES (1501, 47, 197, '11:44:00', '11:52:12', '00:08:12', NULL, NULL, '2025-04-05 17:13:44', '2025-04-05 17:13:44');
INSERT INTO "public"."tiempos" VALUES (1502, 47, 200, '11:45:00', '11:54:12', '00:09:12', NULL, NULL, '2025-04-05 17:13:59', '2025-04-05 17:13:59');
INSERT INTO "public"."tiempos" VALUES (1503, 47, 201, '11:47:00', '11:55:24', '00:08:24', NULL, NULL, '2025-04-05 17:14:45', '2025-04-05 17:14:45');
INSERT INTO "public"."tiempos" VALUES (1504, 47, 202, '11:49:00', '11:58:24', '00:09:24', NULL, NULL, '2025-04-05 17:14:58', '2025-04-05 17:15:08');
INSERT INTO "public"."tiempos" VALUES (1505, 47, 186, '11:50:00', '12:00:17', '00:10:17', NULL, NULL, '2025-04-05 17:15:32', '2025-04-05 17:15:32');
INSERT INTO "public"."tiempos" VALUES (1506, 48, 189, '12:40:00', '12:47:22', '00:07:22', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:07:44');
INSERT INTO "public"."tiempos" VALUES (1507, 48, 178, '12:41:00', '12:48:42', '00:07:42', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:07:55');
INSERT INTO "public"."tiempos" VALUES (1508, 48, 187, '12:42:00', '12:49:18', '00:07:18', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:08:12');
INSERT INTO "public"."tiempos" VALUES (1510, 48, 190, '12:44:00', '12:51:32', '00:07:32', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:09:05');
INSERT INTO "public"."tiempos" VALUES (1511, 48, 193, '12:45:00', '12:52:45', '00:07:45', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:09:18');
INSERT INTO "public"."tiempos" VALUES (1512, 48, 192, '12:46:00', '12:54:15', '00:08:15', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:09:36');
INSERT INTO "public"."tiempos" VALUES (1513, 48, 191, '12:47:00', '12:55:15', '00:08:15', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:09:51');
INSERT INTO "public"."tiempos" VALUES (1514, 48, 195, '12:48:00', '12:57:05', '00:09:05', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:10:09');
INSERT INTO "public"."tiempos" VALUES (1515, 48, 180, '12:49:00', '12:59:35', '00:10:35', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:12:02');
INSERT INTO "public"."tiempos" VALUES (1516, 48, 184, '12:50:00', '12:57:52', '00:07:52', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:10:53');
INSERT INTO "public"."tiempos" VALUES (1518, 48, 197, '12:52:00', '13:00:08', '00:08:08', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:13:00');
INSERT INTO "public"."tiempos" VALUES (1519, 48, 200, '12:53:00', '13:02:06', '00:09:06', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:14:11');
INSERT INTO "public"."tiempos" VALUES (1520, 48, 201, '12:54:00', '13:01:45', '00:07:45', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:14:51');
INSERT INTO "public"."tiempos" VALUES (1521, 48, 202, '12:55:00', '13:03:45', '00:08:45', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:15:48');
INSERT INTO "public"."tiempos" VALUES (1522, 48, 186, '12:56:00', '13:06:16', '00:10:16', NULL, NULL, '2025-04-05 18:06:00', '2025-04-05 18:16:01');
INSERT INTO "public"."tiempos" VALUES (1523, 49, 189, '13:40:00', '13:47:38', '00:07:38', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:22:11');
INSERT INTO "public"."tiempos" VALUES (1524, 49, 178, '13:41:00', '13:48:46', '00:07:46', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:27:25');
INSERT INTO "public"."tiempos" VALUES (1525, 49, 187, '13:42:00', '13:49:27', '00:07:27', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:29:36');
INSERT INTO "public"."tiempos" VALUES (1527, 49, 190, '13:44:00', '13:51:42', '00:07:42', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:30:43');
INSERT INTO "public"."tiempos" VALUES (1528, 49, 193, '13:45:00', '13:53:07', '00:08:07', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:31:36');
INSERT INTO "public"."tiempos" VALUES (1529, 49, 192, '13:46:00', '13:54:13', '00:08:13', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:32:35');
INSERT INTO "public"."tiempos" VALUES (1530, 49, 191, '13:47:00', '13:55:27', '00:08:27', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:33:23');
INSERT INTO "public"."tiempos" VALUES (1531, 49, 195, '13:48:00', '13:57:18', '00:09:18', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:33:42');
INSERT INTO "public"."tiempos" VALUES (1532, 49, 180, '13:49:00', '13:58:28', '00:09:28', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:35:23');
INSERT INTO "public"."tiempos" VALUES (1533, 49, 184, '13:50:00', '13:58:12', '00:08:12', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:34:26');
INSERT INTO "public"."tiempos" VALUES (1535, 49, 197, '13:52:00', '14:00:19', '00:08:19', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:36:20');
INSERT INTO "public"."tiempos" VALUES (1536, 49, 200, '13:53:00', '14:02:04', '00:09:04', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:36:35');
INSERT INTO "public"."tiempos" VALUES (1537, 49, 201, '13:54:00', '14:02:08', '00:08:08', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:37:44');
INSERT INTO "public"."tiempos" VALUES (1538, 49, 202, '13:55:00', '14:04:20', '00:09:20', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:38:22');
INSERT INTO "public"."tiempos" VALUES (1539, 49, 186, '13:56:00', '14:06:14', '00:10:14', NULL, NULL, '2025-04-05 19:20:18', '2025-04-05 19:38:33');
INSERT INTO "public"."tiempos" VALUES (1557, 50, 189, '14:40:00', '14:47:20', '00:07:20', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:09:08');
INSERT INTO "public"."tiempos" VALUES (1558, 50, 178, '14:41:00', '14:48:43', '00:07:43', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:09:27');
INSERT INTO "public"."tiempos" VALUES (1559, 50, 187, '14:42:00', '14:49:17', '00:07:17', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:09:45');
INSERT INTO "public"."tiempos" VALUES (1561, 50, 190, '14:44:00', '14:51:36', '00:07:36', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:10:21');
INSERT INTO "public"."tiempos" VALUES (1562, 50, 193, '14:45:00', '14:52:53', '00:07:53', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:10:50');
INSERT INTO "public"."tiempos" VALUES (1563, 50, 192, '14:46:00', '14:54:10', '00:08:10', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:11:19');
INSERT INTO "public"."tiempos" VALUES (1564, 50, 191, '14:47:00', '14:55:10', '00:08:10', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:11:43');
INSERT INTO "public"."tiempos" VALUES (1565, 50, 195, '14:48:00', '14:57:28', '00:09:38', '00:00:10', NULL, '2025-04-05 20:08:50', '2025-04-05 21:28:17');
INSERT INTO "public"."tiempos" VALUES (1566, 50, 180, '14:49:00', '14:58:54', '00:09:54', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:13:56');
INSERT INTO "public"."tiempos" VALUES (1567, 50, 184, '14:50:00', '14:57:42', '00:07:42', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:13:21');
INSERT INTO "public"."tiempos" VALUES (1569, 50, 197, '14:52:00', '15:00:10', '00:08:10', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:14:14');
INSERT INTO "public"."tiempos" VALUES (1570, 50, 200, '14:53:00', '15:02:15', '00:09:15', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:14:50');
INSERT INTO "public"."tiempos" VALUES (1571, 50, 201, '14:54:00', '15:01:53', '00:07:53', NULL, NULL, '2025-04-05 20:08:50', '2025-04-05 20:14:33');
INSERT INTO "public"."tiempos" VALUES (1572, 50, 202, '14:55:00', '15:03:36', '00:13:06', '00:04:30', NULL, '2025-04-05 20:08:50', '2025-04-05 21:28:37');
INSERT INTO "public"."tiempos" VALUES (1573, 50, 186, '14:56:00', '15:06:48', '00:13:58', '00:03:10', NULL, '2025-04-05 20:08:50', '2025-04-05 21:29:01');
INSERT INTO "public"."tiempos" VALUES (1574, 45, 196, '09:36:00', '10:36:00', '01:00:00', NULL, NULL, '2025-04-05 20:38:50', '2025-04-05 20:42:39');
INSERT INTO "public"."tiempos" VALUES (1575, 45, 204, '09:33:00', '09:41:28', '00:08:28', NULL, NULL, '2025-04-05 22:15:48', '2025-04-05 22:15:48');
INSERT INTO "public"."tiempos" VALUES (1576, 46, 204, '10:33:00', '10:40:35', '00:07:35', NULL, NULL, '2025-04-05 22:16:08', '2025-04-05 22:16:08');
INSERT INTO "public"."tiempos" VALUES (1577, 47, 204, '11:35:00', '11:42:46', '00:07:46', NULL, NULL, '2025-04-05 22:16:31', '2025-04-05 22:16:54');
INSERT INTO "public"."tiempos" VALUES (1578, 48, 204, '12:43:00', '12:50:33', '00:07:33', NULL, NULL, '2025-04-05 22:17:14', '2025-04-05 22:17:14');
INSERT INTO "public"."tiempos" VALUES (1579, 49, 204, '13:43:00', '13:50:53', '00:07:53', NULL, NULL, '2025-04-05 22:17:38', '2025-04-05 22:17:38');
INSERT INTO "public"."tiempos" VALUES (1580, 50, 204, '14:43:00', '14:50:41', '00:07:41', NULL, NULL, '2025-04-05 22:18:01', '2025-04-05 22:18:01');
INSERT INTO "public"."tiempos" VALUES (1584, 54, 208, '10:02:00', '10:10:24', '00:08:24', NULL, NULL, '2025-04-27 15:02:12', '2025-04-27 15:10:38');
INSERT INTO "public"."tiempos" VALUES (1585, 54, 206, '10:04:00', '10:12:29', '00:08:29', NULL, NULL, '2025-04-27 15:04:41', '2025-04-27 15:12:39');
INSERT INTO "public"."tiempos" VALUES (1586, 54, 209, '10:06:00', '10:14:54', '00:08:54', NULL, NULL, '2025-04-27 15:06:02', '2025-04-27 15:15:02');
INSERT INTO "public"."tiempos" VALUES (1587, 54, 211, '10:08:00', '10:16:43', '00:08:43', NULL, NULL, '2025-04-27 15:08:01', '2025-04-27 15:16:52');
INSERT INTO "public"."tiempos" VALUES (1588, 54, 215, '10:10:00', '10:19:40', '00:09:40', NULL, NULL, '2025-04-27 15:10:02', '2025-04-27 15:19:46');
INSERT INTO "public"."tiempos" VALUES (1589, 54, 210, '10:12:00', '10:21:53', '00:09:53', NULL, NULL, '2025-04-27 15:12:05', '2025-04-27 15:21:58');
INSERT INTO "public"."tiempos" VALUES (1590, 54, 212, '10:14:00', '10:22:57', '00:08:57', NULL, NULL, '2025-04-27 15:14:02', '2025-04-27 15:23:06');
INSERT INTO "public"."tiempos" VALUES (1591, 54, 213, '10:16:00', '10:26:36', '00:10:36', NULL, NULL, '2025-04-27 15:16:03', '2025-04-27 15:26:43');
INSERT INTO "public"."tiempos" VALUES (1592, 54, 214, '10:18:00', '10:28:45', '00:10:45', NULL, NULL, '2025-04-27 15:18:01', '2025-04-27 15:28:53');
INSERT INTO "public"."tiempos" VALUES (1593, 54, 207, '10:20:00', '10:33:15', '00:13:15', NULL, NULL, '2025-04-27 15:20:01', '2025-04-27 15:33:21');
INSERT INTO "public"."tiempos" VALUES (1595, 55, 208, '10:42:00', '10:50:19', '00:08:19', NULL, NULL, '2025-04-27 15:42:01', '2025-04-27 15:50:41');
INSERT INTO "public"."tiempos" VALUES (1596, 55, 206, '10:44:00', '10:52:20', '00:08:20', NULL, NULL, '2025-04-27 15:44:01', '2025-04-27 15:52:28');
INSERT INTO "public"."tiempos" VALUES (1597, 55, 211, '10:46:00', '10:54:12', '00:08:12', NULL, NULL, '2025-04-27 15:46:03', '2025-04-27 15:54:25');
INSERT INTO "public"."tiempos" VALUES (1598, 55, 215, '10:48:00', '10:57:34', '00:09:34', NULL, NULL, '2025-04-27 15:48:01', '2025-04-27 15:57:39');
INSERT INTO "public"."tiempos" VALUES (1599, 55, 210, '10:50:00', '10:59:57', '00:09:57', NULL, NULL, '2025-04-27 15:50:08', '2025-04-27 16:00:03');
INSERT INTO "public"."tiempos" VALUES (1600, 55, 212, '10:52:00', '11:00:39', '00:08:39', NULL, NULL, '2025-04-27 15:52:10', '2025-04-27 16:00:46');
INSERT INTO "public"."tiempos" VALUES (1601, 55, 213, '10:54:00', '11:04:25', '00:10:25', NULL, NULL, '2025-04-27 15:54:00', '2025-04-27 16:04:30');
INSERT INTO "public"."tiempos" VALUES (1602, 55, 214, '10:56:00', '11:06:12', '00:10:12', NULL, NULL, '2025-04-27 15:56:00', '2025-04-27 16:06:18');
INSERT INTO "public"."tiempos" VALUES (1603, 55, 207, '10:58:00', '11:11:00', '00:13:00', NULL, NULL, '2025-04-27 15:58:08', '2025-04-27 16:11:11');
INSERT INTO "public"."tiempos" VALUES (1605, 56, 208, '11:22:00', '11:30:18', '00:08:18', NULL, NULL, '2025-04-27 16:22:02', '2025-04-27 16:30:30');
INSERT INTO "public"."tiempos" VALUES (1606, 56, 206, '11:24:00', '11:32:13', '00:08:13', NULL, NULL, '2025-04-27 16:24:01', '2025-04-27 16:32:18');
INSERT INTO "public"."tiempos" VALUES (1607, 56, 211, '11:26:00', '11:34:04', '00:08:04', NULL, NULL, '2025-04-27 16:26:03', '2025-04-27 16:34:14');
INSERT INTO "public"."tiempos" VALUES (1608, 56, 215, '11:28:00', '11:38:00', '00:10:00', NULL, NULL, '2025-04-27 16:28:02', '2025-04-27 16:38:04');
INSERT INTO "public"."tiempos" VALUES (1609, 56, 210, '11:30:00', '11:39:32', '00:09:32', NULL, NULL, '2025-04-27 16:30:01', '2025-04-27 16:39:41');
INSERT INTO "public"."tiempos" VALUES (1610, 56, 212, '11:32:00', '11:40:50', '00:08:50', NULL, NULL, '2025-04-27 16:32:12', '2025-04-27 16:40:56');
INSERT INTO "public"."tiempos" VALUES (1611, 56, 213, '11:34:00', '11:44:24', '00:10:24', NULL, NULL, '2025-04-27 16:34:11', '2025-04-27 16:44:31');
INSERT INTO "public"."tiempos" VALUES (1612, 56, 214, '11:36:00', '11:46:07', '00:10:07', NULL, NULL, '2025-04-27 16:36:02', '2025-04-27 16:46:16');
INSERT INTO "public"."tiempos" VALUES (1613, 56, 207, '11:38:00', '11:50:47', '00:12:47', NULL, NULL, '2025-04-27 16:38:30', '2025-04-27 16:50:51');
INSERT INTO "public"."tiempos" VALUES (1615, 57, 208, '12:42:00', '12:50:13', '00:08:13', NULL, NULL, '2025-04-27 17:42:03', '2025-04-27 17:50:20');
INSERT INTO "public"."tiempos" VALUES (1616, 57, 206, '12:44:00', '12:52:15', '00:08:15', NULL, NULL, '2025-04-27 17:44:11', '2025-04-27 17:52:23');
INSERT INTO "public"."tiempos" VALUES (1617, 57, 211, '12:46:00', '12:54:02', '00:08:02', NULL, NULL, '2025-04-27 17:46:21', '2025-04-27 17:54:08');
INSERT INTO "public"."tiempos" VALUES (1618, 57, 215, '12:48:00', '12:57:31', '00:09:31', NULL, NULL, '2025-04-27 17:48:25', '2025-04-27 17:57:37');
INSERT INTO "public"."tiempos" VALUES (1619, 57, 210, '12:50:00', '12:59:41', '00:09:41', NULL, NULL, '2025-04-27 17:49:48', '2025-04-27 17:59:53');
INSERT INTO "public"."tiempos" VALUES (1620, 57, 212, '12:52:00', '13:00:34', '00:08:34', NULL, NULL, '2025-04-27 17:51:44', '2025-04-27 18:00:41');
INSERT INTO "public"."tiempos" VALUES (1621, 57, 213, '12:54:00', '13:04:09', '00:10:09', NULL, NULL, '2025-04-27 17:53:53', '2025-04-27 18:04:16');
INSERT INTO "public"."tiempos" VALUES (1622, 57, 214, '12:56:00', '13:06:30', '00:10:30', NULL, NULL, '2025-04-27 17:56:47', '2025-04-27 18:06:38');
INSERT INTO "public"."tiempos" VALUES (1623, 57, 207, '12:58:00', '13:10:46', '00:12:46', NULL, NULL, '2025-04-27 17:57:34', '2025-04-27 18:10:52');
INSERT INTO "public"."tiempos" VALUES (1625, 58, 208, '13:22:00', '13:30:07', '00:08:07', NULL, NULL, '2025-04-27 18:20:33', '2025-04-27 18:31:03');
INSERT INTO "public"."tiempos" VALUES (1626, 58, 206, '13:24:00', '13:32:14', '00:08:14', NULL, NULL, '2025-04-27 18:23:33', '2025-04-27 18:32:35');
INSERT INTO "public"."tiempos" VALUES (1627, 58, 211, '13:26:00', '13:33:57', '00:07:57', NULL, NULL, '2025-04-27 18:25:08', '2025-04-27 18:34:12');
INSERT INTO "public"."tiempos" VALUES (1628, 58, 215, '13:28:00', '13:37:50', '00:09:50', NULL, NULL, '2025-04-27 18:28:23', '2025-04-27 18:37:56');
INSERT INTO "public"."tiempos" VALUES (1629, 58, 210, '13:30:00', '13:39:30', '00:09:30', NULL, NULL, '2025-04-27 18:28:53', '2025-04-27 18:39:36');
INSERT INTO "public"."tiempos" VALUES (1630, 58, 212, '13:32:00', '13:40:23', '00:08:23', NULL, NULL, '2025-04-27 18:30:27', '2025-04-27 18:40:29');
INSERT INTO "public"."tiempos" VALUES (1631, 58, 213, '13:34:00', '13:51:39', '00:17:39', NULL, NULL, '2025-04-27 18:34:01', '2025-04-27 18:51:44');
INSERT INTO "public"."tiempos" VALUES (1632, 58, 214, '13:36:00', '13:51:17', '00:15:17', NULL, NULL, '2025-04-27 18:35:31', '2025-04-27 18:51:30');
INSERT INTO "public"."tiempos" VALUES (1633, 58, 207, '13:38:00', '13:51:07', '00:13:07', NULL, NULL, '2025-04-27 18:37:39', '2025-04-27 18:51:15');

-- ----------------------------
-- Table structure for tripulacions
-- ----------------------------
DROP TABLE IF EXISTS "public"."tripulacions";
CREATE TABLE "public"."tripulacions" (
  "id" int8 NOT NULL DEFAULT nextval('tripulacions_id_seq'::regclass),
  "piloto" int8 NOT NULL,
  "navegante" int8 NOT NULL,
  "event_id" int8 NOT NULL,
  "categoria" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "auto" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "auto_num" int4 NOT NULL,
  "foto_url" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of tripulacions
-- ----------------------------
INSERT INTO "public"."tripulacions" VALUES (65, 39, 97, 2, 'TIN', 'Mitsubishi', 797, NULL, '2024-12-22 16:52:36', '2024-12-22 16:52:36');
INSERT INTO "public"."tripulacions" VALUES (66, 123, 74, 2, 'TIN', 'Mitsubishi', 708, NULL, '2024-12-22 16:57:56', '2024-12-22 16:57:56');
INSERT INTO "public"."tripulacions" VALUES (67, 125, 145, 2, 'TIL', 'Subaru', 698, NULL, '2024-12-22 16:58:11', '2024-12-22 16:58:11');
INSERT INTO "public"."tripulacions" VALUES (68, 126, 147, 2, 'ST', 'Honda', 401, NULL, '2024-12-22 16:58:30', '2024-12-22 16:58:30');
INSERT INTO "public"."tripulacions" VALUES (69, 127, 127, 2, 'ST', 'Toyota', 492, NULL, '2024-12-22 16:59:17', '2024-12-22 16:59:17');
INSERT INTO "public"."tripulacions" VALUES (70, 128, 148, 2, 'ST', 'Toyota', 319, NULL, '2024-12-22 17:00:22', '2024-12-22 17:00:22');
INSERT INTO "public"."tripulacions" VALUES (71, 129, 149, 2, 'S2000', 'Toyota', 396, NULL, '2024-12-22 17:00:46', '2024-12-22 17:00:46');
INSERT INTO "public"."tripulacions" VALUES (72, 130, 150, 2, 'S2000', 'Toyota', 356, NULL, '2024-12-22 17:01:11', '2024-12-22 17:01:11');
INSERT INTO "public"."tripulacions" VALUES (73, 131, 151, 2, 'S2000', 'Honda', 399, NULL, '2024-12-22 17:01:31', '2024-12-22 17:01:31');
INSERT INTO "public"."tripulacions" VALUES (74, 132, 152, 2, 'S2000', 'Nissan', 397, NULL, '2024-12-22 17:02:04', '2024-12-22 17:02:04');
INSERT INTO "public"."tripulacions" VALUES (75, 133, 153, 2, 'S1600', 'Toyota', 218, NULL, '2024-12-22 17:02:28', '2024-12-22 17:02:28');
INSERT INTO "public"."tripulacions" VALUES (76, 134, 154, 2, 'S1600', 'Toyota', 184, NULL, '2024-12-22 17:03:04', '2024-12-22 17:03:04');
INSERT INTO "public"."tripulacions" VALUES (77, 135, 155, 2, 'S1600', 'Toyota', 209, NULL, '2024-12-22 17:03:16', '2024-12-22 17:03:16');
INSERT INTO "public"."tripulacions" VALUES (78, 136, 156, 2, 'S1600', 'Toyota', 281, NULL, '2024-12-22 17:03:33', '2024-12-22 17:03:33');
INSERT INTO "public"."tripulacions" VALUES (79, 137, 138, 2, 'S1600', 'Toyota', 299, NULL, '2024-12-22 17:04:01', '2024-12-22 17:04:01');
INSERT INTO "public"."tripulacions" VALUES (80, 139, 140, 2, 'JOYNER', 'Joyner', 71, NULL, '2024-12-22 17:04:16', '2024-12-22 17:04:16');
INSERT INTO "public"."tripulacions" VALUES (81, 141, 142, 2, 'JOYNER', 'Joyner', 10, NULL, '2024-12-22 17:04:29', '2024-12-22 17:04:29');
INSERT INTO "public"."tripulacions" VALUES (82, 143, 144, 2, 'PROMO', 'Hyundai', 99, NULL, '2024-12-22 17:05:00', '2024-12-22 17:05:00');
INSERT INTO "public"."tripulacions" VALUES (151, 135, 155, 4, 'S1600', 'Toyota', 209, '/storage/fotografias/nB5EcS7lKGONYywabsAcpWVU6CkYBq48C4h2EO5M.webp', '2025-03-16 18:01:47', '2025-03-16 18:01:47');
INSERT INTO "public"."tripulacions" VALUES (152, 227, 226, 4, 'ST', 'Renault', 487, '/storage/fotografias/jLCVC7hykxgFBrAUvyqwlSF30l5ECcYANJJGT38c.webp', '2025-03-16 18:05:44', '2025-03-16 18:05:44');
INSERT INTO "public"."tripulacions" VALUES (153, 127, 127, 4, 'ST', 'Toyota', 492, '/storage/fotografias/639VUhVM40DDZbI9h0Z4un6x8xoQw4TJNSCaCwPc.webp', '2025-03-16 18:07:17', '2025-03-16 18:59:06');
INSERT INTO "public"."tripulacions" VALUES (154, 228, 229, 4, 'ST', 'Honda', 413, '/storage/fotografias/gs1I5fbmknf2ExPaencpcM1gegyUXn2tpwxFAwd7.png', '2025-03-16 18:08:53', '2025-03-16 20:05:35');
INSERT INTO "public"."tripulacions" VALUES (155, 128, 148, 4, 'ST', 'Toyota', 319, '/storage/fotografias/p7WMTArJ2hjFJYVjznLLMmdAAHCTavsWwNXgKfu0.webp', '2025-03-16 18:09:47', '2025-03-16 18:46:20');
INSERT INTO "public"."tripulacions" VALUES (156, 139, 140, 4, 'JOYNER', 'Joyner', 71, '/storage/fotografias/VMOijLJhyN9B68BhAkUf0JTDl53Q2PYy6sdD5hY9.webp', '2025-03-16 18:10:21', '2025-03-16 18:45:00');
INSERT INTO "public"."tripulacions" VALUES (157, 230, 252, 4, 'S1600', 'Honda', 203, '/storage/fotografias/LJ1z8m1WnMs0LtL2TJMjbPSwQrsfpQUFfWEkWS77.webp', '2025-03-16 18:11:36', '2025-03-19 21:56:32');
INSERT INTO "public"."tripulacions" VALUES (158, 232, 239, 4, 'TIL', 'Subaru', 687, '/storage/fotografias/IJsb8prcO7ciGn5nnw4Nx4DTrQfDONDWJlsEPS9A.webp', '2025-03-16 18:12:39', '2025-03-16 21:34:14');
INSERT INTO "public"."tripulacions" VALUES (159, 129, 149, 4, 'S2000', 'Toyota', 396, '/storage/fotografias/dEGKm4XTQqZw9RYFEhLwzKqOCKlroux0kku1SMEF.webp', '2025-03-16 18:13:16', '2025-03-16 18:54:23');
INSERT INTO "public"."tripulacions" VALUES (160, 233, 231, 4, 'S1600', 'Honda', 220, '/storage/fotografias/mHu3RPm4Mu2nVKwowCCg94j17pIE96dorONkmltK.png', '2025-03-16 20:04:44', '2025-03-19 21:53:12');
INSERT INTO "public"."tripulacions" VALUES (161, 234, 238, 4, 'PROMO', 'Suzuki', 93, '/storage/fotografias/REvRNbw0hVkpuSHd8Wqv9iWtlSRI2NoagTvy5kBX.png', '2025-03-16 20:11:11', '2025-03-23 02:31:18');
INSERT INTO "public"."tripulacions" VALUES (162, 235, 237, 4, 'CAM', 'Suzuki', 510, '/storage/fotografias/9z31gAY4lreMTYKCdrWm62jd7U7hWotQG4Jqypuy.png', '2025-03-16 20:14:10', '2025-03-16 20:56:26');
INSERT INTO "public"."tripulacions" VALUES (163, 236, 240, 4, 'ST', 'Honda', 466, '/storage/fotografias/8wQhWuARw5u1tQJmAK6y4AxOcjZxE83xtZnyJkjd.png', '2025-03-16 20:16:29', '2025-03-16 21:35:49');
INSERT INTO "public"."tripulacions" VALUES (164, 125, 145, 4, 'TIL', 'Subaru', 698, '/storage/fotografias/x3gpfhRKvoJ8E2hu6tAXKgzJv0lQwy0ptYdTCI4F.png', '2025-03-16 20:26:30', '2025-03-16 20:26:30');
INSERT INTO "public"."tripulacions" VALUES (165, 84, 241, 4, 'S1600', 'Toyota', 122, '/storage/fotografias/KG9WGmZBMrWDBFJu2htZKUQEHwGa06LfiHXrAJdg.png', '2025-03-16 20:41:05', '2025-03-16 21:37:06');
INSERT INTO "public"."tripulacions" VALUES (166, 126, 147, 4, 'ST', 'Honda', 400, '/storage/fotografias/DzQc3ETtXnVWyYzZQzPWnoHngJdCbeE6PrCCqvMD.png', '2025-03-16 20:44:19', '2025-03-19 21:54:30');
INSERT INTO "public"."tripulacions" VALUES (167, 242, 243, 4, 'S1600', 'Toyota', 265, '/storage/fotografias/DLJRtglxxjDLQ6j8EbJwqqH9DYfTeostIe0qNNJY.webp', '2025-03-17 21:38:47', '2025-03-17 21:38:47');
INSERT INTO "public"."tripulacions" VALUES (168, 244, 245, 4, 'S2000', 'Honda', 369, '/storage/fotografias/r4EHxsxclA09ABtE2U0EN2joJkYW8VkfZ6CABo7L.webp', '2025-03-17 21:40:29', '2025-03-17 21:40:29');
INSERT INTO "public"."tripulacions" VALUES (169, 246, 247, 4, 'S1600', 'Toyota', 289, '/storage/fotografias/2WYdloq4V8lDJLA0YNjGxlw3SltZR3iE4XefUHtb.webp', '2025-03-17 21:43:07', '2025-03-19 21:44:34');
INSERT INTO "public"."tripulacions" VALUES (170, 18, 248, 4, 'S2000', 'Honda', 368, '/storage/fotografias/ifg8fMbrusHzF8GkuqCoOV2oaaLohOrKfYFsDh0P.webp', '2025-03-17 23:07:12', '2025-03-17 23:07:12');
INSERT INTO "public"."tripulacions" VALUES (171, 39, 97, 4, 'TIP', 'Mitsubishi', 797, '/storage/fotografias/H2MaJS2mIGhMWNzDmn08AkMQ1Z14Jn55fgkUw5gp.webp', '2025-03-19 21:38:13', '2025-03-19 21:38:13');
INSERT INTO "public"."tripulacions" VALUES (172, 249, 250, 4, 'S1600', 'Toyota', 222, '/storage/fotografias/TD6DwdtQQcKXFuNyF2m3Btd9y029zIpztWq8My5X.webp', '2025-03-19 21:39:02', '2025-03-19 21:49:28');
INSERT INTO "public"."tripulacions" VALUES (173, 123, 253, 4, 'TIP', 'Mitsubishi', 708, '/storage/fotografias/pVfHGx5jONCUSAw2ZcJZ4s6jQiDzaGrcm3gg7tlw.webp', '2025-03-20 00:38:02', '2025-03-20 00:38:02');
INSERT INTO "public"."tripulacions" VALUES (174, 254, 255, 4, 'ST', 'Subaruu', 424, '/storage/fotografias/pekiWlGRKvJK2q7Qu6bOxHUb8hwpG8yRL7coOy4n.webp', '2025-03-20 00:39:57', '2025-03-20 00:39:57');
INSERT INTO "public"."tripulacions" VALUES (175, 131, 256, 4, 'S2000', 'Honda', 399, '/storage/fotografias/eOoL9LzFBHRxL8iQ0ghV5Wm28v4o3JIFShFYzh8l.webp', '2025-03-20 00:44:18', '2025-03-20 00:44:18');
INSERT INTO "public"."tripulacions" VALUES (176, 257, 151, 4, 'S2000', 'Honda', 343, '/storage/fotografias/kzVLGsZEwmQBFcfjFDpcWOBZzPPDpADCsrFvSeOF.webp', '2025-03-20 01:17:49', '2025-03-20 01:17:49');
INSERT INTO "public"."tripulacions" VALUES (177, 225, 251, 4, 'S2000', 'Honda', 367, '/storage/fotografias/xazz452A4r37TSEQDEUiNn1D7ZKwhPvgVh2Zkm5Z.png', '2025-03-22 18:19:53', '2025-03-22 18:19:53');
INSERT INTO "public"."tripulacions" VALUES (178, 258, 259, 5, 'Rally 4', 'Peugeot 208', 877, NULL, '2025-04-02 01:55:12', '2025-04-02 01:55:12');
INSERT INTO "public"."tripulacions" VALUES (179, 36, 260, 5, 'TIN', 'Mitsubishi Lancer', 747, NULL, '2025-04-02 01:55:46', '2025-04-02 01:55:46');
INSERT INTO "public"."tripulacions" VALUES (180, 261, 262, 5, 'CAM', 'Subaru Forester', 577, NULL, '2025-04-02 01:56:25', '2025-04-02 01:56:25');
INSERT INTO "public"."tripulacions" VALUES (184, 167, 266, 5, 'ST', 'Honda Civic', 416, NULL, '2025-04-02 01:59:12', '2025-04-02 01:59:12');
INSERT INTO "public"."tripulacions" VALUES (185, 267, 268, 5, 'ST', 'Nissan Sentra', 431, NULL, '2025-04-02 01:59:48', '2025-04-02 01:59:48');
INSERT INTO "public"."tripulacions" VALUES (186, 269, 270, 5, 'ST', 'Hyundai Ston Truck', 444, NULL, '2025-04-02 02:00:20', '2025-04-02 02:00:20');
INSERT INTO "public"."tripulacions" VALUES (187, 271, 272, 5, 'S2000', 'Honda Civic', 372, NULL, '2025-04-02 02:01:38', '2025-04-02 02:01:38');
INSERT INTO "public"."tripulacions" VALUES (189, 15, 71, 5, 'S2000', 'Honda Civic', 318, NULL, '2025-04-02 02:03:17', '2025-04-02 02:03:17');
INSERT INTO "public"."tripulacions" VALUES (190, 275, 276, 5, 'S2000', 'Toyota Starlet', 334, NULL, '2025-04-02 02:03:58', '2025-04-02 02:03:58');
INSERT INTO "public"."tripulacions" VALUES (191, 244, 245, 5, 'S2000', 'Honda Civic', 369, NULL, '2025-04-02 02:04:31', '2025-04-02 02:04:31');
INSERT INTO "public"."tripulacions" VALUES (192, 18, 248, 5, 'S2000', 'Honda Civic', 368, NULL, '2025-04-02 02:05:00', '2025-04-02 02:05:00');
INSERT INTO "public"."tripulacions" VALUES (193, 277, 278, 5, 'S1600', 'Toyota Levin', 221, NULL, '2025-04-02 02:05:50', '2025-04-02 02:05:50');
INSERT INTO "public"."tripulacions" VALUES (194, 279, 280, 5, 'S1600', 'Toyota Corolla', 233, NULL, '2025-04-02 02:06:12', '2025-04-02 02:06:12');
INSERT INTO "public"."tripulacions" VALUES (195, 233, 291, 5, 'S1600', 'Honda Civic', 220, NULL, '2025-04-02 02:07:08', '2025-04-05 12:18:03');
INSERT INTO "public"."tripulacions" VALUES (196, 281, 282, 5, 'S1600', 'Honda Civic', 215, NULL, '2025-04-02 02:07:58', '2025-04-02 02:07:58');
INSERT INTO "public"."tripulacions" VALUES (197, 283, 284, 5, 'S1600', 'Toyota Corolla', 201, NULL, '2025-04-02 02:09:00', '2025-04-02 02:09:00');
INSERT INTO "public"."tripulacions" VALUES (198, 285, 286, 5, 'S1600', 'Toyota Corolla', 272, NULL, '2025-04-02 02:09:22', '2025-04-02 02:09:22');
INSERT INTO "public"."tripulacions" VALUES (199, 84, 241, 5, 'S1600', 'Toyota Sprinter', 122, NULL, '2025-04-02 02:10:03', '2025-04-02 02:10:03');
INSERT INTO "public"."tripulacions" VALUES (200, 242, 243, 5, 'S1600', 'Toyota Levin', 265, NULL, '2025-04-02 02:10:25', '2025-04-02 02:10:25');
INSERT INTO "public"."tripulacions" VALUES (201, 287, 288, 5, 'S1600', 'Honda Civic', 158, NULL, '2025-04-02 02:10:51', '2025-04-02 02:10:51');
INSERT INTO "public"."tripulacions" VALUES (202, 289, 290, 5, 'S1600', 'Mini Cooper', 214, NULL, '2025-04-02 02:11:16', '2025-04-02 02:11:16');
INSERT INTO "public"."tripulacions" VALUES (203, 10, 9, 5, 'S1600', 'Toyota Levin', 285, NULL, '2025-04-05 04:02:25', '2025-04-05 04:02:25');
INSERT INTO "public"."tripulacions" VALUES (204, 264, 265, 5, 'ST', 'Volkswagen Golf', 408, NULL, '2025-04-05 22:15:29', '2025-04-05 22:15:29');
INSERT INTO "public"."tripulacions" VALUES (205, 292, 293, 8, 'TIL', 'Subaru', 699, NULL, '2025-04-27 00:55:13', '2025-04-27 00:55:13');
INSERT INTO "public"."tripulacions" VALUES (206, 228, 229, 8, 'ST', 'Honda', 413, NULL, '2025-04-27 00:55:56', '2025-04-27 00:55:56');
INSERT INTO "public"."tripulacions" VALUES (207, 126, 143, 8, 'ST', 'Honda', 401, '/storage/fotografias/y3czoAYG8ThgVkn7l6VeKUzGNLwuCQR8zTcjSD1T.png', '2025-04-27 00:56:38', '2025-04-27 15:22:36');
INSERT INTO "public"."tripulacions" VALUES (208, 225, 251, 8, 'S2000', 'Honda', 367, '/storage/fotografias/hvncLhjSsXk7tmcSR5JAlzgrbEZDn9PNUKSyUvh3.png', '2025-04-27 00:58:35', '2025-04-27 16:21:18');
INSERT INTO "public"."tripulacions" VALUES (209, 131, 256, 8, 'S2000', 'Honda', 399, NULL, '2025-04-27 00:59:01', '2025-04-27 00:59:01');
INSERT INTO "public"."tripulacions" VALUES (210, 129, 149, 8, 'S2000', 'Toyota', 396, NULL, '2025-04-27 00:59:41', '2025-04-27 00:59:41');
INSERT INTO "public"."tripulacions" VALUES (211, 135, 155, 8, 'S1600', 'Toyota', 209, NULL, '2025-04-27 01:00:10', '2025-04-27 01:00:10');
INSERT INTO "public"."tripulacions" VALUES (212, 294, 295, 8, 'S1600', 'Toyota', 140, NULL, '2025-04-27 01:01:35', '2025-04-27 01:01:35');
INSERT INTO "public"."tripulacions" VALUES (213, 246, 247, 8, 'S1600', 'Toyota', 289, NULL, '2025-04-27 01:02:00', '2025-04-27 01:02:00');
INSERT INTO "public"."tripulacions" VALUES (214, 235, 237, 8, 'CAM', 'Sizuky', 510, NULL, '2025-04-27 01:02:23', '2025-04-27 01:02:23');
INSERT INTO "public"."tripulacions" VALUES (215, 139, 239, 8, 'JOYNER', 'Joyner', 71, NULL, '2025-04-27 01:02:46', '2025-04-27 01:02:46');

-- ----------------------------
-- Table structure for ubigeos
-- ----------------------------
DROP TABLE IF EXISTS "public"."ubigeos";
CREATE TABLE "public"."ubigeos" (
  "codigo" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "tipo" varchar(12) COLLATE "pg_catalog"."default" NOT NULL,
  "cod_dep" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "cod_prov" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "cod_dist" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6)
)
;

-- ----------------------------
-- Records of ubigeos
-- ----------------------------
INSERT INTO "public"."ubigeos" VALUES ('010000', 'departamento', '01', '00', '00', 'Amazonas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010100', 'provincia', '01', '01', '00', 'Chachapoyas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010101', 'distrito', '01', '01', '01', 'Chachapoyas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010102', 'distrito', '01', '01', '02', 'Asuncion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010103', 'distrito', '01', '01', '03', 'Balsas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010104', 'distrito', '01', '01', '04', 'Cheto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010105', 'distrito', '01', '01', '05', 'Chiliquin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010106', 'distrito', '01', '01', '06', 'Chuquibamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010107', 'distrito', '01', '01', '07', 'Granada', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010108', 'distrito', '01', '01', '08', 'Huancas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010109', 'distrito', '01', '01', '09', 'La Jalca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010110', 'distrito', '01', '01', '10', 'Leimebamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010111', 'distrito', '01', '01', '11', 'Levanto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010112', 'distrito', '01', '01', '12', 'Magdalena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010113', 'distrito', '01', '01', '13', 'Mariscal Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010114', 'distrito', '01', '01', '14', 'Molinopampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010115', 'distrito', '01', '01', '15', 'Montevideo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010116', 'distrito', '01', '01', '16', 'Olleros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010117', 'distrito', '01', '01', '17', 'Quinjalca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010118', 'distrito', '01', '01', '18', 'San Francisco de Daguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010119', 'distrito', '01', '01', '19', 'San Isidro de Maino', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010120', 'distrito', '01', '01', '20', 'Soloco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010121', 'distrito', '01', '01', '21', 'Sonche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010200', 'provincia', '01', '02', '00', 'Bagua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010201', 'distrito', '01', '02', '01', 'Bagua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010202', 'distrito', '01', '02', '02', 'Aramango', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010203', 'distrito', '01', '02', '03', 'Copallin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010204', 'distrito', '01', '02', '04', 'El Parco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010205', 'distrito', '01', '02', '05', 'Imaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010206', 'distrito', '01', '02', '06', 'La Peca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010300', 'provincia', '01', '03', '00', 'Bongara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010301', 'distrito', '01', '03', '01', 'Jumbilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010302', 'distrito', '01', '03', '02', 'Chisquilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010303', 'distrito', '01', '03', '03', 'Churuja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010304', 'distrito', '01', '03', '04', 'Corosha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010305', 'distrito', '01', '03', '05', 'Cuispes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010306', 'distrito', '01', '03', '06', 'Florida', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010307', 'distrito', '01', '03', '07', 'Jazan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010308', 'distrito', '01', '03', '08', 'Recta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010309', 'distrito', '01', '03', '09', 'San Carlos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010310', 'distrito', '01', '03', '10', 'Shipasbamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010311', 'distrito', '01', '03', '11', 'Valera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010312', 'distrito', '01', '03', '12', 'Yambrasbamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010400', 'provincia', '01', '04', '00', 'Condorcanqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010401', 'distrito', '01', '04', '01', 'Nieva', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010402', 'distrito', '01', '04', '02', 'El Cenepa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010403', 'distrito', '01', '04', '03', 'Rio Santiago', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010500', 'provincia', '01', '05', '00', 'Luya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010501', 'distrito', '01', '05', '01', 'Lamud', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010502', 'distrito', '01', '05', '02', 'Camporredondo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010503', 'distrito', '01', '05', '03', 'Cocabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010504', 'distrito', '01', '05', '04', 'Colcamar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010505', 'distrito', '01', '05', '05', 'Conila', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010506', 'distrito', '01', '05', '06', 'Inguilpata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010507', 'distrito', '01', '05', '07', 'Longuita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010508', 'distrito', '01', '05', '08', 'Lonya Chico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010509', 'distrito', '01', '05', '09', 'Luya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010510', 'distrito', '01', '05', '10', 'Luya Viejo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010511', 'distrito', '01', '05', '11', 'Maria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010512', 'distrito', '01', '05', '12', 'Ocalli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010513', 'distrito', '01', '05', '13', 'Ocumal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010514', 'distrito', '01', '05', '14', 'Pisuquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010515', 'distrito', '01', '05', '15', 'Providencia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010516', 'distrito', '01', '05', '16', 'San Cristobal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010517', 'distrito', '01', '05', '17', 'San Francisco del Yeso', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010518', 'distrito', '01', '05', '18', 'San Jeronimo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010519', 'distrito', '01', '05', '19', 'San Juan de Lopecancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010520', 'distrito', '01', '05', '20', 'Santa Catalina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010521', 'distrito', '01', '05', '21', 'Santo Tomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010522', 'distrito', '01', '05', '22', 'Tingo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010523', 'distrito', '01', '05', '23', 'Trita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010600', 'provincia', '01', '06', '00', 'Rodriguez de Mendoza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010601', 'distrito', '01', '06', '01', 'San Nicolas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010602', 'distrito', '01', '06', '02', 'Chirimoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010603', 'distrito', '01', '06', '03', 'Cochamal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010604', 'distrito', '01', '06', '04', 'Huambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010605', 'distrito', '01', '06', '05', 'Limabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010606', 'distrito', '01', '06', '06', 'Longar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010607', 'distrito', '01', '06', '07', 'Mariscal Benavides', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010608', 'distrito', '01', '06', '08', 'Milpuc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010609', 'distrito', '01', '06', '09', 'Omia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010610', 'distrito', '01', '06', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010611', 'distrito', '01', '06', '11', 'Totora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010612', 'distrito', '01', '06', '12', 'Vista Alegre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010700', 'provincia', '01', '07', '00', 'Utcubamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010701', 'distrito', '01', '07', '01', 'Bagua Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010702', 'distrito', '01', '07', '02', 'Cajaruro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010703', 'distrito', '01', '07', '03', 'Cumba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010704', 'distrito', '01', '07', '04', 'El Milagro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010705', 'distrito', '01', '07', '05', 'Jamalca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010706', 'distrito', '01', '07', '06', 'Lonya Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('010707', 'distrito', '01', '07', '07', 'Yamon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020000', 'departamento', '02', '00', '00', 'Ancash', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020100', 'provincia', '02', '01', '00', 'Huaraz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020101', 'distrito', '02', '01', '01', 'Huaraz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020102', 'distrito', '02', '01', '02', 'Cochabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020103', 'distrito', '02', '01', '03', 'Colcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020104', 'distrito', '02', '01', '04', 'Huanchay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020105', 'distrito', '02', '01', '05', 'Icod_dependencia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020106', 'distrito', '02', '01', '06', 'Jangas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020107', 'distrito', '02', '01', '07', 'La Libertad', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020108', 'distrito', '02', '01', '08', 'Olleros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020109', 'distrito', '02', '01', '09', 'Pampas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020110', 'distrito', '02', '01', '10', 'Pariacoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020111', 'distrito', '02', '01', '11', 'Pira', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020112', 'distrito', '02', '01', '12', 'Tarica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020200', 'provincia', '02', '02', '00', 'Aija', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020201', 'distrito', '02', '02', '01', 'Aija', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020202', 'distrito', '02', '02', '02', 'Coris', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020203', 'distrito', '02', '02', '03', 'Huacllan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020204', 'distrito', '02', '02', '04', 'La Merced', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020205', 'distrito', '02', '02', '05', 'Succha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020300', 'provincia', '02', '03', '00', 'Antonio Raymondi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020301', 'distrito', '02', '03', '01', 'Llamellin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020302', 'distrito', '02', '03', '02', 'Aczo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020303', 'distrito', '02', '03', '03', 'Chaccho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020304', 'distrito', '02', '03', '04', 'Chingas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020305', 'distrito', '02', '03', '05', 'Mirgas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020306', 'distrito', '02', '03', '06', 'San Juan de Rontoy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020400', 'provincia', '02', '04', '00', 'Asuncion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020401', 'distrito', '02', '04', '01', 'Chacas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020402', 'distrito', '02', '04', '02', 'Acochaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020500', 'provincia', '02', '05', '00', 'Bolognesi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020501', 'distrito', '02', '05', '01', 'Chiquian', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020502', 'distrito', '02', '05', '02', 'Abelardo Pardo Lezameta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020503', 'distrito', '02', '05', '03', 'Antonio Raymondi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020504', 'distrito', '02', '05', '04', 'Aquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020505', 'distrito', '02', '05', '05', 'Cajacay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020506', 'distrito', '02', '05', '06', 'Canis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020507', 'distrito', '02', '05', '07', 'Colquioc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020508', 'distrito', '02', '05', '08', 'Huallanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020509', 'distrito', '02', '05', '09', 'Huasta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020510', 'distrito', '02', '05', '10', 'Huayllacayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020511', 'distrito', '02', '05', '11', 'La Primavera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020512', 'distrito', '02', '05', '12', 'Mangas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020513', 'distrito', '02', '05', '13', 'Pacllon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020514', 'distrito', '02', '05', '14', 'San Miguel de Corpanqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020515', 'distrito', '02', '05', '15', 'Ticllos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020600', 'provincia', '02', '06', '00', 'Carhuaz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020601', 'distrito', '02', '06', '01', 'Carhuaz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020602', 'distrito', '02', '06', '02', 'Acopampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020603', 'distrito', '02', '06', '03', 'Amashca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020604', 'distrito', '02', '06', '04', 'Anta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020605', 'distrito', '02', '06', '05', 'Ataquero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020606', 'distrito', '02', '06', '06', 'Marcara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020607', 'distrito', '02', '06', '07', 'Pariahuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020608', 'distrito', '02', '06', '08', 'San Miguel de Aco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020609', 'distrito', '02', '06', '09', 'Shilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020610', 'distrito', '02', '06', '10', 'Tinco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020611', 'distrito', '02', '06', '11', 'Yungar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020700', 'provincia', '02', '07', '00', 'Carlos Fermin Fitzca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020701', 'distrito', '02', '07', '01', 'San Luis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020702', 'distrito', '02', '07', '02', 'San Nicolas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020703', 'distrito', '02', '07', '03', 'Yauya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020800', 'provincia', '02', '08', '00', 'Casma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020801', 'distrito', '02', '08', '01', 'Casma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020802', 'distrito', '02', '08', '02', 'Buena Vista Alta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020803', 'distrito', '02', '08', '03', 'Comandante Noel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020804', 'distrito', '02', '08', '04', 'Yautan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020900', 'provincia', '02', '09', '00', 'Corongo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020901', 'distrito', '02', '09', '01', 'Corongo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020902', 'distrito', '02', '09', '02', 'Aco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020903', 'distrito', '02', '09', '03', 'Bambas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020904', 'distrito', '02', '09', '04', 'Cusca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020905', 'distrito', '02', '09', '05', 'La Pampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020906', 'distrito', '02', '09', '06', 'Yanac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('020907', 'distrito', '02', '09', '07', 'Yupan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021000', 'provincia', '02', '10', '00', 'Huari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021001', 'distrito', '02', '10', '01', 'Huari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021002', 'distrito', '02', '10', '02', 'Anra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021003', 'distrito', '02', '10', '03', 'Cajay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021004', 'distrito', '02', '10', '04', 'Chavin de Huantar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021005', 'distrito', '02', '10', '05', 'Huacachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021006', 'distrito', '02', '10', '06', 'Huacchis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021007', 'distrito', '02', '10', '07', 'Huachis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021008', 'distrito', '02', '10', '08', 'Huantar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021009', 'distrito', '02', '10', '09', 'Masin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021010', 'distrito', '02', '10', '10', 'Paucas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021011', 'distrito', '02', '10', '11', 'Ponto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021012', 'distrito', '02', '10', '12', 'Rahuapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021013', 'distrito', '02', '10', '13', 'Rapayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021014', 'distrito', '02', '10', '14', 'San Marcos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021015', 'distrito', '02', '10', '15', 'San Pedro de Chana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021016', 'distrito', '02', '10', '16', 'Uco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021100', 'provincia', '02', '11', '00', 'Huarmey', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021101', 'distrito', '02', '11', '01', 'Huarmey', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021102', 'distrito', '02', '11', '02', 'Cochapeti', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021103', 'distrito', '02', '11', '03', 'Culebras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021104', 'distrito', '02', '11', '04', 'Huayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021105', 'distrito', '02', '11', '05', 'Malvas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021200', 'provincia', '02', '12', '00', 'Huaylas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021201', 'distrito', '02', '12', '01', 'Caraz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021202', 'distrito', '02', '12', '02', 'Huallanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021203', 'distrito', '02', '12', '03', 'Huata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021204', 'distrito', '02', '12', '04', 'Huaylas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021205', 'distrito', '02', '12', '05', 'Mato', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021206', 'distrito', '02', '12', '06', 'Pamparomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021207', 'distrito', '02', '12', '07', 'Pueblo Libre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021208', 'distrito', '02', '12', '08', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021209', 'distrito', '02', '12', '09', 'Santo Toribio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021210', 'distrito', '02', '12', '10', 'Yuracmarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021300', 'provincia', '02', '13', '00', 'Mariscal Luzuriaga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021301', 'distrito', '02', '13', '01', 'Piscobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021302', 'distrito', '02', '13', '02', 'Casca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021303', 'distrito', '02', '13', '03', 'Eleazar Guzman Barron', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021304', 'distrito', '02', '13', '04', 'Fidel Olivas Escudero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021305', 'distrito', '02', '13', '05', 'Llama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021306', 'distrito', '02', '13', '06', 'Llumpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021307', 'distrito', '02', '13', '07', 'Lucma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021308', 'distrito', '02', '13', '08', 'Musga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021400', 'provincia', '02', '14', '00', 'Ocros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021401', 'distrito', '02', '14', '01', 'Ocros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021402', 'distrito', '02', '14', '02', 'Acas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021403', 'distrito', '02', '14', '03', 'Cajamarquilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021404', 'distrito', '02', '14', '04', 'Carhuapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021405', 'distrito', '02', '14', '05', 'Cochas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021406', 'distrito', '02', '14', '06', 'Congas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021407', 'distrito', '02', '14', '07', 'Llipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021408', 'distrito', '02', '14', '08', 'San Cristobal de Rajan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021409', 'distrito', '02', '14', '09', 'San Pedro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021410', 'distrito', '02', '14', '10', 'Santiago de Chilcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021500', 'provincia', '02', '15', '00', 'Pallasca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021501', 'distrito', '02', '15', '01', 'Cabana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021502', 'distrito', '02', '15', '02', 'Bolognesi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021503', 'distrito', '02', '15', '03', 'Conchucos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021504', 'distrito', '02', '15', '04', 'Huacaschuque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021505', 'distrito', '02', '15', '05', 'Huandoval', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021506', 'distrito', '02', '15', '06', 'Lacabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021507', 'distrito', '02', '15', '07', 'Llapo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021508', 'distrito', '02', '15', '08', 'Pallasca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021509', 'distrito', '02', '15', '09', 'Pampas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021510', 'distrito', '02', '15', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021511', 'distrito', '02', '15', '11', 'Tauca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021600', 'provincia', '02', '16', '00', 'Pomabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021601', 'distrito', '02', '16', '01', 'Pomabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021602', 'distrito', '02', '16', '02', 'Huayllan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021603', 'distrito', '02', '16', '03', 'Parobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021604', 'distrito', '02', '16', '04', 'Quinuabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021700', 'provincia', '02', '17', '00', 'Recuay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021701', 'distrito', '02', '17', '01', 'Recuay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021702', 'distrito', '02', '17', '02', 'Catac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021703', 'distrito', '02', '17', '03', 'Cotaparaco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021704', 'distrito', '02', '17', '04', 'Huayllapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021705', 'distrito', '02', '17', '05', 'Llacllin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021706', 'distrito', '02', '17', '06', 'Marca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021707', 'distrito', '02', '17', '07', 'Pampas Chico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021708', 'distrito', '02', '17', '08', 'Pararin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021709', 'distrito', '02', '17', '09', 'Tapacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021710', 'distrito', '02', '17', '10', 'Ticapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021800', 'provincia', '02', '18', '00', 'Santa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021801', 'distrito', '02', '18', '01', 'Chimbote', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021802', 'distrito', '02', '18', '02', 'Caceres del Peru', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021803', 'distrito', '02', '18', '03', 'Coishco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021804', 'distrito', '02', '18', '04', 'Macate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021805', 'distrito', '02', '18', '05', 'Moro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021806', 'distrito', '02', '18', '06', 'Nepeña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021807', 'distrito', '02', '18', '07', 'Samanco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021808', 'distrito', '02', '18', '08', 'Santa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021809', 'distrito', '02', '18', '09', 'Nuevo Chimbote', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021900', 'provincia', '02', '19', '00', 'Sihuas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021901', 'distrito', '02', '19', '01', 'Sihuas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021902', 'distrito', '02', '19', '02', 'Acobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021903', 'distrito', '02', '19', '03', 'Alfonso Ugarte', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021904', 'distrito', '02', '19', '04', 'Cashapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021905', 'distrito', '02', '19', '05', 'Chingalpo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021906', 'distrito', '02', '19', '06', 'Huayllabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021907', 'distrito', '02', '19', '07', 'Quiches', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021908', 'distrito', '02', '19', '08', 'Ragash', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021909', 'distrito', '02', '19', '09', 'San Juan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('021910', 'distrito', '02', '19', '10', 'Sicsibamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022000', 'provincia', '02', '20', '00', 'Yungay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022001', 'distrito', '02', '20', '01', 'Yungay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022002', 'distrito', '02', '20', '02', 'Cascapara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022003', 'distrito', '02', '20', '03', 'Mancos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022004', 'distrito', '02', '20', '04', 'Matacoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022005', 'distrito', '02', '20', '05', 'Quillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022006', 'distrito', '02', '20', '06', 'Ranrahirca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022007', 'distrito', '02', '20', '07', 'Shupluy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('022008', 'distrito', '02', '20', '08', 'Yanama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030000', 'departamento', '03', '00', '00', 'Apurimac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030100', 'provincia', '03', '01', '00', 'Abancay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030101', 'distrito', '03', '01', '01', 'Abancay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030102', 'distrito', '03', '01', '02', 'Chacoche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030103', 'distrito', '03', '01', '03', 'Circa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030104', 'distrito', '03', '01', '04', 'Curahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030105', 'distrito', '03', '01', '05', 'Huanipaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030106', 'distrito', '03', '01', '06', 'Lambrama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030107', 'distrito', '03', '01', '07', 'Pichirhua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030108', 'distrito', '03', '01', '08', 'San Pedro de Cachora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030109', 'distrito', '03', '01', '09', 'Tamburco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030200', 'provincia', '03', '02', '00', 'Andahuaylas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030201', 'distrito', '03', '02', '01', 'Andahuaylas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030202', 'distrito', '03', '02', '02', 'Andarapa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030203', 'distrito', '03', '02', '03', 'Chiara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030204', 'distrito', '03', '02', '04', 'Huancarama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030205', 'distrito', '03', '02', '05', 'Huancaray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030206', 'distrito', '03', '02', '06', 'Huayana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030207', 'distrito', '03', '02', '07', 'Kishuara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030208', 'distrito', '03', '02', '08', 'Pacobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030209', 'distrito', '03', '02', '09', 'Pacucha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030210', 'distrito', '03', '02', '10', 'Pampachiri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030211', 'distrito', '03', '02', '11', 'Pomacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030212', 'distrito', '03', '02', '12', 'San Antonio de Cachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030213', 'distrito', '03', '02', '13', 'San Jeronimo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030214', 'distrito', '03', '02', '14', 'San Miguel de Chaccrampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030215', 'distrito', '03', '02', '15', 'Santa Maria de Chicmo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030216', 'distrito', '03', '02', '16', 'Talavera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030217', 'distrito', '03', '02', '17', 'Tumay Huaraca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030218', 'distrito', '03', '02', '18', 'Turpo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030219', 'distrito', '03', '02', '19', 'Kaquiabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030220', 'distrito', '03', '02', '20', 'José María Arguedas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030300', 'provincia', '03', '03', '00', 'Antabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030301', 'distrito', '03', '03', '01', 'Antabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030302', 'distrito', '03', '03', '02', 'El Oro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030303', 'distrito', '03', '03', '03', 'Huaquirca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030304', 'distrito', '03', '03', '04', 'Juan Espinoza Medrano', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030305', 'distrito', '03', '03', '05', 'Oropesa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030306', 'distrito', '03', '03', '06', 'Pachaconas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030307', 'distrito', '03', '03', '07', 'Sabaino', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030400', 'provincia', '03', '04', '00', 'Aymaraes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030401', 'distrito', '03', '04', '01', 'Chalhuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030402', 'distrito', '03', '04', '02', 'Capaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030403', 'distrito', '03', '04', '03', 'Caraybamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030404', 'distrito', '03', '04', '04', 'Chapimarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030405', 'distrito', '03', '04', '05', 'Colcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030406', 'distrito', '03', '04', '06', 'Cotaruse', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030407', 'distrito', '03', '04', '07', 'Huayllo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030408', 'distrito', '03', '04', '08', 'Justo Apu Sahuaraura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030409', 'distrito', '03', '04', '09', 'Lucre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030410', 'distrito', '03', '04', '10', 'Pocohuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030411', 'distrito', '03', '04', '11', 'San Juan de Chacña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030412', 'distrito', '03', '04', '12', 'Sañayca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030413', 'distrito', '03', '04', '13', 'Soraya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030414', 'distrito', '03', '04', '14', 'Tapairihua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030415', 'distrito', '03', '04', '15', 'Tintay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030416', 'distrito', '03', '04', '16', 'Toraya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030417', 'distrito', '03', '04', '17', 'Yanaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030500', 'provincia', '03', '05', '00', 'Cotabambas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030501', 'distrito', '03', '05', '01', 'Tambobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030502', 'distrito', '03', '05', '02', 'Cotabambas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030503', 'distrito', '03', '05', '03', 'Coyllurqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030504', 'distrito', '03', '05', '04', 'Haquira', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030505', 'distrito', '03', '05', '05', 'Mara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030506', 'distrito', '03', '05', '06', 'Challhuahuacho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030600', 'provincia', '03', '06', '00', 'Chincheros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030601', 'distrito', '03', '06', '01', 'Chincheros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030602', 'distrito', '03', '06', '02', 'Anco_Huallo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030603', 'distrito', '03', '06', '03', 'Cocharcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030604', 'distrito', '03', '06', '04', 'Huaccana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030605', 'distrito', '03', '06', '05', 'Ocobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030606', 'distrito', '03', '06', '06', 'Ongoy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030607', 'distrito', '03', '06', '07', 'Uranmarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030608', 'distrito', '03', '06', '08', 'Ranracancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030609', 'distrito', '03', '06', '09', 'Rocchacc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030610', 'distrito', '03', '06', '10', 'El Porvenir', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030611', 'distrito', '03', '06', '11', 'Los Chankas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030700', 'provincia', '03', '07', '00', 'Grau', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030701', 'distrito', '03', '07', '01', 'Chuquibambilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030702', 'distrito', '03', '07', '02', 'Curpahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030703', 'distrito', '03', '07', '03', 'Gamarra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030704', 'distrito', '03', '07', '04', 'Huayllati', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030705', 'distrito', '03', '07', '05', 'Mamara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030706', 'distrito', '03', '07', '06', 'Micaela Bastidas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030707', 'distrito', '03', '07', '07', 'Pataypampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030708', 'distrito', '03', '07', '08', 'Progreso', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030709', 'distrito', '03', '07', '09', 'San Antonio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030710', 'distrito', '03', '07', '10', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030711', 'distrito', '03', '07', '11', 'Turpay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030712', 'distrito', '03', '07', '12', 'Vilcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030713', 'distrito', '03', '07', '13', 'Virundo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('030714', 'distrito', '03', '07', '14', 'Curasco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040000', 'departamento', '04', '00', '00', 'Arequipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040100', 'provincia', '04', '01', '00', 'Arequipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040101', 'distrito', '04', '01', '01', 'Arequipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040102', 'distrito', '04', '01', '02', 'Alto Selva Alegre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040103', 'distrito', '04', '01', '03', 'Cayma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040104', 'distrito', '04', '01', '04', 'Cerro Colorado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040105', 'distrito', '04', '01', '05', 'Characato', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040106', 'distrito', '04', '01', '06', 'Chiguata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040107', 'distrito', '04', '01', '07', 'Jacobo Hunter', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040108', 'distrito', '04', '01', '08', 'La Joya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040109', 'distrito', '04', '01', '09', 'Mariano Melgar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040110', 'distrito', '04', '01', '10', 'Miraflores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040111', 'distrito', '04', '01', '11', 'Mollebaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040112', 'distrito', '04', '01', '12', 'Paucarpata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040113', 'distrito', '04', '01', '13', 'Pocsi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040114', 'distrito', '04', '01', '14', 'Polobaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040115', 'distrito', '04', '01', '15', 'Quequeña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040116', 'distrito', '04', '01', '16', 'Sabandia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040117', 'distrito', '04', '01', '17', 'Sachaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040118', 'distrito', '04', '01', '18', 'San Juan de Siguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040119', 'distrito', '04', '01', '19', 'San Juan de Tarucani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040120', 'distrito', '04', '01', '20', 'Santa Isabel de Siguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040121', 'distrito', '04', '01', '21', 'Santa Rita de Siguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040122', 'distrito', '04', '01', '22', 'Socabaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040123', 'distrito', '04', '01', '23', 'Tiabaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040124', 'distrito', '04', '01', '24', 'Uchumayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040125', 'distrito', '04', '01', '25', 'Vitor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040126', 'distrito', '04', '01', '26', 'Yanahuara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040127', 'distrito', '04', '01', '27', 'Yarabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040128', 'distrito', '04', '01', '28', 'Yura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040129', 'distrito', '04', '01', '29', 'Jose Luis Bustamante y Rivero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040200', 'provincia', '04', '02', '00', 'Camana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040201', 'distrito', '04', '02', '01', 'Camana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040202', 'distrito', '04', '02', '02', 'Jose Maria Quimper', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040203', 'distrito', '04', '02', '03', 'Mariano Nicolas Valcarcel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040204', 'distrito', '04', '02', '04', 'Mariscal Caceres', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040205', 'distrito', '04', '02', '05', 'Nicolas de Pierola', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040206', 'distrito', '04', '02', '06', 'Ocoña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040207', 'distrito', '04', '02', '07', 'Quilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040208', 'distrito', '04', '02', '08', 'Samuel Pastor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040300', 'provincia', '04', '03', '00', 'Caraveli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040301', 'distrito', '04', '03', '01', 'Caraveli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040302', 'distrito', '04', '03', '02', 'Acari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040303', 'distrito', '04', '03', '03', 'Atico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040304', 'distrito', '04', '03', '04', 'Atiquipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040305', 'distrito', '04', '03', '05', 'Bella Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040306', 'distrito', '04', '03', '06', 'Cahuacho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040307', 'distrito', '04', '03', '07', 'Chala', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040308', 'distrito', '04', '03', '08', 'Chaparra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040309', 'distrito', '04', '03', '09', 'Huanuhuanu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040310', 'distrito', '04', '03', '10', 'Jaqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040311', 'distrito', '04', '03', '11', 'Lomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040312', 'distrito', '04', '03', '12', 'Quicacha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040313', 'distrito', '04', '03', '13', 'Yauca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040400', 'provincia', '04', '04', '00', 'Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040401', 'distrito', '04', '04', '01', 'Aplao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040402', 'distrito', '04', '04', '02', 'Andagua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040403', 'distrito', '04', '04', '03', 'Ayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040404', 'distrito', '04', '04', '04', 'Chachas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040405', 'distrito', '04', '04', '05', 'Chilcaymarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040406', 'distrito', '04', '04', '06', 'Choco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040407', 'distrito', '04', '04', '07', 'Huancarqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040408', 'distrito', '04', '04', '08', 'Machaguay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040409', 'distrito', '04', '04', '09', 'Orcopampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040410', 'distrito', '04', '04', '10', 'Pampacolca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040411', 'distrito', '04', '04', '11', 'Tipan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040412', 'distrito', '04', '04', '12', 'Uñon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040413', 'distrito', '04', '04', '13', 'Uraca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040414', 'distrito', '04', '04', '14', 'Viraco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040500', 'provincia', '04', '05', '00', 'Caylloma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040501', 'distrito', '04', '05', '01', 'Chivay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040502', 'distrito', '04', '05', '02', 'Achoma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040503', 'distrito', '04', '05', '03', 'Cabanaconde', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040504', 'distrito', '04', '05', '04', 'Callalli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040505', 'distrito', '04', '05', '05', 'Caylloma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040506', 'distrito', '04', '05', '06', 'Coporaque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040507', 'distrito', '04', '05', '07', 'Huambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040508', 'distrito', '04', '05', '08', 'Huanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040509', 'distrito', '04', '05', '09', 'Ichupampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040510', 'distrito', '04', '05', '10', 'Lari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040511', 'distrito', '04', '05', '11', 'Lluta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040512', 'distrito', '04', '05', '12', 'Maca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040513', 'distrito', '04', '05', '13', 'Madrigal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040514', 'distrito', '04', '05', '14', 'San Antonio de Chuca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040515', 'distrito', '04', '05', '15', 'Sibayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040516', 'distrito', '04', '05', '16', 'Tapay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040517', 'distrito', '04', '05', '17', 'Tisco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040518', 'distrito', '04', '05', '18', 'Tuti', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040519', 'distrito', '04', '05', '19', 'Yanque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040520', 'distrito', '04', '05', '20', 'Majes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040600', 'provincia', '04', '06', '00', 'Condesuyos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040601', 'distrito', '04', '06', '01', 'Chuquibamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040602', 'distrito', '04', '06', '02', 'Andaray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040603', 'distrito', '04', '06', '03', 'Cayarani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040604', 'distrito', '04', '06', '04', 'Chichas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040605', 'distrito', '04', '06', '05', 'Iray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040606', 'distrito', '04', '06', '06', 'Rio Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040607', 'distrito', '04', '06', '07', 'Salamanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040608', 'distrito', '04', '06', '08', 'Yanaquihua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040700', 'provincia', '04', '07', '00', 'Islay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040701', 'distrito', '04', '07', '01', 'Mollendo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040702', 'distrito', '04', '07', '02', 'Cocachacra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040703', 'distrito', '04', '07', '03', 'Dean Valdivia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040704', 'distrito', '04', '07', '04', 'Islay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040705', 'distrito', '04', '07', '05', 'Mejia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040706', 'distrito', '04', '07', '06', 'Punta de Bombon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040800', 'provincia', '04', '08', '00', 'La Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040801', 'distrito', '04', '08', '01', 'Cotahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040802', 'distrito', '04', '08', '02', 'Alca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040803', 'distrito', '04', '08', '03', 'Charcana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040804', 'distrito', '04', '08', '04', 'Huaynacotas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040805', 'distrito', '04', '08', '05', 'Pampamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040806', 'distrito', '04', '08', '06', 'Puyca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040807', 'distrito', '04', '08', '07', 'Quechualla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040808', 'distrito', '04', '08', '08', 'Sayla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040809', 'distrito', '04', '08', '09', 'Tauria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040810', 'distrito', '04', '08', '10', 'Tomepampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('040811', 'distrito', '04', '08', '11', 'Toro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050000', 'departamento', '05', '00', '00', 'Ayacucho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050100', 'provincia', '05', '01', '00', 'Huamanga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050101', 'distrito', '05', '01', '01', 'Ayacucho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050102', 'distrito', '05', '01', '02', 'Acocro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050103', 'distrito', '05', '01', '03', 'Acos Vinchos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050104', 'distrito', '05', '01', '04', 'Carmen Alto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050105', 'distrito', '05', '01', '05', 'Chiara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050106', 'distrito', '05', '01', '06', 'Ocros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050107', 'distrito', '05', '01', '07', 'Pacaycasa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050108', 'distrito', '05', '01', '08', 'Quinua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050109', 'distrito', '05', '01', '09', 'San Jose de Ticllas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050110', 'distrito', '05', '01', '10', 'San Juan Bautista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050111', 'distrito', '05', '01', '11', 'Santiago de Pischa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050112', 'distrito', '05', '01', '12', 'Socos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050113', 'distrito', '05', '01', '13', 'Tambillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050114', 'distrito', '05', '01', '14', 'Vinchos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050115', 'distrito', '05', '01', '15', 'Jesus Nazareno', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050116', 'distrito', '05', '01', '16', 'Andrés Avelino Cáceres Dorregaray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050200', 'provincia', '05', '02', '00', 'Cangallo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050201', 'distrito', '05', '02', '01', 'Cangallo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050202', 'distrito', '05', '02', '02', 'Chuschi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050203', 'distrito', '05', '02', '03', 'Los Morochucos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050204', 'distrito', '05', '02', '04', 'Maria Parado de Bellido', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050205', 'distrito', '05', '02', '05', 'Paras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050206', 'distrito', '05', '02', '06', 'Totos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050300', 'provincia', '05', '03', '00', 'Huanca Sancos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050301', 'distrito', '05', '03', '01', 'Sancos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050302', 'distrito', '05', '03', '02', 'Carapo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050303', 'distrito', '05', '03', '03', 'Sacsamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050304', 'distrito', '05', '03', '04', 'Santiago de Lucanamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050400', 'provincia', '05', '04', '00', 'Huanta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050401', 'distrito', '05', '04', '01', 'Huanta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050402', 'distrito', '05', '04', '02', 'Ayahuanco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050403', 'distrito', '05', '04', '03', 'Huamanguilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050404', 'distrito', '05', '04', '04', 'Iguain', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050405', 'distrito', '05', '04', '05', 'Luricocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050406', 'distrito', '05', '04', '06', 'Santillana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050407', 'distrito', '05', '04', '07', 'Sivia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050408', 'distrito', '05', '04', '08', 'Llochegua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050409', 'distrito', '05', '04', '09', 'Canayre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050410', 'distrito', '05', '04', '10', 'Uchuraccay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050411', 'distrito', '05', '04', '11', 'Pucacolpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050412', 'distrito', '05', '04', '12', 'Chaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050500', 'provincia', '05', '05', '00', 'La Mar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050501', 'distrito', '05', '05', '01', 'San Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050502', 'distrito', '05', '05', '02', 'Anco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050503', 'distrito', '05', '05', '03', 'Ayna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050504', 'distrito', '05', '05', '04', 'Chilcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050505', 'distrito', '05', '05', '05', 'Chungui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050506', 'distrito', '05', '05', '06', 'Luis Carranza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050507', 'distrito', '05', '05', '07', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050508', 'distrito', '05', '05', '08', 'Tambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050509', 'distrito', '05', '05', '09', 'Samugari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050510', 'distrito', '05', '05', '10', 'Anchihuay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050511', 'distrito', '05', '05', '11', 'Oronccoy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050600', 'provincia', '05', '06', '00', 'Lucanas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050601', 'distrito', '05', '06', '01', 'Puquio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050602', 'distrito', '05', '06', '02', 'Aucara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050603', 'distrito', '05', '06', '03', 'Cabana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050604', 'distrito', '05', '06', '04', 'Carmen Salcedo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050605', 'distrito', '05', '06', '05', 'Chaviña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050606', 'distrito', '05', '06', '06', 'Chipao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050607', 'distrito', '05', '06', '07', 'Huac-Huas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050608', 'distrito', '05', '06', '08', 'Laramate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050609', 'distrito', '05', '06', '09', 'Leoncio Prado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050610', 'distrito', '05', '06', '10', 'Llauta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050611', 'distrito', '05', '06', '11', 'Lucanas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050612', 'distrito', '05', '06', '12', 'Ocaña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050613', 'distrito', '05', '06', '13', 'Otoca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050614', 'distrito', '05', '06', '14', 'Saisa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050615', 'distrito', '05', '06', '15', 'San Cristobal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050616', 'distrito', '05', '06', '16', 'San Juan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050617', 'distrito', '05', '06', '17', 'San Pedro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050618', 'distrito', '05', '06', '18', 'San Pedro de Palco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050619', 'distrito', '05', '06', '19', 'Sancos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050620', 'distrito', '05', '06', '20', 'Santa Ana de Huaycahuacho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050621', 'distrito', '05', '06', '21', 'Santa Lucia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050700', 'provincia', '05', '07', '00', 'Parinacochas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050701', 'distrito', '05', '07', '01', 'Coracora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050702', 'distrito', '05', '07', '02', 'Chumpi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050703', 'distrito', '05', '07', '03', 'Coronel Castañeda', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050704', 'distrito', '05', '07', '04', 'Pacapausa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050705', 'distrito', '05', '07', '05', 'Pullo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050706', 'distrito', '05', '07', '06', 'Puyusca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050707', 'distrito', '05', '07', '07', 'San Francisco de Ravacayco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050708', 'distrito', '05', '07', '08', 'Upahuacho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050800', 'provincia', '05', '08', '00', 'Paucar del Sara Sara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050801', 'distrito', '05', '08', '01', 'Pausa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050802', 'distrito', '05', '08', '02', 'Colta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050803', 'distrito', '05', '08', '03', 'Corculla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050804', 'distrito', '05', '08', '04', 'Lampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050805', 'distrito', '05', '08', '05', 'Marcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050806', 'distrito', '05', '08', '06', 'Oyolo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050807', 'distrito', '05', '08', '07', 'Pararca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050808', 'distrito', '05', '08', '08', 'San Javier de Alpabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050809', 'distrito', '05', '08', '09', 'San Jose de Ushua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050810', 'distrito', '05', '08', '10', 'Sara Sara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050900', 'provincia', '05', '09', '00', 'Sucre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050901', 'distrito', '05', '09', '01', 'Querobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050902', 'distrito', '05', '09', '02', 'Belen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050903', 'distrito', '05', '09', '03', 'Chalcos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050904', 'distrito', '05', '09', '04', 'Chilcayoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050905', 'distrito', '05', '09', '05', 'Huacaña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050906', 'distrito', '05', '09', '06', 'Morcolla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050907', 'distrito', '05', '09', '07', 'Paico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050908', 'distrito', '05', '09', '08', 'San Pedro de Larcay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050909', 'distrito', '05', '09', '09', 'San Salvador de Quije', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050910', 'distrito', '05', '09', '10', 'Santiago de Paucaray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('050911', 'distrito', '05', '09', '11', 'Soras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051000', 'provincia', '05', '10', '00', 'Victor Fajardo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051001', 'distrito', '05', '10', '01', 'Huancapi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051002', 'distrito', '05', '10', '02', 'Alcamenca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051003', 'distrito', '05', '10', '03', 'Apongo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051004', 'distrito', '05', '10', '04', 'Asquipata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051005', 'distrito', '05', '10', '05', 'Canaria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051006', 'distrito', '05', '10', '06', 'Cayara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051007', 'distrito', '05', '10', '07', 'Colca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051008', 'distrito', '05', '10', '08', 'Huamanquiquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051009', 'distrito', '05', '10', '09', 'Huancaraylla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051010', 'distrito', '05', '10', '10', 'Huaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051011', 'distrito', '05', '10', '11', 'Sarhua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051012', 'distrito', '05', '10', '12', 'Vilcanchos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051100', 'provincia', '05', '11', '00', 'Vilcas Huaman', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051101', 'distrito', '05', '11', '01', 'Vilcas Huaman', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051102', 'distrito', '05', '11', '02', 'Accomarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051103', 'distrito', '05', '11', '03', 'Carhuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051104', 'distrito', '05', '11', '04', 'Concepcion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051105', 'distrito', '05', '11', '05', 'Huambalpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051106', 'distrito', '05', '11', '06', 'Icod_dependencia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051107', 'distrito', '05', '11', '07', 'Saurama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('051108', 'distrito', '05', '11', '08', 'Vischongo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060000', 'departamento', '06', '00', '00', 'Cajamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060100', 'provincia', '06', '01', '00', 'Cajamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060101', 'distrito', '06', '01', '01', 'Cajamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060102', 'distrito', '06', '01', '02', 'Asuncion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060103', 'distrito', '06', '01', '03', 'Chetilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060104', 'distrito', '06', '01', '04', 'Cospan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060105', 'distrito', '06', '01', '05', 'Encañada', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060106', 'distrito', '06', '01', '06', 'Jesus', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060107', 'distrito', '06', '01', '07', 'Llacanora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060108', 'distrito', '06', '01', '08', 'Los Baños del Inca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060109', 'distrito', '06', '01', '09', 'Magdalena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060110', 'distrito', '06', '01', '10', 'Matara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060111', 'distrito', '06', '01', '11', 'Namora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060112', 'distrito', '06', '01', '12', 'San Juan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060200', 'provincia', '06', '02', '00', 'Cajabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060201', 'distrito', '06', '02', '01', 'Cajabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060202', 'distrito', '06', '02', '02', 'Cachachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060203', 'distrito', '06', '02', '03', 'Condebamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060204', 'distrito', '06', '02', '04', 'Sitacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060300', 'provincia', '06', '03', '00', 'Celendin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060301', 'distrito', '06', '03', '01', 'Celendin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060302', 'distrito', '06', '03', '02', 'Chumuch', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060303', 'distrito', '06', '03', '03', 'Cortegana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060304', 'distrito', '06', '03', '04', 'Huasmin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060305', 'distrito', '06', '03', '05', 'Jorge Chavez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060306', 'distrito', '06', '03', '06', 'Jose Galvez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060307', 'distrito', '06', '03', '07', 'Miguel Iglesias', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060308', 'distrito', '06', '03', '08', 'Oxamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060309', 'distrito', '06', '03', '09', 'Sorochuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060310', 'distrito', '06', '03', '10', 'Sucre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060311', 'distrito', '06', '03', '11', 'Utco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060312', 'distrito', '06', '03', '12', 'La Libertad de Pallan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060400', 'provincia', '06', '04', '00', 'Chota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060401', 'distrito', '06', '04', '01', 'Chota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060402', 'distrito', '06', '04', '02', 'Anguia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060403', 'distrito', '06', '04', '03', 'Chadin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060404', 'distrito', '06', '04', '04', 'Chiguirip', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060405', 'distrito', '06', '04', '05', 'Chimban', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060406', 'distrito', '06', '04', '06', 'Choropampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060407', 'distrito', '06', '04', '07', 'Cochabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060408', 'distrito', '06', '04', '08', 'Conchan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060409', 'distrito', '06', '04', '09', 'Huambos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060410', 'distrito', '06', '04', '10', 'Lajas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060411', 'distrito', '06', '04', '11', 'Llama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060412', 'distrito', '06', '04', '12', 'Miracosta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060413', 'distrito', '06', '04', '13', 'Paccha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060414', 'distrito', '06', '04', '14', 'Pion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060415', 'distrito', '06', '04', '15', 'Querocoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060416', 'distrito', '06', '04', '16', 'San Juan de Licupis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060417', 'distrito', '06', '04', '17', 'Tacabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060418', 'distrito', '06', '04', '18', 'Tocmoche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060419', 'distrito', '06', '04', '19', 'Chalamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060500', 'provincia', '06', '05', '00', 'Contumaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060501', 'distrito', '06', '05', '01', 'Contumaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060502', 'distrito', '06', '05', '02', 'Chilete', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060503', 'distrito', '06', '05', '03', 'Cupisnique', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060504', 'distrito', '06', '05', '04', 'Guzmango', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060505', 'distrito', '06', '05', '05', 'San Benito', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060506', 'distrito', '06', '05', '06', 'Santa Cruz de Toled', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060507', 'distrito', '06', '05', '07', 'Tantarica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060508', 'distrito', '06', '05', '08', 'Yonan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060600', 'provincia', '06', '06', '00', 'Cutervo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060601', 'distrito', '06', '06', '01', 'Cutervo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060602', 'distrito', '06', '06', '02', 'Callayuc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060603', 'distrito', '06', '06', '03', 'Choros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060604', 'distrito', '06', '06', '04', 'Cujillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060605', 'distrito', '06', '06', '05', 'La Ramada', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060606', 'distrito', '06', '06', '06', 'Pimpingos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060607', 'distrito', '06', '06', '07', 'Querocotillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060608', 'distrito', '06', '06', '08', 'San Andres de Cutervo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060609', 'distrito', '06', '06', '09', 'San Juan de Cutervo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060610', 'distrito', '06', '06', '10', 'San Luis de Lucma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060611', 'distrito', '06', '06', '11', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060612', 'distrito', '06', '06', '12', 'Santo Domingo de La Capilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060613', 'distrito', '06', '06', '13', 'Santo Tomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060614', 'distrito', '06', '06', '14', 'Socota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060615', 'distrito', '06', '06', '15', 'Toribio Casanova', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060700', 'provincia', '06', '07', '00', 'Hualgayoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060701', 'distrito', '06', '07', '01', 'Bambamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060702', 'distrito', '06', '07', '02', 'Chugur', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060703', 'distrito', '06', '07', '03', 'Hualgayoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060800', 'provincia', '06', '08', '00', 'Jaen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060801', 'distrito', '06', '08', '01', 'Jaen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060802', 'distrito', '06', '08', '02', 'Bellavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060803', 'distrito', '06', '08', '03', 'Chontali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060804', 'distrito', '06', '08', '04', 'Colasay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060805', 'distrito', '06', '08', '05', 'Huabal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060806', 'distrito', '06', '08', '06', 'Las Pirias', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060807', 'distrito', '06', '08', '07', 'Pomahuaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060808', 'distrito', '06', '08', '08', 'Pucara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060809', 'distrito', '06', '08', '09', 'Sallique', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060810', 'distrito', '06', '08', '10', 'San Felipe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060811', 'distrito', '06', '08', '11', 'San Jose del Alto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060812', 'distrito', '06', '08', '12', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060900', 'provincia', '06', '09', '00', 'San Ignacio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060901', 'distrito', '06', '09', '01', 'San Ignacio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060902', 'distrito', '06', '09', '02', 'Chirinos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060903', 'distrito', '06', '09', '03', 'Huarango', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060904', 'distrito', '06', '09', '04', 'La Coipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060905', 'distrito', '06', '09', '05', 'Namballe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060906', 'distrito', '06', '09', '06', 'San Jose de Lourdes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('060907', 'distrito', '06', '09', '07', 'Tabaconas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061000', 'provincia', '06', '10', '00', 'San Marcos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061001', 'distrito', '06', '10', '01', 'Pedro Galvez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061002', 'distrito', '06', '10', '02', 'Chancay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061003', 'distrito', '06', '10', '03', 'Eduardo Villanueva', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061004', 'distrito', '06', '10', '04', 'Gregorio Pita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061005', 'distrito', '06', '10', '05', 'Ichocan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061006', 'distrito', '06', '10', '06', 'Jose Manuel Quiroz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061007', 'distrito', '06', '10', '07', 'Jose Sabogal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061100', 'provincia', '06', '11', '00', 'San Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061101', 'distrito', '06', '11', '01', 'San Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061102', 'distrito', '06', '11', '02', 'Bolivar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061103', 'distrito', '06', '11', '03', 'Calquis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061104', 'distrito', '06', '11', '04', 'Catilluc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061105', 'distrito', '06', '11', '05', 'El Prado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061106', 'distrito', '06', '11', '06', 'La Florida', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061107', 'distrito', '06', '11', '07', 'Llapa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061108', 'distrito', '06', '11', '08', 'Nanchoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061109', 'distrito', '06', '11', '09', 'Niepos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061110', 'distrito', '06', '11', '10', 'San Gregorio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061111', 'distrito', '06', '11', '11', 'San Silvestre de Cochan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061112', 'distrito', '06', '11', '12', 'Tongod', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061113', 'distrito', '06', '11', '13', 'Union Agua Blanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061200', 'provincia', '06', '12', '00', 'San Pablo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061201', 'distrito', '06', '12', '01', 'San Pablo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061202', 'distrito', '06', '12', '02', 'San Bernardino', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061203', 'distrito', '06', '12', '03', 'San Luis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061204', 'distrito', '06', '12', '04', 'Tumbaden', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061300', 'provincia', '06', '13', '00', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061301', 'distrito', '06', '13', '01', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061302', 'distrito', '06', '13', '02', 'Andabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061303', 'distrito', '06', '13', '03', 'Catache', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061304', 'distrito', '06', '13', '04', 'Chancaybaños', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061305', 'distrito', '06', '13', '05', 'La Esperanza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061306', 'distrito', '06', '13', '06', 'Ninabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061307', 'distrito', '06', '13', '07', 'Pulan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061308', 'distrito', '06', '13', '08', 'Saucepampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061309', 'distrito', '06', '13', '09', 'Sexi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061310', 'distrito', '06', '13', '10', 'Uticyacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('061311', 'distrito', '06', '13', '11', 'Yauyucan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070000', 'departamento', '07', '00', '00', 'Callao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070100', 'provincia', '07', '01', '00', 'Callao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070101', 'distrito', '07', '01', '01', 'Callao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070102', 'distrito', '07', '01', '02', 'Bellavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070103', 'distrito', '07', '01', '03', 'Carmen de La Legua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070104', 'distrito', '07', '01', '04', 'La Perla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070105', 'distrito', '07', '01', '05', 'La Punta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070106', 'distrito', '07', '01', '06', 'Ventanilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('070107', 'distrito', '07', '01', '07', 'Mi Peru', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080000', 'departamento', '08', '00', '00', 'Cusco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080100', 'provincia', '08', '01', '00', 'Cusco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080101', 'distrito', '08', '01', '01', 'Cusco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080102', 'distrito', '08', '01', '02', 'Ccorca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080103', 'distrito', '08', '01', '03', 'Poroy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080104', 'distrito', '08', '01', '04', 'San Jeronimo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080105', 'distrito', '08', '01', '05', 'San Sebastian', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080106', 'distrito', '08', '01', '06', 'Santiago', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080107', 'distrito', '08', '01', '07', 'Saylla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080108', 'distrito', '08', '01', '08', 'Wanchaq', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080200', 'provincia', '08', '02', '00', 'Acomayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080201', 'distrito', '08', '02', '01', 'Acomayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080202', 'distrito', '08', '02', '02', 'Acopia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080203', 'distrito', '08', '02', '03', 'Acos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080204', 'distrito', '08', '02', '04', 'Mosoc Llacta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080205', 'distrito', '08', '02', '05', 'Pomacanchi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080206', 'distrito', '08', '02', '06', 'Rondocan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080207', 'distrito', '08', '02', '07', 'Sangarara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080300', 'provincia', '08', '03', '00', 'Anta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080301', 'distrito', '08', '03', '01', 'Anta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080302', 'distrito', '08', '03', '02', 'Ancahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080303', 'distrito', '08', '03', '03', 'Cachimayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080304', 'distrito', '08', '03', '04', 'Chinchaypujio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080305', 'distrito', '08', '03', '05', 'Huarocondo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080306', 'distrito', '08', '03', '06', 'Limatambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080307', 'distrito', '08', '03', '07', 'Mollepata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080308', 'distrito', '08', '03', '08', 'Pucyura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080309', 'distrito', '08', '03', '09', 'Zurite', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080400', 'provincia', '08', '04', '00', 'Calca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080401', 'distrito', '08', '04', '01', 'Calca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080402', 'distrito', '08', '04', '02', 'Coya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080403', 'distrito', '08', '04', '03', 'Lamay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080404', 'distrito', '08', '04', '04', 'Lares', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080405', 'distrito', '08', '04', '05', 'Pisac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080406', 'distrito', '08', '04', '06', 'San Salvador', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080407', 'distrito', '08', '04', '07', 'Taray', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080408', 'distrito', '08', '04', '08', 'Yanatile', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080500', 'provincia', '08', '05', '00', 'Canas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080501', 'distrito', '08', '05', '01', 'Yanaoca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080502', 'distrito', '08', '05', '02', 'Checca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080503', 'distrito', '08', '05', '03', 'Kunturkanki', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080504', 'distrito', '08', '05', '04', 'Langui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080505', 'distrito', '08', '05', '05', 'Layo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080506', 'distrito', '08', '05', '06', 'Pampamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080507', 'distrito', '08', '05', '07', 'Quehue', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080508', 'distrito', '08', '05', '08', 'Tupac Amaru', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080600', 'provincia', '08', '06', '00', 'Canchis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080601', 'distrito', '08', '06', '01', 'Sicuani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080602', 'distrito', '08', '06', '02', 'Checacupe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080603', 'distrito', '08', '06', '03', 'Combapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080604', 'distrito', '08', '06', '04', 'Marangani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080605', 'distrito', '08', '06', '05', 'Pitumarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080606', 'distrito', '08', '06', '06', 'San Pablo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080607', 'distrito', '08', '06', '07', 'San Pedro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080608', 'distrito', '08', '06', '08', 'Tinta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080700', 'provincia', '08', '07', '00', 'Chumbivilcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080701', 'distrito', '08', '07', '01', 'Santo Tomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080702', 'distrito', '08', '07', '02', 'Capacmarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080703', 'distrito', '08', '07', '03', 'Chamaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080704', 'distrito', '08', '07', '04', 'Colquemarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080705', 'distrito', '08', '07', '05', 'Livitaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080706', 'distrito', '08', '07', '06', 'Llusco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080707', 'distrito', '08', '07', '07', 'Quiñota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080708', 'distrito', '08', '07', '08', 'Velille', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080800', 'provincia', '08', '08', '00', 'Espinar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080801', 'distrito', '08', '08', '01', 'Espinar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080802', 'distrito', '08', '08', '02', 'Condoroma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080803', 'distrito', '08', '08', '03', 'Coporaque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080804', 'distrito', '08', '08', '04', 'Ocoruro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080805', 'distrito', '08', '08', '05', 'Pallpata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080806', 'distrito', '08', '08', '06', 'Pichigua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080807', 'distrito', '08', '08', '07', 'Suyckutambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080808', 'distrito', '08', '08', '08', 'Alto Pichigua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080900', 'provincia', '08', '09', '00', 'La Convencion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080901', 'distrito', '08', '09', '01', 'Santa Ana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080902', 'distrito', '08', '09', '02', 'Echarate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080903', 'distrito', '08', '09', '03', 'Huayopata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080904', 'distrito', '08', '09', '04', 'Maranura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080905', 'distrito', '08', '09', '05', 'Ocobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080906', 'distrito', '08', '09', '06', 'Quellouno', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080907', 'distrito', '08', '09', '07', 'Kimbiri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080908', 'distrito', '08', '09', '08', 'Santa Teresa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080909', 'distrito', '08', '09', '09', 'Vilcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080910', 'distrito', '08', '09', '10', 'Pichari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080911', 'distrito', '08', '09', '11', 'Inkawasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080912', 'distrito', '08', '09', '12', 'Villa Virgen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080913', 'distrito', '08', '09', '13', 'Villa Kintiarina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('080914', 'distrito', '08', '09', '14', 'Megantoni', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081000', 'provincia', '08', '10', '00', 'Paruro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081001', 'distrito', '08', '10', '01', 'Paruro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081002', 'distrito', '08', '10', '02', 'Accha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081003', 'distrito', '08', '10', '03', 'Ccapi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081004', 'distrito', '08', '10', '04', 'Colcha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081005', 'distrito', '08', '10', '05', 'Huanoquite', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081006', 'distrito', '08', '10', '06', 'Omacha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081007', 'distrito', '08', '10', '07', 'Paccaritambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081008', 'distrito', '08', '10', '08', 'Pillpinto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081009', 'distrito', '08', '10', '09', 'Yaurisque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081100', 'provincia', '08', '11', '00', 'Paucartambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081101', 'distrito', '08', '11', '01', 'Paucartambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081102', 'distrito', '08', '11', '02', 'Caicay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081103', 'distrito', '08', '11', '03', 'Challabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081104', 'distrito', '08', '11', '04', 'Colquepata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081105', 'distrito', '08', '11', '05', 'Huancarani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081106', 'distrito', '08', '11', '06', 'Kosñipata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081200', 'provincia', '08', '12', '00', 'Quispicanchi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081201', 'distrito', '08', '12', '01', 'Urcos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081202', 'distrito', '08', '12', '02', 'Andahuaylillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081203', 'distrito', '08', '12', '03', 'Camanti', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081204', 'distrito', '08', '12', '04', 'Ccarhuayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081205', 'distrito', '08', '12', '05', 'Ccatca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081206', 'distrito', '08', '12', '06', 'Cusipata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081207', 'distrito', '08', '12', '07', 'Huaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081208', 'distrito', '08', '12', '08', 'Lucre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081209', 'distrito', '08', '12', '09', 'Marcapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081210', 'distrito', '08', '12', '10', 'Ocongate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081211', 'distrito', '08', '12', '11', 'Oropesa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081212', 'distrito', '08', '12', '12', 'Quiquijana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081300', 'provincia', '08', '13', '00', 'Urubamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081301', 'distrito', '08', '13', '01', 'Urubamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081302', 'distrito', '08', '13', '02', 'Chinchero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081303', 'distrito', '08', '13', '03', 'Huayllabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081304', 'distrito', '08', '13', '04', 'Machupicchu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081305', 'distrito', '08', '13', '05', 'Maras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081306', 'distrito', '08', '13', '06', 'Ollantaytambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('081307', 'distrito', '08', '13', '07', 'Yucay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090000', 'departamento', '09', '00', '00', 'Huancavelica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090100', 'provincia', '09', '01', '00', 'Huancavelica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090101', 'distrito', '09', '01', '01', 'Huancavelica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090102', 'distrito', '09', '01', '02', 'Acobambilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090103', 'distrito', '09', '01', '03', 'Acoria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090104', 'distrito', '09', '01', '04', 'Conayca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090105', 'distrito', '09', '01', '05', 'Cuenca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090106', 'distrito', '09', '01', '06', 'Huachocolpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090107', 'distrito', '09', '01', '07', 'Huayllahuara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090108', 'distrito', '09', '01', '08', 'Izcuchaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090109', 'distrito', '09', '01', '09', 'Laria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090110', 'distrito', '09', '01', '10', 'Manta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090111', 'distrito', '09', '01', '11', 'Mariscal Caceres', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090112', 'distrito', '09', '01', '12', 'Moya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090113', 'distrito', '09', '01', '13', 'Nuevo Occoro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090114', 'distrito', '09', '01', '14', 'Palca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090115', 'distrito', '09', '01', '15', 'Pilchaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090116', 'distrito', '09', '01', '16', 'Vilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090117', 'distrito', '09', '01', '17', 'Yauli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090118', 'distrito', '09', '01', '18', 'Ascension', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090119', 'distrito', '09', '01', '19', 'Huando', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090200', 'provincia', '09', '02', '00', 'Acobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090201', 'distrito', '09', '02', '01', 'Acobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090202', 'distrito', '09', '02', '02', 'Andabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090203', 'distrito', '09', '02', '03', 'Anta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090204', 'distrito', '09', '02', '04', 'Caja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090205', 'distrito', '09', '02', '05', 'Marcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090206', 'distrito', '09', '02', '06', 'Paucara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090207', 'distrito', '09', '02', '07', 'Pomacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090208', 'distrito', '09', '02', '08', 'Rosario', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090300', 'provincia', '09', '03', '00', 'Angaraes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090301', 'distrito', '09', '03', '01', 'Lircay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090302', 'distrito', '09', '03', '02', 'Anchonga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090303', 'distrito', '09', '03', '03', 'Callanmarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090304', 'distrito', '09', '03', '04', 'Ccochaccasa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090305', 'distrito', '09', '03', '05', 'Chincho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090306', 'distrito', '09', '03', '06', 'Congalla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090307', 'distrito', '09', '03', '07', 'Huanca-Huanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090308', 'distrito', '09', '03', '08', 'Huayllay Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090309', 'distrito', '09', '03', '09', 'Julcamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090310', 'distrito', '09', '03', '10', 'San Antonio de Antaparco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090311', 'distrito', '09', '03', '11', 'Santo Tomas de Pata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090312', 'distrito', '09', '03', '12', 'Secclla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090400', 'provincia', '09', '04', '00', 'Castrovirreyna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090401', 'distrito', '09', '04', '01', 'Castrovirreyna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090402', 'distrito', '09', '04', '02', 'Arma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090403', 'distrito', '09', '04', '03', 'Aurahua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090404', 'distrito', '09', '04', '04', 'Capillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090405', 'distrito', '09', '04', '05', 'Chupamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090406', 'distrito', '09', '04', '06', 'Cocas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090407', 'distrito', '09', '04', '07', 'Huachos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090408', 'distrito', '09', '04', '08', 'Huamatambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090409', 'distrito', '09', '04', '09', 'Mollepampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090410', 'distrito', '09', '04', '10', 'San Juan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090411', 'distrito', '09', '04', '11', 'Santa Ana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090412', 'distrito', '09', '04', '12', 'Tantara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090413', 'distrito', '09', '04', '13', 'Ticrapo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090500', 'provincia', '09', '05', '00', 'Churcampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090501', 'distrito', '09', '05', '01', 'Churcampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090502', 'distrito', '09', '05', '02', 'Anco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090503', 'distrito', '09', '05', '03', 'Chinchihuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090504', 'distrito', '09', '05', '04', 'El Carmen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090505', 'distrito', '09', '05', '05', 'La Merced', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090506', 'distrito', '09', '05', '06', 'Locroja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090507', 'distrito', '09', '05', '07', 'Paucarbamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090508', 'distrito', '09', '05', '08', 'San Miguel de Mayocc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090509', 'distrito', '09', '05', '09', 'San Pedro de Coris', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090510', 'distrito', '09', '05', '10', 'Pachamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090511', 'distrito', '09', '05', '11', 'Cosme', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090600', 'provincia', '09', '06', '00', 'Huaytara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090601', 'distrito', '09', '06', '01', 'Huaytara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090602', 'distrito', '09', '06', '02', 'Ayavi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090603', 'distrito', '09', '06', '03', 'Cordova', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090604', 'distrito', '09', '06', '04', 'Huayacundo Arma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090605', 'distrito', '09', '06', '05', 'Laramarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090606', 'distrito', '09', '06', '06', 'Ocoyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090607', 'distrito', '09', '06', '07', 'Pilpichaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090608', 'distrito', '09', '06', '08', 'Querco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090609', 'distrito', '09', '06', '09', 'Quito-Arma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090610', 'distrito', '09', '06', '10', 'San Antonio de Cusicancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090611', 'distrito', '09', '06', '11', 'San Francisco de Sangayaico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090612', 'distrito', '09', '06', '12', 'San Isidro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090613', 'distrito', '09', '06', '13', 'Santiago de Chocorvos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090614', 'distrito', '09', '06', '14', 'Santiago de Quirahuara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090615', 'distrito', '09', '06', '15', 'Santo Domingo de Capillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090616', 'distrito', '09', '06', '16', 'Tambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090700', 'provincia', '09', '07', '00', 'Tayacaja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090701', 'distrito', '09', '07', '01', 'Pampas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090702', 'distrito', '09', '07', '02', 'Acostambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090703', 'distrito', '09', '07', '03', 'Acraquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090704', 'distrito', '09', '07', '04', 'Ahuaycha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090705', 'distrito', '09', '07', '05', 'Colcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090706', 'distrito', '09', '07', '06', 'Daniel Hernandez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090707', 'distrito', '09', '07', '07', 'Huachocolpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090709', 'distrito', '09', '07', '09', 'Huaribamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090710', 'distrito', '09', '07', '10', 'Ñahuimpuquio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090711', 'distrito', '09', '07', '11', 'Pazos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090713', 'distrito', '09', '07', '13', 'Quishuar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090714', 'distrito', '09', '07', '14', 'Salcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090715', 'distrito', '09', '07', '15', 'Salcahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090716', 'distrito', '09', '07', '16', 'San Marcos de Rocchac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090717', 'distrito', '09', '07', '17', 'Surcubamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090718', 'distrito', '09', '07', '18', 'Tintay Puncu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090719', 'distrito', '09', '07', '19', 'Quichuas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090720', 'distrito', '09', '07', '20', 'Andaymarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090721', 'distrito', '09', '07', '21', 'Roble', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090722', 'distrito', '09', '07', '22', 'Pichos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('090723', 'distrito', '09', '07', '23', 'Santiago de Túcuma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100000', 'departamento', '10', '00', '00', 'Huanuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100100', 'provincia', '10', '01', '00', 'Huanuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100101', 'distrito', '10', '01', '01', 'Huanuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100102', 'distrito', '10', '01', '02', 'Amarilis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100103', 'distrito', '10', '01', '03', 'Chinchao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100104', 'distrito', '10', '01', '04', 'Churubamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100105', 'distrito', '10', '01', '05', 'Margos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100106', 'distrito', '10', '01', '06', 'Quisqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100107', 'distrito', '10', '01', '07', 'San Francisco de Cayran', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100108', 'distrito', '10', '01', '08', 'San Pedro de Chaulan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100109', 'distrito', '10', '01', '09', 'Santa Maria del Valle', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100110', 'distrito', '10', '01', '10', 'Yarumayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100111', 'distrito', '10', '01', '11', 'Pillco Marca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100112', 'distrito', '10', '01', '12', 'Yacus', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100113', 'distrito', '10', '01', '13', 'San Pablo de Pillao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100200', 'provincia', '10', '02', '00', 'Ambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100201', 'distrito', '10', '02', '01', 'Ambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100202', 'distrito', '10', '02', '02', 'Cayna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100203', 'distrito', '10', '02', '03', 'Colpas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100204', 'distrito', '10', '02', '04', 'Conchamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100205', 'distrito', '10', '02', '05', 'Huacar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100206', 'distrito', '10', '02', '06', 'San Francisco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100207', 'distrito', '10', '02', '07', 'San Rafael', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100208', 'distrito', '10', '02', '08', 'Tomay Kichwa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100300', 'provincia', '10', '03', '00', 'Dos de Mayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100301', 'distrito', '10', '03', '01', 'La Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100307', 'distrito', '10', '03', '07', 'Chuquis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100311', 'distrito', '10', '03', '11', 'Marias', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100313', 'distrito', '10', '03', '13', 'Pachas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100316', 'distrito', '10', '03', '16', 'Quivilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100317', 'distrito', '10', '03', '17', 'Ripan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100321', 'distrito', '10', '03', '21', 'Shunqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100322', 'distrito', '10', '03', '22', 'Sillapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100323', 'distrito', '10', '03', '23', 'Yanas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100400', 'provincia', '10', '04', '00', 'Huacaybamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100401', 'distrito', '10', '04', '01', 'Huacaybamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100402', 'distrito', '10', '04', '02', 'Canchabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100403', 'distrito', '10', '04', '03', 'Cochabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100404', 'distrito', '10', '04', '04', 'Pinra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100500', 'provincia', '10', '05', '00', 'Huamalies', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100501', 'distrito', '10', '05', '01', 'Llata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100502', 'distrito', '10', '05', '02', 'Arancay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100503', 'distrito', '10', '05', '03', 'Chavin de Pariarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100504', 'distrito', '10', '05', '04', 'Jacas Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100505', 'distrito', '10', '05', '05', 'Jircan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100506', 'distrito', '10', '05', '06', 'Miraflores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100507', 'distrito', '10', '05', '07', 'Monzon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100508', 'distrito', '10', '05', '08', 'Punchao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100509', 'distrito', '10', '05', '09', 'Puños', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100510', 'distrito', '10', '05', '10', 'Singa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100511', 'distrito', '10', '05', '11', 'Tantamayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100600', 'provincia', '10', '06', '00', 'Leoncio Prado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100601', 'distrito', '10', '06', '01', 'Rupa-Rupa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100602', 'distrito', '10', '06', '02', 'Daniel Alomias Robles', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100603', 'distrito', '10', '06', '03', 'Hermilio Valdizan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100604', 'distrito', '10', '06', '04', 'Jose Crespo y Castillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100605', 'distrito', '10', '06', '05', 'Luyando', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100606', 'distrito', '10', '06', '06', 'Mariano Damaso Beraun', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100607', 'distrito', '10', '06', '07', 'Pucayacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100608', 'distrito', '10', '06', '08', 'Castillo Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100609', 'distrito', '10', '06', '09', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100610', 'distrito', '10', '06', '10', 'Santo Domingo de Anda', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100700', 'provincia', '10', '07', '00', 'Marañon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100701', 'distrito', '10', '07', '01', 'Huacrachuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100702', 'distrito', '10', '07', '02', 'Cholon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100703', 'distrito', '10', '07', '03', 'San Buenaventura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100704', 'distrito', '10', '07', '04', 'La Morada', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100705', 'distrito', '10', '07', '05', 'Santa Rosa de Alto Yanajanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100800', 'provincia', '10', '08', '00', 'Pachitea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100801', 'distrito', '10', '08', '01', 'Panao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100802', 'distrito', '10', '08', '02', 'Chaglla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100803', 'distrito', '10', '08', '03', 'Molino', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100804', 'distrito', '10', '08', '04', 'Umari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100900', 'provincia', '10', '09', '00', 'Puerto Inca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100901', 'distrito', '10', '09', '01', 'Puerto Inca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100902', 'distrito', '10', '09', '02', 'Codo del Pozuzo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100903', 'distrito', '10', '09', '03', 'Honoria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100904', 'distrito', '10', '09', '04', 'Tournavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('100905', 'distrito', '10', '09', '05', 'Yuyapichis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101000', 'provincia', '10', '10', '00', 'Lauricocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101001', 'distrito', '10', '10', '01', 'Jesus', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101002', 'distrito', '10', '10', '02', 'Baños', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101003', 'distrito', '10', '10', '03', 'Jivia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101004', 'distrito', '10', '10', '04', 'Queropalca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101005', 'distrito', '10', '10', '05', 'Rondos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101006', 'distrito', '10', '10', '06', 'San Francisco de Asis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101007', 'distrito', '10', '10', '07', 'San Miguel de Cauri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101100', 'provincia', '10', '11', '00', 'Yarowilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101101', 'distrito', '10', '11', '01', 'Chavinillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101102', 'distrito', '10', '11', '02', 'Cahuac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101103', 'distrito', '10', '11', '03', 'Chacabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101104', 'distrito', '10', '11', '04', 'Aparicio Pomares', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101105', 'distrito', '10', '11', '05', 'Jacas Chico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101106', 'distrito', '10', '11', '06', 'Obas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101107', 'distrito', '10', '11', '07', 'Pampamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('101108', 'distrito', '10', '11', '08', 'Choras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110000', 'departamento', '11', '00', '00', 'Ica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110100', 'provincia', '11', '01', '00', 'Ica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110101', 'distrito', '11', '01', '01', 'Ica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110102', 'distrito', '11', '01', '02', 'La Tinguiña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110103', 'distrito', '11', '01', '03', 'Los Aquijes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110104', 'distrito', '11', '01', '04', 'Ocucaje', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110105', 'distrito', '11', '01', '05', 'Pachacutec', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110106', 'distrito', '11', '01', '06', 'Parcona', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110107', 'distrito', '11', '01', '07', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110108', 'distrito', '11', '01', '08', 'Salas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110109', 'distrito', '11', '01', '09', 'San Jose de los Molinos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110110', 'distrito', '11', '01', '10', 'San Juan Bautista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110111', 'distrito', '11', '01', '11', 'Santiago', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110112', 'distrito', '11', '01', '12', 'Subtanjalla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110113', 'distrito', '11', '01', '13', 'Tate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110114', 'distrito', '11', '01', '14', 'Yauca del Rosario', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110200', 'provincia', '11', '02', '00', 'Chincha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110201', 'distrito', '11', '02', '01', 'Chincha Alta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110202', 'distrito', '11', '02', '02', 'Alto Laran', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110203', 'distrito', '11', '02', '03', 'Chavin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110204', 'distrito', '11', '02', '04', 'Chincha Baja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110205', 'distrito', '11', '02', '05', 'El Carmen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110206', 'distrito', '11', '02', '06', 'Grocio Prado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110207', 'distrito', '11', '02', '07', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110208', 'distrito', '11', '02', '08', 'San Juan de Yanac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110209', 'distrito', '11', '02', '09', 'San Pedro de Huacarpana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110210', 'distrito', '11', '02', '10', 'Sunampe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110211', 'distrito', '11', '02', '11', 'Tambo de Mora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110300', 'provincia', '11', '03', '00', 'Nazca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110301', 'distrito', '11', '03', '01', 'Nazca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110302', 'distrito', '11', '03', '02', 'Changuillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110303', 'distrito', '11', '03', '03', 'El Ingenio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110304', 'distrito', '11', '03', '04', 'Marcona', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110305', 'distrito', '11', '03', '05', 'Vista Alegre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110400', 'provincia', '11', '04', '00', 'Palpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110401', 'distrito', '11', '04', '01', 'Palpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110402', 'distrito', '11', '04', '02', 'Llipata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110403', 'distrito', '11', '04', '03', 'Rio Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110404', 'distrito', '11', '04', '04', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110405', 'distrito', '11', '04', '05', 'Tibillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110500', 'provincia', '11', '05', '00', 'Pisco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110501', 'distrito', '11', '05', '01', 'Pisco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110502', 'distrito', '11', '05', '02', 'Huancano', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110503', 'distrito', '11', '05', '03', 'Humay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110504', 'distrito', '11', '05', '04', 'Icod_dependencia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110505', 'distrito', '11', '05', '05', 'Paracas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110506', 'distrito', '11', '05', '06', 'San Andres', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110507', 'distrito', '11', '05', '07', 'San Clemente', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('110508', 'distrito', '11', '05', '08', 'Tupac Amaru Inca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120000', 'departamento', '12', '00', '00', 'Junin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120100', 'provincia', '12', '01', '00', 'Huancayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120101', 'distrito', '12', '01', '01', 'Huancayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120104', 'distrito', '12', '01', '04', 'Carhuacallanga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120105', 'distrito', '12', '01', '05', 'Chacapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120106', 'distrito', '12', '01', '06', 'Chicche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120107', 'distrito', '12', '01', '07', 'Chilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120108', 'distrito', '12', '01', '08', 'Chongos Alto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120111', 'distrito', '12', '01', '11', 'Chupuro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120112', 'distrito', '12', '01', '12', 'Colca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120113', 'distrito', '12', '01', '13', 'Cullhuas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120114', 'distrito', '12', '01', '14', 'El Tambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120116', 'distrito', '12', '01', '16', 'Huacrapuquio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120117', 'distrito', '12', '01', '17', 'Hualhuas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120119', 'distrito', '12', '01', '19', 'Huancan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120120', 'distrito', '12', '01', '20', 'Huasicancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120121', 'distrito', '12', '01', '21', 'Huayucachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120122', 'distrito', '12', '01', '22', 'Ingenio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120124', 'distrito', '12', '01', '24', 'Pariahuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120125', 'distrito', '12', '01', '25', 'Pilcomayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120126', 'distrito', '12', '01', '26', 'Pucara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120127', 'distrito', '12', '01', '27', 'Quichuay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120128', 'distrito', '12', '01', '28', 'Quilcas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120129', 'distrito', '12', '01', '29', 'San Agustin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120130', 'distrito', '12', '01', '30', 'San Jeronimo de Tunan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120132', 'distrito', '12', '01', '32', 'Saño', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120133', 'distrito', '12', '01', '33', 'Sapallanga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120134', 'distrito', '12', '01', '34', 'Sicaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120135', 'distrito', '12', '01', '35', 'Santo Domingo de Acobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120136', 'distrito', '12', '01', '36', 'Viques', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120200', 'provincia', '12', '02', '00', 'Concepcion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120201', 'distrito', '12', '02', '01', 'Concepcion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120202', 'distrito', '12', '02', '02', 'Aco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120203', 'distrito', '12', '02', '03', 'Andamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120204', 'distrito', '12', '02', '04', 'Chambara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120205', 'distrito', '12', '02', '05', 'Cochas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120206', 'distrito', '12', '02', '06', 'Comas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120207', 'distrito', '12', '02', '07', 'Heroinas Toledo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120208', 'distrito', '12', '02', '08', 'Manzanares', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120209', 'distrito', '12', '02', '09', 'Mariscal Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120210', 'distrito', '12', '02', '10', 'Matahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120211', 'distrito', '12', '02', '11', 'Mito', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120212', 'distrito', '12', '02', '12', 'Nueve de Julio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120213', 'distrito', '12', '02', '13', 'Orcotuna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120214', 'distrito', '12', '02', '14', 'San Jose de Quero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120215', 'distrito', '12', '02', '15', 'Santa Rosa de Ocopa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120300', 'provincia', '12', '03', '00', 'Chanchamayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120301', 'distrito', '12', '03', '01', 'Chanchamayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120302', 'distrito', '12', '03', '02', 'Perene', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120303', 'distrito', '12', '03', '03', 'Pichanaqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120304', 'distrito', '12', '03', '04', 'San Luis de Shuaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120305', 'distrito', '12', '03', '05', 'San Ramon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120306', 'distrito', '12', '03', '06', 'Vitoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120400', 'provincia', '12', '04', '00', 'Jauja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120401', 'distrito', '12', '04', '01', 'Jauja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120402', 'distrito', '12', '04', '02', 'Acolla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120403', 'distrito', '12', '04', '03', 'Apata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120404', 'distrito', '12', '04', '04', 'Ataura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120405', 'distrito', '12', '04', '05', 'Canchayllo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120406', 'distrito', '12', '04', '06', 'Curicaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120407', 'distrito', '12', '04', '07', 'El Mantaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120408', 'distrito', '12', '04', '08', 'Huamali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120409', 'distrito', '12', '04', '09', 'Huaripampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120410', 'distrito', '12', '04', '10', 'Huertas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120411', 'distrito', '12', '04', '11', 'Janjaillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120412', 'distrito', '12', '04', '12', 'Julcan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120413', 'distrito', '12', '04', '13', 'Leonor Ordoñez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120414', 'distrito', '12', '04', '14', 'Llocllapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120415', 'distrito', '12', '04', '15', 'Marco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120416', 'distrito', '12', '04', '16', 'Masma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120417', 'distrito', '12', '04', '17', 'Masma Chicche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120418', 'distrito', '12', '04', '18', 'Molinos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120419', 'distrito', '12', '04', '19', 'Monobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120420', 'distrito', '12', '04', '20', 'Muqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120421', 'distrito', '12', '04', '21', 'Muquiyauyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120422', 'distrito', '12', '04', '22', 'Paca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120423', 'distrito', '12', '04', '23', 'Paccha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120424', 'distrito', '12', '04', '24', 'Pancan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120425', 'distrito', '12', '04', '25', 'Parco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120426', 'distrito', '12', '04', '26', 'Pomacancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120427', 'distrito', '12', '04', '27', 'Ricran', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120428', 'distrito', '12', '04', '28', 'San Lorenzo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120429', 'distrito', '12', '04', '29', 'San Pedro de Chunan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120430', 'distrito', '12', '04', '30', 'Sausa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120431', 'distrito', '12', '04', '31', 'Sincos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120432', 'distrito', '12', '04', '32', 'Tunan Marca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120433', 'distrito', '12', '04', '33', 'Yauli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120434', 'distrito', '12', '04', '34', 'Yauyos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120500', 'provincia', '12', '05', '00', 'Junin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120501', 'distrito', '12', '05', '01', 'Junin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120502', 'distrito', '12', '05', '02', 'Carhuamayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120503', 'distrito', '12', '05', '03', 'Ondores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120504', 'distrito', '12', '05', '04', 'Ulcumayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120600', 'provincia', '12', '06', '00', 'Satipo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120601', 'distrito', '12', '06', '01', 'Satipo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120602', 'distrito', '12', '06', '02', 'Coviriali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120603', 'distrito', '12', '06', '03', 'Llaylla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120604', 'distrito', '12', '06', '04', 'Mazamari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120605', 'distrito', '12', '06', '05', 'Pampa Hermosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120606', 'distrito', '12', '06', '06', 'Pangoa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120607', 'distrito', '12', '06', '07', 'Rio Negro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120608', 'distrito', '12', '06', '08', 'Rio Tambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120609', 'distrito', '12', '06', '09', 'Vizcatán del Ene', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120700', 'provincia', '12', '07', '00', 'Tarma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120701', 'distrito', '12', '07', '01', 'Tarma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120702', 'distrito', '12', '07', '02', 'Acobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120703', 'distrito', '12', '07', '03', 'Huaricolca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120704', 'distrito', '12', '07', '04', 'Huasahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120705', 'distrito', '12', '07', '05', 'La Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120706', 'distrito', '12', '07', '06', 'Palca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120707', 'distrito', '12', '07', '07', 'Palcamayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120708', 'distrito', '12', '07', '08', 'San Pedro de Cajas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120709', 'distrito', '12', '07', '09', 'Tapo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120800', 'provincia', '12', '08', '00', 'Yauli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120801', 'distrito', '12', '08', '01', 'La Oroya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120802', 'distrito', '12', '08', '02', 'Chacapalpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120803', 'distrito', '12', '08', '03', 'Huay-Huay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120804', 'distrito', '12', '08', '04', 'Marcapomacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120805', 'distrito', '12', '08', '05', 'Morococha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120806', 'distrito', '12', '08', '06', 'Paccha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120807', 'distrito', '12', '08', '07', 'Santa Barbara de Carhuacayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120808', 'distrito', '12', '08', '08', 'Santa Rosa de Sacco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120809', 'distrito', '12', '08', '09', 'Suitucancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120810', 'distrito', '12', '08', '10', 'Yauli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120900', 'provincia', '12', '09', '00', 'Chupaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120901', 'distrito', '12', '09', '01', 'Chupaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120902', 'distrito', '12', '09', '02', 'Ahuac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120903', 'distrito', '12', '09', '03', 'Chongos Bajo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120904', 'distrito', '12', '09', '04', 'Huachac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120905', 'distrito', '12', '09', '05', 'Huamancaca Chico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120906', 'distrito', '12', '09', '06', 'San Juan de Yscos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120907', 'distrito', '12', '09', '07', 'San Juan de Jarpa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120908', 'distrito', '12', '09', '08', 'Tres de Diciembre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('120909', 'distrito', '12', '09', '09', 'Yanacancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130000', 'departamento', '13', '00', '00', 'La Libertad', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130100', 'provincia', '13', '01', '00', 'Trujillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130101', 'distrito', '13', '01', '01', 'Trujillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130102', 'distrito', '13', '01', '02', 'El Porvenir', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130103', 'distrito', '13', '01', '03', 'Florencia de Mora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130104', 'distrito', '13', '01', '04', 'Huanchaco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130105', 'distrito', '13', '01', '05', 'La Esperanza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130106', 'distrito', '13', '01', '06', 'Laredo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130107', 'distrito', '13', '01', '07', 'Moche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130108', 'distrito', '13', '01', '08', 'Poroto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130109', 'distrito', '13', '01', '09', 'Salaverry', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130110', 'distrito', '13', '01', '10', 'Simbal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130111', 'distrito', '13', '01', '11', 'Victor Larco Herrera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130200', 'provincia', '13', '02', '00', 'Ascope', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130201', 'distrito', '13', '02', '01', 'Ascope', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130202', 'distrito', '13', '02', '02', 'Chicama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130203', 'distrito', '13', '02', '03', 'Chocope', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130204', 'distrito', '13', '02', '04', 'Magdalena de Cao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130205', 'distrito', '13', '02', '05', 'Paijan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130206', 'distrito', '13', '02', '06', 'Razuri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130207', 'distrito', '13', '02', '07', 'Santiago de Cao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130208', 'distrito', '13', '02', '08', 'Casa Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130300', 'provincia', '13', '03', '00', 'Bolivar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130301', 'distrito', '13', '03', '01', 'Bolivar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130302', 'distrito', '13', '03', '02', 'Bambamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130303', 'distrito', '13', '03', '03', 'Condormarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130304', 'distrito', '13', '03', '04', 'Longotea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130305', 'distrito', '13', '03', '05', 'Uchumarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130306', 'distrito', '13', '03', '06', 'Ucuncha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130400', 'provincia', '13', '04', '00', 'Chepen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130401', 'distrito', '13', '04', '01', 'Chepen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130402', 'distrito', '13', '04', '02', 'Pacanga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130403', 'distrito', '13', '04', '03', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130500', 'provincia', '13', '05', '00', 'Julcan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130501', 'distrito', '13', '05', '01', 'Julcan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130502', 'distrito', '13', '05', '02', 'Calamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130503', 'distrito', '13', '05', '03', 'Carabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130504', 'distrito', '13', '05', '04', 'Huaso', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130600', 'provincia', '13', '06', '00', 'Otuzco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130601', 'distrito', '13', '06', '01', 'Otuzco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130602', 'distrito', '13', '06', '02', 'Agallpampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130604', 'distrito', '13', '06', '04', 'Charat', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130605', 'distrito', '13', '06', '05', 'Huaranchal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130606', 'distrito', '13', '06', '06', 'La Cuesta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130608', 'distrito', '13', '06', '08', 'Mache', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130610', 'distrito', '13', '06', '10', 'Paranday', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130611', 'distrito', '13', '06', '11', 'Salpo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130613', 'distrito', '13', '06', '13', 'Sinsicap', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130614', 'distrito', '13', '06', '14', 'Usquil', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130700', 'provincia', '13', '07', '00', 'Pacasmayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130701', 'distrito', '13', '07', '01', 'San Pedro de Lloc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130702', 'distrito', '13', '07', '02', 'Guadalupe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130703', 'distrito', '13', '07', '03', 'Jequetepeque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130704', 'distrito', '13', '07', '04', 'Pacasmayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130705', 'distrito', '13', '07', '05', 'San Jose', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130800', 'provincia', '13', '08', '00', 'Pataz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130801', 'distrito', '13', '08', '01', 'Tayabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130802', 'distrito', '13', '08', '02', 'Buldibuyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130803', 'distrito', '13', '08', '03', 'Chillia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130804', 'distrito', '13', '08', '04', 'Huancaspata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130805', 'distrito', '13', '08', '05', 'Huaylillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130806', 'distrito', '13', '08', '06', 'Huayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130807', 'distrito', '13', '08', '07', 'Ongon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130808', 'distrito', '13', '08', '08', 'Parcoy', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130809', 'distrito', '13', '08', '09', 'Pataz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130810', 'distrito', '13', '08', '10', 'Pias', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130811', 'distrito', '13', '08', '11', 'Santiago de Challas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130812', 'distrito', '13', '08', '12', 'Taurija', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130813', 'distrito', '13', '08', '13', 'Urpay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130900', 'provincia', '13', '09', '00', 'Sanchez Carrion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130901', 'distrito', '13', '09', '01', 'Huamachuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130902', 'distrito', '13', '09', '02', 'Chugay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130903', 'distrito', '13', '09', '03', 'Cochorco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130904', 'distrito', '13', '09', '04', 'Curgos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130905', 'distrito', '13', '09', '05', 'Marcabal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130906', 'distrito', '13', '09', '06', 'Sanagoran', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130907', 'distrito', '13', '09', '07', 'Sarin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('130908', 'distrito', '13', '09', '08', 'Sartimbamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131000', 'provincia', '13', '10', '00', 'Santiago de Chuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131001', 'distrito', '13', '10', '01', 'Santiago de Chuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131002', 'distrito', '13', '10', '02', 'Angasmarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131003', 'distrito', '13', '10', '03', 'Cachicadan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131004', 'distrito', '13', '10', '04', 'Mollebamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131005', 'distrito', '13', '10', '05', 'Mollepata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131006', 'distrito', '13', '10', '06', 'Quiruvilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131007', 'distrito', '13', '10', '07', 'Santa Cruz de Chuca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131008', 'distrito', '13', '10', '08', 'Sitabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131100', 'provincia', '13', '11', '00', 'Gran Chimu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131101', 'distrito', '13', '11', '01', 'Cascas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131102', 'distrito', '13', '11', '02', 'Lucma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131103', 'distrito', '13', '11', '03', 'Compin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131104', 'distrito', '13', '11', '04', 'Sayapullo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131200', 'provincia', '13', '12', '00', 'Viru', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131201', 'distrito', '13', '12', '01', 'Viru', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131202', 'distrito', '13', '12', '02', 'Chao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('131203', 'distrito', '13', '12', '03', 'Guadalupito', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140000', 'departamento', '14', '00', '00', 'Lambayeque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140100', 'provincia', '14', '01', '00', 'Chiclayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140101', 'distrito', '14', '01', '01', 'Chiclayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140102', 'distrito', '14', '01', '02', 'Chongoyape', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140103', 'distrito', '14', '01', '03', 'Eten', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140104', 'distrito', '14', '01', '04', 'Eten Puerto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140105', 'distrito', '14', '01', '05', 'Jose Leonardo Ortiz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140106', 'distrito', '14', '01', '06', 'La Victoria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140107', 'distrito', '14', '01', '07', 'Lagunas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140108', 'distrito', '14', '01', '08', 'Monsefu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140109', 'distrito', '14', '01', '09', 'Nueva Arica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140110', 'distrito', '14', '01', '10', 'Oyotun', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140111', 'distrito', '14', '01', '11', 'Picsi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140112', 'distrito', '14', '01', '12', 'Pimentel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140113', 'distrito', '14', '01', '13', 'Reque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140114', 'distrito', '14', '01', '14', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140115', 'distrito', '14', '01', '15', 'Saña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140116', 'distrito', '14', '01', '16', 'Cayalti', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140117', 'distrito', '14', '01', '17', 'Patapo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140118', 'distrito', '14', '01', '18', 'Pomalca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140119', 'distrito', '14', '01', '19', 'Pucala', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140120', 'distrito', '14', '01', '20', 'Tuman', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140200', 'provincia', '14', '02', '00', 'Ferreñafe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140201', 'distrito', '14', '02', '01', 'Ferreñafe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140202', 'distrito', '14', '02', '02', 'Cañaris', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140203', 'distrito', '14', '02', '03', 'Incahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140204', 'distrito', '14', '02', '04', 'Manuel Antonio Mesones Muro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140205', 'distrito', '14', '02', '05', 'Pitipo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140206', 'distrito', '14', '02', '06', 'Pueblo Nuevo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140300', 'provincia', '14', '03', '00', 'Lambayeque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140301', 'distrito', '14', '03', '01', 'Lambayeque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140302', 'distrito', '14', '03', '02', 'Chochope', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140303', 'distrito', '14', '03', '03', 'Illimo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140304', 'distrito', '14', '03', '04', 'Jayanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140305', 'distrito', '14', '03', '05', 'Mochumi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140306', 'distrito', '14', '03', '06', 'Morrope', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140307', 'distrito', '14', '03', '07', 'Motupe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140308', 'distrito', '14', '03', '08', 'Olmos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140309', 'distrito', '14', '03', '09', 'Pacora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140310', 'distrito', '14', '03', '10', 'Salas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140311', 'distrito', '14', '03', '11', 'San Jose', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('140312', 'distrito', '14', '03', '12', 'Tucume', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150000', 'departamento', '15', '00', '00', 'Lima', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150100', 'provincia', '15', '01', '00', 'Lima', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150101', 'distrito', '15', '01', '01', 'Lima', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150102', 'distrito', '15', '01', '02', 'Ancon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150103', 'distrito', '15', '01', '03', 'Ate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150104', 'distrito', '15', '01', '04', 'Barranco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150105', 'distrito', '15', '01', '05', 'Breña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150106', 'distrito', '15', '01', '06', 'Carabayllo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150107', 'distrito', '15', '01', '07', 'Chaclacayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150108', 'distrito', '15', '01', '08', 'Chorrillos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150109', 'distrito', '15', '01', '09', 'Cieneguilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150110', 'distrito', '15', '01', '10', 'Comas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150111', 'distrito', '15', '01', '11', 'El Agustino', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150112', 'distrito', '15', '01', '12', 'Icod_dependencia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150113', 'distrito', '15', '01', '13', 'Jesus Maria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150114', 'distrito', '15', '01', '14', 'La Molina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150115', 'distrito', '15', '01', '15', 'La Victoria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150116', 'distrito', '15', '01', '16', 'Lince', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150117', 'distrito', '15', '01', '17', 'Los Olivos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150118', 'distrito', '15', '01', '18', 'Lurigancho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150119', 'distrito', '15', '01', '19', 'Lurin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150120', 'distrito', '15', '01', '20', 'Magdalena del Mar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150121', 'distrito', '15', '01', '21', 'Pueblo Libre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150122', 'distrito', '15', '01', '22', 'Miraflores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150123', 'distrito', '15', '01', '23', 'Pachacamac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150124', 'distrito', '15', '01', '24', 'Pucusana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150125', 'distrito', '15', '01', '25', 'Puente Piedra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150126', 'distrito', '15', '01', '26', 'Punta Hermosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150127', 'distrito', '15', '01', '27', 'Punta Negra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150128', 'distrito', '15', '01', '28', 'Rimac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150129', 'distrito', '15', '01', '29', 'San Bartolo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150130', 'distrito', '15', '01', '30', 'San Borja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150131', 'distrito', '15', '01', '31', 'San Isidro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150132', 'distrito', '15', '01', '32', 'San Juan de Lurigancho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150133', 'distrito', '15', '01', '33', 'San Juan de Miraflores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150134', 'distrito', '15', '01', '34', 'San Luis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150135', 'distrito', '15', '01', '35', 'San Martin de Porres', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150136', 'distrito', '15', '01', '36', 'San Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150137', 'distrito', '15', '01', '37', 'Santa Anita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150138', 'distrito', '15', '01', '38', 'Santa Maria del Mar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150139', 'distrito', '15', '01', '39', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150140', 'distrito', '15', '01', '40', 'Santiago de Surco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150141', 'distrito', '15', '01', '41', 'Surquillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150142', 'distrito', '15', '01', '42', 'Villa El Salvador', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150143', 'distrito', '15', '01', '43', 'Villa Maria del Triunfo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150200', 'provincia', '15', '02', '00', 'Barranca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150201', 'distrito', '15', '02', '01', 'Barranca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150202', 'distrito', '15', '02', '02', 'Paramonga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150203', 'distrito', '15', '02', '03', 'Pativilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150204', 'distrito', '15', '02', '04', 'Supe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150205', 'distrito', '15', '02', '05', 'Supe Puerto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150300', 'provincia', '15', '03', '00', 'Cajatambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150301', 'distrito', '15', '03', '01', 'Cajatambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150302', 'distrito', '15', '03', '02', 'Copa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150303', 'distrito', '15', '03', '03', 'Gorgor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150304', 'distrito', '15', '03', '04', 'Huancapon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150305', 'distrito', '15', '03', '05', 'Manas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150400', 'provincia', '15', '04', '00', 'Canta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150401', 'distrito', '15', '04', '01', 'Canta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150402', 'distrito', '15', '04', '02', 'Arahuay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150403', 'distrito', '15', '04', '03', 'Huamantanga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150404', 'distrito', '15', '04', '04', 'Huaros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150405', 'distrito', '15', '04', '05', 'Lachaqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150406', 'distrito', '15', '04', '06', 'San Buenaventura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150407', 'distrito', '15', '04', '07', 'Santa Rosa de Quives', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150500', 'provincia', '15', '05', '00', 'Cañete', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150501', 'distrito', '15', '05', '01', 'San Vicente de Cañete', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150502', 'distrito', '15', '05', '02', 'Asia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150503', 'distrito', '15', '05', '03', 'Calango', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150504', 'distrito', '15', '05', '04', 'Cerro Azul', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150505', 'distrito', '15', '05', '05', 'Chilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150506', 'distrito', '15', '05', '06', 'Coayllo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150507', 'distrito', '15', '05', '07', 'Imperial', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150508', 'distrito', '15', '05', '08', 'Lunahuana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150509', 'distrito', '15', '05', '09', 'Mala', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150510', 'distrito', '15', '05', '10', 'Nuevo Imperial', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150511', 'distrito', '15', '05', '11', 'Pacaran', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150512', 'distrito', '15', '05', '12', 'Quilmana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150513', 'distrito', '15', '05', '13', 'San Antonio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150514', 'distrito', '15', '05', '14', 'San Luis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150515', 'distrito', '15', '05', '15', 'Santa Cruz de Flores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150516', 'distrito', '15', '05', '16', 'Zuñiga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150600', 'provincia', '15', '06', '00', 'Huaral', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150601', 'distrito', '15', '06', '01', 'Huaral', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150602', 'distrito', '15', '06', '02', 'Atavillos Alto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150603', 'distrito', '15', '06', '03', 'Atavillos Bajo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150604', 'distrito', '15', '06', '04', 'Aucallama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150605', 'distrito', '15', '06', '05', 'Chancay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150606', 'distrito', '15', '06', '06', 'Ihuari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150607', 'distrito', '15', '06', '07', 'Lampian', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150608', 'distrito', '15', '06', '08', 'Pacaraos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150609', 'distrito', '15', '06', '09', 'San Miguel de Acos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150610', 'distrito', '15', '06', '10', 'Santa Cruz de Andamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150611', 'distrito', '15', '06', '11', 'Sumbilca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150612', 'distrito', '15', '06', '12', 'Veintisiete de Noviembre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150700', 'provincia', '15', '07', '00', 'Huarochiri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150701', 'distrito', '15', '07', '01', 'Matucana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150702', 'distrito', '15', '07', '02', 'Antioquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150703', 'distrito', '15', '07', '03', 'Callahuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150704', 'distrito', '15', '07', '04', 'Carampoma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150705', 'distrito', '15', '07', '05', 'Chicla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150706', 'distrito', '15', '07', '06', 'Cuenca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150707', 'distrito', '15', '07', '07', 'Huachupampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150708', 'distrito', '15', '07', '08', 'Huanza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150709', 'distrito', '15', '07', '09', 'Huarochiri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150710', 'distrito', '15', '07', '10', 'Lahuaytambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150711', 'distrito', '15', '07', '11', 'Langa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150712', 'distrito', '15', '07', '12', 'Laraos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150713', 'distrito', '15', '07', '13', 'Mariatana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150714', 'distrito', '15', '07', '14', 'Ricardo Palma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150715', 'distrito', '15', '07', '15', 'San Andres de Tupicocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150716', 'distrito', '15', '07', '16', 'San Antonio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150717', 'distrito', '15', '07', '17', 'San Bartolome', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150718', 'distrito', '15', '07', '18', 'San Damian', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150719', 'distrito', '15', '07', '19', 'San Juan de Iris', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150720', 'distrito', '15', '07', '20', 'San Juan de Tantaranche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150721', 'distrito', '15', '07', '21', 'San Lorenzo de Quinti', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150722', 'distrito', '15', '07', '22', 'San Mateo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150723', 'distrito', '15', '07', '23', 'San Mateo de Otao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150724', 'distrito', '15', '07', '24', 'San Pedro de Casta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150725', 'distrito', '15', '07', '25', 'San Pedro de Huancayre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150726', 'distrito', '15', '07', '26', 'Sangallaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150727', 'distrito', '15', '07', '27', 'Santa Cruz de Cocachacra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150728', 'distrito', '15', '07', '28', 'Santa Eulalia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150729', 'distrito', '15', '07', '29', 'Santiago de Anchucaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150730', 'distrito', '15', '07', '30', 'Santiago de Tuna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150731', 'distrito', '15', '07', '31', 'Santo Domingo de los Olleros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150732', 'distrito', '15', '07', '32', 'Surco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150800', 'provincia', '15', '08', '00', 'Huaura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150801', 'distrito', '15', '08', '01', 'Huacho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150802', 'distrito', '15', '08', '02', 'Ambar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150803', 'distrito', '15', '08', '03', 'Caleta de Carquin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150804', 'distrito', '15', '08', '04', 'Checras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150805', 'distrito', '15', '08', '05', 'Hualmay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150806', 'distrito', '15', '08', '06', 'Huaura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150807', 'distrito', '15', '08', '07', 'Leoncio Prado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150808', 'distrito', '15', '08', '08', 'Paccho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150809', 'distrito', '15', '08', '09', 'Santa Leonor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150810', 'distrito', '15', '08', '10', 'Santa Maria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150811', 'distrito', '15', '08', '11', 'Sayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150812', 'distrito', '15', '08', '12', 'Vegueta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150900', 'provincia', '15', '09', '00', 'Oyon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150901', 'distrito', '15', '09', '01', 'Oyon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150902', 'distrito', '15', '09', '02', 'Andajes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150903', 'distrito', '15', '09', '03', 'Caujul', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150904', 'distrito', '15', '09', '04', 'Cochamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150905', 'distrito', '15', '09', '05', 'Navan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('150906', 'distrito', '15', '09', '06', 'Pachangara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151000', 'provincia', '15', '10', '00', 'Yauyos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151001', 'distrito', '15', '10', '01', 'Yauyos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151002', 'distrito', '15', '10', '02', 'Alis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151003', 'distrito', '15', '10', '03', 'Ayauca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151004', 'distrito', '15', '10', '04', 'Ayaviri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151005', 'distrito', '15', '10', '05', 'Azangaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151006', 'distrito', '15', '10', '06', 'Cacra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151007', 'distrito', '15', '10', '07', 'Carania', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151008', 'distrito', '15', '10', '08', 'Catahuasi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151009', 'distrito', '15', '10', '09', 'Chocos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151010', 'distrito', '15', '10', '10', 'Cochas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151011', 'distrito', '15', '10', '11', 'Colonia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151012', 'distrito', '15', '10', '12', 'Hongos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151013', 'distrito', '15', '10', '13', 'Huampara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151014', 'distrito', '15', '10', '14', 'Huancaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151015', 'distrito', '15', '10', '15', 'Huangascar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151016', 'distrito', '15', '10', '16', 'Huantan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151017', 'distrito', '15', '10', '17', 'Huañec', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151018', 'distrito', '15', '10', '18', 'Laraos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151019', 'distrito', '15', '10', '19', 'Lincha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151020', 'distrito', '15', '10', '20', 'Madean', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151021', 'distrito', '15', '10', '21', 'Miraflores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151022', 'distrito', '15', '10', '22', 'Omas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151023', 'distrito', '15', '10', '23', 'Putinza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151024', 'distrito', '15', '10', '24', 'Quinches', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151025', 'distrito', '15', '10', '25', 'Quinocay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151026', 'distrito', '15', '10', '26', 'San Joaquin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151027', 'distrito', '15', '10', '27', 'San Pedro de Pilas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151028', 'distrito', '15', '10', '28', 'Tanta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151029', 'distrito', '15', '10', '29', 'Tauripampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151030', 'distrito', '15', '10', '30', 'Tomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151031', 'distrito', '15', '10', '31', 'Tupe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151032', 'distrito', '15', '10', '32', 'Viñac', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('151033', 'distrito', '15', '10', '33', 'Vitis', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160000', 'departamento', '16', '00', '00', 'Loreto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160100', 'provincia', '16', '01', '00', 'Maynas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160101', 'distrito', '16', '01', '01', 'Iquitos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160102', 'distrito', '16', '01', '02', 'Alto Nanay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160103', 'distrito', '16', '01', '03', 'Fernando Lores', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160104', 'distrito', '16', '01', '04', 'Indiana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160105', 'distrito', '16', '01', '05', 'Las Amazonas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160106', 'distrito', '16', '01', '06', 'Mazan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160107', 'distrito', '16', '01', '07', 'Napo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160108', 'distrito', '16', '01', '08', 'Punchana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160110', 'distrito', '16', '01', '10', 'Torres Causana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160112', 'distrito', '16', '01', '12', 'Belen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160113', 'distrito', '16', '01', '13', 'San Juan Bautista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160200', 'provincia', '16', '02', '00', 'Alto Amazonas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160201', 'distrito', '16', '02', '01', 'Yurimaguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160202', 'distrito', '16', '02', '02', 'Balsapuerto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160205', 'distrito', '16', '02', '05', 'Jeberos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160206', 'distrito', '16', '02', '06', 'Lagunas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160210', 'distrito', '16', '02', '10', 'Santa Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160211', 'distrito', '16', '02', '11', 'Teniente Cesar Lopez Rojas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160300', 'provincia', '16', '03', '00', 'Loreto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160301', 'distrito', '16', '03', '01', 'Nauta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160302', 'distrito', '16', '03', '02', 'Parinari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160303', 'distrito', '16', '03', '03', 'Tigre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160304', 'distrito', '16', '03', '04', 'Trompeteros', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160305', 'distrito', '16', '03', '05', 'Urarinas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160400', 'provincia', '16', '04', '00', 'Mariscal Ramon Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160401', 'distrito', '16', '04', '01', 'Ramon Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160402', 'distrito', '16', '04', '02', 'Pebas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160403', 'distrito', '16', '04', '03', 'Yavari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160404', 'distrito', '16', '04', '04', 'San Pablo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160500', 'provincia', '16', '05', '00', 'Requena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160501', 'distrito', '16', '05', '01', 'Requena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160502', 'distrito', '16', '05', '02', 'Alto Tapiche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160503', 'distrito', '16', '05', '03', 'Capelo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160504', 'distrito', '16', '05', '04', 'Emilio San Martin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160505', 'distrito', '16', '05', '05', 'Maquia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160506', 'distrito', '16', '05', '06', 'Puinahua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160507', 'distrito', '16', '05', '07', 'Saquena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160508', 'distrito', '16', '05', '08', 'Soplin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160509', 'distrito', '16', '05', '09', 'Tapiche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160510', 'distrito', '16', '05', '10', 'Jenaro Herrera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160511', 'distrito', '16', '05', '11', 'Yaquerana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160600', 'provincia', '16', '06', '00', 'Ucayali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160601', 'distrito', '16', '06', '01', 'Contamana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160602', 'distrito', '16', '06', '02', 'Inahuaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160603', 'distrito', '16', '06', '03', 'Padre Marquez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160604', 'distrito', '16', '06', '04', 'Pampa Hermosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160605', 'distrito', '16', '06', '05', 'Sarayacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160606', 'distrito', '16', '06', '06', 'Vargas Guerra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160700', 'provincia', '16', '07', '00', 'Datem del Marañon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160701', 'distrito', '16', '07', '01', 'Barranca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160702', 'distrito', '16', '07', '02', 'Cahuapanas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160703', 'distrito', '16', '07', '03', 'Manseriche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160704', 'distrito', '16', '07', '04', 'Morona', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160705', 'distrito', '16', '07', '05', 'Pastaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160706', 'distrito', '16', '07', '06', 'Andoas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160801', 'distrito', '16', '08', '01', 'Putumayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160802', 'distrito', '16', '08', '02', 'Rosa Panduro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160803', 'distrito', '16', '08', '03', 'Teniente Manuel Clavero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('160804', 'distrito', '16', '08', '04', 'Yaguas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170000', 'departamento', '17', '00', '00', 'Madre de Dios', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170100', 'provincia', '17', '01', '00', 'Tambopata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170101', 'distrito', '17', '01', '01', 'Tambopata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170102', 'distrito', '17', '01', '02', 'Inambari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170103', 'distrito', '17', '01', '03', 'Las Piedras', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170104', 'distrito', '17', '01', '04', 'Laberinto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170200', 'provincia', '17', '02', '00', 'Manu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170201', 'distrito', '17', '02', '01', 'Manu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170202', 'distrito', '17', '02', '02', 'Fitzcarrald', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170203', 'distrito', '17', '02', '03', 'Madre de Dios', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170204', 'distrito', '17', '02', '04', 'Huepetuhe', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170300', 'provincia', '17', '03', '00', 'Tahuamanu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170301', 'distrito', '17', '03', '01', 'Iñapari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170302', 'distrito', '17', '03', '02', 'Iberia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('170303', 'distrito', '17', '03', '03', 'Tahuamanu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180000', 'departamento', '18', '00', '00', 'Moquegua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180100', 'provincia', '18', '01', '00', 'Mariscal Nieto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180101', 'distrito', '18', '01', '01', 'Moquegua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180102', 'distrito', '18', '01', '02', 'Carumas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180103', 'distrito', '18', '01', '03', 'Cuchumbaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180104', 'distrito', '18', '01', '04', 'Samegua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180105', 'distrito', '18', '01', '05', 'San Cristobal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180106', 'distrito', '18', '01', '06', 'Torata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180200', 'provincia', '18', '02', '00', 'General Sanchez Cerr', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180201', 'distrito', '18', '02', '01', 'Omate', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180202', 'distrito', '18', '02', '02', 'Chojata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180203', 'distrito', '18', '02', '03', 'Coalaque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180204', 'distrito', '18', '02', '04', 'Ichuña', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180205', 'distrito', '18', '02', '05', 'La Capilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180206', 'distrito', '18', '02', '06', 'Lloque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180207', 'distrito', '18', '02', '07', 'Matalaque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180208', 'distrito', '18', '02', '08', 'Puquina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180209', 'distrito', '18', '02', '09', 'Quinistaquillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180210', 'distrito', '18', '02', '10', 'Ubinas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180211', 'distrito', '18', '02', '11', 'Yunga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180300', 'provincia', '18', '03', '00', 'Ilo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180301', 'distrito', '18', '03', '01', 'Ilo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180302', 'distrito', '18', '03', '02', 'El Algarrobal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('180303', 'distrito', '18', '03', '03', 'Pacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190000', 'departamento', '19', '00', '00', 'Pasco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190100', 'provincia', '19', '01', '00', 'Pasco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190101', 'distrito', '19', '01', '01', 'Chaupimarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190102', 'distrito', '19', '01', '02', 'Huachon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190103', 'distrito', '19', '01', '03', 'Huariaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190104', 'distrito', '19', '01', '04', 'Huayllay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190105', 'distrito', '19', '01', '05', 'Ninacaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190106', 'distrito', '19', '01', '06', 'Pallanchacra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190107', 'distrito', '19', '01', '07', 'Paucartambo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190108', 'distrito', '19', '01', '08', 'San Francisco de Asis de Yarusyacan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190109', 'distrito', '19', '01', '09', 'Simon Bolivar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190110', 'distrito', '19', '01', '10', 'Ticlacayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190111', 'distrito', '19', '01', '11', 'Tinyahuarco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190112', 'distrito', '19', '01', '12', 'Vicco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190113', 'distrito', '19', '01', '13', 'Yanacancha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190200', 'provincia', '19', '02', '00', 'Daniel Alcides Carri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190201', 'distrito', '19', '02', '01', 'Yanahuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190202', 'distrito', '19', '02', '02', 'Chacayan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190203', 'distrito', '19', '02', '03', 'Goyllarisquizga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190204', 'distrito', '19', '02', '04', 'Paucar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190205', 'distrito', '19', '02', '05', 'San Pedro de Pillao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190206', 'distrito', '19', '02', '06', 'Santa Ana de Tusi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190207', 'distrito', '19', '02', '07', 'Tapuc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190208', 'distrito', '19', '02', '08', 'Vilcabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190300', 'provincia', '19', '03', '00', 'Oxapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190301', 'distrito', '19', '03', '01', 'Oxapampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190302', 'distrito', '19', '03', '02', 'Chontabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190303', 'distrito', '19', '03', '03', 'Huancabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190304', 'distrito', '19', '03', '04', 'Palcazu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190305', 'distrito', '19', '03', '05', 'Pozuzo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190306', 'distrito', '19', '03', '06', 'Puerto Bermudez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190307', 'distrito', '19', '03', '07', 'Villa Rica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('190308', 'distrito', '19', '03', '08', 'Constitución', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200000', 'departamento', '20', '00', '00', 'Piura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200100', 'provincia', '20', '01', '00', 'Piura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200101', 'distrito', '20', '01', '01', 'Piura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200104', 'distrito', '20', '01', '04', 'Castilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200105', 'distrito', '20', '01', '05', 'Catacaos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200107', 'distrito', '20', '01', '07', 'Cura Mori', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200108', 'distrito', '20', '01', '08', 'El Tallan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200109', 'distrito', '20', '01', '09', 'La Arena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200110', 'distrito', '20', '01', '10', 'La Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200111', 'distrito', '20', '01', '11', 'Las Lomas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200114', 'distrito', '20', '01', '14', 'Tambo Grande', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200115', 'distrito', '20', '01', '15', '26 de Octubre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200200', 'provincia', '20', '02', '00', 'Ayabaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200201', 'distrito', '20', '02', '01', 'Ayabaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200202', 'distrito', '20', '02', '02', 'Frias', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200203', 'distrito', '20', '02', '03', 'Jilili', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200204', 'distrito', '20', '02', '04', 'Lagunas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200205', 'distrito', '20', '02', '05', 'Montero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200206', 'distrito', '20', '02', '06', 'Pacaipampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200207', 'distrito', '20', '02', '07', 'Paimas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200208', 'distrito', '20', '02', '08', 'Sapillica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200209', 'distrito', '20', '02', '09', 'Sicchez', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200210', 'distrito', '20', '02', '10', 'Suyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200300', 'provincia', '20', '03', '00', 'Huancabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200301', 'distrito', '20', '03', '01', 'Huancabamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200302', 'distrito', '20', '03', '02', 'Canchaque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200303', 'distrito', '20', '03', '03', 'El Carmen de La Frontera', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200304', 'distrito', '20', '03', '04', 'Huarmaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200305', 'distrito', '20', '03', '05', 'Lalaquiz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200306', 'distrito', '20', '03', '06', 'San Miguel de El Faique', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200307', 'distrito', '20', '03', '07', 'Sondor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200308', 'distrito', '20', '03', '08', 'Sondorillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200400', 'provincia', '20', '04', '00', 'Morropon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200401', 'distrito', '20', '04', '01', 'Chulucanas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200402', 'distrito', '20', '04', '02', 'Buenos Aires', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200403', 'distrito', '20', '04', '03', 'Chalaco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200404', 'distrito', '20', '04', '04', 'La Matanza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200405', 'distrito', '20', '04', '05', 'Morropon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200406', 'distrito', '20', '04', '06', 'Salitral', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200407', 'distrito', '20', '04', '07', 'San Juan de Bigote', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200408', 'distrito', '20', '04', '08', 'Santa Catalina de Mossa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200409', 'distrito', '20', '04', '09', 'Santo Domingo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200410', 'distrito', '20', '04', '10', 'Yamango', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200500', 'provincia', '20', '05', '00', 'Paita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200501', 'distrito', '20', '05', '01', 'Paita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200502', 'distrito', '20', '05', '02', 'Amotape', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200503', 'distrito', '20', '05', '03', 'Arenal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200504', 'distrito', '20', '05', '04', 'Colan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200505', 'distrito', '20', '05', '05', 'La Huaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200506', 'distrito', '20', '05', '06', 'Tamarindo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200507', 'distrito', '20', '05', '07', 'Vichayal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200600', 'provincia', '20', '06', '00', 'Sullana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200601', 'distrito', '20', '06', '01', 'Sullana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200602', 'distrito', '20', '06', '02', 'Bellavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200603', 'distrito', '20', '06', '03', 'Ignacio Escudero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200604', 'distrito', '20', '06', '04', 'Lancones', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200605', 'distrito', '20', '06', '05', 'Marcavelica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200606', 'distrito', '20', '06', '06', 'Miguel Checa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200607', 'distrito', '20', '06', '07', 'Querecotillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200608', 'distrito', '20', '06', '08', 'Salitral', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200700', 'provincia', '20', '07', '00', 'Talara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200701', 'distrito', '20', '07', '01', 'Pariñas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200702', 'distrito', '20', '07', '02', 'El Alto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200703', 'distrito', '20', '07', '03', 'La Brea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200704', 'distrito', '20', '07', '04', 'Lobitos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200705', 'distrito', '20', '07', '05', 'Los Organos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200706', 'distrito', '20', '07', '06', 'Mancora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200800', 'provincia', '20', '08', '00', 'Sechura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200801', 'distrito', '20', '08', '01', 'Sechura', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200802', 'distrito', '20', '08', '02', 'Bellavista de La Union', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200803', 'distrito', '20', '08', '03', 'Bernal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200804', 'distrito', '20', '08', '04', 'Cristo Nos Valga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200805', 'distrito', '20', '08', '05', 'Vice', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('200806', 'distrito', '20', '08', '06', 'Rinconada Llicuar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210000', 'departamento', '21', '00', '00', 'Puno', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210100', 'provincia', '21', '01', '00', 'Puno', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210101', 'distrito', '21', '01', '01', 'Puno', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210102', 'distrito', '21', '01', '02', 'Acora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210103', 'distrito', '21', '01', '03', 'Amantani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210104', 'distrito', '21', '01', '04', 'Atuncolla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210105', 'distrito', '21', '01', '05', 'Capachica', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210106', 'distrito', '21', '01', '06', 'Chucuito', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210107', 'distrito', '21', '01', '07', 'Coata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210108', 'distrito', '21', '01', '08', 'Huata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210109', 'distrito', '21', '01', '09', 'Mañazo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210110', 'distrito', '21', '01', '10', 'Paucarcolla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210111', 'distrito', '21', '01', '11', 'Pichacani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210112', 'distrito', '21', '01', '12', 'Plateria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210113', 'distrito', '21', '01', '13', 'San Antonio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210114', 'distrito', '21', '01', '14', 'Tiquillaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210115', 'distrito', '21', '01', '15', 'Vilque', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210200', 'provincia', '21', '02', '00', 'Azangaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210201', 'distrito', '21', '02', '01', 'Azangaro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210202', 'distrito', '21', '02', '02', 'Achaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210203', 'distrito', '21', '02', '03', 'Arapa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210204', 'distrito', '21', '02', '04', 'Asillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210205', 'distrito', '21', '02', '05', 'Caminaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210206', 'distrito', '21', '02', '06', 'Chupa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210207', 'distrito', '21', '02', '07', 'Jose Domingo Choquehuanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210208', 'distrito', '21', '02', '08', 'Muñani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210209', 'distrito', '21', '02', '09', 'Potoni', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210210', 'distrito', '21', '02', '10', 'Saman', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210211', 'distrito', '21', '02', '11', 'San Anton', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210212', 'distrito', '21', '02', '12', 'San Jose', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210213', 'distrito', '21', '02', '13', 'San Juan de Salinas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210214', 'distrito', '21', '02', '14', 'Santiago de Pupuja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210215', 'distrito', '21', '02', '15', 'Tirapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210300', 'provincia', '21', '03', '00', 'Carabaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210301', 'distrito', '21', '03', '01', 'Macusani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210302', 'distrito', '21', '03', '02', 'Ajoyani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210303', 'distrito', '21', '03', '03', 'Ayapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210304', 'distrito', '21', '03', '04', 'Coasa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210305', 'distrito', '21', '03', '05', 'Corani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210306', 'distrito', '21', '03', '06', 'Crucero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210307', 'distrito', '21', '03', '07', 'Ituata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210308', 'distrito', '21', '03', '08', 'Ollachea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210309', 'distrito', '21', '03', '09', 'San Gaban', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210310', 'distrito', '21', '03', '10', 'Usicayos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210400', 'provincia', '21', '04', '00', 'Chucuito', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210401', 'distrito', '21', '04', '01', 'Juli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210402', 'distrito', '21', '04', '02', 'Desaguadero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210403', 'distrito', '21', '04', '03', 'Huacullani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210404', 'distrito', '21', '04', '04', 'Kelluyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210405', 'distrito', '21', '04', '05', 'Pisacoma', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210406', 'distrito', '21', '04', '06', 'Pomata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210407', 'distrito', '21', '04', '07', 'Zepita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210500', 'provincia', '21', '05', '00', 'El Collao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210501', 'distrito', '21', '05', '01', 'Ilave', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210502', 'distrito', '21', '05', '02', 'Capazo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210503', 'distrito', '21', '05', '03', 'Pilcuyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210504', 'distrito', '21', '05', '04', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210505', 'distrito', '21', '05', '05', 'Conduriri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210600', 'provincia', '21', '06', '00', 'Huancane', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210601', 'distrito', '21', '06', '01', 'Huancane', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210602', 'distrito', '21', '06', '02', 'Cojata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210603', 'distrito', '21', '06', '03', 'Huatasani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210604', 'distrito', '21', '06', '04', 'Inchupalla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210605', 'distrito', '21', '06', '05', 'Pusi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210606', 'distrito', '21', '06', '06', 'Rosaspata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210607', 'distrito', '21', '06', '07', 'Taraco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210608', 'distrito', '21', '06', '08', 'Vilque Chico', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210700', 'provincia', '21', '07', '00', 'Lampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210701', 'distrito', '21', '07', '01', 'Lampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210702', 'distrito', '21', '07', '02', 'Cabanilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210703', 'distrito', '21', '07', '03', 'Calapuja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210704', 'distrito', '21', '07', '04', 'Nicasio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210705', 'distrito', '21', '07', '05', 'Ocuviri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210706', 'distrito', '21', '07', '06', 'Palca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210707', 'distrito', '21', '07', '07', 'Paratia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210708', 'distrito', '21', '07', '08', 'Pucara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210709', 'distrito', '21', '07', '09', 'Santa Lucia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210710', 'distrito', '21', '07', '10', 'Vilavila', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210800', 'provincia', '21', '08', '00', 'Melgar', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210801', 'distrito', '21', '08', '01', 'Ayaviri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210802', 'distrito', '21', '08', '02', 'Antauta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210803', 'distrito', '21', '08', '03', 'Cupi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210804', 'distrito', '21', '08', '04', 'Llalli', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210805', 'distrito', '21', '08', '05', 'Macari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210806', 'distrito', '21', '08', '06', 'Nuñoa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210807', 'distrito', '21', '08', '07', 'Orurillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210808', 'distrito', '21', '08', '08', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210809', 'distrito', '21', '08', '09', 'Umachiri', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210900', 'provincia', '21', '09', '00', 'Moho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210901', 'distrito', '21', '09', '01', 'Moho', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210902', 'distrito', '21', '09', '02', 'Conima', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210903', 'distrito', '21', '09', '03', 'Huayrapata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('210904', 'distrito', '21', '09', '04', 'Tilali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211000', 'provincia', '21', '10', '00', 'San Antonio de Putin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211001', 'distrito', '21', '10', '01', 'Putina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211002', 'distrito', '21', '10', '02', 'Ananea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211003', 'distrito', '21', '10', '03', 'Pedro Vilca Apaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211004', 'distrito', '21', '10', '04', 'Quilcapuncu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211005', 'distrito', '21', '10', '05', 'Sina', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211100', 'provincia', '21', '11', '00', 'San Roman', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211101', 'distrito', '21', '11', '01', 'Juliaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211102', 'distrito', '21', '11', '02', 'Cabana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211103', 'distrito', '21', '11', '03', 'Cabanillas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211104', 'distrito', '21', '11', '04', 'Caracoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211105', 'distrito', '21', '11', '05', 'San Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211200', 'provincia', '21', '12', '00', 'Sandia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211201', 'distrito', '21', '12', '01', 'Sandia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211202', 'distrito', '21', '12', '02', 'Cuyocuyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211203', 'distrito', '21', '12', '03', 'Limbani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211204', 'distrito', '21', '12', '04', 'Patambuco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211205', 'distrito', '21', '12', '05', 'Phara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211206', 'distrito', '21', '12', '06', 'Quiaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211207', 'distrito', '21', '12', '07', 'San Juan del Oro', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211208', 'distrito', '21', '12', '08', 'Yanahuaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211209', 'distrito', '21', '12', '09', 'Alto Inambari', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211210', 'distrito', '21', '12', '10', 'San Pedro de Putina Punco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211300', 'provincia', '21', '13', '00', 'Yunguyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211301', 'distrito', '21', '13', '01', 'Yunguyo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211302', 'distrito', '21', '13', '02', 'Anapia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211303', 'distrito', '21', '13', '03', 'Copani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211304', 'distrito', '21', '13', '04', 'Cuturapi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211305', 'distrito', '21', '13', '05', 'Ollaraya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211306', 'distrito', '21', '13', '06', 'Tinicachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('211307', 'distrito', '21', '13', '07', 'Unicachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220000', 'departamento', '22', '00', '00', 'San Martin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220100', 'provincia', '22', '01', '00', 'Moyobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220101', 'distrito', '22', '01', '01', 'Moyobamba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220102', 'distrito', '22', '01', '02', 'Calzada', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220103', 'distrito', '22', '01', '03', 'Habana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220104', 'distrito', '22', '01', '04', 'Jepelacio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220105', 'distrito', '22', '01', '05', 'Soritor', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220106', 'distrito', '22', '01', '06', 'Yantalo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220200', 'provincia', '22', '02', '00', 'Bellavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220201', 'distrito', '22', '02', '01', 'Bellavista', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220202', 'distrito', '22', '02', '02', 'Alto Biavo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220203', 'distrito', '22', '02', '03', 'Bajo Biavo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220204', 'distrito', '22', '02', '04', 'Huallaga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220205', 'distrito', '22', '02', '05', 'San Pablo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220206', 'distrito', '22', '02', '06', 'San Rafael', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220300', 'provincia', '22', '03', '00', 'El Dorado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220301', 'distrito', '22', '03', '01', 'San Jose de Sisa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220302', 'distrito', '22', '03', '02', 'Agua Blanca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220303', 'distrito', '22', '03', '03', 'San Martin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220304', 'distrito', '22', '03', '04', 'Santa Rosa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220305', 'distrito', '22', '03', '05', 'Shatoja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220400', 'provincia', '22', '04', '00', 'Huallaga', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220401', 'distrito', '22', '04', '01', 'Saposoa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220402', 'distrito', '22', '04', '02', 'Alto Saposoa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220403', 'distrito', '22', '04', '03', 'El Eslabon', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220404', 'distrito', '22', '04', '04', 'Piscoyacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220405', 'distrito', '22', '04', '05', 'Sacanche', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220406', 'distrito', '22', '04', '06', 'Tingo de Saposoa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220500', 'provincia', '22', '05', '00', 'Lamas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220501', 'distrito', '22', '05', '01', 'Lamas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220502', 'distrito', '22', '05', '02', 'Alonso de Alvarado', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220503', 'distrito', '22', '05', '03', 'Barranquita', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220504', 'distrito', '22', '05', '04', 'Caynarachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220505', 'distrito', '22', '05', '05', 'Cuñumbuqui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220506', 'distrito', '22', '05', '06', 'Pinto Recodo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220507', 'distrito', '22', '05', '07', 'Rumisapa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220508', 'distrito', '22', '05', '08', 'San Roque de Cumbaza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220509', 'distrito', '22', '05', '09', 'Shanao', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220510', 'distrito', '22', '05', '10', 'Tabalosos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220511', 'distrito', '22', '05', '11', 'Zapatero', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220600', 'provincia', '22', '06', '00', 'Mariscal Caceres', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220601', 'distrito', '22', '06', '01', 'Juanjui', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220602', 'distrito', '22', '06', '02', 'Campanilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220603', 'distrito', '22', '06', '03', 'Huicungo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220604', 'distrito', '22', '06', '04', 'Pachiza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220605', 'distrito', '22', '06', '05', 'Pajarillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220700', 'provincia', '22', '07', '00', 'Picota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220701', 'distrito', '22', '07', '01', 'Picota', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220702', 'distrito', '22', '07', '02', 'Buenos Aires', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220703', 'distrito', '22', '07', '03', 'Caspisapa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220704', 'distrito', '22', '07', '04', 'Pilluana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220705', 'distrito', '22', '07', '05', 'Pucacaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220706', 'distrito', '22', '07', '06', 'San Cristobal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220707', 'distrito', '22', '07', '07', 'San Hilarion', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220708', 'distrito', '22', '07', '08', 'Shamboyacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220709', 'distrito', '22', '07', '09', 'Tingo de Ponasa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220710', 'distrito', '22', '07', '10', 'Tres Unidos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220800', 'provincia', '22', '08', '00', 'Rioja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220801', 'distrito', '22', '08', '01', 'Rioja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220802', 'distrito', '22', '08', '02', 'Awajun', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220803', 'distrito', '22', '08', '03', 'Elias Soplin Vargas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220804', 'distrito', '22', '08', '04', 'Nueva Cajamarca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220805', 'distrito', '22', '08', '05', 'Pardo Miguel', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220806', 'distrito', '22', '08', '06', 'Posic', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220807', 'distrito', '22', '08', '07', 'San Fernando', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220808', 'distrito', '22', '08', '08', 'Yorongos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220809', 'distrito', '22', '08', '09', 'Yuracyacu', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220900', 'provincia', '22', '09', '00', 'San Martin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220901', 'distrito', '22', '09', '01', 'Tarapoto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220902', 'distrito', '22', '09', '02', 'Alberto Leveau', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220903', 'distrito', '22', '09', '03', 'Cacatachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220904', 'distrito', '22', '09', '04', 'Chazuta', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220905', 'distrito', '22', '09', '05', 'Chipurana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220906', 'distrito', '22', '09', '06', 'El Porvenir', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220907', 'distrito', '22', '09', '07', 'Huimbayoc', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220908', 'distrito', '22', '09', '08', 'Juan Guerra', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220909', 'distrito', '22', '09', '09', 'La Banda de Shilcayo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220910', 'distrito', '22', '09', '10', 'Morales', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220911', 'distrito', '22', '09', '11', 'Papaplaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220912', 'distrito', '22', '09', '12', 'San Antonio', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220913', 'distrito', '22', '09', '13', 'Sauce', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('220914', 'distrito', '22', '09', '14', 'Shapaja', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221000', 'provincia', '22', '10', '00', 'Tocache', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221001', 'distrito', '22', '10', '01', 'Tocache', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221002', 'distrito', '22', '10', '02', 'Nuevo Progreso', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221003', 'distrito', '22', '10', '03', 'Polvora', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221004', 'distrito', '22', '10', '04', 'Shunte', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('221005', 'distrito', '22', '10', '05', 'Uchiza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230000', 'departamento', '23', '00', '00', 'Tacna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230100', 'provincia', '23', '01', '00', 'Tacna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230101', 'distrito', '23', '01', '01', 'Tacna', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230102', 'distrito', '23', '01', '02', 'Alto de La Alianza', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230103', 'distrito', '23', '01', '03', 'Calana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230104', 'distrito', '23', '01', '04', 'Ciudad Nueva', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230105', 'distrito', '23', '01', '05', 'Inclan', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230106', 'distrito', '23', '01', '06', 'Pachia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230107', 'distrito', '23', '01', '07', 'Palca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230108', 'distrito', '23', '01', '08', 'Pocollay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230109', 'distrito', '23', '01', '09', 'Sama', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230110', 'distrito', '23', '01', '10', 'Coronel Gregorio Albarracin Lanchipa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230111', 'distrito', '23', '01', '11', 'La Yarada-Los Palos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230200', 'provincia', '23', '02', '00', 'Candarave', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230201', 'distrito', '23', '02', '01', 'Candarave', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230202', 'distrito', '23', '02', '02', 'Cairani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230203', 'distrito', '23', '02', '03', 'Camilaca', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230204', 'distrito', '23', '02', '04', 'Curibaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230205', 'distrito', '23', '02', '05', 'Huanuara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230206', 'distrito', '23', '02', '06', 'Quilahuani', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230300', 'provincia', '23', '03', '00', 'Jorge Basadre', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230301', 'distrito', '23', '03', '01', 'Locumba', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230302', 'distrito', '23', '03', '02', 'Ilabaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230303', 'distrito', '23', '03', '03', 'Ite', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230400', 'provincia', '23', '04', '00', 'Tarata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230401', 'distrito', '23', '04', '01', 'Tarata', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230402', 'distrito', '23', '04', '02', 'Heroes Albarracin', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230403', 'distrito', '23', '04', '03', 'Estique', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230404', 'distrito', '23', '04', '04', 'Estique-Pampa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230405', 'distrito', '23', '04', '05', 'Sitajara', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230406', 'distrito', '23', '04', '06', 'Susapaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230407', 'distrito', '23', '04', '07', 'Tarucachi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('230408', 'distrito', '23', '04', '08', 'Ticaco', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240000', 'departamento', '24', '00', '00', 'Tumbes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240100', 'provincia', '24', '01', '00', 'Tumbes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240101', 'distrito', '24', '01', '01', 'Tumbes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240102', 'distrito', '24', '01', '02', 'Corrales', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240103', 'distrito', '24', '01', '03', 'La Cruz', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240104', 'distrito', '24', '01', '04', 'Pampas de Hospital', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240105', 'distrito', '24', '01', '05', 'San Jacinto', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240106', 'distrito', '24', '01', '06', 'San Juan de La Virgen', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240200', 'provincia', '24', '02', '00', 'Contralmirante Villa', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240201', 'distrito', '24', '02', '01', 'Zorritos', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240202', 'distrito', '24', '02', '02', 'Casitas', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240203', 'distrito', '24', '02', '03', 'Canoas de Punta Sal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240300', 'provincia', '24', '03', '00', 'Zarumilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240301', 'distrito', '24', '03', '01', 'Zarumilla', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240302', 'distrito', '24', '03', '02', 'Aguas Verdes', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240303', 'distrito', '24', '03', '03', 'Matapalo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('240304', 'distrito', '24', '03', '04', 'Papayal', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250000', 'departamento', '25', '00', '00', 'Ucayali', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250100', 'provincia', '25', '01', '00', 'Coronel Portillo', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250101', 'distrito', '25', '01', '01', 'Calleria', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250102', 'distrito', '25', '01', '02', 'Campoverde', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250103', 'distrito', '25', '01', '03', 'Iparia', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250104', 'distrito', '25', '01', '04', 'Masisea', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250105', 'distrito', '25', '01', '05', 'Yarinacocha', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250106', 'distrito', '25', '01', '06', 'Nueva Requena', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250107', 'distrito', '25', '01', '07', 'Manantay', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250200', 'provincia', '25', '02', '00', 'Atalaya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250201', 'distrito', '25', '02', '01', 'Raymondi', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250202', 'distrito', '25', '02', '02', 'Sepahua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250203', 'distrito', '25', '02', '03', 'Tahuania', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250204', 'distrito', '25', '02', '04', 'Yurua', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250300', 'provincia', '25', '03', '00', 'Padre Abad', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250301', 'distrito', '25', '03', '01', 'Padre Abad', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250302', 'distrito', '25', '03', '02', 'Irazola', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250303', 'distrito', '25', '03', '03', 'Curimana', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250304', 'distrito', '25', '03', '04', 'Neshuya', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250305', 'distrito', '25', '03', '05', 'Alexander von Humboldt', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250400', 'provincia', '25', '04', '00', 'Purus', NULL, NULL);
INSERT INTO "public"."ubigeos" VALUES ('250401', 'distrito', '25', '04', '01', 'Purus', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(6),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "org_id" int8
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (1, 'God', 'arhyel@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, '2025-02-22 03:35:31', '2025-02-22 03:35:31', 1);
INSERT INTO "public"."users" VALUES (2, 'God 2', 'karen@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, NULL, NULL, 1);
INSERT INTO "public"."users" VALUES (3, 'Admin ACJ', 'acj_admin@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, NULL, NULL, 2);
INSERT INTO "public"."users" VALUES (4, 'Oficial ACJ', 'acj_ofi@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, NULL, NULL, 2);
INSERT INTO "public"."users" VALUES (5, 'Admin ACA', 'aca_admin@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, NULL, NULL, 3);
INSERT INTO "public"."users" VALUES (6, 'Oficial ACA', 'aca_ofi@@gmail.com', NULL, '$2y$12$mJik./bWarjghG2C4/0GduG/353DEdQDe6Zx5F133pnGENiXOdS2C', NULL, NULL, NULL, 3);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categorias_id_seq"
OWNED BY "public"."categorias"."id";
SELECT setval('"public"."categorias_id_seq"', 45, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."drivers_id_seq"
OWNED BY "public"."drivers"."id";
SELECT setval('"public"."drivers_id_seq"', 297, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."especials_id_seq"
OWNED BY "public"."especials"."id";
SELECT setval('"public"."especials_id_seq"', 58, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."events_id_seq"
OWNED BY "public"."events"."id";
SELECT setval('"public"."events_id_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_clients_id_seq"
OWNED BY "public"."oauth_clients"."id";
SELECT setval('"public"."oauth_clients_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_personal_access_clients_id_seq"
OWNED BY "public"."oauth_personal_access_clients"."id";
SELECT setval('"public"."oauth_personal_access_clients_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."opartidas_id_seq"
OWNED BY "public"."opartidas"."id";
SELECT setval('"public"."opartidas_id_seq"', 732, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."orgs_id_seq"
OWNED BY "public"."orgs"."id";
SELECT setval('"public"."orgs_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."parametros_id_seq"
OWNED BY "public"."parametros"."id";
SELECT setval('"public"."parametros_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."permissions_id_seq"
OWNED BY "public"."permissions"."id";
SELECT setval('"public"."permissions_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."personal_access_tokens_id_seq"
OWNED BY "public"."personal_access_tokens"."id";
SELECT setval('"public"."personal_access_tokens_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."roles_id_seq"
OWNED BY "public"."roles"."id";
SELECT setval('"public"."roles_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tiempos_id_seq"
OWNED BY "public"."tiempos"."id";
SELECT setval('"public"."tiempos_id_seq"', 1633, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tripulacions_id_seq"
OWNED BY "public"."tripulacions"."id";
SELECT setval('"public"."tripulacions_id_seq"', 215, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 1, true);

-- ----------------------------
-- Primary Key structure for table categorias
-- ----------------------------
ALTER TABLE "public"."categorias" ADD CONSTRAINT "pk_categorias" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table drivers
-- ----------------------------
ALTER TABLE "public"."drivers" ADD CONSTRAINT "pk_drivers" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table especials
-- ----------------------------
ALTER TABLE "public"."especials" ADD CONSTRAINT "pk_especials" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table events
-- ----------------------------
ALTER TABLE "public"."events" ADD CONSTRAINT "pk_events" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table failed_jobs
-- ----------------------------
CREATE UNIQUE INDEX "failed_jobs_uuid_unique" ON "public"."failed_jobs" USING btree (
  "uuid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "pk_failed_jobs" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "pk_migrations" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table model_has_permissions
-- ----------------------------
CREATE INDEX "model_has_permissions_model_id_model_type_index" ON "public"."model_has_permissions" USING btree (
  "model_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "model_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table model_has_permissions
-- ----------------------------
ALTER TABLE "public"."model_has_permissions" ADD CONSTRAINT "pk_model_has_permissions" PRIMARY KEY ("permission_id", "model_id", "model_type");

-- ----------------------------
-- Indexes structure for table model_has_roles
-- ----------------------------
CREATE INDEX "model_has_roles_model_id_model_type_index" ON "public"."model_has_roles" USING btree (
  "model_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "model_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table model_has_roles
-- ----------------------------
ALTER TABLE "public"."model_has_roles" ADD CONSTRAINT "pk_model_has_roles" PRIMARY KEY ("role_id", "model_id", "model_type");

-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE INDEX "oauth_access_tokens_user_id_index" ON "public"."oauth_access_tokens" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_access_tokens" ADD CONSTRAINT "pk_oauth_access_tokens" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_auth_codes
-- ----------------------------
CREATE INDEX "oauth_auth_codes_user_id_index" ON "public"."oauth_auth_codes" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE "public"."oauth_auth_codes" ADD CONSTRAINT "pk_oauth_auth_codes" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE INDEX "oauth_clients_user_id_index" ON "public"."oauth_clients" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE "public"."oauth_clients" ADD CONSTRAINT "pk_oauth_clients" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE "public"."oauth_personal_access_clients" ADD CONSTRAINT "pk_oauth_personal_access_clients" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE INDEX "oauth_refresh_tokens_access_token_id_index" ON "public"."oauth_refresh_tokens" USING btree (
  "access_token_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_refresh_tokens" ADD CONSTRAINT "pk_oauth_refresh_tokens" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table opartidas
-- ----------------------------
ALTER TABLE "public"."opartidas" ADD CONSTRAINT "pk_opartidas" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table orgs
-- ----------------------------
ALTER TABLE "public"."orgs" ADD CONSTRAINT "pk_orgs" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table parametros
-- ----------------------------
ALTER TABLE "public"."parametros" ADD CONSTRAINT "pk_parametros" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table password_reset_tokens
-- ----------------------------
ALTER TABLE "public"."password_reset_tokens" ADD CONSTRAINT "pk_password_reset_tokens" PRIMARY KEY ("email");

-- ----------------------------
-- Indexes structure for table permissions
-- ----------------------------
CREATE UNIQUE INDEX "permissions_name_guard_name_unique" ON "public"."permissions" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "guard_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "pk_permissions" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table personal_access_tokens
-- ----------------------------
CREATE UNIQUE INDEX "personal_access_tokens_token_unique" ON "public"."personal_access_tokens" USING btree (
  "token" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "public"."personal_access_tokens" USING btree (
  "tokenable_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tokenable_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "pk_personal_access_tokens" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role_has_permissions
-- ----------------------------
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "pk_role_has_permissions" PRIMARY KEY ("permission_id", "role_id");

-- ----------------------------
-- Indexes structure for table roles
-- ----------------------------
CREATE UNIQUE INDEX "roles_name_guard_name_unique" ON "public"."roles" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "guard_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "pk_roles" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tiempos
-- ----------------------------
ALTER TABLE "public"."tiempos" ADD CONSTRAINT "pk_tiempos" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tripulacions
-- ----------------------------
ALTER TABLE "public"."tripulacions" ADD CONSTRAINT "pk_tripulacions" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table ubigeos
-- ----------------------------
ALTER TABLE "public"."ubigeos" ADD CONSTRAINT "pk_ubigeos" PRIMARY KEY ("codigo");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE UNIQUE INDEX "users_email_unique" ON "public"."users" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "pk_users" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table categorias
-- ----------------------------
ALTER TABLE "public"."categorias" ADD CONSTRAINT "categorias_event_id_foreign" FOREIGN KEY ("event_id") REFERENCES "public"."events" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table especials
-- ----------------------------
ALTER TABLE "public"."especials" ADD CONSTRAINT "especials_event_id_foreign" FOREIGN KEY ("event_id") REFERENCES "public"."events" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table events
-- ----------------------------
ALTER TABLE "public"."events" ADD CONSTRAINT "events_org_id_foreign" FOREIGN KEY ("org_id") REFERENCES "public"."orgs" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."events" ADD CONSTRAINT "events_ubigeo_id_foreign" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("codigo") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table model_has_permissions
-- ----------------------------
ALTER TABLE "public"."model_has_permissions" ADD CONSTRAINT "model_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table model_has_roles
-- ----------------------------
ALTER TABLE "public"."model_has_roles" ADD CONSTRAINT "model_has_roles_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table opartidas
-- ----------------------------
ALTER TABLE "public"."opartidas" ADD CONSTRAINT "opartidas_event_id_foreign" FOREIGN KEY ("event_id") REFERENCES "public"."events" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."opartidas" ADD CONSTRAINT "opartidas_tripulacion_id_foreign" FOREIGN KEY ("tripulacion_id") REFERENCES "public"."tripulacions" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table orgs
-- ----------------------------
ALTER TABLE "public"."orgs" ADD CONSTRAINT "orgs_ubigeo_id_foreign" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("codigo") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table parametros
-- ----------------------------
ALTER TABLE "public"."parametros" ADD CONSTRAINT "parametros_event_id_foreign" FOREIGN KEY ("event_id") REFERENCES "public"."events" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table role_has_permissions
-- ----------------------------
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "role_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "role_has_permissions_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table tiempos
-- ----------------------------
ALTER TABLE "public"."tiempos" ADD CONSTRAINT "tiempos_especial_id_foreign" FOREIGN KEY ("especial_id") REFERENCES "public"."especials" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."tiempos" ADD CONSTRAINT "tiempos_tripulacion_id_foreign" FOREIGN KEY ("tripulacion_id") REFERENCES "public"."tripulacions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tripulacions
-- ----------------------------
ALTER TABLE "public"."tripulacions" ADD CONSTRAINT "tripulacions_event_id_foreign" FOREIGN KEY ("event_id") REFERENCES "public"."events" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."tripulacions" ADD CONSTRAINT "tripulacions_navegante_foreign" FOREIGN KEY ("navegante") REFERENCES "public"."drivers" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE "public"."tripulacions" ADD CONSTRAINT "tripulacions_piloto_foreign" FOREIGN KEY ("piloto") REFERENCES "public"."drivers" ("id") ON DELETE CASCADE ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_org_id_foreign" FOREIGN KEY ("org_id") REFERENCES "public"."orgs" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
