-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "failed_jobs" ----------------------------------
CREATE TABLE `failed_jobs`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`uuid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`connection` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`queue` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`payload` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`exception` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`failed_at` Timestamp NOT NULL DEFAULT current_timestamp(),
	PRIMARY KEY ( `id` ),
	CONSTRAINT `failed_jobs_uuid_unique` UNIQUE( `uuid` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "migrations" -----------------------------------
CREATE TABLE `migrations`( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`migration` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`batch` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- -------------------------------------------------------------


-- CREATE TABLE "password_resets" ------------------------------
CREATE TABLE `password_resets`( 
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL DEFAULT NULL )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "personal_access_tokens" -----------------------
CREATE TABLE `personal_access_tokens`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`tokenable_type` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`tokenable_id` BigInt( 20 ) UNSIGNED NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 64 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`abilities` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`last_used_at` Timestamp NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `personal_access_tokens_token_unique` UNIQUE( `token` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "registros" ------------------------------------
CREATE TABLE `registros`( 
	`id` Int( 10 ) AUTO_INCREMENT NOT NULL,
	`vehiculo_id` Int( 11 ) NOT NULL,
	`usuario_id` Int( 255 ) NOT NULL,
	`fecha_asignado` DateTime NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users`( 
	`id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email_verified_at` Timestamp NULL DEFAULT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token_login` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`last_login` DateTime NULL DEFAULT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 18;
-- -------------------------------------------------------------


-- CREATE TABLE "usuarios" -------------------------------------
CREATE TABLE `usuarios`( 
	`id` Int( 10 ) AUTO_INCREMENT NOT NULL,
	`numero_cedula` VarChar( 15 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`primer_nombre` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`segundo_nombre` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`apellidos` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`direccion` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`telefono` VarChar( 15 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`ciudad` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`perfil` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------


-- CREATE TABLE "vehiculos" ------------------------------------
CREATE TABLE `vehiculos`( 
	`id` Int( 10 ) AUTO_INCREMENT NOT NULL,
	`placa` VarChar( 10 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`color` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`marca` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`tipo` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
	`created_at` Timestamp NULL DEFAULT NULL,
	`updated_at` Timestamp NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- Dump data of "failed_jobs" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
BEGIN;

INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES 
( '1', '2014_10_12_000000_create_users_table', '1' ),
( '2', '2014_10_12_100000_create_password_resets_table', '1' ),
( '3', '2019_08_19_000000_create_failed_jobs_table', '1' ),
( '4', '2019_12_14_000001_create_personal_access_tokens_table', '1' ),
( '5', '2022_08_03_184328_create_tasks_table', '2' ),
( '6', '2022_08_03_142913_create_posts_table', '3' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "password_resets" --------------------------
-- ---------------------------------------------------------


-- Dump data of "personal_access_tokens" -------------------
-- ---------------------------------------------------------


-- Dump data of "registros" --------------------------------
BEGIN;

INSERT INTO `registros`(`id`,`vehiculo_id`,`usuario_id`,`fecha_asignado`,`created_at`,`updated_at`) VALUES 
( '2', '1', '1', NULL, '2022-08-31 02:02:27', '2022-08-31 02:02:27' ),
( '3', '2', '1', NULL, NULL, NULL ),
( '4', '3', '2', NULL, NULL, NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
BEGIN;

INSERT INTO `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`token_login`,`remember_token`,`last_login`,`created_at`,`updated_at`) VALUES 
( '1', 'josega pulido', 'joseg@gmail.com', NULL, '$2y$10$700UsSTHvNjuUO1zF5tHkeuU.YvE8TdFILTEjok90387y/sfHSRl2', 'SZ6XTTLEL6MDLXAH', NULL, NULL, '2022-07-15 19:37:49', '2022-07-16 01:27:30' ),
( '2', 'josega pulido h', 'jose@hotmail.com', NULL, '$2y$10$SHocIH4JDzibtb5ExDRI8.2hzdisKQfpW/YoOaB7DLqaja1Q699xy', 'PO5WVTAKPYHB5SMP', NULL, NULL, '2022-07-15 20:17:53', '2022-07-16 01:26:53' ),
( '3', 'martin', 'martin@mail.com', NULL, '$2y$10$Teudch11Q6nTp01uT1ZYae6CAPRfVlYWg7p4H9i6QaxuTiI2tB4me', 'DOTSCQVKTCJ56J3D', NULL, NULL, '2022-07-15 23:08:21', '2022-07-16 00:06:52' ),
( '4', 'lina', 'lina@mail.com', NULL, '$2y$10$RoVEzGOvSwsPFBzGat8p7O8UT2fXg7WPIVnwbiqOvIGDttNJtJOuu', 'T6AEQSNUXB6A54VJ', NULL, NULL, '2022-07-16 00:20:48', '2022-07-16 00:21:06' ),
( '5', 'gabriel', 'josega@gmail.com', NULL, '$2y$10$bE2RmLwpwi5EIuE3fUtp6.KKgHEOYHyAG13wTdv85k1Rwl7BPWIm6', NULL, NULL, NULL, '2022-07-16 01:43:33', '2022-07-16 01:43:33' ),
( '6', 'josgab', 'josega2@gmail.com', NULL, '$2y$10$6gFdo5ZM7jmWFCcFUV075efHmw0fpEwHLxzFhDe9IqdyZz3wgiXZG', NULL, NULL, NULL, '2022-07-16 01:57:52', '2022-07-16 01:57:52' ),
( '7', 'josega pulido', 'josega3@gmail.com', NULL, '$2y$10$RgBX5zgwRcHZHpUa/cwsBeG2dxEiENhYxtQ31KOIHfCK237So841q', NULL, NULL, NULL, '2022-07-16 02:09:19', '2022-07-16 02:09:19' ),
( '8', 'josega pulido', 'josegabriel300@gmail.com', NULL, '$2y$10$G7GM/DWIH7en1F7eH84W7O5zPpsvt2E9EB1qFvACRDr8FRDQ8Xj0C', '74KD4RGOWFZRH4DW', NULL, '2022-07-16 05:26:38', '2022-07-16 02:29:23', '2022-07-16 05:26:38' ),
( '9', 'josega pulido', 'josega300@gmail.com', NULL, '$2y$10$Bx3DOGgw7yZFkBUzD2RiUOsp.3c6f/4LI75HLfiP6PUQCxoVzC7KO', NULL, NULL, NULL, '2022-07-16 02:35:39', '2022-07-16 02:35:39' ),
( '10', 'tomas', 'tomas@mail.com', NULL, '$2y$10$bdvBAei4dR10smnecA1qLOWDnDuxGnqFcg6NEJtT3Z7F9faoRpGa2', NULL, NULL, NULL, '2022-07-16 02:36:56', '2022-07-16 02:36:56' ),
( '11', 'josega pulido', 'mail@mail.com', NULL, '$2y$10$KK6xwFFPMPS5U39qtD2g1.uHcUq5bsbH0oZMRxgBwMhnU8YKyRGeC', NULL, NULL, NULL, '2022-07-16 02:43:27', '2022-07-16 02:43:27' ),
( '12', 'carlos', 'carlos@mail.com', NULL, '$2y$10$SJ8.RV5yVK3m/1r7Umds8uaqJLbAe4DvelmknXZ53dvos7u1/HkV2', '2CVPFIUJX45VRYHA', NULL, '2022-07-16 05:56:09', '2022-07-16 05:55:24', '2022-07-16 05:56:09' ),
( '13', 'lina m', 'lina2@mail.com', NULL, '$2y$10$1MzfX2ujx.NBMPrYvlfhNekHGKMflKHJpidTEE38LWO1iIzEXp3ku', NULL, NULL, '2022-08-03 17:48:32', '2022-08-03 17:48:30', '2022-08-03 17:48:32' ),
( '14', 'jhon', 'jhondoe@mail.com', NULL, '$2y$10$PeBF6eso.H2SMlCmbqKNg.90/3k8zIcDQvQn/PCgaP3GJ6BzFrvJa', 'ESBJPXLQGIFZH5FS', NULL, '2022-08-30 19:32:19', '2022-08-30 19:27:48', '2022-08-30 19:32:19' ),
( '15', 'fulano', 'fulanito@mail.com', NULL, '$2y$10$CtmtU7kr/orc7LTqPKlHFOW.C1T39Xdc1.en1SH3ww4BZC.lyctvy', 'MFP2Z5366RFNAF63', NULL, '2022-08-30 23:51:30', '2022-08-30 23:04:11', '2022-08-31 01:24:08' ),
( '16', 'dinas', 'dinas@mail.com', NULL, '$2y$10$OW/8KLDxcmOPpmLJYGg.IeXLfRct3WhGSUcgmglM3AB9IJyjqSfAC', 'OCXDCY4RSDBAE4YK', NULL, '2022-08-31 12:05:30', '2022-08-31 01:25:00', '2022-08-31 14:48:07' ),
( '17', 'tomas', 'tomascrown@mail.com', NULL, '$2y$10$DJG..yg68syPXPPaqERtmu0qeox6/8yfnLB0H.5xRSSiBWSQup/ri', '2NVYF43NH6GJC6QY', NULL, '2022-08-31 16:46:15', '2022-08-31 14:49:12', '2022-08-31 16:46:15' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "usuarios" ---------------------------------
BEGIN;

INSERT INTO `usuarios`(`id`,`numero_cedula`,`primer_nombre`,`segundo_nombre`,`apellidos`,`direccion`,`telefono`,`ciudad`,`perfil`,`created_at`,`updated_at`) VALUES 
( '1', '16935187', 'jose', 'gabriel', 'pulido gonzalez', 'cra 75 · 10 a 122', '3215497936', 'Cali', 'Conductor', '2022-08-31 01:00:17', '2022-08-31 01:00:31' ),
( '2', '16935935', 'jhon', 'ramon', 'solarte', 'cra 75 · 10 a 122', '3215497936', 'Cali', 'Propietario', '2022-08-31 15:00:10', '2022-08-31 15:00:10' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "vehiculos" --------------------------------
BEGIN;

INSERT INTO `vehiculos`(`id`,`placa`,`color`,`marca`,`tipo`,`created_at`,`updated_at`) VALUES 
( '1', 'abc-321', 'verde', 'nissan', 'Particular', '2022-08-30 23:38:24', '2022-08-31 01:01:03' ),
( '2', 'www-222', 'verde', 'nissan', 'Particular', '2022-08-31 02:27:55', '2022-08-31 02:27:55' ),
( '3', 'awt-001', 'azul', 'toyota', 'Particular', '2022-08-31 04:19:40', '2022-08-31 04:19:40' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "password_resets_email_index" ------------------
CREATE INDEX `password_resets_email_index` USING BTREE ON `password_resets`( `email` );
-- -------------------------------------------------------------


-- CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" 
CREATE INDEX `personal_access_tokens_tokenable_type_tokenable_id_index` USING BTREE ON `personal_access_tokens`( `tokenable_type`, `tokenable_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "lnk_tb_usuarios_tb_vehiculos_usuario" ---------
CREATE INDEX `lnk_tb_usuarios_tb_vehiculos_usuario` USING BTREE ON `registros`( `usuario_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "lnk_tb_vehiculo_tb_vehiculos_usuario" ---------
CREATE INDEX `lnk_tb_vehiculo_tb_vehiculos_usuario` USING BTREE ON `registros`( `vehiculo_id` );
-- -------------------------------------------------------------


-- CREATE LINK "lnk_tb_usuarios_tb_vehiculos_usuario" ----------
ALTER TABLE `registros`
	ADD CONSTRAINT `lnk_tb_usuarios_tb_vehiculos_usuario` FOREIGN KEY ( `usuario_id` )
	REFERENCES `usuarios`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------


-- CREATE LINK "lnk_tb_vehiculo_tb_vehiculos_usuario" ----------
ALTER TABLE `registros`
	ADD CONSTRAINT `lnk_tb_vehiculo_tb_vehiculos_usuario` FOREIGN KEY ( `vehiculo_id` )
	REFERENCES `vehiculos`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


