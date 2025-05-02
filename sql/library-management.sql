/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 16/12/2024 21:50:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '17609801163', NULL, '2024-11-14 22:21:26', '2024-11-16 20:37:20', 'ead08e95e9c867a2ee833c232bf55dbc', 1);
INSERT INTO `admin` VALUES (2, 'admin1', '17351884900', 'admin1@qq.com', '2024-11-14 21:28:42', '2024-12-16 14:02:36', '77e3b13fb300c6f66e1e2568313c812a', 1);
INSERT INTO `admin` VALUES (6, '你好呀', '17609801163', '123', '2024-12-16 19:41:24', NULL, '77e3b13fb300c6f66e1e2568313c812a', 1);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `publish_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版日期',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标准码',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '积分',
  `nums` int(10) NULL DEFAULT 0 COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_no_index`(`book_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (11, '骆驼祥子', '讲述关于旧北平社会', '2024-10-02', '老舍', '北京出版社', '历史文化 > 现代文化', 'LTXZ-121313213', 'http://localhost:9090/api/book/file/download/1734281679944?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzM1NTc3Njc5fQ.jdSs8pFDlwAdHetXeerCvbChm5b-30uXa51LcRdkJG4&play=1', '2024-12-16 00:54:41', '2024-12-16 00:00:00', 20, 44);
INSERT INTO `book` VALUES (12, 'web编程技术', '前后端项目', '2024-11-12', '张富', '东北大学出版社', '科技 > 软件开发', 'WEB-10011122', 'http://localhost:9090/api/book/file/download/1734281773323?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzM1NTc3NzczfQ.dZw8njdRI4OD34ENqjo1X4vDpeCMx05Jm-QxIwuxc4E&play=1', '2024-12-16 00:56:14', '2024-12-16 00:00:00', 30, 58);
INSERT INTO `book` VALUES (13, '十万个为什么', '科普读物', '2024-11-12', '叶安', '沈阳出版社', '科技 > 科普', 'WSM-2331312434', 'http://localhost:9090/api/book/file/download/1734282193132?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzM1NTc4MTkzfQ.43pmoCMbjLcBvMdSKbnosK0eIftPYQv_W6JmqLQ-Sdc&play=1', '2024-12-16 01:03:14', NULL, 10, 76);
INSERT INTO `book` VALUES (14, '红楼梦绘本', '反映了封建社会盛极而衰的时代特征', '2024-09-10', '曹雪芹', '少年儿童出版社', '历史文化 > 清朝文化', 'HLM-12113123', 'http://localhost:9090/api/book/file/download/1734282349744?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzM1NTc4MzQ5fQ.HoZ86w76BO2zSXCV88p1eebsvQ7YuCQusaQxYMQU8Fk&play=1', '2024-12-16 01:05:50', '2024-12-16 00:00:00', 20, 99);
INSERT INTO `book` VALUES (15, '唐诗三百首', '诗词著作', '2024-09-20', '王平', '少年儿童出版社', '历史文化 > 唐朝文化', 'TSSB-9787558911156', 'http://localhost:9090/api/book/file/download/1734282449534?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNzM1NTc4NDQ5fQ.hagtUb3spvq2GoFqo5mP-U8i3gqveKaqoGfcdUleFS0&play=1', '2024-12-16 01:07:35', '2024-12-16 00:00:00', 10, 15);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (26, 'web编程技术', 'WEB-10011122', '20240927-2094581083', '林文', '17609801163', '2024-12-16 01:14:34', NULL, 90, '已借出', 3, '2024-12-19 00:00:00');
INSERT INTO `borrow` VALUES (27, '唐诗三百首', 'TSSB-9787558911156', '202409271018800687', '艾玛', '13899900998', '2024-12-16 01:15:38', NULL, 10, '已归还', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (29, '红楼梦绘本', 'HLM-12113123', '202409271018800687', '艾玛', '13899900998', '2024-12-16 01:23:58', NULL, 0, '已借出', 0, '2024-12-16 00:00:00');
INSERT INTO `borrow` VALUES (30, '红楼梦绘本', 'HLM-12113123', '202409271239528743', '黛米', '13899900998', '2024-12-16 01:25:46', NULL, 20, '已归还', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (31, 'web编程技术', 'WEB-10011122', '202409271239528742', '奈布', '17609801163', '2024-12-16 02:10:02', NULL, 90, '已归还', 3, '2024-12-19 00:00:00');
INSERT INTO `borrow` VALUES (32, '十万个为什么', 'WSM-2331312434', '202409271239528744', '爱丽丝', '13899900998', '2024-12-16 02:10:26', NULL, 10, '已借出', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (33, '骆驼祥子', 'LTXZ-121313213', '202409271239528743', '黛米', '13899900998', '2024-12-16 02:10:38', NULL, 20, '已归还', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (34, '十万个为什么', 'WSM-2331312434', '202409271239528742', '奈布', '17609801163', '2024-12-16 19:21:13', NULL, 10, '已借出', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (35, 'web编程技术', 'WEB-10011122', '202409271018800687', '艾玛', '13899900998', '2024-12-16 19:21:49', NULL, 30, '已借出', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (36, 'web编程技术', 'WEB-10011122', '202409271239528743', '黛米', '13899900998', '2024-12-16 19:21:55', NULL, 30, '已归还', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (37, '唐诗三百首', 'TSSB-9787558911156', '202409271239528742', '奈布', '17609801163', '2024-12-16 19:21:58', NULL, 10, '已借出', 1, '2024-12-17 00:00:00');
INSERT INTO `borrow` VALUES (38, '骆驼祥子', 'LTXZ-121313213', '20240928-2094581084', '丽莎', '13899900998', '2024-12-16 19:22:03', NULL, 20, '已借出', 1, '2024-12-17 00:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级id',
  `createtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '历史文化', '历史文化', NULL, '2024-09-24 20:42:53', NULL);
