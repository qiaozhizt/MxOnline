/*
Navicat MySQL Data Transfer

Source Server         : my_computer
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : mxonline

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2021-02-03 15:32:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '课程部');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程资源', '7', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程资源', '7', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程资源', '7', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 课程资源', '7', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 课程章节', '8', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 课程章节', '8', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 课程章节', '8', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 课程章节', '8', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 视频', '9', 'add_video');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 视频', '9', 'change_video');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 视频', '9', 'delete_video');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 视频', '9', 'view_video');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程信息', '10', 'add_course');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程信息', '10', 'change_course');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程信息', '10', 'delete_course');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 课程信息', '10', 'view_course');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 用户咨询', '11', 'add_userask');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 用户咨询', '11', 'change_userask');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 用户咨询', '11', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 用户咨询', '11', 'view_userask');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 用户课程', '12', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 用户课程', '12', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 用户课程', '12', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 用户课程', '12', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 课程评论', '13', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 课程评论', '13', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 课程评论', '13', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 课程评论', '13', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 用户消息', '14', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 用户消息', '14', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 用户消息', '14', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 用户消息', '14', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户收藏', '15', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户收藏', '15', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户收藏', '15', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户收藏', '15', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 城市', '16', 'add_city');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 城市', '16', 'change_city');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 城市', '16', 'delete_city');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 城市', '16', 'view_city');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 课程机构', '17', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 课程机构', '17', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 课程机构', '17', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 课程机构', '17', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 教师', '18', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 教师', '18', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 教师', '18', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 教师', '18', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('73', 'Can add Bookmark', '19', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('74', 'Can change Bookmark', '19', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete Bookmark', '19', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('76', 'Can view Bookmark', '19', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('77', 'Can add User Setting', '20', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('78', 'Can change User Setting', '20', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete User Setting', '20', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('80', 'Can view User Setting', '20', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('81', 'Can add User Widget', '21', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('82', 'Can change User Widget', '21', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete User Widget', '21', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('84', 'Can view User Widget', '21', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('85', 'Can add log entry', '22', 'add_log');
INSERT INTO `auth_permission` VALUES ('86', 'Can change log entry', '22', 'change_log');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete log entry', '22', 'delete_log');
INSERT INTO `auth_permission` VALUES ('88', 'Can view log entry', '22', 'view_log');
INSERT INTO `auth_permission` VALUES ('89', 'Can add captcha store', '23', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('90', 'Can change captcha store', '23', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete captcha store', '23', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('92', 'Can view captcha store', '23', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 课程标签', '24', 'add_coursetag');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 课程标签', '24', 'change_coursetag');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 课程标签', '24', 'delete_coursetag');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 课程标签', '24', 'view_coursetag');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 轮播图', '25', 'add_banner');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 轮播图', '25', 'change_banner');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 轮播图', '25', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 轮播图', '25', 'view_banner');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 轮播课程', '26', 'add_bannercourse');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 轮播课程', '26', 'change_bannercourse');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 轮播课程', '26', 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 轮播课程', '26', 'view_bannercourse');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `response` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('205', 'FCIQ', 'fciq', 'a92b037b33002903054aa40b820fc86f3b38753e', '2021-01-26 10:28:02.048465');
INSERT INTO `captcha_captchastore` VALUES ('207', 'FPAJ', 'fpaj', '11b3ab4c270916ebd9e7f0d4575f244a09929116', '2021-01-26 10:30:47.054165');
INSERT INTO `captcha_captchastore` VALUES ('209', 'TMHF', 'tmhf', 'daa92b24d09631aab5b265ff0fa34f26cce16fab', '2021-01-26 10:32:09.771872');
INSERT INTO `captcha_captchastore` VALUES ('210', 'PRDW', 'prdw', '209cc22a1850cb592523138c9a81a8eeb0043d61', '2021-01-26 10:32:10.870931');
INSERT INTO `captcha_captchastore` VALUES ('211', 'OQUQ', 'oquq', '51983376c6728edaf6eb7a0018a10d165cdd51ca', '2021-01-26 10:32:18.824654');
INSERT INTO `captcha_captchastore` VALUES ('212', 'ZBKA', 'zbka', '71ca2e666b3eaff60a52fc178dc12df5f2d2fd6a', '2021-01-26 10:32:36.282813');
INSERT INTO `captcha_captchastore` VALUES ('213', 'UJTL', 'ujtl', '5d7ced4bb96ce3895f5ac1e621723d9e9f28ed9d', '2021-01-26 10:33:01.063519');
INSERT INTO `captcha_captchastore` VALUES ('214', 'YZBZ', 'yzbz', '09fc3af769f059fe74e5556fc8ab17efd33f499d', '2021-01-26 10:34:27.242722');
INSERT INTO `captcha_captchastore` VALUES ('215', 'XHUT', 'xhut', '3c1992bdd43085aa1a2cef4c42aa16d1fa9b5caf', '2021-01-26 11:32:51.991197');
INSERT INTO `captcha_captchastore` VALUES ('216', 'GEJY', 'gejy', 'a28c15039600eed41e63b4529c820674cd623ec6', '2021-01-26 11:49:56.579903');
INSERT INTO `captcha_captchastore` VALUES ('217', 'IMWR', 'imwr', '4a6d6a03e24f14544269c314ed839f4257d019ac', '2021-01-26 13:35:38.816953');
INSERT INTO `captcha_captchastore` VALUES ('218', 'XZJH', 'xzjh', '63431292e066b60ba0a1978dfc6daa1e4e4bbc3d', '2021-01-26 13:47:09.337374');
INSERT INTO `captcha_captchastore` VALUES ('219', 'TPOR', 'tpor', 'ce463cc9b3fd6989ef56d29cb3c5b1852cecfbf6', '2021-01-26 14:07:30.326841');
INSERT INTO `captcha_captchastore` VALUES ('220', 'HEBL', 'hebl', '717480a94fbdfd7d0d2f6892a67f7d2e9dbdb02d', '2021-01-26 14:15:40.351280');
INSERT INTO `captcha_captchastore` VALUES ('221', 'JKWB', 'jkwb', 'd62e94109b2d25c7e1fbc002a2a30f5faa6b3075', '2021-01-26 16:23:35.006383');
INSERT INTO `captcha_captchastore` VALUES ('222', 'KTQY', 'ktqy', '614c1d41beb8dcb4da6ece87e1ffc8e40966909a', '2021-01-26 16:34:25.096822');
INSERT INTO `captcha_captchastore` VALUES ('223', 'PTJB', 'ptjb', 'a8f6736f43ff904011ade19a5bafb87e58fcc915', '2021-01-26 16:43:44.843785');
INSERT INTO `captcha_captchastore` VALUES ('224', 'DKKQ', 'dkkq', 'f7bc15f8b5167aad048484de07eb9ce72dc89fb0', '2021-01-26 16:45:57.904815');
INSERT INTO `captcha_captchastore` VALUES ('225', 'QWNU', 'qwnu', '7e87680d44fed9bf86d0bbd8a2bb557354539249', '2021-01-26 17:21:19.757841');
INSERT INTO `captcha_captchastore` VALUES ('226', 'WCVP', 'wcvp', '29609bcc2ddc12128ea1a61d099d416e75a1faa1', '2021-01-26 17:24:44.950707');
INSERT INTO `captcha_captchastore` VALUES ('227', 'UWGA', 'uwga', 'cd61dee3ae03e165418072dbdd53fd320068f1ec', '2021-01-26 18:41:03.161011');
INSERT INTO `captcha_captchastore` VALUES ('228', 'BHYI', 'bhyi', '226a91083bcf3c5ca9037fc0437eaa9dab84e492', '2021-01-26 18:48:15.485531');
INSERT INTO `captcha_captchastore` VALUES ('229', 'OGXM', 'ogxm', 'c8c5146ea5e661a3604ee235d5f73de8ee3ec077', '2021-01-26 18:50:31.082116');
INSERT INTO `captcha_captchastore` VALUES ('230', 'BAVH', 'bavh', '266400b7745586abe5bd01bca1a71dc39a8985b4', '2021-01-26 19:27:45.164689');
INSERT INTO `captcha_captchastore` VALUES ('231', 'TSNM', 'tsnm', 'a333a686a5a14d54b1fe72f3f01bbd16e1bb39d8', '2021-01-26 20:04:26.504056');
INSERT INTO `captcha_captchastore` VALUES ('232', 'SZYI', 'szyi', 'dddd74268feb5dfab8b1b860c61c3a2bd9940626', '2021-01-26 20:11:45.850407');
INSERT INTO `captcha_captchastore` VALUES ('233', 'KYYI', 'kyyi', 'e57881a46bb87e98b3389ed3ec005c8c1afeccee', '2021-01-26 20:12:39.980913');
INSERT INTO `captcha_captchastore` VALUES ('234', 'PWWU', 'pwwu', '5da3662f3e65cbe55d41f84a9c6886f7a3474cb4', '2021-01-26 20:33:40.099724');
INSERT INTO `captcha_captchastore` VALUES ('235', 'ADAK', 'adak', '12d9c7bc7ac1b83add0c207c9927e3ce7405d08a', '2021-01-26 20:35:28.987855');
INSERT INTO `captcha_captchastore` VALUES ('236', 'XQBY', 'xqby', '740c6524627267d12a476afbe49cc547bd80057e', '2021-01-26 21:12:48.247081');
INSERT INTO `captcha_captchastore` VALUES ('237', 'HFMK', 'hfmk', 'e63a0a5ea2cd0cfbdf9d8b8b4437b490130e9b08', '2021-01-26 21:32:28.016156');
INSERT INTO `captcha_captchastore` VALUES ('238', 'BXUI', 'bxui', 'fe4feb3ba9f3bd663d27b7ec3da257526236aed8', '2021-01-26 21:32:31.679927');
INSERT INTO `captcha_captchastore` VALUES ('239', 'HVTX', 'hvtx', 'b020595f21b70963edf9bcafdd3aae6322da113c', '2021-01-26 21:34:57.342283');
INSERT INTO `captcha_captchastore` VALUES ('240', 'OZOR', 'ozor', '56e12eb513fdeea415578e46a35de7bff31888d0', '2021-01-27 10:18:58.808342');
INSERT INTO `captcha_captchastore` VALUES ('241', 'DFTM', 'dftm', '42ae3dc109a0e02ce6ead8eb0da3cb54b4991f9e', '2021-01-27 10:37:19.870085');
INSERT INTO `captcha_captchastore` VALUES ('242', 'YVLE', 'yvle', '52b8190c957bdc738aa3bf1ada0cecf1a909148d', '2021-01-27 10:58:26.053198');
INSERT INTO `captcha_captchastore` VALUES ('243', 'ZNQM', 'znqm', '268bb77ab3d11a5226b05ffc8798c1c04d1233c3', '2021-01-27 10:58:44.024451');
INSERT INTO `captcha_captchastore` VALUES ('244', 'JNTB', 'jntb', '893dd0c198c340f4b8f3a1e5a629ac823c07e3a6', '2021-01-27 10:59:09.756635');
INSERT INTO `captcha_captchastore` VALUES ('245', 'LQNP', 'lqnp', 'eb1a93fa10c7d0a65127f75c27295c3b6c8b2546', '2021-01-27 20:42:26.382540');
INSERT INTO `captcha_captchastore` VALUES ('246', 'ODUG', 'odug', '75c17848f1058ce2be4a0f8dcb8fa80575ebce21', '2021-01-27 20:53:40.348600');
INSERT INTO `captcha_captchastore` VALUES ('247', 'RVFN', 'rvfn', '3ca6f6c57ada302a9cecedf7c092acb2c4c93e45', '2021-01-27 21:07:17.404110');
INSERT INTO `captcha_captchastore` VALUES ('248', 'QLPB', 'qlpb', '1403dbac8509bc522d5ffa91bf11e5d7a9e2ab4e', '2021-01-28 14:48:50.357154');
INSERT INTO `captcha_captchastore` VALUES ('249', 'EHKB', 'ehkb', '6667921ce1d6014dff20dbca5d9c7a021cc404bb', '2021-01-30 11:51:49.835392');
INSERT INTO `captcha_captchastore` VALUES ('250', 'NFXI', 'nfxi', '289c0a01da53bb871aac27f6ba45c11076ffa78d', '2021-01-30 13:07:17.295489');
INSERT INTO `captcha_captchastore` VALUES ('251', 'SUSJ', 'susj', '1a0d854a3960553b155f42dfb866e29117847480', '2021-01-31 15:54:45.108416');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `learn_times` int NOT NULL,
  `degree` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `students` int NOT NULL,
  `fav_nums` int NOT NULL,
  `click_nums` int NOT NULL,
  `notice` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `youneed_know` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_tell` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int NOT NULL,
  `course_org_id` int DEFAULT NULL,
  `is_classics` tinyint(1) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_teacher_id_846fa526_fk_organiztions_teacher_id` (`teacher_id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizti` (`course_org_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizti` FOREIGN KEY (`course_org_id`) REFERENCES `organiztions_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organiztions_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organiztions_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', '2020-06-19', 'django实战开发', 'django开发', '1200', 'zj', '0', '10', '33', 'django', '后端开发', 'django', 'dajngo实战开发', 'dajngo实战开发', 'dajngo实战开发，慢慢学习就完事了', 'courses/2021/01/540e57300001d6d906000338-240-135.jpg', '1', '1', '1', '0');
INSERT INTO `courses_course` VALUES ('2', '2021-01-19', 'java实战开发', 'java实战开发', '1000', 'cj', '2', '9', '78', 'java实战开发', '后端开发', 'java', 'java实战开发', 'java实战开发', 'java实战开发', 'courses/2021/01/57035ff200014b8a06000338-240-135.jpg', '1', '1', '0', '0');
INSERT INTO `courses_course` VALUES ('3', '2021-01-19', 'MySQL', 'MySQL', '1000', 'cj', '2', '6', '37', 'MySQL', 'MySQL', 'MySQL', 'MySQL', 'MySQL', 'MySQL', 'courses/2021/01/mysql.jpg', '1', '2', '0', '0');
INSERT INTO `courses_course` VALUES ('4', '2021-01-19', 'redis', 'redis', '2000', 'gj', '3', '7', '17', 'redis', 'redis', 'redis', 'redis', 'redis', 'redis', 'courses/2021/01/540e57300001d6d906000338-240-135_wH52IED.jpg', '2', '2', '0', '0');
INSERT INTO `courses_course` VALUES ('5', '2021-01-19', 'C++', 'C++', '3000', 'zj', '4', '6', '17', 'C++', 'C++', 'C++', 'C++', 'C++', 'C++', 'courses/2021/01/540e57300001d6d906000338-240-135_n0L8vbw.jpg', '2', '3', '0', '1');
INSERT INTO `courses_course` VALUES ('6', '2021-01-19', '操作系统', '操作系统', '1000', 'gj', '5', '5', '18', '操作系统', '操作系统', '操作系统', '操作系统', '操作系统', '操作系统', 'courses/2021/01/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', '2', '3', '0', '0');
INSERT INTO `courses_course` VALUES ('7', '2021-01-19', 'linux系统', 'linux系统', '5000', 'cj', '6', '4', '17', 'linux系统', 'linux系统', 'linux系统', 'linux系统', 'linux系统', 'linux系统', 'courses/2021/01/57035ff200014b8a06000338-240-135_dHfj8Nq_o5DSjvW.jpg', '3', '4', '0', '0');
INSERT INTO `courses_course` VALUES ('8', '2021-01-19', 'flask框架', 'flask框架', '600', 'zj', '7', '3', '3', 'flask框架', 'flask框架', 'flask', 'flask框架', 'flask框架', 'flask框架', 'courses/2021/01/540e57300001d6d906000338-240-135_wH52IED_mQ48iaj.jpg', '3', '5', '0', '0');
INSERT INTO `courses_course` VALUES ('9', '2021-01-19', '机器语言', '机器语言', '1000', 'gj', '8', '2', '4', '机器语言', '机器语言', '机器语言', '机器语言', '机器语言', '机器语言', 'courses/2021/01/540e57300001d6d906000338-240-135_wH52IED_AfaosEv.jpg', '3', '6', '0', '0');
INSERT INTO `courses_course` VALUES ('10', '2021-01-19', 'django2.0', 'django2.0', '6000', 'gj', '9', '-1', '27', 'django2.0', 'django2.0', 'django', '神经网络学', '神经网络学', '神经网络学', 'courses/2021/01/57035ff200014b8a06000338-240-135_dHfj8Nq_qxO3QVf.jpg', '4', '7', '0', '1');
INSERT INTO `courses_course` VALUES ('11', '2021-01-22', 'python异步IO编程', 'python异步IO编程', '1000', 'zj', '3', '0', '417', '最新章节信息已更新', '后端开发', 'python', 'python异步IO编程', 'python异步IO编程', '<p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=117.233441,31.826578&zoom=13&width=530&height=340&markers=117.233441,31.826578\"/>\r\n &nbsp; &nbsp; python异步IO编程</p>', 'courses/2021/01/python错误和异常.jpg', '4', '1', '0', '0');

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', '2021-01-23', '前端页面', 'course/resourse/2021/01/curl_wget.rar', '11');
INSERT INTO `courses_courseresource` VALUES ('2', '2021-01-23', '后端源码', 'course/resourse/2021/01/media.zip', '11');

-- ----------------------------
-- Table structure for courses_coursetag
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursetag`;
CREATE TABLE `courses_coursetag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursetag_course_id_756f21fb_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_coursetag_course_id_756f21fb_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of courses_coursetag
-- ----------------------------
INSERT INTO `courses_coursetag` VALUES ('1', '2021-01-22', '入门', '1');
INSERT INTO `courses_coursetag` VALUES ('2', '2021-01-22', '实战', '1');
INSERT INTO `courses_coursetag` VALUES ('3', '2021-01-22', 'python', '11');
INSERT INTO `courses_coursetag` VALUES ('4', '2021-01-22', 'tomado', '11');
INSERT INTO `courses_coursetag` VALUES ('5', '2021-01-22', '入门', '10');
INSERT INTO `courses_coursetag` VALUES ('6', '2021-01-22', '实战', '10');
INSERT INTO `courses_coursetag` VALUES ('7', '2021-01-22', '入门', '2');
INSERT INTO `courses_coursetag` VALUES ('8', '2021-01-22', '实战', '2');
INSERT INTO `courses_coursetag` VALUES ('9', '2021-01-22', '入门', '7');
INSERT INTO `courses_coursetag` VALUES ('10', '2021-01-22', '实战', '7');
INSERT INTO `courses_coursetag` VALUES ('11', '2021-01-22', 'java', '2');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `learn_time` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '2021-01-23', '第一章 开发环境的搭建', '30', '11');
INSERT INTO `courses_lesson` VALUES ('2', '2021-01-23', '第二章 python的基础知识', '120', '11');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `learn_time` int NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `lesson_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '2021-01-23', '2-1 python的语法', '30', 'https://peiqizt.oss-cn-shanghai.aliyuncs.com/video/572fb84a3235e0e0f53104996571f838.mp4?Expires=1611542936&OSSAccessKeyId=TMP.3KdbguPu39sqejKPXd96qtvCVcAeePGEMHrBVpRr4bpoQcN7UGFsFrqHLRFRL3qGsPD77pWMwKHjSCEY8fXhcHpXoavpRL&Signature=yE%2BpjQS9An0MyZEeKrWJjE6WzX4%3D&versionId=CAEQGxiBgMCF8_HcuRciIGE1M2YzMmY3MWU1NTQzODM5ZDMyMjMyOGNhZDYzYWNk&response-content-type=application%2Foctet-stream', '2');
INSERT INTO `courses_video` VALUES ('2', '2021-01-23', '2-2 python的循环语句', '20', 'https://peiqizt.oss-cn-shanghai.aliyuncs.com/video/572fb84a3235e0e0f53104996571f838.mp4?Expires=1611542936&OSSAccessKeyId=TMP.3KdbguPu39sqejKPXd96qtvCVcAeePGEMHrBVpRr4bpoQcN7UGFsFrqHLRFRL3qGsPD77pWMwKHjSCEY8fXhcHpXoavpRL&Signature=yE%2BpjQS9An0MyZEeKrWJjE6WzX4%3D&versionId=CAEQGxiBgMCF8_HcuRciIGE1M2YzMmY3MWU1NTQzODM5ZDMyMjMyOGNhZDYzYWNk&response-content-type=application%2Foctet-stream', '2');
INSERT INTO `courses_video` VALUES ('3', '2021-01-23', '1-1 linux和windows的环境结介绍', '20', 'https://peiqizt.oss-cn-shanghai.aliyuncs.com/video/4438ba7446b23defc0706197d7f47143.mp4?Expires=1611542908&OSSAccessKeyId=TMP.3KdbguPu39sqejKPXd96qtvCVcAeePGEMHrBVpRr4bpoQcN7UGFsFrqHLRFRL3qGsPD77pWMwKHjSCEY8fXhcHpXoavpRL&Signature=zCxEBAPGXFCfd1lKdv%2FL%2BLRIAf0%3D&versionId=CAEQGxiBgMCesPLcuRciIDA1MDk2YWNlNzhiZDQ2ODE4ZjkxYzViN2I4ZWFlMWVi&response-content-type=application%2Foctet-stream', '1');
INSERT INTO `courses_video` VALUES ('4', '2021-01-23', '1-2 python的编辑器', '20', 'https://peiqizt.oss-cn-shanghai.aliyuncs.com/video/4438ba7446b23defc0706197d7f47143.mp4?Expires=1611542908&OSSAccessKeyId=TMP.3KdbguPu39sqejKPXd96qtvCVcAeePGEMHrBVpRr4bpoQcN7UGFsFrqHLRFRL3qGsPD77pWMwKHjSCEY8fXhcHpXoavpRL&Signature=zCxEBAPGXFCfd1lKdv%2FL%2BLRIAf0%3D&versionId=CAEQGxiBgMCesPLcuRciIDA1MDk2YWNlNzhiZDQ2ODE4ZjkxYzViN2I4ZWFlMWVi&response-content-type=application%2Foctet-stream', '1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-06-17 21:34:26.153608', '1', '课程部', '1', '[{\"added\": {}}]', '3', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('23', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('26', 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('7', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('24', 'courses', 'coursetag');
INSERT INTO `django_content_type` VALUES ('8', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('25', 'operations', 'banner');
INSERT INTO `django_content_type` VALUES ('13', 'operations', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('11', 'operations', 'userask');
INSERT INTO `django_content_type` VALUES ('12', 'operations', 'usercourse');
INSERT INTO `django_content_type` VALUES ('15', 'operations', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('14', 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES ('16', 'organiztions', 'city');
INSERT INTO `django_content_type` VALUES ('17', 'organiztions', 'courseorg');
INSERT INTO `django_content_type` VALUES ('18', 'organiztions', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('19', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-06-13 12:03:09.681309');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-06-13 12:03:11.356868');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-06-13 12:03:12.519750');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-06-13 12:03:16.438245');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-06-13 12:03:16.488144');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-06-13 12:03:16.537974');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-06-13 12:03:16.606827');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-06-13 12:03:16.652701');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-06-13 12:03:16.707522');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-06-13 12:03:16.784366');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-06-13 12:03:16.905994');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-06-13 12:03:17.663969');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-06-13 12:03:17.720858');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-06-13 12:03:19.238756');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-06-13 12:03:24.421939');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-06-13 12:03:27.161616');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-06-13 12:03:27.228400');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2020-06-13 12:03:27.621354');
INSERT INTO `django_migrations` VALUES ('19', 'organiztions', '0001_initial', '2020-06-17 13:11:16.055479');
INSERT INTO `django_migrations` VALUES ('20', 'courses', '0001_initial', '2020-06-17 13:11:19.555400');
INSERT INTO `django_migrations` VALUES ('21', 'operations', '0001_initial', '2020-06-17 13:11:24.257400');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0002_auto_20200618_1627', '2020-06-18 16:28:04.760417');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0001_initial', '2020-06-18 16:28:07.051329');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0002_log', '2020-06-18 16:28:11.205187');
INSERT INTO `django_migrations` VALUES ('25', 'xadmin', '0003_auto_20160715_0100', '2020-06-18 16:28:13.760392');
INSERT INTO `django_migrations` VALUES ('26', 'users', '0003_auto_20200618_2014', '2020-06-18 20:15:14.974620');
INSERT INTO `django_migrations` VALUES ('27', 'captcha', '0001_initial', '2020-06-21 11:34:04.381077');
INSERT INTO `django_migrations` VALUES ('28', 'organiztions', '0002_auto_20210119_1009', '2021-01-19 10:10:09.739910');
INSERT INTO `django_migrations` VALUES ('29', 'courses', '0002_course_course_org', '2021-01-19 10:22:00.027191');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0003_course_is_classics', '2021-01-19 11:55:14.966093');
INSERT INTO `django_migrations` VALUES ('31', 'courses', '0004_coursetag', '2021-01-22 19:27:45.649950');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0005_auto_20210124_1000', '2021-01-24 10:00:20.270987');
INSERT INTO `django_migrations` VALUES ('33', 'operations', '0002_banner', '2021-01-27 13:55:29.398333');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0006_course_is_banner', '2021-01-27 14:01:50.832045');
INSERT INTO `django_migrations` VALUES ('35', 'organiztions', '0003_teacher_user', '2021-01-29 13:58:26.116169');
INSERT INTO `django_migrations` VALUES ('36', 'courses', '0007_bannercourse', '2021-01-29 17:10:32.344593');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('46pbi711hce45z6v4bi4f0jz8sulem13', 'ZGJhMjA1NDNmYzUzNjAzMTQwMTdjMDEzMWQ1YmU2MGFlNzk3MDQ3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21BdXRoIiwiX2F1dGhfdXNlcl9oYXNoIjoiYmI2MWJlZDcyNTA5M2JmYmRmNTkyMDJmNmVkYmNmZmI4NzZkYTBhZCJ9', '2021-02-14 15:49:48.273548');
INSERT INTO `django_session` VALUES ('7brsiv08swgi2diskcfwt1cxoqt08bb0', 'ZjhhYmUwY2YwMDExNjJiYmExYmMyNGQ1ZWJiZjc4NjA5MTRkNmI5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZjcwMmMyZGE0ZGUxZWZmNDgwY2U1ZjMwM2EzNzgzY2FhZDMzNjYwIn0=', '2020-07-01 13:29:58.109848');
INSERT INTO `django_session` VALUES ('7epw50gwrs1gwt0uvqqcqywck9m8qpsu', 'N2EwNWU0MzA5YjBkNDczZDk1YWRlMWRkOGFkNTEzZGM5ZjkyNzgzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTg2Njg5OGE1YjM5NGYxMmE3OWQ3MjM0MmJlNzM5MTAwNjM2NzQwIn0=', '2021-02-03 19:31:33.054960');
INSERT INTO `django_session` VALUES ('9w6c3q9gjlc2m4x27s9i6swyu2hrr6wr', 'YTA4NDBkODA5NTVhZDkyZTIzZTAwNmE0OTUyYTA1ODEzYzA3MjQ0MDp7fQ==', '2021-01-31 20:25:02.735228');
INSERT INTO `django_session` VALUES ('a0ohdnifckppoo4auag08ddod250pn5i', 'N2EwNWU0MzA5YjBkNDczZDk1YWRlMWRkOGFkNTEzZGM5ZjkyNzgzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTg2Njg5OGE1YjM5NGYxMmE3OWQ3MjM0MmJlNzM5MTAwNjM2NzQwIn0=', '2021-02-03 20:22:20.031122');
INSERT INTO `django_session` VALUES ('fqodi2e0k2luw8rhmutbnwdfij0nal5a', 'OTAzYmYyZDJjNmJkMmRlY2ViODBkMjU0MTI0YWIyNzM2ZDE1ZjYxZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZjcwMmMyZGE0ZGUxZWZmNDgwY2U1ZjMwM2EzNzgzY2FhZDMzNjYwIiwiTElTVF9RVUVSWSI6W1sib3JnYW5penRpb25zIiwiY291cnNlb3JnIl0sIiJdfQ==', '2020-07-02 22:23:16.191280');
INSERT INTO `django_session` VALUES ('k4tlm67bupw5in4xvslel3s18p943d5c', 'YTBhOTUyYzg3N2JhMzVjMWM1ZmY3OGM0ZDJmMTRhYzJiMzFhMGVhODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZjcwMmMyZGE0ZGUxZWZmNDgwY2U1ZjMwM2EzNzgzY2FhZDMzNjYwIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2020-07-04 14:12:08.795990');
INSERT INTO `django_session` VALUES ('ugf6tgjc4ecnlz6ojnf89jm4j4nj3g8g', 'N2EwNWU0MzA5YjBkNDczZDk1YWRlMWRkOGFkNTEzZGM5ZjkyNzgzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OTg2Njg5OGE1YjM5NGYxMmE3OWQ3MjM0MmJlNzM5MTAwNjM2NzQwIn0=', '2021-02-07 09:41:33.880009');

-- ----------------------------
-- Table structure for operations_banner
-- ----------------------------
DROP TABLE IF EXISTS `operations_banner`;
CREATE TABLE `operations_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `index` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_banner
-- ----------------------------
INSERT INTO `operations_banner` VALUES ('1', '2021-01-27', '学习', 'banner/2021/01/57a801860001c34b12000460.jpg', 'https://www.imooc.com', '1');
INSERT INTO `operations_banner` VALUES ('2', '2021-01-27', '锻炼', 'banner/2021/01/57aa86a0000145c512000460.jpg', 'https://www.imooc.com', '2');
INSERT INTO `operations_banner` VALUES ('3', '2021-01-27', '抗压', 'banner/2021/01/57a801860001c34b12000460_ADZA5XT.jpg', 'https://www.imooc.com', '3');
INSERT INTO `operations_banner` VALUES ('4', '2021-01-27', '抗揍', 'banner/2021/01/57aa86a0000145c512000460_QkCMBs5.jpg', 'https://www.imooc.com', '4');
INSERT INTO `operations_banner` VALUES ('5', '2021-01-27', '加薪', 'banner/2021/01/57a801860001c34b12000460_JXw9gGJ.jpg', 'https://www.imooc.com', '5');

-- ----------------------------
-- Table structure for operations_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operations_coursecomments`;
CREATE TABLE `operations_coursecomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `comments` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_coursecom_course_id_de0f98da_fk_courses_c` (`course_id`),
  KEY `operations_coursecom_user_id_84597521_fk_users_use` (`user_id`),
  CONSTRAINT `operations_coursecom_course_id_de0f98da_fk_courses_c` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_coursecom_user_id_84597521_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_coursecomments
-- ----------------------------
INSERT INTO `operations_coursecomments` VALUES ('1', '2021-01-23', '第一次评论', '11', '1');
INSERT INTO `operations_coursecomments` VALUES ('2', '2021-01-23', '第二次评论', '11', '1');
INSERT INTO `operations_coursecomments` VALUES ('3', '2021-01-23', '第三次', '11', '3');

-- ----------------------------
-- Table structure for operations_userask
-- ----------------------------
DROP TABLE IF EXISTS `operations_userask`;
CREATE TABLE `operations_userask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `course_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_userask
-- ----------------------------
INSERT INTO `operations_userask` VALUES ('1', '2021-01-20', 'qiaozhi', '13805654601', 'django');

-- ----------------------------
-- Table structure for operations_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourse`;
CREATE TABLE `operations_usercourse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` (`course_id`),
  KEY `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_usercourse
-- ----------------------------
INSERT INTO `operations_usercourse` VALUES ('1', '2021-01-23', '11', '8');
INSERT INTO `operations_usercourse` VALUES ('2', '2021-01-23', '11', '1');
INSERT INTO `operations_usercourse` VALUES ('3', '2021-01-23', '2', '1');

-- ----------------------------
-- Table structure for operations_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operations_userfavorite`;
CREATE TABLE `operations_userfavorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `fav_id` int NOT NULL,
  `fav_type` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_userfavorite
-- ----------------------------
INSERT INTO `operations_userfavorite` VALUES ('84', '2021-01-26', '1', '2', '1');
INSERT INTO `operations_userfavorite` VALUES ('85', '2021-01-26', '2', '3', '1');
INSERT INTO `operations_userfavorite` VALUES ('86', '2021-01-26', '9', '2', '1');
INSERT INTO `operations_userfavorite` VALUES ('88', '2021-01-26', '2', '1', '1');
INSERT INTO `operations_userfavorite` VALUES ('89', '2021-01-26', '11', '1', '1');

-- ----------------------------
-- Table structure for operations_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `message` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of operations_usermessage
-- ----------------------------
INSERT INTO `operations_usermessage` VALUES ('1', '2021-01-26', '注册成功', '1', '1');
INSERT INTO `operations_usermessage` VALUES ('2', '2021-01-26', '开始登陆', '1', '1');

-- ----------------------------
-- Table structure for organizations_city
-- ----------------------------
DROP TABLE IF EXISTS `organizations_city`;
CREATE TABLE `organizations_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations_city
-- ----------------------------
INSERT INTO `organizations_city` VALUES ('1', '2019-06-18 19:47:00.000000', '北京市', '北京市');
INSERT INTO `organizations_city` VALUES ('2', '2019-06-18 20:13:00.000000', '上海市', '上海市');
INSERT INTO `organizations_city` VALUES ('3', '2019-06-18 20:13:00.000000', '广州市', '广州市');
INSERT INTO `organizations_city` VALUES ('4', '2019-06-18 20:13:00.000000', '深圳市', '深圳市');
INSERT INTO `organizations_city` VALUES ('5', '2019-06-18 20:13:00.000000', '成都市', '成都市');

-- ----------------------------
-- Table structure for organizations_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organizations_courseorg`;
CREATE TABLE `organizations_courseorg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `tag` varchar(10) NOT NULL,
  `category` varchar(4) NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `students` int NOT NULL,
  `course_nums` int NOT NULL,
  `city_id` int NOT NULL,
  `is_auth` tinyint(1) NOT NULL,
  `is_gold` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_course_city_id_d828a591_fk_organizat` (`city_id`),
  CONSTRAINT `organizations_course_city_id_d828a591_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organizations_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations_courseorg
-- ----------------------------
INSERT INTO `organizations_courseorg` VALUES ('1', '2019-06-18 20:14:00.000000', '慕课网', '<p>慕课网慕课网</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/mkw_UyIyC47.png', '北京市', '20000', '0', '1', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('2', '2019-06-18 20:18:00.000000', '北京大学', '<p>慕课网慕课网慕课网</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/bjdx.png', '北京市', '10000', '0', '2', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('3', '2019-06-18 20:18:00.000000', '清华大学', '<p>清华大学清华大学清华大学</p>', '全国知名', 'gx', '0', '0', 'org/2019/06/bjdx_na2ILtk.png', '北京市', '82000', '0', '1', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('4', '2019-06-18 20:19:00.000000', '南京大学', '<p>南京大学南京大学南京大学</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/mkw_kEzoKft.png', '上海市', '12088', '0', '2', '1', '1');
INSERT INTO `organizations_courseorg` VALUES ('5', '2019-06-18 20:19:00.000000', '慕课网2', '<p>慕课网2</p>', '全国知名', 'gx', '0', '0', 'org/2019/06/mkw.png', '北京市', '28658', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for organiztions_city
-- ----------------------------
DROP TABLE IF EXISTS `organiztions_city`;
CREATE TABLE `organiztions_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of organiztions_city
-- ----------------------------
INSERT INTO `organiztions_city` VALUES ('1', '2020-06-18', '上海', '魔都');
INSERT INTO `organiztions_city` VALUES ('2', '2020-06-18', '北京', '首都');
INSERT INTO `organiztions_city` VALUES ('3', '2021-01-18', '杭州', '商都');
INSERT INTO `organiztions_city` VALUES ('4', '2021-01-18', '广州', '帝都');
INSERT INTO `organiztions_city` VALUES ('5', '2021-01-18', '成都', '蜀都');

-- ----------------------------
-- Table structure for organiztions_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organiztions_courseorg`;
CREATE TABLE `organiztions_courseorg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `students` int NOT NULL,
  `course_nums` int NOT NULL,
  `city_id` int NOT NULL,
  `is_auth` tinyint(1) NOT NULL,
  `is_gold` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organiztions_courseorg_city_id_2fa3a23c_fk_organiztions_city_id` (`city_id`),
  CONSTRAINT `organiztions_courseorg_city_id_2fa3a23c_fk_organiztions_city_id` FOREIGN KEY (`city_id`) REFERENCES `organiztions_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of organiztions_courseorg
-- ----------------------------
INSERT INTO `organiztions_courseorg` VALUES ('1', '2020-06-19', '慕课网', '<p>&nbsp; &nbsp;&nbsp;<img src=\"/media/courses/ueditor/images/02_small_20210130162706_774.jpg\" title=\"\" alt=\"02_small.jpg\"/></p><p><br/></p><p>慕课网是垂直的互联网IT技能学习网站，自2013年上线始终专注于IT在线教育领域，以培养互联网企业实用型人才为己任，邀请一线大厂技术达人打造前沿的IT技术精品课程，帮助每一位有志向的开发者实现职业梦想。 [1] \r\n慕课网用户数超1500万，合作讲师1500+，自制课程超过2000门。 [2] &nbsp;用户群体中，有高校大学生、初入职场的程序员、资深技术大咖，不同技术水平的开发者纷纷汇集。 [3] &nbsp;慕课网既为用户提供免费课程，还有成体系重实战的商业课程 [2] &nbsp;，覆盖前端 \\JAVA \\Python \\Go \\人工智能\\大数据\\移动端等60类主流技术语言，充分满足了面试就业、职业成长、自我提升等实际需求，帮助用户实现从技能提升到岗位提升的能力闭环。 [1] \r\n慕课网App是国内首个IT技能学习类应用 [4] &nbsp;，2020年12月已更新至7.4.4版本。 [5]</p>', '全国知名', 'pxjg', '244', '-7', 'org/2021/01/imooc.png', '北京', '99', '43', '2', '1', '0');
INSERT INTO `organiztions_courseorg` VALUES ('2', '2021-01-19', '慕课网2', '慕课网2', '全国知名', 'gr', '13', '-1', 'org/2021/01/5cb9976e08f6b07206000338-360-202.jpg', '上海', '64', '21', '2', '1', '0');
INSERT INTO `organiztions_courseorg` VALUES ('3', '2021-01-19', '慕课3', '慕课3', '全国知名', 'pxjg', '4', '0', 'org/2021/01/5cb9976e08f6b07206000338-360-202_i14kfRp.jpg', '北京', '0', '0', '2', '1', '0');
INSERT INTO `organiztions_courseorg` VALUES ('4', '2021-01-19', '慕课大学', '慕课大学', '全国知名', 'pxjg', '7', '0', 'org/2021/01/python错误和异常.jpg', '北京', '78', '55', '3', '0', '0');
INSERT INTO `organiztions_courseorg` VALUES ('5', '2021-01-19', '达内', '达内', '全国知名', 'gr', '5', '0', 'org/2021/01/python面向对象.jpg', '北京', '22', '600', '1', '0', '0');
INSERT INTO `organiztions_courseorg` VALUES ('6', '2021-01-19', '小码教育', '小码教育', '全国知名', 'pxjg', '11', '0', 'org/2021/01/python文件处理.jpg', '杭州', '90', '65', '2', '0', '0');
INSERT INTO `organiztions_courseorg` VALUES ('7', '2021-01-19', '思科教育', '思科教育', '全国知名', 'gx', '7', '-2', 'org/2021/01/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', '上海', '123', '25', '4', '0', '0');
INSERT INTO `organiztions_courseorg` VALUES ('8', '2021-01-19', '童程童美', '童程童美', '全国知名', 'pxjg', '8', '0', 'org/2021/01/python错误和异常_u1xyP2N.jpg', '北京', '12', '45', '3', '0', '0');
INSERT INTO `organiztions_courseorg` VALUES ('9', '2021-01-19', '清华学院', '清华学院', '全国知名', 'gx', '9', '0', 'org/2021/01/python面向对象_Wv9I3F8.jpg', '北京', '60', '15', '2', '1', '1');
INSERT INTO `organiztions_courseorg` VALUES ('10', '2021-01-19', '北京大学', '北京大学', '全国知名', 'gx', '10', '0', 'org/2021/01/5cb9976e08f6b07206000338-360-202_fQEwDph.jpg', '北京', '100', '20', '2', '0', '0');

-- ----------------------------
-- Table structure for organiztions_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organiztions_teacher`;
CREATE TABLE `organiztions_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` date NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `work_years` int NOT NULL,
  `work_company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `work_position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `points` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `age` int NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `organiztions_teacher_org_id_6634e536_fk_organizti` (`org_id`),
  CONSTRAINT `organiztions_teacher_org_id_6634e536_fk_organizti` FOREIGN KEY (`org_id`) REFERENCES `organiztions_courseorg` (`id`),
  CONSTRAINT `organiztions_teacher_user_id_3bc5eeaf_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of organiztions_teacher
-- ----------------------------
INSERT INTO `organiztions_teacher` VALUES ('1', '2020-06-19', 'bobby', '1', '慕课网', 'python开发', 'python', '4', '-1', '27', 'teacher/2021/01/aobama.png', '1', '3');
INSERT INTO `organiztions_teacher` VALUES ('2', '2021-01-24', '乔治', '3', '科大讯飞', '经理', '幽默', '5', '0', '28', 'teacher/2021/01/qiaozhi.jpeg', '9', null);
INSERT INTO `organiztions_teacher` VALUES ('3', '2021-01-24', '李哥', '4', '达内', 'java工程师', '严谨', '6', '0', '33', 'teacher/2021/01/li.jpg', '5', null);
INSERT INTO `organiztions_teacher` VALUES ('4', '2021-01-24', 'faker', '2', '战争学院', '中单', '线霸', '10', '0', '18', 'teacher/2021/01/0.jpg', '7', null);

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$omBZJzCHlKnG$gOMBq1sRqFazBoixCcvLbbHP94KRztZZ+6tH7VkBDwY=', '2021-01-31 15:49:48.187778', '1', 'zt', '', '', '250849686@qq.com', '1', '1', '2020-06-17 13:25:00.000000', '乔治', '2021-01-04', 'male', '杭州', '13805654620', 'head_image/2021/01/default_middile_7.png');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$150000$Aksw3nfwdQi6$51ydeq1PQAhU0aR2DB8g60zpDmsdT+vXLX3HUna9FqI=', '2021-01-29 14:24:32.836534', '0', 'zt2', '', '', '', '1', '1', '2020-06-18 20:19:00.000000', '佩奇', '2021-01-03', 'female', '上海', '1385555666', 'head_image/2021/01/default_middile_18.png');
INSERT INTO `users_userprofile` VALUES ('7', 'pbkdf2_sha256$150000$klfIOFRmJ6uc$tGw7xFjQDczOuV4oUvE3FmL0P4ftAZjwpbJ/dfgh+bE=', '2021-01-18 14:38:53.829324', '0', '17755522592', '', '', '', '0', '1', '2021-01-18 14:35:29.156481', '', null, '', '', '17755522592', 'default.jpg');
INSERT INTO `users_userprofile` VALUES ('8', 'pbkdf2_sha256$150000$0V7JAgeWg4pg$ZtA26vx3ZMO1mmdtyPtpc5lccx5SbX5a3dxB9DGAgvQ=', '2021-01-23 11:50:33.197173', '0', '13805654621', '', '', '', '0', '1', '2021-01-23 11:46:44.950062', '', null, '', '', '13805654621', 'head_image/2021/01/default_middile_18.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES ('2', '3', '37');
INSERT INTO `users_userprofile_user_permissions` VALUES ('3', '3', '38');
INSERT INTO `users_userprofile_user_permissions` VALUES ('4', '3', '39');
INSERT INTO `users_userprofile_user_permissions` VALUES ('1', '3', '40');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-06-18 20:19:14.961651', '127.0.0.1', '3', 'zt2', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-06-18 20:58:39.155211', '127.0.0.1', '1', '上海', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-06-18 21:14:59.850030', '127.0.0.1', '2', '北京', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-06-19 22:21:46.335049', '127.0.0.1', '1', '慕课网', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-06-19 22:24:40.060401', '127.0.0.1', '1', 'bobby', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-06-19 22:29:02.779541', '127.0.0.1', '1', 'django', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2021-01-18 19:58:30.632500', '127.0.0.1', '3', '杭州', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2021-01-18 19:59:10.481502', '127.0.0.1', '4', '广州', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2021-01-18 20:01:00.945304', '127.0.0.1', '5', '成都', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2021-01-18 20:07:23.113417', '127.0.0.1', '1', '慕课网', 'change', '修改 desc，image，address 和 city', '17', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2021-01-18 20:28:42.865052', '127.0.0.1', '1', '慕课网', 'change', '修改 image', '17', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2021-01-19 10:11:43.007600', '127.0.0.1', '1', '慕课网', 'change', '修改 is_auth', '17', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2021-01-19 10:24:50.426014', '127.0.0.1', '1', 'bobby', 'change', '修改 age 和 image', '18', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2021-01-19 10:27:52.523484', '127.0.0.1', '1', 'django实战开发', 'change', '修改 name，tag，youneed_know，teacher_tell，detail 和 image', '10', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2021-01-19 10:53:38.437676', '127.0.0.1', '1', 'django实战开发', 'change', '修改 course_org', '10', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2021-01-19 11:58:07.297609', '127.0.0.1', '1', 'django实战开发', 'change', '修改 is_classics', '10', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2021-01-19 12:02:42.055576', '127.0.0.1', '1', 'django实战开发', 'change', '修改 is_classics', '10', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2021-01-19 12:04:31.635440', '127.0.0.1', '1', 'django实战开发', 'change', '修改 is_classics', '10', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2021-01-19 14:15:22.163063', '127.0.0.1', '2', 'java实战开发', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2021-01-19 14:15:39.907667', '127.0.0.1', '2', 'java实战开发', 'change', '没有字段被修改。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2021-01-19 14:16:31.676062', '127.0.0.1', '3', 'MySQL', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2021-01-19 14:17:34.728145', '127.0.0.1', '4', 'redis', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2021-01-19 14:18:13.482548', '127.0.0.1', '5', 'C++', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2021-01-19 14:19:11.773803', '127.0.0.1', '6', '操作系统', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2021-01-19 14:19:58.443908', '127.0.0.1', '7', 'linux系统', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2021-01-19 14:20:39.400423', '127.0.0.1', '8', 'flask框架', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2021-01-19 14:21:34.434325', '127.0.0.1', '9', '机器语言', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2021-01-19 14:22:26.531685', '127.0.0.1', '10', '神经网络学', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2021-01-19 14:25:57.313353', '127.0.0.1', '2', '慕课网2', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2021-01-19 14:26:34.708389', '127.0.0.1', '3', '慕课3', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2021-01-19 14:27:17.314653', '127.0.0.1', '4', '慕课大学', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2021-01-19 14:27:42.831444', '127.0.0.1', '5', '达内', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2021-01-19 14:28:17.498573', '127.0.0.1', '6', '小码教育', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2021-01-19 14:28:43.223822', '127.0.0.1', '7', '思科教育', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2021-01-19 14:29:16.427900', '127.0.0.1', '8', '童程童美', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2021-01-19 14:29:53.220549', '127.0.0.1', '9', '清华学院', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2021-01-19 14:30:18.122480', '127.0.0.1', '10', '北京大学', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2021-01-19 17:50:56.711205', '127.0.0.1', '10', '北京大学', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2021-01-19 17:51:11.339100', '127.0.0.1', '9', '清华学院', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2021-01-19 17:51:25.771520', '127.0.0.1', '8', '童程童美', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2021-01-19 17:51:40.219115', '127.0.0.1', '7', '思科教育', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2021-01-19 17:51:51.083076', '127.0.0.1', '6', '小码教育', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2021-01-19 17:52:02.088621', '127.0.0.1', '5', '达内', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2021-01-19 17:52:13.707045', '127.0.0.1', '4', '慕课大学', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2021-01-19 17:52:23.891862', '127.0.0.1', '2', '慕课网2', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2021-01-19 17:52:36.813517', '127.0.0.1', '1', '慕课网', 'change', '修改 students 和 course_nums', '17', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2021-01-22 19:33:04.056893', '127.0.0.1', '1', '入门', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2021-01-22 19:33:22.828954', '127.0.0.1', '2', '实战', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2021-01-22 19:38:13.297774', '127.0.0.1', '11', 'python异步IO编程', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2021-01-22 19:38:26.608109', '127.0.0.1', '3', 'python', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2021-01-22 19:38:46.961330', '127.0.0.1', '4', 'tomado', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2021-01-22 19:39:33.426306', '127.0.0.1', '5', '入门', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2021-01-22 19:39:36.978076', '127.0.0.1', '6', '实战', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2021-01-22 20:15:52.765753', '127.0.0.1', '7', '入门', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2021-01-22 20:15:56.862797', '127.0.0.1', '8', '实战', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2021-01-22 20:17:04.418150', '127.0.0.1', '9', '入门', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2021-01-22 20:17:09.789783', '127.0.0.1', '10', '实战', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2021-01-22 20:27:41.133600', '127.0.0.1', '11', 'java', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2021-01-23 10:15:24.464235', '127.0.0.1', '1', '第一章 开发环境的搭建', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2021-01-23 10:16:03.863632', '127.0.0.1', '2', '第二章 python的基础知识', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2021-01-23 10:18:18.514913', '127.0.0.1', '1', '2-1 python的语法', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2021-01-23 10:19:38.088567', '127.0.0.1', '2', '2-2 python的循环语句', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2021-01-23 10:21:27.118061', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2021-01-23 10:21:52.165473', '127.0.0.1', '4', '1-2 python的编辑器', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2021-01-23 13:22:37.875734', '127.0.0.1', '1', '前端页面', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2021-01-23 13:23:20.078280', '127.0.0.1', '2', '后端源码', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2021-01-23 13:25:31.244667', '127.0.0.1', '2', '后端源码', 'change', '修改 course', '7', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2021-01-23 13:25:37.189780', '127.0.0.1', '1', '前端页面', 'change', '修改 course', '7', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2021-01-23 19:16:41.758002', '127.0.0.1', '1', '乔治', 'change', '修改 last_login，nick_name，birthday，gender，address，mobile 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2021-01-23 19:22:58.493018', '127.0.0.1', '3', '佩奇', 'change', '修改 nick_name，birthday，gender，address，mobile 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2021-01-24 10:47:56.428143', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2021-01-24 10:48:08.602096', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2021-01-24 10:48:13.558832', '127.0.0.1', '2', '2-2 python的循环语句', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2021-01-24 10:48:18.152712', '127.0.0.1', '1', '2-1 python的语法', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2021-01-24 11:14:39.046713', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2021-01-24 11:14:45.814749', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2021-01-24 11:15:03.591236', '127.0.0.1', '2', '2-2 python的循环语句', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2021-01-24 11:15:09.162732', '127.0.0.1', '1', '2-1 python的语法', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2021-01-24 14:15:58.245338', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2021-01-24 14:16:05.617383', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2021-01-24 14:16:12.163957', '127.0.0.1', '2', '2-2 python的循环语句', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2021-01-24 14:16:21.285457', '127.0.0.1', '1', '2-1 python的语法', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2021-01-24 14:17:39.073772', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2021-01-24 14:17:44.311269', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2021-01-24 14:19:06.009884', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2021-01-24 14:19:14.048962', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2021-01-24 16:15:08.694577', '127.0.0.1', '2', '乔治', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2021-01-24 16:21:42.832765', '127.0.0.1', '3', '李哥', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2021-01-24 16:22:50.463921', '127.0.0.1', '4', 'faker', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2021-01-25 09:48:42.751614', '127.0.0.1', '4', '1-2 python的编辑器', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2021-01-25 09:48:49.840917', '127.0.0.1', '3', '1-1 linux和windows的环境结介绍', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2021-01-25 09:49:06.279686', '127.0.0.1', '2', '2-2 python的循环语句', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2021-01-25 09:49:13.002552', '127.0.0.1', '1', '2-1 python的语法', 'change', '修改 url', '9', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2021-01-27 14:31:17.144464', '127.0.0.1', '1', '学习', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2021-01-27 14:31:37.934168', '127.0.0.1', '2', '锻炼', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2021-01-27 14:31:55.117230', '127.0.0.1', '3', '抗压', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2021-01-27 14:32:13.769372', '127.0.0.1', '4', '抗揍', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2021-01-27 14:32:24.773945', '127.0.0.1', '5', '加薪', 'create', '已添加。', '25', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2021-01-27 15:22:36.976414', '127.0.0.1', '5', 'C++', 'change', '修改 is_banner', '10', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2021-01-27 15:22:43.041750', '127.0.0.1', '10', 'django2.0', 'change', '修改 is_banner', '10', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2021-01-29 14:04:25.912596', '127.0.0.1', '3', '佩奇', 'change', '修改 is_staff', '6', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2021-01-29 14:05:07.519472', '127.0.0.1', '1', 'bobby', 'change', '修改 user', '18', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2021-01-29 14:12:17.556884', '127.0.0.1', '3', '佩奇', 'change', '没有字段被修改。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2021-01-29 14:24:21.781024', '127.0.0.1', '3', '佩奇', 'change', '修改 last_login 和 user_permissions', '6', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2021-01-30 16:18:36.766073', '127.0.0.1', '11', 'python异步IO编程', 'change', '修改 detail', '10', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2021-01-30 16:27:08.402230', '127.0.0.1', '1', '慕课网', 'change', '修改 desc', '17', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'courses_course_editform_portal', ',,||,', '1');
INSERT INTO `xadmin_usersettings` VALUES ('4', 'dashboard:home:pos', '', '3');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
