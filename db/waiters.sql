/*
 Navicat Premium Data Transfer

 Source Server         : xampp74
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : waiters

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 28/06/2023 16:57:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_09_16_060614_create_permission_tables', 2);
INSERT INTO `migrations` VALUES (5, '2022_09_27_022547_create_sliders_table', 3);
INSERT INTO `migrations` VALUES (6, '2022_09_27_024419_modify_sliders_table', 3);
INSERT INTO `migrations` VALUES (7, '2022_09_27_065213_add_image_column_sliders', 3);
INSERT INTO `migrations` VALUES (8, '2022_12_06_034153_add_column_order_migration', 3);
INSERT INTO `migrations` VALUES (9, '2022_12_15_021613_add_column_type_text_sliders', 4);
INSERT INTO `migrations` VALUES (10, '2023_01_04_020306_t_product_interest', 5);
INSERT INTO `migrations` VALUES (11, '2023_01_05_090925_add_column_view_t_product_interest', 5);
INSERT INTO `migrations` VALUES (12, '2023_01_11_140751_create_review_product', 5);
INSERT INTO `migrations` VALUES (13, '2023_02_17_142810_create_token_payment_table', 5);
INSERT INTO `migrations` VALUES (14, '2023_02_21_134336_create_merchandise_accessories_models', 5);
INSERT INTO `migrations` VALUES (15, '2023_02_20_095941_add_column_payment_token_user', 6);
INSERT INTO `migrations` VALUES (16, '2023_02_20_113105_create_checkout_data', 6);
INSERT INTO `migrations` VALUES (17, '2023_02_21_095558_add_column_shipping_id_order', 7);
INSERT INTO `migrations` VALUES (18, '2023_02_23_095025_add_column_shiping_status_order_model', 8);
INSERT INTO `migrations` VALUES (19, '2023_02_25_131415_create_table_vend_customer', 8);
INSERT INTO `migrations` VALUES (20, '2023_03_04_145012_add_column_gift_set_props_order_detail', 8);
INSERT INTO `migrations` VALUES (21, '2023_03_08_083938_add_column_expiri_flag_product_model', 9);
INSERT INTO `migrations` VALUES (22, '2023_03_15_095912_add_column_image_description', 9);

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
  CONSTRAINT `model_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
  CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 6);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 8);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 13);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 14);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 17);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 21);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 22);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 23);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 24);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 25);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 26);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 28);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 30);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 31);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 32);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 33);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 34);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 35);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 36);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 37);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 38);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 39);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 40);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 41);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 42);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 43);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 44);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 45);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 46);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 47);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 48);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 49);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 50);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 51);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 52);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 55);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 56);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 57);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 58);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 59);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 60);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 61);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 62);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 63);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 64);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 65);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 66);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 67);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 68);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 69);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 70);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 71);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 72);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 73);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 74);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 75);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 76);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 77);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 78);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 79);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 80);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 81);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 82);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 83);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 84);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 85);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 86);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 87);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 88);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 89);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 90);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 91);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 92);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 93);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 94);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 95);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 96);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 97);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 98);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 99);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 100);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 101);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 102);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 103);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 104);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 105);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 106);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 107);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 108);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 109);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 110);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 111);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 112);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 113);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 114);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 115);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 116);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 117);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 118);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 119);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 120);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 121);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 122);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 123);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 124);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 125);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 126);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 127);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 128);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 129);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 130);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 131);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 132);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 133);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 134);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 135);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 136);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 137);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 138);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 139);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 140);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 141);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 142);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 143);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 144);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 145);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 146);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 147);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 148);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 149);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 150);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 151);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 152);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 153);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 154);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 155);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 156);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 157);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 158);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 159);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 160);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 161);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 162);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 163);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 164);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 165);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 166);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 167);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 168);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 169);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 170);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 171);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 172);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 173);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 174);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 175);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 176);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 177);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 178);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 179);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 180);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 181);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 182);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 183);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 184);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 185);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 186);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 187);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 188);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 189);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 190);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 191);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 192);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 193);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 194);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 195);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 196);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 197);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 198);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 199);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 200);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 201);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 202);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 203);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 204);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 205);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 206);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 207);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 208);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 209);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 210);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 211);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 212);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 213);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 214);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 215);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 216);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 217);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 218);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 219);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 220);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 221);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 222);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 223);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 224);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 225);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 226);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 227);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 228);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 229);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 230);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 231);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 232);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 233);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 234);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 235);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 236);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 237);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 238);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 239);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 240);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 241);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 242);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 243);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 244);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 245);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 246);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 248);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 249);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 250);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 251);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 252);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 253);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 254);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 255);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 256);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 257);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 258);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 259);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 260);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 261);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 262);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 263);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 264);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 265);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 266);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 267);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 268);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 269);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 270);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 271);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 272);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 273);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 274);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 275);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 280);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 281);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 285);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 546);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 547);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 548);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Models\\User', 282);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 288);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('', '', '2023-01-10 04:28:20');
INSERT INTO `password_resets` VALUES ('edwinnugroho123@gmail.com', 'b4e0kxHz7zfdc7DiDMITIZUsCJm3eWddufAuKkSofhPUfxwJ9Nv05WnHqprp27Zi', '2023-02-02 09:11:06');
INSERT INTO `password_resets` VALUES ('edwinnugroho123@gmail.com', 'aYWa4arz1I6aPkfRL8X9Jg0Sm0L2lE1EE587vvt2gS8ZC8LJEPfEzYpURQbu4gEs', '2023-02-02 09:11:22');
INSERT INTO `password_resets` VALUES ('', 'UbIevyS0mnNmX0Sm50wLwbwDTmxSSGHxIjFOITAQdTEOZO82qeFcYIs5okJ1VM9L', '2023-03-14 15:20:06');
INSERT INTO `password_resets` VALUES ('', 'Rdq2JNRuphzrxIX5WNocSixFa1Q94DMtEWS2JL0938Tns6PBCCHSQEVzs34EHCWe', '2023-03-14 17:08:40');
INSERT INTO `password_resets` VALUES ('', 'nexeRqyz2X8ybJ9BugcjNSJVfFVUrSvke3co7xRukuXYemmdMxyUDnNcRrdW5V8W', '2023-03-15 08:37:35');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'role-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (2, 'role-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (3, 'role-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (4, 'role-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (5, 'product-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (6, 'product-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (7, 'product-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (8, 'product-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (9, 'permission-list', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (10, 'permission-create', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (11, 'permission-edit', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (12, 'permission-delete', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');
INSERT INTO `permissions` VALUES (13, 'menu-permission', 'web', '2022-09-16 06:38:30', '2022-09-16 06:38:30');

-- ----------------------------
-- Table structure for pos_additional
-- ----------------------------
DROP TABLE IF EXISTS `pos_additional`;
CREATE TABLE `pos_additional`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `portion` enum('solo','doppio','s','m','l') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int NULL DEFAULT NULL,
  `units` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'satuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_additional
-- ----------------------------
INSERT INTO `pos_additional` VALUES (1, 'ADD ESPRESSO', 'ADD ESPRESSO', NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (2, 'ADD SKIM MILK', 'ADD SKIM MILK', NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (3, 'ADD SOYA MILK', 'ADD SOYA MILK', NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (4, 'ADD WHIPPED CREAM', 'ADD WHIPPED CREAM', NULL, 10000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (5, 'NASI JAGUNG', 'NASI JAGUNG', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (6, 'NASI MERAH', 'NASI MERAH', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (7, 'NASI PUTIH', 'NASI PUTIH', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (8, 'SAMBAL KOREK', 'SAMBAL KOREK', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (9, 'SAMBAL TERASI', 'SAMBAL TERASI', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (10, 'Egg', 'Egg', NULL, 21000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (11, 'Sausage', 'Sausage', NULL, 21000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (12, 'Lontong', 'Lontong', NULL, 12000, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (13, 'Telur Asin', 'Telur Asin', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (14, 'Rendang Daging', 'Rendang Daging', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_additional` VALUES (15, 'Kare Ayam', 'Kare Ayam', NULL, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pos_additional_products
-- ----------------------------
DROP TABLE IF EXISTS `pos_additional_products`;
CREATE TABLE `pos_additional_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product` int NULL DEFAULT NULL,
  `id_additional` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false' COMMENT 'satuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 364 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_additional_products
-- ----------------------------
INSERT INTO `pos_additional_products` VALUES (1, 112, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (2, 112, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (3, 112, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (4, 112, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (5, 112, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (6, 112, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (7, 112, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (8, 112, '12', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (9, 112, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (10, 112, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (11, 112, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (12, 116, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (13, 116, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (14, 116, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (15, 116, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (16, 116, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (17, 116, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (18, 116, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (19, 116, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (20, 116, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (21, 116, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (22, 116, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (23, 117, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (24, 117, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (25, 117, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (26, 117, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (27, 117, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (28, 117, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (29, 117, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (30, 117, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (31, 117, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (32, 117, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (33, 117, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (34, 118, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (35, 118, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (36, 118, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (37, 118, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (38, 118, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (39, 118, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (40, 118, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (41, 118, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (42, 118, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (43, 118, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (44, 118, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (45, 120, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (46, 120, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (47, 120, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (48, 120, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (49, 120, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (50, 120, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (51, 120, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (52, 120, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (53, 120, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (54, 120, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (55, 120, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (56, 106, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (57, 106, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (58, 106, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (59, 106, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (60, 106, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (61, 106, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (62, 106, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (63, 106, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (64, 106, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (65, 106, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (66, 106, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (67, 104, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (68, 104, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (69, 104, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (70, 104, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (71, 104, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (72, 104, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (73, 104, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (74, 104, '12', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (75, 104, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (76, 104, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (77, 104, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (78, 105, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (79, 105, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (80, 105, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (81, 105, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (82, 105, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (83, 105, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (84, 105, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (85, 105, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (86, 105, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (87, 105, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (88, 105, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (89, 102, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (90, 102, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (91, 102, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (92, 102, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (93, 102, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (94, 102, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (95, 102, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (96, 102, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (97, 102, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (98, 102, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (99, 102, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (100, 103, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (101, 103, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (102, 103, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (103, 103, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (104, 103, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (105, 103, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (106, 103, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (107, 103, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (108, 103, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (109, 103, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (110, 103, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (111, 101, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (112, 101, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (113, 101, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (114, 101, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (115, 101, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (116, 101, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (117, 101, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (118, 101, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (119, 101, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (120, 101, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (121, 101, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (122, 108, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (123, 108, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (124, 108, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (125, 108, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (126, 108, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (127, 108, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (128, 108, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (129, 108, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (130, 108, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (131, 108, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (132, 108, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (133, 111, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (134, 111, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (135, 111, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (136, 111, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (137, 111, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (138, 111, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (139, 111, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (140, 111, '12', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (141, 111, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (142, 111, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (143, 111, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (144, 115, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (145, 115, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (146, 115, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (147, 115, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (148, 115, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (149, 115, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (150, 115, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (151, 115, '12', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (152, 115, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (153, 115, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (154, 115, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (155, 134, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (156, 134, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (157, 134, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (158, 134, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (159, 134, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (160, 134, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (161, 134, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (162, 134, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (163, 134, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (164, 134, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (165, 134, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (166, 133, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (167, 133, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (168, 133, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (169, 133, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (170, 133, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (171, 133, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (172, 133, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (173, 133, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (174, 133, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (175, 133, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (176, 133, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (177, 130, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (178, 130, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (179, 130, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (180, 130, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (181, 130, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (182, 130, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (183, 130, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (184, 130, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (185, 130, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (186, 130, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (187, 130, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (188, 131, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (189, 131, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (190, 131, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (191, 131, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (192, 131, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (193, 131, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (194, 131, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (195, 131, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (196, 131, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (197, 131, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (198, 131, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (199, 128, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (200, 128, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (201, 128, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (202, 128, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (203, 128, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (204, 128, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (205, 128, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (206, 128, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (207, 128, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (208, 128, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (209, 128, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (210, 129, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (211, 129, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (212, 129, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (213, 129, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (214, 129, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (215, 129, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (216, 129, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (217, 129, '12', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (218, 129, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (219, 129, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (220, 129, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (221, 126, '5', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (222, 126, '6', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (223, 126, '7', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (224, 126, '8', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (225, 126, '9', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (226, 126, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (227, 126, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (228, 126, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (229, 126, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (230, 126, '14', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (231, 126, '15', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (232, 109, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (233, 109, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (234, 109, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (235, 109, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (236, 109, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (237, 109, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (238, 109, '11', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (239, 109, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (240, 109, '13', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (241, 109, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (242, 109, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (243, 84, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (244, 84, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (245, 84, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (246, 84, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (247, 84, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (248, 84, '10', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (249, 84, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (250, 84, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (251, 84, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (252, 84, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (253, 84, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (254, 95, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (255, 95, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (256, 95, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (257, 95, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (258, 95, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (259, 95, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (260, 95, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (261, 95, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (262, 95, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (263, 95, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (264, 95, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (265, 96, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (266, 96, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (267, 96, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (268, 96, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (269, 96, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (270, 96, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (271, 96, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (272, 96, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (273, 96, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (274, 96, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (275, 96, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (276, 97, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (277, 97, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (278, 97, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (279, 97, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (280, 97, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (281, 97, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (282, 97, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (283, 97, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (284, 97, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (285, 97, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (286, 97, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (287, 94, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (288, 94, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (289, 94, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (290, 94, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (291, 94, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (292, 94, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (293, 94, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (294, 94, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (295, 94, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (296, 94, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (297, 94, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (298, 98, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (299, 98, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (300, 98, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (301, 98, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (302, 98, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (303, 98, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (304, 98, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (305, 98, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (306, 98, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (307, 98, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (308, 98, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (309, 100, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (310, 100, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (311, 100, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (312, 100, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (313, 100, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (314, 100, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (315, 100, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (316, 100, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (317, 100, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (318, 100, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (319, 100, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (320, 99, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (321, 99, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (322, 99, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (323, 99, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (324, 99, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (325, 99, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (326, 99, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (327, 99, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (328, 99, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (329, 99, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (330, 99, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (331, 78, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (332, 78, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (333, 78, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (334, 78, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (335, 78, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (336, 78, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (337, 78, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (338, 78, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (339, 78, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (340, 78, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (341, 78, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (342, 77, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (343, 77, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (344, 77, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (345, 77, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (346, 77, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (347, 77, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (348, 77, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (349, 77, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (350, 77, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (351, 77, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (352, 77, '15', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (353, 79, '5', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (354, 79, '6', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (355, 79, '7', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (356, 79, '8', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (357, 79, '9', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (358, 79, '10', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (359, 79, '11', 'false', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (360, 79, '12', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (361, 79, '13', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (362, 79, '14', 'true', NULL, NULL);
INSERT INTO `pos_additional_products` VALUES (363, 79, '15', 'true', NULL, NULL);

-- ----------------------------
-- Table structure for pos_brand
-- ----------------------------
DROP TABLE IF EXISTS `pos_brand`;
CREATE TABLE `pos_brand`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_brand
-- ----------------------------
INSERT INTO `pos_brand` VALUES (1, 'supresso', NULL, NULL, NULL);
INSERT INTO `pos_brand` VALUES (2, 'pandan garden', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pos_carts
-- ----------------------------
DROP TABLE IF EXISTS `pos_carts`;
CREATE TABLE `pos_carts`  (
  `sale_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  PRIMARY KEY (`sale_id`, `product_id`) USING BTREE,
  INDEX `carts_product_id_foreign`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_carts
-- ----------------------------
INSERT INTO `pos_carts` VALUES (3, 23, 1, '2020-05-26 11:58:50', '2020-05-26 11:58:50', '2020-05-26');
INSERT INTO `pos_carts` VALUES (5, 12, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26');
INSERT INTO `pos_carts` VALUES (5, 21, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26');
INSERT INTO `pos_carts` VALUES (5, 22, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26');
INSERT INTO `pos_carts` VALUES (6, 21, 1, '2020-05-26 12:01:22', '2020-05-26 12:01:22', '2020-05-26');
INSERT INTO `pos_carts` VALUES (8, 12, 1, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26');
INSERT INTO `pos_carts` VALUES (8, 23, 1, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26');
INSERT INTO `pos_carts` VALUES (9, 21, 1, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27');
INSERT INTO `pos_carts` VALUES (9, 23, 1, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27');
INSERT INTO `pos_carts` VALUES (10, 12, 1, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27');
INSERT INTO `pos_carts` VALUES (10, 22, 1, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27');
INSERT INTO `pos_carts` VALUES (11, 12, 1, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27');
INSERT INTO `pos_carts` VALUES (11, 22, 1, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27');
INSERT INTO `pos_carts` VALUES (12, 12, 1, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27');
INSERT INTO `pos_carts` VALUES (12, 22, 1, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27');
INSERT INTO `pos_carts` VALUES (13, 21, 1, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27');
INSERT INTO `pos_carts` VALUES (13, 22, 1, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27');
INSERT INTO `pos_carts` VALUES (14, 23, 1, '2020-05-27 12:03:53', '2020-05-27 12:03:53', '2020-05-27');
INSERT INTO `pos_carts` VALUES (15, 12, 1, '2020-05-28 02:47:13', '2020-05-28 02:47:13', '2020-05-28');
INSERT INTO `pos_carts` VALUES (15, 23, 1, '2020-05-28 02:47:13', '2020-05-28 02:47:13', '2020-05-28');
INSERT INTO `pos_carts` VALUES (16, 21, 1, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28');
INSERT INTO `pos_carts` VALUES (16, 23, 1, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28');
INSERT INTO `pos_carts` VALUES (17, 21, 1, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28');
INSERT INTO `pos_carts` VALUES (17, 23, 1, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28');
INSERT INTO `pos_carts` VALUES (18, 21, 1, '2020-05-28 02:50:14', '2020-05-28 02:50:14', '2020-05-28');
INSERT INTO `pos_carts` VALUES (19, 12, 1, '2020-06-11 17:47:59', '2020-06-11 17:47:59', '2020-06-12');
INSERT INTO `pos_carts` VALUES (20, 21, 1, '2020-06-11 17:48:21', '2020-06-11 17:48:21', '2020-06-12');
INSERT INTO `pos_carts` VALUES (21, 21, 1, '2020-06-17 10:51:06', '2020-06-17 10:51:06', '2020-06-17');
INSERT INTO `pos_carts` VALUES (22, 21, 1, '2020-06-17 10:53:09', '2020-06-17 10:53:09', '2020-06-17');
INSERT INTO `pos_carts` VALUES (23, 21, 1, '2020-06-17 10:53:27', '2020-06-17 10:53:27', '2020-06-17');
INSERT INTO `pos_carts` VALUES (24, 21, 1, '2020-06-17 10:54:14', '2020-06-17 10:54:14', '2020-06-17');
INSERT INTO `pos_carts` VALUES (25, 21, 1, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17');
INSERT INTO `pos_carts` VALUES (25, 23, 1, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17');
INSERT INTO `pos_carts` VALUES (26, 21, 1, '2020-06-17 11:35:31', '2020-06-17 11:35:31', '2020-06-17');
INSERT INTO `pos_carts` VALUES (26, 23, 1, '2020-06-17 11:35:32', '2020-06-17 11:35:32', '2020-06-17');
INSERT INTO `pos_carts` VALUES (27, 12, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17');
INSERT INTO `pos_carts` VALUES (27, 21, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17');
INSERT INTO `pos_carts` VALUES (27, 22, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17');
INSERT INTO `pos_carts` VALUES (27, 23, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17');
INSERT INTO `pos_carts` VALUES (28, 21, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17');
INSERT INTO `pos_carts` VALUES (28, 22, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17');
INSERT INTO `pos_carts` VALUES (28, 23, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17');
INSERT INTO `pos_carts` VALUES (29, 21, 1, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17');
INSERT INTO `pos_carts` VALUES (29, 22, 1, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17');
INSERT INTO `pos_carts` VALUES (30, 22, 5, '2020-06-17 12:10:37', '2020-06-17 12:10:37', '2020-06-17');
INSERT INTO `pos_carts` VALUES (31, 12, 1, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17');
INSERT INTO `pos_carts` VALUES (31, 22, 1, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17');
INSERT INTO `pos_carts` VALUES (32, 21, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17');
INSERT INTO `pos_carts` VALUES (32, 22, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17');
INSERT INTO `pos_carts` VALUES (32, 23, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17');
INSERT INTO `pos_carts` VALUES (33, 22, 1, '2020-07-23 10:21:56', '2020-07-23 10:21:56', '2020-07-23');
INSERT INTO `pos_carts` VALUES (34, 21, 1, '2020-09-03 10:21:10', '2020-09-03 10:21:10', '2020-09-03');
INSERT INTO `pos_carts` VALUES (35, 12, 1, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03');
INSERT INTO `pos_carts` VALUES (35, 22, 1, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03');

-- ----------------------------
-- Table structure for pos_category
-- ----------------------------
DROP TABLE IF EXISTS `pos_category`;
CREATE TABLE `pos_category`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fileimages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_category
-- ----------------------------
INSERT INTO `pos_category` VALUES (1, 'coffee', NULL, NULL, NULL);
INSERT INTO `pos_category` VALUES (2, 'baverage', NULL, NULL, NULL);
INSERT INTO `pos_category` VALUES (3, 'western food', NULL, NULL, NULL);
INSERT INTO `pos_category` VALUES (4, 'indonesian food', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pos_clients
-- ----------------------------
DROP TABLE IF EXISTS `pos_clients`;
CREATE TABLE `pos_clients`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `clients_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `clients_phone_unique`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_clients
-- ----------------------------
INSERT INTO `pos_clients` VALUES (1, 'francis ngannou', NULL, NULL, NULL, '2020-05-26 11:08:25', '2020-05-26 11:08:25');
INSERT INTO `pos_clients` VALUES (2, 'Jon Bon Jones', NULL, NULL, NULL, '2020-05-26 11:07:12', '2020-05-26 11:07:12');
INSERT INTO `pos_clients` VALUES (3, 'Jose Aldo', NULL, NULL, NULL, '2020-05-26 11:11:27', '2020-05-26 11:11:27');
INSERT INTO `pos_clients` VALUES (4, 'General', 'admin@example.com', '081', 'umum', '2020-05-26 04:23:48', '2020-05-26 08:09:20');

-- ----------------------------
-- Table structure for pos_failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `pos_failed_jobs`;
CREATE TABLE `pos_failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for pos_migrations
-- ----------------------------
DROP TABLE IF EXISTS `pos_migrations`;
CREATE TABLE `pos_migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_migrations
-- ----------------------------
INSERT INTO `pos_migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `pos_migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `pos_migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `pos_migrations` VALUES (4, '2020_04_13_160458_create_clients_table', 1);
INSERT INTO `pos_migrations` VALUES (5, '2020_04_13_160512_create_categories_table', 1);
INSERT INTO `pos_migrations` VALUES (6, '2020_04_13_160525_create_sales_table', 1);
INSERT INTO `pos_migrations` VALUES (7, '2020_04_13_160541_create_products_table', 1);
INSERT INTO `pos_migrations` VALUES (8, '2020_04_13_160554_create_carts_table', 1);

-- ----------------------------
-- Table structure for pos_optional
-- ----------------------------
DROP TABLE IF EXISTS `pos_optional`;
CREATE TABLE `pos_optional`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `portion` enum('solo','doppio','s','m','l') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int NULL DEFAULT NULL,
  `units` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'satuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_optional
-- ----------------------------
INSERT INTO `pos_optional` VALUES (1, 'Lontong', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (2, 'Nasi Putih', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (3, 'Nasi Jagung', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (4, 'Nasi Merah', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (5, 'Pasta Fettucine', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (6, 'Pasta Fusilli', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (7, 'Pasta Penne', NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pos_optional` VALUES (8, 'Pasta Spaghetti', NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pos_optional_products
-- ----------------------------
DROP TABLE IF EXISTS `pos_optional_products`;
CREATE TABLE `pos_optional_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product` int NULL DEFAULT NULL,
  `id_optional` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false' COMMENT 'satuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_optional_products
-- ----------------------------
INSERT INTO `pos_optional_products` VALUES (1, 106, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (2, 106, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (3, 106, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (4, 106, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (5, 106, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (6, 106, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (7, 106, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (8, 106, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (9, 104, '1', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (10, 104, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (11, 104, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (12, 104, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (13, 104, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (14, 104, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (15, 104, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (16, 104, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (17, 105, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (18, 105, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (19, 105, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (20, 105, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (21, 105, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (22, 105, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (23, 105, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (24, 105, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (25, 102, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (26, 102, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (27, 102, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (28, 102, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (29, 102, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (30, 102, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (31, 102, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (32, 102, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (33, 103, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (34, 103, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (35, 103, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (36, 103, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (37, 103, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (38, 103, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (39, 103, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (40, 103, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (41, 101, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (42, 101, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (43, 101, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (44, 101, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (45, 101, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (46, 101, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (47, 101, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (48, 101, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (49, 133, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (50, 133, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (51, 133, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (52, 133, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (53, 133, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (54, 133, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (55, 133, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (56, 133, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (57, 130, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (58, 130, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (59, 130, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (60, 130, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (61, 130, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (62, 130, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (63, 130, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (64, 130, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (65, 131, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (66, 131, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (67, 131, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (68, 131, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (69, 131, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (70, 131, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (71, 131, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (72, 131, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (73, 128, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (74, 128, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (75, 128, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (76, 128, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (77, 128, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (78, 128, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (79, 128, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (80, 128, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (81, 129, '1', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (82, 129, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (83, 129, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (84, 129, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (85, 129, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (86, 129, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (87, 129, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (88, 129, '8', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (89, 95, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (90, 95, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (91, 95, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (92, 95, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (93, 95, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (94, 95, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (95, 95, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (96, 95, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (97, 96, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (98, 96, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (99, 96, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (100, 96, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (101, 96, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (102, 96, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (103, 96, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (104, 96, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (105, 97, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (106, 97, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (107, 97, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (108, 97, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (109, 97, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (110, 97, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (111, 97, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (112, 97, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (113, 94, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (114, 94, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (115, 94, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (116, 94, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (117, 94, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (118, 94, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (119, 94, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (120, 94, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (121, 98, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (122, 98, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (123, 98, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (124, 98, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (125, 98, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (126, 98, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (127, 98, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (128, 98, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (129, 100, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (130, 100, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (131, 100, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (132, 100, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (133, 100, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (134, 100, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (135, 100, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (136, 100, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (137, 99, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (138, 99, '2', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (139, 99, '3', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (140, 99, '4', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (141, 99, '5', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (142, 99, '6', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (143, 99, '7', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (144, 99, '8', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (145, 108, '1', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (146, 108, '2', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (147, 108, '3', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (148, 108, '4', 'false', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (149, 108, '5', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (150, 108, '6', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (151, 108, '7', 'true', NULL, NULL);
INSERT INTO `pos_optional_products` VALUES (152, 108, '8', 'true', NULL, NULL);

-- ----------------------------
-- Table structure for pos_order_detail_models
-- ----------------------------
DROP TABLE IF EXISTS `pos_order_detail_models`;
CREATE TABLE `pos_order_detail_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomerorder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idproduct` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iduser` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namaproduk` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discon` int NOT NULL,
  `txtdiskon` varchar(31) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax` int NOT NULL,
  `hargaproduk` double(20, 2) NOT NULL,
  `hargabelumdiskon` double(20, 2) NOT NULL,
  `qty` int NOT NULL,
  `subtotalproduk` double(20, 2) NOT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `review` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'active',
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `giftset_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `giftset_prop` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 750 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_order_detail_models
-- ----------------------------

-- ----------------------------
-- Table structure for pos_order_models
-- ----------------------------
DROP TABLE IF EXISTS `pos_order_models`;
CREATE TABLE `pos_order_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomerorder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iduser` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggalorder` date NOT NULL,
  `jamorder` time NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statustrack` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `itemsubtotal` double(20, 2) NOT NULL,
  `discon` double(20, 2) NOT NULL,
  `coupon` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kodekupon` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `persdiskon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax` int NOT NULL,
  `shippingprice` double(20, 2) NOT NULL,
  `ordertotal` double(20, 2) NOT NULL,
  `payment` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengiriman` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namalengkap` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namalengkapawb` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `firtsname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kota` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamatawb` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamatdua` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kodepos` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `emailtanpatitik` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phoneawb` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `addcatatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `addcatatanawb` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `statusawb` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notifnews` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `payment_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payment_method` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `shipping_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shiping_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1936 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_order_models
-- ----------------------------

-- ----------------------------
-- Table structure for pos_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `pos_password_resets`;
CREATE TABLE `pos_password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pos_products
-- ----------------------------
DROP TABLE IF EXISTS `pos_products`;
CREATE TABLE `pos_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_brand` int NULL DEFAULT NULL,
  `id_category` int NULL DEFAULT NULL,
  `id_sub_category` int NULL DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `portion` enum('solo','doppio','s','m','l') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NULL DEFAULT NULL,
  `units` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fileimages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `flag_spicy` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'true',
  `flag_optional` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'true',
  `flag_additional` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_products
-- ----------------------------
INSERT INTO `pos_products` VALUES (1, 1, 1, 1, NULL, 'lampung', '100% Robusta No Acidity and Strong Body', '', 35, NULL, NULL, '[\"manual_brew_lampung.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (2, 1, 1, 1, NULL, 'aceh gayo', '100% Arabica Medium Acidity and Mild Body', '', 35, NULL, NULL, '[\"manual_brew_aceh_gayo.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (3, 1, 1, 1, NULL, 'java', '100% Robusta No Acidity and Good Body', '', 35, NULL, NULL, '[\"manual_brew_java.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (4, 1, 1, 1, NULL, 'toraja kalosi', '100% Arabica Low Acidity and Heavy Body', '', 35, NULL, NULL, '[\"manual_brew_toraja_kalosi.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (5, 1, 1, 1, NULL, 'flores bajawa', '100% Arabica Low Acidty and Heavy Body', '', 35, NULL, NULL, '[\"manual_brew_flores.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (6, 1, 1, 1, NULL, 'sumatra mandheling', '100% Arabica Medium Acidity and Good Body', '', 35, NULL, NULL, '[\"manual_brew_sumatra.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (7, 1, 1, 1, NULL, 'bali kintamani', '100% Arabica Lively Acidity and Mild Body', '', 35, NULL, NULL, '[\"manual_brew_bali_kintamani.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (8, 1, 1, 1, NULL, 'peaberry', '100% Arabica Medium Acidity and Good Body', '', 35, NULL, NULL, '[\"manual_brew_peaberry.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (9, 1, 1, 1, NULL, 'sumatra mandheling rainforest', '100% Arabica Medium Acidity and Good Body', '', 35, NULL, NULL, '[\"manual_brew_sumatra.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (10, 1, 1, 1, NULL, 'java arabica organic', '100% Arabica Mild Acidity and Heavy Body', '', 35, NULL, NULL, '[\"manual_brew_java.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (11, 1, 1, 1, NULL, 'luwak arabica', '100% Arabica Mild Acidity and Heavy Body', '', 80, NULL, NULL, '[\"manual_brew_luwak.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (12, 1, 1, 1, NULL, 'vietnam drip', 'Robusta Coffee Dripped With Condensed Milk', '', 35, NULL, NULL, '[\"manual_brew_vietnam_drip.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (13, 1, 1, 2, NULL, 'drip coffee brazilia', NULL, '', 18, NULL, NULL, '[\"drip_coffee_brazilia.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (14, 1, 1, 2, NULL, 'drip coffee costa rica', NULL, '', 18, NULL, NULL, '[\"drip_coffee_costa_rica.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (15, 1, 1, 2, NULL, 'drip coffee nanyang', NULL, '', 18, NULL, NULL, '[\"drip_coffee_nanyang.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (16, 1, 1, 3, '1', 'espresso', 'Pure Coffee Single Shoot', 'solo', 26, NULL, NULL, '[\"espresso.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (17, 1, 1, 3, '1', 'espresso', 'Pure Coffee Double Shoot', 'doppio', 32, NULL, NULL, '[\"espresso.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (18, 1, 1, 3, '2', 'ristretto', 'A \"short shot\" of a highly concentrated espresso. Extracted with a finer grind using half as much water, resulting in about 15ml of richer, smoother, and sweeter coffee.', 'solo', 26, NULL, NULL, '[\"ristretto.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (19, 1, 1, 3, '2', 'ristretto', 'A \"short shot\" of a highly concentrated espresso. Extracted with a finer grind using half as much water, resulting in about 15ml of richer, smoother, and sweeter coffee.', 'doppio', 32, NULL, NULL, '[\"ristretto.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (20, 1, 1, 3, NULL, 'espresso macchiato', 'Pure Coffee with foam milk\r\n', 'solo', 30, NULL, NULL, '[\"espresso_macchiato.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (21, 1, 1, 3, NULL, 'americano', 'Espresso and water', 's', 36, NULL, NULL, '[\"americano.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (22, 1, 1, 3, NULL, 'americano', 'Espresso and water', 'm', 35, NULL, NULL, '[\"americano.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (23, 1, 1, 3, NULL, 'americano', 'Espresso and water', 'l', 40, NULL, NULL, '[\"americano.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (24, 1, 1, 3, NULL, 'cappuccino', 'Espresso and milk with thick foam', 's', 44, NULL, NULL, '[\"cappuccino.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (25, 1, 1, 3, NULL, 'cappuccino', 'Espresso and milk with thick foam', 'm', 46, NULL, NULL, '[\"cappuccino.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (26, 1, 1, 3, NULL, 'cappuccino', 'Espresso and milk with thick foam', 'l', 52, NULL, NULL, '[\"cappuccino.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (27, 1, 1, 3, NULL, 'caffe latte', 'Espresso and milk with foam', 's', 44, NULL, NULL, '[\"caffe-latte.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (28, 1, 1, 3, NULL, 'caffe latte', 'Espresso and milk with foam', 'm', 46, NULL, NULL, '[\"caffe-latte.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (29, 1, 1, 3, NULL, 'caffe latte', 'Espresso and milk with foam', 'l', 52, NULL, NULL, '[\"caffe-latte.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (30, 1, 1, 3, NULL, 'caffe mocha', 'Espresso and milk with chocolate', 's', 46, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (31, 1, 1, 3, NULL, 'caffe mocha', 'Espresso and milk with chocolate', 'm', 50, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (32, 1, 1, 3, NULL, 'caffe mocha', 'Espresso and milk with chocolate', 'l', 54, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (33, 1, 1, 3, NULL, 'caramel macchiato', 'Espresso and milk with Caramel flavour and topping', 's', 54, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (34, 1, 1, 3, NULL, 'caramel macchiato', 'Espresso and milk with Caramel flavour and topping', 'm', 58, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (35, 1, 1, 3, NULL, 'caramel macchiato', 'Espresso and milk with Caramel flavour and topping', 'l', 62, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (36, 1, 1, 3, NULL, 'delasia latte', 'Espresso and milk with Condensed milk\r\n', 's', 54, NULL, NULL, '[\"delasia-latte.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (37, 1, 1, 3, NULL, 'delasia latte', 'Espresso and milk with Condensed milk\r\n', 'm', 46, NULL, NULL, '[\"delasia-latte.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (38, 1, 1, 3, NULL, 'delasia latte', 'Espresso and milk with Condensed milk\r\n', 'l', 62, NULL, NULL, '[\"delasia-latte.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (39, 1, 1, 3, NULL, 'supresso nanyang', 'Black Coffee with Condensed milk\r\n', 's', 30, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (40, 1, 1, 3, NULL, 'supresso nanyang', 'Black Coffee with Condensed milk\r\n', 'm', 33, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (41, 1, 1, 3, NULL, 'supresso nanyang', 'Black Coffee with Condensed milk\r\n', 'l', 36, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (42, 1, 1, 3, NULL, 'supresso chocolate', 'Chocolate With Milk\r\n', 's', 50, NULL, NULL, '[\"choco_iced_choco_supresso.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (43, 1, 1, 3, NULL, 'supresso chocolate', 'Chocolate With Milk\r\n', 'm', 46, NULL, NULL, '[\"choco_iced_choco_supresso.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (44, 1, 1, 3, NULL, 'supresso chocolate', 'Chocolate With Milk\r\n', 'l', 60, NULL, NULL, '[\"choco_iced_choco_supresso.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (45, 1, 1, 3, NULL, 'jaheku latte', NULL, 's', 28, NULL, NULL, '[\"jahe_jaheku_latte.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (46, 1, 1, 4, NULL, 'coffee crumble', 'Ice blended with coffee and Cookies', 'm', 60, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (47, 1, 1, 4, NULL, 'mocha', 'Ice blended with coffee and chocolate', 'm', 50, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (48, 1, 1, 4, NULL, 'salted caramel', 'Ice Blended with Coffee and salted Caramel flavour', 'm', 64, NULL, NULL, '[\"salted-caramel-frappe-feed.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (49, 1, 2, 5, NULL, 'pinky', 'Ice blended with berry jam and milk', 'm', 49, NULL, NULL, '[\"pinky-frappe.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (50, 1, 2, 5, NULL, 'matcha', 'Ice Blended with Matcha and milk', 'm', 60, NULL, NULL, '[\"matcha-frape-1.jpg\",\"matcha-frappe.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (51, 1, 2, 5, NULL, 'cookies crumble', 'Ice blended cookies and milk with chocolate\r\nIce blended cookies and milk with chocolate', 'm', 50, NULL, NULL, '[\"cookies-crumble.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (52, 1, 2, 5, NULL, 'chocochip', 'Ice blended chocochip and milk with chocolate', 'm', 60, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (53, 1, 2, 5, NULL, 'banana', 'Ice blended Milk and Banana Syrup', 'm', 56, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (54, 1, 2, 5, NULL, 'choco monster', 'Ice blended with chocolate and Milo', 'm', 40, NULL, NULL, '[\"monster-milo.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (55, 1, 2, 5, NULL, 'monster supresso', 'Shaken milk with Chocolate, milk and Hazelnut syrup', 'm', 40, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (56, 1, 2, 6, NULL, 'green tea latte', 'Green tea and milk', 'm', 46, NULL, NULL, '[\"tea_iced_green_tea_latte.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (57, 1, 2, 6, NULL, 'black tea latte', 'Black tea and milk', 'm', 45, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (58, 1, 2, 6, NULL, 'iced lychee tea', 'Tea and Lychee Syrup with Lychee fruit', 'm', 38, NULL, NULL, '[\"iced-lychee-tea.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (59, 1, 2, 6, NULL, 'iced orange tea', 'Tea and Orange Syrup with Orange fruit', 'm', 38, NULL, NULL, '[\"iced-orange-tea.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (60, 1, 2, 6, NULL, 'iced berry lemonade', 'Berry jam with Lemon and Tea', 'm', 42, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (61, 1, 2, 6, NULL, 'iced greentea lemonade', 'Green Tea and Lemon', 'm', 38, NULL, NULL, '[\"iced-greentea-lemonade.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (62, 1, 2, 6, NULL, 'iced straight tea', 'Pure Black tea\r\n', 'm', 20, NULL, NULL, '[\"iced-straight-tea.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (63, 1, 2, 6, NULL, 'hot tea', 'Chamomile tea bag', 'm', 28, NULL, NULL, '[\"hot-tea.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (64, 1, 2, 7, NULL, 'strawberry soda', 'Soda with strawberry syrup', '', 38, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (65, 1, 2, 7, NULL, 'orange soda', 'Soda with orange syrup', '', 38, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (66, 1, 2, 7, NULL, 'coco pandan soda', 'Soda with Cocopandan syrup and Aloe Vera', '', 38, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (67, 1, 2, 7, NULL, 'lemon soda', 'Soda with Lemon syrup', '', 38, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (68, 1, 2, 8, NULL, 'banana', NULL, '', 12, NULL, NULL, '[\"add-ons-banana.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (69, 1, 2, 8, NULL, 'vanilla', NULL, '', 12, NULL, NULL, '[\"add-ons-vanilla.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (70, 1, 2, 8, NULL, 'caramel', NULL, '', 12, NULL, NULL, '[\"add-ons-caramel.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (71, 1, 2, 8, NULL, 'hazelnut', NULL, '', 12, NULL, NULL, '[\"add-ons-hazelnut.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (72, 1, 2, 8, NULL, 'salted caramel', NULL, '', 12, NULL, NULL, '[\"add-ons-salted-caramel.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (73, 1, 2, 8, NULL, 'espresso', NULL, '', 10, NULL, NULL, '[\"add-ons-espresso.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (74, 1, 2, 8, NULL, 'whipped cream', NULL, '', 10, NULL, NULL, '[\"add-ons-whipped-cream.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (75, 1, 2, 8, NULL, 'skim milk', NULL, '', 10, NULL, NULL, '[\"add-ons-skimmed-milk.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (76, 1, 2, 8, NULL, 'soya milk', NULL, '', 10, NULL, NULL, '[\"add-ons-soya-milk.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (77, 1, 3, 9, NULL, 'gourmet breakfast', 'A Complete Breakfast with Chipolatas, Smoked Beef Brisket, Sunny Side Ups, Baked Bean, Cherry Tomatoes, Ruccola, Sauteed Mushrooms and Toasted Whead bread served with Butter and Strawberry Jam\r\n', '', 110, NULL, NULL, '[\"gourmet-breakfast.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (78, 1, 3, 9, NULL, 'eggs benedict', 'A Classic Breakfast of Perfectly Poached Eggs Accompaned with English Muffins, Hash Brown, SMoked Beef Brisket, Spinach, Cherry Tomatoes & Sauteed Mushroom Served With Hollandaise sesauce Sprinkled Spring Onion/Scallion\r\n', '', 55, NULL, NULL, '[\"eggs_benedict.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (79, 1, 3, 9, NULL, 'mushroom omelette', 'A Warm Breakfast of Wheat Toasts and Classic Hotel Inspired Omellete with Mushroom and Rucolla, Cherry Tomatoes, Mozarella, Butter And Sprinkled Parmesan Cheese\r\n', '', 55, NULL, NULL, '[\"mushroom-omelette.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (80, 1, 3, 9, NULL, 'tuna sandwich', 'An American Classic of Tuna Chunk, Bell pepper / Capsicum, Onion, Tomatoes,Scramblle Egg, Malted Mozarella Cheese & Mayonaise\r\n', '', 75, NULL, NULL, '[\"tuna-sandwich.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (81, 1, 3, 9, NULL, 'supresso sandwich', 'A Special Two Stacked Sandwich With Shredded Chicken Mayo Raisin, Smoked Beef Brisket, Tomatoes, FreshLettuce, Onion, Boned Egg and Mozarella Cheese and Mayonaise\r\n', '', 75, NULL, NULL, '[\"supresso_sandwich.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (82, 1, 3, 9, NULL, 'banh mi', 'Supresso\'s Take on the Tradisional Vietnamese, Grilled Chicken Sandwich with Baguette, Corriander Leafe, Pickle and Omellet and Mayonaise\r\n', '', 75, NULL, NULL, '[\"banh-mi.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (83, 1, 3, 9, NULL, 'kaya toast', 'Toast Bread, SAlted Butter Topped with Kaya Sauce\r\n', '', 30, NULL, NULL, '[\"kaya-toast.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (84, 1, 3, 9, NULL, 'cheese and cheese fries', 'Pottato Fries Topped with Melted Mozzarella and Red Cheddar Cheese\r\n', '', 50, NULL, NULL, '[\"cheese-and-cheese.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (85, 1, 3, 9, NULL, 'supresso sampler', NULL, '', 85, NULL, NULL, '[\"supresso_sampler.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (86, 1, 3, 9, NULL, 'nasi goreng terasi', NULL, '', 60, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (87, 1, 3, 9, NULL, 'barbeque fried rice', NULL, '', 60, NULL, NULL, NULL, NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (88, 1, 3, 9, NULL, 'supresso salad', 'Grill Fillet Chicken Breast,Boiled Egg, Babyromaine and Ice Berg Lettuce, Bell Peppers/ Capsicum, Cherry Tomatoes, Cucumber, Onions & Garlic Croutons, Sprinkled with Parmesan Chesse and Served with Caesar Dressing\r\n', '', 75, NULL, NULL, '[\"supresso_salad.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (89, 1, 3, 9, NULL, 'supresso cordon bleu', NULL, '', 90, NULL, NULL, '[\"supresso-cordon-bleu.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (90, 1, 3, 9, NULL, 'fish n chips', NULL, '', 105, NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (91, 1, 3, 10, NULL, 'margarita pizza', 'Thin Crust Pizza with Fresh Tomatoes, Parmesan Mozarella Cheese and Olive oil on Supresso, Made Tomat Concase Sauce & Topped Rucolla\r\n', '', 80, NULL, 'Pax', '[\"pizza-margarita.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (92, 1, 3, 10, NULL, 'pepperoni pizza', 'Thin Crust Pizza with Beef Papperoni, Fresh Tomatoes Parmesan, Mozarella, Rucolla and Olive oil on Supresso, Made Tomatoes Concasse Sauce\r\n', '', 90, NULL, 'Pax', '[\"pizza-pepperoni.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (93, 1, 3, 10, NULL, 'supresso pizza', 'The Ultimate Thin Crust Pizza With Chicken Sausage, Grill Chicken, Fresh Onion & Bell Pepper,Parmesan, Mozarella, Rucolla and Olive Oil on Supresso Made Tomato Concase Sauce\r\n', '', 105, NULL, 'Pax', '[\"supresso-pizza.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (94, 1, 3, 11, NULL, 'bolognese', 'Fettucine Pasta, Supresso made Bolognaise sauce with Minced Beef, Onion & Carrot, Topped with Rucolla, Watercress, Parmesan Cheese and Truffle Oil\r\n', '', 85, NULL, 'Dish', '[\"pasta-bolognese.jpg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (95, 1, 3, 11, NULL, 'aglio olio chicken', 'Fettucine Pasta with Fresh Minced Garlic Sauteed in Olive Oil & Dried Chilli, Served Grilled Chicken Breast, Rucolla,Watercress Parmesan Cheese and Truffle Oil', '', 85, NULL, 'Dish', '[\"pasta-aglio-olio-chicken.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (96, 1, 3, 11, NULL, 'aglio olio seafood', 'Fettucine Pasta with mix Seafood, Fish and Shrimp, Fresh Minced Garlic, Sauteed in Olive oil & Dried Chilli, Served with Rucolla, Watercress, Parmesan cheese and Truffle Oil', '', 85, NULL, 'Dish', '[\"pasta-aglio-olio-seafood.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (97, 1, 3, 11, NULL, 'aglio olio tuna', 'Fettucine Pasta with Mix Tuna , Fresh Minced Garlic, Onion, Bell Pepper, Sauteed in Olive Oil served with Rucolla, Watercress and Parmesan Cheese', '', 85, NULL, 'Pax', '[\"pasta-aglio-olio-tuna.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (98, 1, 3, 11, NULL, 'carbonara', 'Fettucine Pasta ,Smoked Beef Brisket in Creamy Sauce with Fresh Minced Garlic, Onion Sauteed in Olive oil Served with Rucolla, Watercress, Parmesan Cheese and Truffle Oil\r\n', '', 85, NULL, 'Pax', '[\"pasta-carbonara.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (99, 1, 3, 11, NULL, 'al fungi', 'Supresso\'s Mix Of Pasta Spaghetti, Fresh Minced Garlic, Onion, Mushroom Sauteed in Olive Oil and Cream Topped with Rucolla, Watercress, Parmesan Cheese and Truffle oil', '', 85, NULL, 'Pax', '[\"pasta-al-fungi.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (100, 1, 3, 11, NULL, 'new orleans', 'Spaghetti Pasta,Cream Based Cajun Spice, Sauce Pasta mix with Fresh Minced Garlic, Onion, Bellpepper, Mushroom Sauteed in Olive Oil and Cream, Served with Grilled Cajun Chicken, Rucolla, Watercress,Parmesan and Truffle Oil', '', 85, NULL, 'Pax', '[\"pasta-new-orleans.jpg\"]', NULL, 'false', 'false', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (101, 2, 4, 12, NULL, 'nasi rames komplit', 'Daging Rendang, Bali Telur & Tahu, Mie Goreng, Tumis Tempe & Kacang Panjang, Sambal Korek dan Kerupuk\r\n', '', 55, NULL, 'Pax', '[\"nasi-rames-komplit.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (102, 2, 4, 12, NULL, 'nasi campur komplit', 'Sayur Urap, Bihun Kecap, Sambal Goreng Tempe, Kare Ayam, Bali Telur & Tahu, Sambal Korek dan Kerupuk\r\n', '', 55, NULL, 'Pax', '[\"nasi-campur-komplit.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (103, 2, 4, 12, NULL, 'nasi jagung komplit', 'Bali Ayam, Bali Tahu & Telur, Sayur Urap, Ikan Asin Jambrong, Sambal Goreng Tempe, dan Sambal Terasi\r\n', '', 55, NULL, 'Pax', '[\"nasi-jagung-komplit.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (104, 2, 4, 12, NULL, 'nasi pecel sayur', 'Kecambah Panjang, Kacang Panjang, Wortel, daun Singkong Timun dan Kemangi. Bumbu Pecel, Ayam & Tempe Goreng Kremes, Tahu Goreng, Telur Ceplok Setengah Matang, dan Kerupuk Puli\r\n', '', 45, NULL, 'Pax', '[\"nasi-pecel-sayur-ayam.jpeg\",\"nasi-pecel-sayur-empal-daging.jpeg\"]', NULL, 'true', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (105, 2, 4, 12, NULL, 'nasi urap sayur', 'Kecambah Panjang , Kacang Panjang , Wortel, Daun Singkong, Timun , Kemangi. Bumbu Sayur Urap, Ayam dan Tempe goreng kremes, Tahu goreng , Sambal Bali dan Telur Rebus , Kerupuk Puli\r\n', '', 45, NULL, 'Pax', '[\"nasi-urap-sayur-ayam.jpeg\",\"nasi-urap-sayur-empal-daging.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (106, 2, 4, 12, NULL, 'nasi ayam geprek', 'Ayam Tanpa Tulang goreng tepung, disertai lalapan ( Timun, Tomat, Kemangi) dan disajikan dengan sambal korek\r\n', '', 45, NULL, 'Pax', '[\"nasi-ayam-geprek.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (107, 2, 4, 12, NULL, 'nasi kare ayam', NULL, '', 60, NULL, 'Pax', '[\"nasi-kare-ayam.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (108, 2, 4, 12, NULL, 'nasi ayam goreng laos', 'Ayam Goreng disajikan dengan tempe dan kremesan bumbu Laos, Lalapan ( kemangi , Timun, Tomat) dan Sambal terasi\r\n', '', 60, NULL, 'Pax', '[\"nasi-ayam-goreng-laos.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (109, 2, 4, 12, NULL, 'bubur ayam', 'Bubur dengan Kuah Kare, Ayam Suwir, Kacang tanah, Cakue, Kulit pangsit goreng, Telur Asin , Sambal Soto, Seledri, bawang Merah Goreng, Kerupuk Udang\r\n', '', 40, NULL, 'Pax', '[\"bubur-ayam.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (110, 2, 4, 12, NULL, 'mie ayam jamur', NULL, '', 40, NULL, 'Pax', '[\"mie-ayam-jamur-mie hijau.jpeg\",\"mie-ayam-jamur-mie-kuning.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (111, 2, 4, 12, NULL, 'tahu telur', 'Olahan Bumbu Petis dan Kecap Manis, Tahu goreng, Telur dadar goreng, Kecambah Pendek, Sambal Soto, Kerupuk Udang\r\n', '', 45, NULL, 'Pax', '[\"tahu-telur.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (112, 2, 4, 12, NULL, 'mie godog', 'Mie Kuah, Kubis , Daun Bawang, Ayam Suwir, Telur rebus , Acar, Bawang merah goreng, dan Kerupuk Udang\r\n', '', 45, NULL, 'Pax', '[\"mie-godog.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (113, 2, 4, 12, NULL, 'lontong sayur kare ayam', 'Kuah Sayur Lodeh ( Wortel, Labu Siam, Kacang Panjang, Pepaya Muda, Santan, Cabe rawit) Kare Ayam, Telur Rebus, Serundeng, dan Emping Blinjo\r\n', '', 60, NULL, 'Pax', '[\"lontong-sayur-kare-ayam.jpeg\",\"lontong-sayur-rendang-daging.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (114, 2, 4, 12, NULL, 'nasi goreng teri', 'Supresso\'s take on teh tradisional Indonesian Fried Rice with Shrimp paste and Sliced pan - Fried Chicken Breast, Accompanied With Pickles, Sunny Side up and Shrimp Cracker on the Side\r\n', '', 50, NULL, 'Pax', '[\"nasi-goreng-teri-medan.jpg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (115, 2, 4, 12, NULL, 'gado-gado', 'Aneka Sayuran (Selada, Timun, tomat, Kecambah dan Kacang Panjang) Telur Rebus, Tahu dan Tempe Goreng, Lontong , Kerupuk Udang , Emping Blinjo, Sambal Soto dan Olahan Bumbu Gado - gado\r\n', '', 60, NULL, 'Pax', '[\"gado-gado.jpg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (116, 2, 4, 13, NULL, 'nasi ayam kemangi', 'Special Indonesian Food ayam dimasak dengan bumbu merah dengan santan disajikan dengan sayur kacang panjang dengan bumbu Jukut dan Sambal Matah\r\n', '', 38, NULL, 'Pax', '[\"nasi-ayam-kemangi.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (117, 2, 4, 13, NULL, 'nasi ayam teriyaki', 'Rice Bowl, Ayam Crispy, Saus Teriyaki, Tumis wortel,Kubis dan Telur\r\n', '', 38, NULL, 'Pax', '[\"nasi-ayam-teriyaki.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (118, 2, 4, 13, NULL, 'nasi dory sambal matah', 'Rice Bowl, Dorry Crispy,Sambal Matah ( Cabe rawit, Daun jeruk, Sereh, Bawang merah, Terasi Udang, Minyak Ayam )\r\n', '', 38, NULL, 'Pax', '[\"nasi-dory-sambal-matah.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (119, 2, 4, 13, NULL, 'nasi goreng bali', NULL, '', 38, NULL, 'Pax', '[\"nasi-goreng-bali.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (120, 2, 4, 13, NULL, 'nasi goreng gila', 'Nasi goreng Rice Bowl, Saos Tomat, Bumbu Terasi, Chicken Sausage, Ayam Suwir, Telur Mata Sapi, Acar Timun dan Kerupuk Bintang\r\n', '', 60, NULL, 'Pax', '[\"nasi-goreng-gila.jpeg\"]', NULL, 'true', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (121, 2, 4, 14, NULL, 'bubur candil', 'Bola - bola ketan di masak dengan gula merah dan santan\r\n', '', 30, NULL, 'Pax', '[\"bubur-candil.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (122, 2, 4, 14, NULL, 'es cendol', 'Santan Tapioca pandan with coconut milk\r\n', '', 30, NULL, 'Pax', '[\"es-cendol.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (123, 2, 4, 14, NULL, 'es kelapa jelly', 'Syrup coco pandan, dan Selasih\r\n', '', 30, NULL, 'Pax', '[\"es-kelapa-jelly.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (124, 2, 4, 14, NULL, 'es jagung manis', NULL, '', 30, NULL, 'Pax', '[\"es-jagung-manis.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (125, 2, 4, 14, NULL, 'ronde', 'Hidangan dessert cake, dengan Kuah Jahe, Bola - Bola Ketan, Kelapa Jelly, Mutiara, Dan Kacang Tanah\r\n', '', 30, NULL, 'Pax', '[\"ronde.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (126, 2, 4, 15, NULL, 'nasi tongseng ayam', 'Soup Ayam dengan kuah santan dan sayuran kubis, tomat, cabe rawit dan disajikan dengan emping\r\n', '', 65, NULL, 'Pax', '[\"nasi-tongseng-ayam.jpeg\",\"nasi-tongseng-kambing.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (127, 2, 4, 15, NULL, 'nasi gulai kambing', NULL, '', 65, NULL, 'Pax', '[\"nasi-gulai-kambing.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (128, 2, 4, 15, NULL, 'nasi rawon daging', 'Soup Daging sapi dimasak dengan bumbu kluwek, Disajikan dengan tempe dan telur asin, Tauge, Kerupuk udang, sambal terasi dan daun bawang\r\n', '', 65, NULL, 'Pax', '[\"nasi-rawon-daging.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (129, 2, 4, 15, NULL, 'nasi soto betawi', 'Soup Daging dimasak dengan santan dan susu, disajikan dengan emping, jeruk nipis, Kentang, Tomat, Daun Bawang, dan sambal Soto\r\n', '', 65, NULL, 'Pax', '[\"nasi-soto-betawi.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (130, 2, 4, 15, NULL, 'nasi soto ayam', 'Soup Ayam disajikan dengan Soun, telur, Kubis, Krupuk Udang, Kripik kentang, Jeruk Nipis dan Sambal Soto\r\n', '', 60, NULL, 'Pax', '[\"nasi-soto-ayam.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (131, 2, 4, 15, NULL, 'soto ayam medan', 'Sup Ayam khas Medan , Santan, Soun, Telur Rebus,Perkedel Kentang, Jeruk Nipis, Sambal Soto, Tomat dan Emping Mlinjo\r\n', '', 60, NULL, 'Pax', '[\"nasi-soto-medan.jpg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (132, 2, 4, 15, NULL, 'nasi asem-asem ayam', NULL, '', 60, NULL, 'Pax', '[\"nasi-asem-asem-ayam.jpeg\"]', NULL, 'true', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (133, 2, 4, 15, NULL, 'nasi sayur asem komplit', 'Kuah Sayur Asem ( Daging , Labu Siam , Kacang Panjang, Kubis Putih, Jagung Manis, Kacang Tanah) Ikan Asin Jombrong,Telur Asin, Tempe Goreng dan Sambal Terasi\r\n', '', 60, NULL, 'Pax', '[\"nasi-sayur-asem-komplit.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (134, 2, 4, 15, NULL, 'sayur asem', NULL, '', 35, NULL, 'Pax', '[\"sayur-asem.jpeg\"]', NULL, 'false', 'true', 'false', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (135, 2, 4, 16, NULL, 'nasi putih', 'Nasi Putih\r\n', '', 12, NULL, 'Pax', '[\"nasi-putih.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (136, 2, 4, 16, NULL, 'nasi merah', 'Nasi Merah\r\n', '', 12, NULL, 'Pax', '[\"nasi-merah.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (137, 2, 4, 16, NULL, 'nasi jagung', 'Nasi Jagung\r\n', '', 12, NULL, 'Pax', '[\"nasi-jagung.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (138, 2, 4, 17, NULL, 'sambal terasi', 'Cabe Rawit, Bawang Putih , Terasi, Udang Tumis dengan Minyak Bawang\r\n', '', 12, NULL, 'Pax', '[\"sambal-terasi.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (139, 2, 4, 17, NULL, 'sambal korek', 'Cabe rawit, Bawang Putih dengan minyak bawang\r\n', '', 12, NULL, 'Pax', '[\"sambal-korek.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (140, 2, 4, 18, NULL, 'pastel', NULL, '', 18, NULL, 'Pax', '[\"pastel.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (141, 2, 4, 18, NULL, 'kroket ayam', NULL, '', 18, NULL, 'Pax', '[\"kroket-ayam.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (142, 2, 4, 18, NULL, 'risoles ayam', 'Risoles, daging ayam, Telur Rebus, Jagung Manis, Mayonise, dan SKM\r\n', '', 18, NULL, 'Pax', '[\"risoles-ayam.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (143, 2, 4, 18, NULL, 'risoles mayo smoked beef', 'Risoles, Smokeed Beef, Telur Rebus, Jagung Manis, Mayonise, dan SKM\r\n', '', 18, NULL, 'Pax', '[\"risoles-mayo-smoked-beef.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (144, 2, 4, 18, NULL, 'lumpia goreng', 'Lumpia Goreng ( Ayam dan Rebung )\r\n', '', 18, NULL, 'Pax', '[\"lumpia-goreng.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (145, 2, 4, 18, NULL, 'tahu isi', NULL, '', 35, NULL, 'Pax', '[\"tahu-isi.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (146, 2, 4, 18, NULL, 'tempe mendoan', NULL, '', 35, NULL, 'Pax', '[\"tempe-mendoan.jpeg\"]', NULL, 'false', 'false', 'false', 'false', NULL, NULL);
INSERT INTO `pos_products` VALUES (147, NULL, NULL, NULL, NULL, 'jaheku', NULL, NULL, 25, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (148, NULL, NULL, NULL, NULL, 'aqua reflection still', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (149, NULL, NULL, NULL, NULL, 'aqua reflection sparkling', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (150, NULL, NULL, NULL, NULL, 'iced lemon tea', NULL, NULL, 28, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (151, NULL, NULL, NULL, NULL, 'camomile', NULL, NULL, 28, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (152, NULL, NULL, NULL, NULL, 'iced shaken espresso', NULL, NULL, 46, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (153, NULL, NULL, NULL, NULL, 'drip coffee west java', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (154, NULL, NULL, NULL, NULL, 'drip coffee toraja kalosi', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (155, NULL, NULL, NULL, NULL, 'drip coffee sumatra mandheling', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (156, NULL, NULL, NULL, NULL, 'drip coffee peaberry', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (157, NULL, NULL, NULL, NULL, 'drip coffee manglayang', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (158, NULL, NULL, NULL, NULL, 'drip coffee luwak arabica', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (159, NULL, NULL, NULL, NULL, 'drip coffee lampung', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (160, NULL, NULL, NULL, NULL, 'drip coffee java', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (161, NULL, NULL, NULL, NULL, 'drip coffee flores bajawa', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (162, NULL, NULL, NULL, NULL, 'drip coffee bali kintami', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (163, NULL, NULL, NULL, NULL, 'drip coffee aceh gayo', NULL, NULL, 18, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (164, NULL, NULL, NULL, NULL, 'mie goreng', NULL, NULL, 45, NULL, 'Pax', NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (165, NULL, NULL, NULL, NULL, 'nasi pecel sayur empal suwir', NULL, NULL, 45, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (166, NULL, NULL, NULL, NULL, 'nasi urap sayur empal suwir', NULL, NULL, 45, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (167, NULL, NULL, NULL, NULL, 'nasi tongseng kambing', NULL, NULL, 65, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (168, NULL, NULL, NULL, NULL, 'lontong sayur medan', 'Kuah Sayur Lodeh ( Wortel, Labu Siam, Kacang Panjang, Pepaya Muda, Santan, Cabe rawit) Kare Ayam, Telur Rebus, Serundeng, dan Emping Blinjo\r\n', '', 60, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (169, NULL, NULL, NULL, NULL, 'apple crumble cake ck', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (170, NULL, NULL, NULL, NULL, 'banana cake ck', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (171, NULL, NULL, NULL, NULL, 'chocolate brownies ck', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (172, NULL, NULL, NULL, NULL, 'red velvet marble cake ck', NULL, NULL, 20, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (173, NULL, NULL, NULL, NULL, 'signature sampler', NULL, NULL, 45, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);
INSERT INTO `pos_products` VALUES (174, NULL, NULL, NULL, NULL, 'traditional sampler', NULL, NULL, 35, NULL, NULL, NULL, NULL, 'false', 'true', 'true', 'true', NULL, NULL);

-- ----------------------------
-- Table structure for pos_sales
-- ----------------------------
DROP TABLE IF EXISTS `pos_sales`;
CREATE TABLE `pos_sales`  (
  `sale_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` double(8, 2) UNSIGNED NOT NULL,
  `rfc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  PRIMARY KEY (`sale_id`) USING BTREE,
  INDEX `sales_id_foreign`(`id` ASC) USING BTREE,
  INDEX `sales_rfc_foreign`(`rfc` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_sales
-- ----------------------------
INSERT INTO `pos_sales` VALUES (3, 150000.00, 'Jon Jones', 7, '2020-05-26 11:58:50', '2020-05-26 11:58:50', '2020-05-26');
INSERT INTO `pos_sales` VALUES (5, 45000.00, 'francis ngannou', 7, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26');
INSERT INTO `pos_sales` VALUES (6, 15000.00, 'umum', 7, '2020-05-26 12:01:22', '2020-05-26 12:01:22', '2020-05-26');
INSERT INTO `pos_sales` VALUES (8, 165000.00, 'Jose Aldo', 7, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26');
INSERT INTO `pos_sales` VALUES (9, 165000.00, 'Jose Aldo', 4, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27');
INSERT INTO `pos_sales` VALUES (10, 30000.00, 'francis ngannou', 4, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27');
INSERT INTO `pos_sales` VALUES (11, 30000.00, 'Jon Jones', 4, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27');
INSERT INTO `pos_sales` VALUES (12, 30000.00, 'Jon Jones', 4, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27');
INSERT INTO `pos_sales` VALUES (13, 30000.00, 'francis ngannou', 4, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27');
INSERT INTO `pos_sales` VALUES (14, 150000.00, 'Jose Aldo', 4, '2020-05-27 12:03:53', '2020-05-27 12:03:53', '2020-05-27');
INSERT INTO `pos_sales` VALUES (15, 165000.00, 'Jon Jones', 4, '2020-05-28 02:47:12', '2020-05-28 02:47:12', '2020-05-28');
INSERT INTO `pos_sales` VALUES (16, 165000.00, 'Jose Aldo', 4, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28');
INSERT INTO `pos_sales` VALUES (17, 165000.00, 'francis ngannou', 4, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28');
INSERT INTO `pos_sales` VALUES (18, 15000.00, 'Jose Aldo', 4, '2020-05-28 02:50:14', '2020-05-28 02:50:14', '2020-05-28');
INSERT INTO `pos_sales` VALUES (19, 15000.00, 'Jon Jones', 4, '2020-06-11 17:47:59', '2020-06-11 17:47:59', '2020-06-12');
INSERT INTO `pos_sales` VALUES (20, 15000.00, 'francis ngannou', 4, '2020-06-11 17:48:21', '2020-06-11 17:48:21', '2020-06-12');
INSERT INTO `pos_sales` VALUES (21, 15000.00, 'umum', 4, '2020-06-17 10:51:05', '2020-06-17 10:51:05', '2020-06-17');
INSERT INTO `pos_sales` VALUES (22, 15000.00, 'Jose Aldo', 4, '2020-06-17 10:53:09', '2020-06-17 10:53:09', '2020-06-17');
INSERT INTO `pos_sales` VALUES (23, 15000.00, 'Jon Jones', 4, '2020-06-17 10:53:27', '2020-06-17 10:53:27', '2020-06-17');
INSERT INTO `pos_sales` VALUES (24, 15000.00, 'Jose Aldo', 4, '2020-06-17 10:54:14', '2020-06-17 10:54:14', '2020-06-17');
INSERT INTO `pos_sales` VALUES (25, 165000.00, 'Jon Jones', 4, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17');
INSERT INTO `pos_sales` VALUES (26, 165000.00, 'Jose Aldo', 4, '2020-06-17 11:35:31', '2020-06-17 11:35:31', '2020-06-17');
INSERT INTO `pos_sales` VALUES (27, 195000.00, 'Jose Aldo', 4, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17');
INSERT INTO `pos_sales` VALUES (28, 180000.00, 'Jose Aldo', 4, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17');
INSERT INTO `pos_sales` VALUES (29, 30000.00, 'Jose Aldo', 4, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17');
INSERT INTO `pos_sales` VALUES (30, 75000.00, 'Jose Aldo', 4, '2020-06-17 12:10:37', '2020-06-17 12:10:37', '2020-06-17');
INSERT INTO `pos_sales` VALUES (31, 30000.00, 'umum', 4, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17');
INSERT INTO `pos_sales` VALUES (32, 180000.00, 'Jon Jones', 4, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17');
INSERT INTO `pos_sales` VALUES (33, 15000.00, 'Jose Aldo', 4, '2020-07-23 10:21:56', '2020-07-23 10:21:56', '2020-07-23');
INSERT INTO `pos_sales` VALUES (34, 15000.00, 'Jon Jones', 4, '2020-09-03 10:21:10', '2020-09-03 10:21:10', '2020-09-03');
INSERT INTO `pos_sales` VALUES (35, 30000.00, 'francis ngannou', 4, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03');

-- ----------------------------
-- Table structure for pos_sub_category
-- ----------------------------
DROP TABLE IF EXISTS `pos_sub_category`;
CREATE TABLE `pos_sub_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_sub_category
-- ----------------------------
INSERT INTO `pos_sub_category` VALUES (1, 1, 'manual brew', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (2, 1, 'drip coffee', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (3, 1, 'coffee', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (4, 1, 'Coffee frappe', 'true', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (5, 2, 'frappe', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (6, 2, 'tea', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (7, 2, 'soda', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (8, 2, 'add-ons', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (9, 3, 'Supresso Specials', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (10, 3, 'pizza', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (11, 3, 'pasta', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (12, 4, 'main course', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (13, 4, 'rice bowl', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (14, 4, 'dessert', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (15, 4, 'soup', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (16, 4, 'rice', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (17, 4, 'sambal', 'false', NULL, NULL);
INSERT INTO `pos_sub_category` VALUES (18, 4, 'appetizer', 'false', NULL, NULL);

-- ----------------------------
-- Table structure for pos_users
-- ----------------------------
DROP TABLE IF EXISTS `pos_users`;
CREATE TABLE `pos_users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pos_users
-- ----------------------------
INSERT INTO `pos_users` VALUES (4, 'admin', 'admin@admin.com', NULL, NULL, '$2y$10$MbAPF0KLEbARFK8DN3LpfOT4BhpmJ87t7ruL4BWycLTEh7smFspYa', 0, NULL, NULL, NULL);
INSERT INTO `pos_users` VALUES (5, 'jhon doe', 'jhondoe@mail.com', NULL, NULL, '$2y$10$qq0Z4W8/fYwOk5Qr/9jeIO79zIX2cWnvpAmRWao6qs2l.tpTdmlAC', 0, NULL, '2020-05-26 08:17:34', '2020-05-26 08:17:34');
INSERT INTO `pos_users` VALUES (6, 'James Bond', 'james@bond.com', NULL, NULL, '$2y$10$fvVAwrhEmO1tIfURhAm4fubGhn9lDGW8nKG5Du99E4KuNUB2xuGd6', 0, NULL, '2020-05-26 08:18:08', '2020-05-26 08:18:08');
INSERT INTO `pos_users` VALUES (7, 'Cornor Mcgregor', 'hockeycorpmarketing@gmail.com', NULL, NULL, '$2y$10$IyiVEZQKHZWJdGzxxTwEyuBY1ZBiizkit5vAd3eIyZrAPE6HDjKmG', 0, NULL, '2020-05-26 08:18:38', '2020-05-26 08:18:38');

-- ----------------------------
-- Table structure for pos_vouchers_models
-- ----------------------------
DROP TABLE IF EXISTS `pos_vouchers_models`;
CREATE TABLE `pos_vouchers_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kodecoupon` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `namacoupon` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominalpersen` int NOT NULL,
  `nominalbulat` double(20, 2) NOT NULL,
  `tipe` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlahpakai` int NOT NULL,
  `minimumorder` double(20, 2) NOT NULL,
  `maxdiscount` double NULL DEFAULT NULL,
  `couponstatus` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `member` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktustart` date NOT NULL,
  `waktuend` date NOT NULL,
  `waktudibuat` date NULL DEFAULT NULL,
  `waktuclaim` date NULL DEFAULT NULL,
  `judulcoupon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `desccoupon` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jenis_voucher` enum('promo','event','redeem') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'promo',
  `poinneed` int NULL DEFAULT NULL,
  `order_type` enum('dine-in','takeway') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pos_vouchers_models
-- ----------------------------
INSERT INTO `pos_vouchers_models` VALUES (1, 'ONE10STEFf', NULL, 10, 0.00, 'persen', 0, 0.00, NULL, NULL, 'ya', '2021-05-17', '2021-05-31', NULL, NULL, '', '', NULL, 'promo', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product_category_models
-- ----------------------------
DROP TABLE IF EXISTS `product_category_models`;
CREATE TABLE `product_category_models`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_category_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category_models
-- ----------------------------
INSERT INTO `product_category_models` VALUES (1, 'accessories', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (2, 'assorted', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (3, 'balicafe', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (4, 'bundle', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (5, 'giftset', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (6, 'gourmet', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (7, 'luwak prestige', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (8, 'organic', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (9, 'rainforest', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (10, 'single origin', NULL, NULL, NULL, NULL);
INSERT INTO `product_category_models` VALUES (11, 'world blend', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (1, 3);
INSERT INTO `role_has_permissions` VALUES (1, 4);
INSERT INTO `role_has_permissions` VALUES (1, 5);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (2, 3);
INSERT INTO `role_has_permissions` VALUES (2, 4);
INSERT INTO `role_has_permissions` VALUES (2, 5);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (3, 3);
INSERT INTO `role_has_permissions` VALUES (3, 4);
INSERT INTO `role_has_permissions` VALUES (3, 5);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (4, 3);
INSERT INTO `role_has_permissions` VALUES (4, 4);
INSERT INTO `role_has_permissions` VALUES (4, 5);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (5, 3);
INSERT INTO `role_has_permissions` VALUES (5, 4);
INSERT INTO `role_has_permissions` VALUES (5, 5);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (6, 3);
INSERT INTO `role_has_permissions` VALUES (6, 4);
INSERT INTO `role_has_permissions` VALUES (6, 5);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (7, 3);
INSERT INTO `role_has_permissions` VALUES (7, 5);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (8, 3);
INSERT INTO `role_has_permissions` VALUES (8, 4);
INSERT INTO `role_has_permissions` VALUES (8, 5);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (9, 3);
INSERT INTO `role_has_permissions` VALUES (9, 4);
INSERT INTO `role_has_permissions` VALUES (9, 5);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (10, 3);
INSERT INTO `role_has_permissions` VALUES (10, 4);
INSERT INTO `role_has_permissions` VALUES (10, 5);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (11, 3);
INSERT INTO `role_has_permissions` VALUES (11, 4);
INSERT INTO `role_has_permissions` VALUES (11, 5);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (12, 3);
INSERT INTO `role_has_permissions` VALUES (12, 4);
INSERT INTO `role_has_permissions` VALUES (12, 5);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (13, 3);
INSERT INTO `role_has_permissions` VALUES (13, 4);
INSERT INTO `role_has_permissions` VALUES (13, 5);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'web', '2022-09-16 08:26:44', '2022-09-16 08:26:44');
INSERT INTO `roles` VALUES (2, 'staff', 'web', '2022-09-16 08:36:15', '2022-09-16 08:36:15');
INSERT INTO `roles` VALUES (3, 'member', 'web', '2022-10-13 03:13:07', '2022-10-13 03:13:07');
INSERT INTO `roles` VALUES (4, 'admin02', 'web', '2023-02-28 09:17:51', '2023-02-28 09:17:51');
INSERT INTO `roles` VALUES (5, 'admin01', 'web', '2023-03-30 10:35:16', '2023-03-30 10:35:16');

-- ----------------------------
-- Table structure for setting_menu
-- ----------------------------
DROP TABLE IF EXISTS `setting_menu`;
CREATE TABLE `setting_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `menu_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_parent` int NULL DEFAULT NULL,
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` enum('label','menu','submenu') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'label',
  `ord` int NULL DEFAULT NULL,
  `extensiontarget` int NULL DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting_menu
-- ----------------------------
INSERT INTO `setting_menu` VALUES (1, 'MASTER', NULL, '#', NULL, 0, NULL, 'label', 1, NULL, NULL, NULL, NULL, '2023-05-24 09:56:59');
INSERT INTO `setting_menu` VALUES (2, 'Auth', NULL, '#', NULL, 1, 'ki-address-book', 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-24 09:54:12');
INSERT INTO `setting_menu` VALUES (3, 'Users', NULL, 'users', NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-05-24 09:56:31');
INSERT INTO `setting_menu` VALUES (4, 'Roles', NULL, 'roles', NULL, 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, '2023-05-24 09:56:45');
INSERT INTO `setting_menu` VALUES (5, 'Product', NULL, '#', NULL, 1, 'ki-element-7', 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-24 09:57:21');
INSERT INTO `setting_menu` VALUES (6, 'Category Product', NULL, 'pos_category_products', NULL, 5, NULL, 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-24 09:55:17');
INSERT INTO `setting_menu` VALUES (7, 'Product', NULL, 'pos_products', NULL, 5, NULL, 'menu', 2, NULL, NULL, NULL, NULL, '2023-05-24 09:55:24');
INSERT INTO `setting_menu` VALUES (8, 'APPS', NULL, '#', NULL, 0, NULL, 'label', 2, NULL, NULL, NULL, NULL, '2023-06-12 08:45:39');
INSERT INTO `setting_menu` VALUES (9, 'News', NULL, '#', NULL, 8, 'ki-book', 'menu', 1, NULL, NULL, NULL, NULL, '2023-05-24 09:54:12');
INSERT INTO `setting_menu` VALUES (10, 'News Category', NULL, 'news_category', NULL, 9, 'ki-abstract-26', 'menu', 1, NULL, NULL, NULL, NULL, '2023-06-12 08:46:03');
INSERT INTO `setting_menu` VALUES (11, 'Store', NULL, NULL, NULL, 1, 'ki-html', 'menu', 3, NULL, NULL, NULL, NULL, '2023-06-12 08:44:08');
INSERT INTO `setting_menu` VALUES (12, 'Edit Stock', NULL, NULL, NULL, 12, NULL, 'menu', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `setting_menu` VALUES (13, 'Order History', NULL, NULL, NULL, 12, NULL, 'menu', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `setting_menu` VALUES (14, 'Discount Product', NULL, NULL, NULL, 12, NULL, 'menu', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `setting_menu` VALUES (15, 'Brand', 'Brand', 'pos_brand', NULL, 11, 'ki-address-book', 'menu', 1, NULL, 'active', 'false', '2023-05-26 09:06:13', '2023-05-26 09:11:04');
INSERT INTO `setting_menu` VALUES (16, 'Permissions', NULL, 'permissions', NULL, 2, 'ki-book', 'menu', 3, NULL, 'active', 'false', '2023-05-26 09:06:13', '2023-05-26 09:11:04');
INSERT INTO `setting_menu` VALUES (17, 'POS', NULL, '#', NULL, NULL, NULL, 'label', NULL, NULL, NULL, NULL, NULL, '2023-06-12 08:45:39');
INSERT INTO `setting_menu` VALUES (18, 'Additional Product', NULL, '#', NULL, NULL, NULL, 'label', NULL, NULL, NULL, NULL, NULL, '2023-06-12 08:47:29');
INSERT INTO `setting_menu` VALUES (19, 'Sales', NULL, '#', NULL, NULL, NULL, 'label', NULL, NULL, NULL, NULL, NULL, '2023-06-12 08:47:29');

-- ----------------------------
-- Table structure for setting_menu_old
-- ----------------------------
DROP TABLE IF EXISTS `setting_menu_old`;
CREATE TABLE `setting_menu_old`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `menu_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_parent` int NULL DEFAULT NULL,
  `type` enum('front_top','front_carousel','backend_sidebar','backend_top') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order` int NULL DEFAULT NULL,
  `extensiontarget` int NULL DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_menu_old
-- ----------------------------
INSERT INTO `setting_menu_old` VALUES (1, 'clearance_sale', 'Clearance Sale', NULL, '#fd4f00', NULL, 'front_carousel', 2, 0, 'active', 'false', NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (2, 'best_seller', 'Best Seller', NULL, '#fd4f00', NULL, 'front_carousel', 3, 83, 'active', 'false', NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (3, 'single_origin', 'Single Origin', NULL, NULL, NULL, 'front_carousel', 4, 9, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (4, 'gourmet', 'Gourmet', NULL, NULL, NULL, 'front_carousel', 5, 5, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (5, 'the_collection', 'The Collection', NULL, NULL, NULL, 'front_carousel', 6, 67811, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (6, 'world_blend', 'World Blend', NULL, NULL, NULL, 'front_carousel', 7, 10, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (7, 'balicafe', 'Balicafe', NULL, NULL, NULL, 'front_carousel', 8, 3, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (8, 'assorted', 'Assorted', NULL, NULL, NULL, 'front_carousel', 9, 2, 'inactive', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (9, 'giftset', 'Giftset', NULL, NULL, NULL, 'front_carousel', 10, 12, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (10, 'value_set', 'Value Set', NULL, NULL, NULL, 'front_carousel', 11, 13, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (11, 'accessories', 'Accessories', NULL, NULL, NULL, 'front_carousel', 12, 1, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (12, 'bundle', 'Bundle', NULL, NULL, NULL, 'front_carousel', 13, 4, 'inactive', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (13, 'products', 'Coffee', NULL, NULL, NULL, 'front_top', 1, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (14, 'explore', 'Explore', NULL, NULL, NULL, 'front_top', 2, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (15, 'partnership', 'Partnership', NULL, NULL, NULL, 'front_top', 3, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (16, 'membership', 'Membership', NULL, NULL, NULL, 'front_top', 4, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (17, 'gallery', 'Gallery', NULL, NULL, NULL, 'front_top', 5, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (18, 'news', 'News', NULL, NULL, NULL, 'front_top', 6, NULL, 'active', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (19, 'cafe', 'Cafe', NULL, NULL, NULL, 'front_top', 7, NULL, 'inactive', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (20, 'machines', 'Machines', NULL, NULL, NULL, 'front_top', 8, NULL, 'inactive', NULL, NULL, NULL);
INSERT INTO `setting_menu_old` VALUES (21, 'ramadhan_sale', 'Ramadhan Sale', NULL, NULL, NULL, 'front_carousel', 1, 55, 'active', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for setting_route
-- ----------------------------
DROP TABLE IF EXISTS `setting_route`;
CREATE TABLE `setting_route`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `grp` enum('web','api') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'web',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `controller_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stats` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `deleted` enum('false','true') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'false',
  `created_at` datetime NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_route
-- ----------------------------
INSERT INTO `setting_route` VALUES (1, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', NULL, NULL, 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (2, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (3, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (4, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (5, 'setting_web', 'web', 'resources', 'AppHttpControllersBackSetting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (6, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\BackSetting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (7, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (8, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_webSetting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (9, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (10, 'setting_web', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_web\\Setting_webController', '', '', 'true', NULL, NULL);
INSERT INTO `setting_route` VALUES (11, 'setting_menu', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Setting_menu\\Setting_menuController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (12, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (13, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (14, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (15, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (16, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (17, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (18, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (19, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (20, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (21, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (22, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (23, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (24, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (25, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (26, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (27, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (28, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (29, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (30, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (31, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (32, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (33, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (34, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (35, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (36, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (37, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (38, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (39, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (40, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (41, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (42, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (43, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (44, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (45, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (46, 'news', 'web', 'resources', 'App\\Http\\Controllers\\Back\\News\\NewsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (47, 'pos_brand', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_brand\\Pos_brandController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (48, 'pos_brand', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_brand\\Pos_brandController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (49, 'pos_carts', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_carts\\Pos_cartsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (50, 'pos_category', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_category\\Pos_categoryController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (51, 'permissions', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Permissions\\PermissionsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (52, 'pos_clients', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_clients\\Pos_clientsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (53, 'pos_products', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_products\\Pos_productsController', '', '', 'false', NULL, NULL);
INSERT INTO `setting_route` VALUES (54, 'pos_products', 'web', 'resources', 'App\\Http\\Controllers\\Back\\Pos_products\\Pos_productsController', '', '', 'false', NULL, NULL);

-- ----------------------------
-- Table structure for setting_web
-- ----------------------------
DROP TABLE IF EXISTS `setting_web`;
CREATE TABLE `setting_web`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `site_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_logo_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_logo_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stripe_screet_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stripe_publishable_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stripe_webhook_screet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gst` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting_web
-- ----------------------------
INSERT INTO `setting_web` VALUES (4, 'Supresso', 'supresso branch singapore', '1', '2', '', '', 'qwerty', 'asdfg', 'zxcvb', 'poiuyt', 'lkjhgf', 8);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailnodot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'indracodev', 'indracodev@gmail.com', 'admin@gmail.com', NULL, '$2y$10$WaV26cdj0dgVoLPMSTTgYuZWyM7u53uyb91FELIb8K9aBCZbaQrNi', '', NULL, '2022-09-16 08:26:44', '2023-03-31 08:44:22');
INSERT INTO `users` VALUES (2, 'Meja 1', 'meja1@indraco.com', NULL, NULL, '$2y$10$wEu9hqGq5j3njTbdSUQpcOPFTnpgmpT05mqdmKV6dchklq8HjCMyW', NULL, NULL, '2023-06-09 06:34:58', '2023-06-13 08:54:16');
INSERT INTO `users` VALUES (3, 'Meja 2', 'meja2@indraco.com', NULL, NULL, '$2y$10$XWGVHvtTPGhGw6dbiZD81ecnozevQmKlOKROMyn45zrQoLIAgF/7a', NULL, NULL, '2023-06-12 06:05:40', '2023-06-13 08:54:30');

SET FOREIGN_KEY_CHECKS = 1;