INSERT INTO `category` VALUES (2, '唐朝文化', '唐朝文化', 3, '2024-09-24 20:43:21', NULL);
INSERT INTO `category` VALUES (3, '清朝文化', '清朝文化', 3, '2024-09-24 20:46:29', NULL);
INSERT INTO `category` VALUES (4, '现代文化', '现代文化', 3, '2024-09-25 21:00:41', NULL);
INSERT INTO `category` VALUES (5, '科技', '科技', NULL, '2024-09-25 21:50:08', NULL);
INSERT INTO `category` VALUES (6, '高新科技', NULL, 10, '2024-09-25 21:50:16', NULL);
INSERT INTO `category` VALUES (7, '生物科技', '生物科技', 10, '2024-09-25 21:50:22', NULL);
INSERT INTO `category` VALUES (8, '微分子科技', NULL, 11, '2024-09-25 22:11:44', NULL);
INSERT INTO `category` VALUES (14, '经济金融', '经济金融', NULL, '2024-12-15 17:22:54', '2024-12-16 00:00:00');
INSERT INTO `category` VALUES (17, '人工智能', '人工智能', 5, '2024-12-16 00:57:17', '2024-12-16 00:00:00');
INSERT INTO `category` VALUES (18, '大数据', '大数据', 5, '2024-12-16 00:57:50', NULL);
INSERT INTO `category` VALUES (19, '软件开发', '软件开发', 5, '2024-12-16 00:58:07', NULL);
INSERT INTO `category` VALUES (20, '唐朝文化', '唐朝文化', 1, '2024-12-16 00:58:23', NULL);
INSERT INTO `category` VALUES (21, '清朝文化', '清朝文化', 1, '2024-12-16 00:58:35', NULL);
INSERT INTO `category` VALUES (22, '现代文化', '现代文化', 1, '2024-12-16 00:58:55', NULL);
INSERT INTO `category` VALUES (23, '科普', '科普', 5, '2024-12-16 01:02:22', NULL);

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `score` int(10) NULL DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '已借出' COMMENT '借书状态',
  `days` int(11) NULL DEFAULT 1 COMMENT '借书天数',
  `return_date` datetime(0) NULL DEFAULT NULL COMMENT '归还日期',
  `real_date` datetime(0) NULL DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of retur
-- ----------------------------
INSERT INTO `retur` VALUES (1, '唐诗三百首', 'TSSB-9787558911156', '202409271018800687', '艾玛', '13899900998', '2024-12-16 01:47:37', NULL, 10, '已借出', 1, '2024-12-16 01:49:28', '2024-12-16 01:49:37');
INSERT INTO `retur` VALUES (17, '唐诗三百首', 'TSSB-9787558911156', '202409271018800687', '艾玛', '13899900998', '2024-12-16 02:08:08', NULL, 10, '已归还', 1, '2024-12-17 00:00:00', '2024-12-16 00:00:00');
INSERT INTO `retur` VALUES (18, '骆驼祥子', 'LTXZ-121313213', '202409271239528743', '黛米', '13899900998', '2024-12-16 02:10:48', NULL, 20, '已归还', 1, '2024-12-17 00:00:00', '2024-12-16 00:00:00');
INSERT INTO `retur` VALUES (19, '红楼梦绘本', 'HLM-12113123', '202409271239528743', '黛米', '13899900998', '2024-12-16 15:25:40', NULL, 20, '已归还', 1, '2024-12-17 00:00:00', '2024-12-16 00:00:00');
INSERT INTO `retur` VALUES (20, 'web编程技术', 'WEB-10011122', '202409271239528742', '奈布', '17609801163', '2024-12-16 15:25:41', NULL, 90, '已归还', 3, '2024-12-19 00:00:00', '2024-12-16 00:00:00');
INSERT INTO `retur` VALUES (21, 'web编程技术', 'WEB-10011122', '202409271239528743', '黛米', '13899900998', '2024-12-16 19:28:56', NULL, 30, '已归还', 1, '2024-12-17 00:00:00', '2024-12-16 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员码',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `account` int(10) NULL DEFAULT 0 COMMENT '账户余额',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '禁用状态 1不禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '林文', '20240927-2094581083', 20, '女', '17609801163', '沈阳', '2024-09-01 22:10:36', '2024-12-16 00:46:11', 50, 1);
INSERT INTO `user` VALUES (2, '丽莎', '20240928-2094581084', 20, '女', '13899900998', '洛阳', '2024-09-01 22:16:03', NULL, 103, 1);
INSERT INTO `user` VALUES (3, '艾玛', '202409271018800687', 20, '女', '13899900998', '洛阳', '2024-09-01 22:17:06', '2024-11-12 19:31:20', 110, 1);
INSERT INTO `user` VALUES (4, '奈布', '202409271239528742', 22, '男', '17609801163', '北京', '2024-09-01 22:34:48', '2024-11-01 19:31:12', 80, 1);
INSERT INTO `user` VALUES (5, '艾米丽', '20240927688792394', 21, '女', '13899900998', '洛阳', '2024-09-01 22:35:35', '2024-12-16 16:42:20', -40, 1);
INSERT INTO `user` VALUES (6, '娜塔莎', '202409271018800688', 22, '女', '13899900998', '上海', '2024-09-01 16:57:51', NULL, 0, 1);
INSERT INTO `user` VALUES (7, '黛米', '202409271239528743', 22, '女', '13899900998', '南京', '2024-09-01 17:00:40', '2024-12-09 17:05:57', 122, 1);
INSERT INTO `user` VALUES (8, '克洛伊', '202409272094581083', 21, '女', '13899900998', '淮安', '2024-09-01 17:00:52', NULL, 0, 1);
INSERT INTO `user` VALUES (9, '爱丽丝', '202409271239528744', 18, '女', '13899900998', '福州', '2024-09-01 17:00:59', NULL, 46, 1);

SET FOREIGN_KEY_CHECKS = 1;
