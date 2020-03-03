/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : sanhui

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-27 23:00:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sankei_banner
-- ----------------------------
DROP TABLE IF EXISTS `sankei_banner`;
CREATE TABLE `sankei_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `introduction` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '企业介绍',
  `history` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '发展历程',
  `culture` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '企业文化',
  `state` int(11) DEFAULT '0' COMMENT '1为选中',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='Banner';

-- ----------------------------
-- Records of sankei_banner
-- ----------------------------
INSERT INTO `sankei_banner` VALUES ('1', 'http://pshangcheng.wsandos.com/SJ5e23fe83c2ed4.png', 'http://pshangcheng.wsandos.com/SJ5e23fedff2535.png', 'http://pshangcheng.wsandos.com/SJ5e393c28cb8b7.png', '1');

-- ----------------------------
-- Table structure for sankei_banner_img
-- ----------------------------
DROP TABLE IF EXISTS `sankei_banner_img`;
CREATE TABLE `sankei_banner_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '缩略图',
  `brief_introduction` text COLLATE utf8_czech_ci COMMENT '简介',
  `state` int(255) DEFAULT NULL COMMENT '状态:1启动 2禁用',
  `jump_link` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '跳转链接',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `closed` int(1) DEFAULT '0' COMMENT '‘0’为存在，‘1’为删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='Banner图';

-- ----------------------------
-- Records of sankei_banner_img
-- ----------------------------
INSERT INTO `sankei_banner_img` VALUES ('1', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5df0c6f666c22.png', '龙哥周末加班，一起加班的他请吃海底捞', '1', 'http://www.baidu.com', '1', '1576054105', '1576054105', '1');
INSERT INTO `sankei_banner_img` VALUES ('5', '新volo', 'http://pshangcheng.wsandos.com/SJ5e3a82ac5c926.png', '全新一代volo', '2', 'https://www.volvocars.com', '3', '1576060672', '1582509707', '0');
INSERT INTO `sankei_banner_img` VALUES ('6', '新volo', 'http://pshangcheng.wsandos.com/SJ5df7312b0af79.png', '全新一代volo', '1', 'http://www.baidu.com', '2', '1576060680', '1582509728', '0');
INSERT INTO `sankei_banner_img` VALUES ('7', '新XC90', 'http://pshangcheng.wsandos.com/SJ5df99717b2564.png', '沃尔沃XC90，一路守护，成就未来', '1', 'https://www.volvocars.com/', '1', '1576638233', '1576638255', '1');
INSERT INTO `sankei_banner_img` VALUES ('8', '新XC90', 'http://pshangcheng.wsandos.com/SJ5df99717b2564.png', '沃尔沃XC90，一路守护，成就未来', '2', 'https://www.volvocars.com/', '4', '1576638242', '1576834441', '0');
INSERT INTO `sankei_banner_img` VALUES ('9', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.taobao.com/', '5', '1577670023', '1577670795', null);
INSERT INTO `sankei_banner_img` VALUES ('10', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670038', '1577670392', '1');
INSERT INTO `sankei_banner_img` VALUES ('11', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670040', '1577670388', '1');
INSERT INTO `sankei_banner_img` VALUES ('12', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670040', '1577670382', '1');
INSERT INTO `sankei_banner_img` VALUES ('13', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670041', '1577670378', '1');
INSERT INTO `sankei_banner_img` VALUES ('14', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670041', '1577670374', '1');
INSERT INTO `sankei_banner_img` VALUES ('15', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670041', '1577670385', '1');
INSERT INTO `sankei_banner_img` VALUES ('16', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670041', '1577670341', '1');
INSERT INTO `sankei_banner_img` VALUES ('17', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670042', '1577670317', '1');
INSERT INTO `sankei_banner_img` VALUES ('18', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670042', '1577670313', '1');
INSERT INTO `sankei_banner_img` VALUES ('19', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670042', '1577670325', '1');
INSERT INTO `sankei_banner_img` VALUES ('20', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670042', '1577670303', '1');
INSERT INTO `sankei_banner_img` VALUES ('21', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670043', '1577670283', '1');
INSERT INTO `sankei_banner_img` VALUES ('22', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670043', '1577670278', '1');
INSERT INTO `sankei_banner_img` VALUES ('23', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670043', '1577670273', '1');
INSERT INTO `sankei_banner_img` VALUES ('24', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670043', '1577670269', '1');
INSERT INTO `sankei_banner_img` VALUES ('25', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670043', '1577670264', '1');
INSERT INTO `sankei_banner_img` VALUES ('26', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670044', '1577670255', '1');
INSERT INTO `sankei_banner_img` VALUES ('27', '123', 'http://pshangcheng.wsandos.com/SJ5e0955852eb94.jpg', '这是广告', '1', 'http://www.baidu.com/', '5', '1577670044', '1577670212', '1');
INSERT INTO `sankei_banner_img` VALUES ('28', '新volo', 'http://pshangcheng.wsandos.com/SJ5e0965b367f35.png', '全新一代volo', '1', 'https://www.volvocars.com/', '1', '1577674196', '1577674305', '1');
INSERT INTO `sankei_banner_img` VALUES ('29', '新volo', 'http://pshangcheng.wsandos.com/SJ5e0967e0d227e.png', '沃尔沃XC90，一路守护，成就未来', '1', 'https://www.volvocars.com/', '1', '1577674724', '1577674810', '1');
INSERT INTO `sankei_banner_img` VALUES ('30', '新volo', 'http://pshangcheng.wsandos.com/SJ5e096871618da.png', '沃尔沃XC90', '1', 'https://www.volvocars.com/', '1', '1577674873', '1577674894', '1');
INSERT INTO `sankei_banner_img` VALUES ('31', '龙哥明早加班', 'http://pshangcheng.wsandos.com/SJ5e0969133f797.png', '全新一代volo', '1', 'https://www.volvocars.com/', '2', '1577675028', '1577675529', '1');
INSERT INTO `sankei_banner_img` VALUES ('32', '龙哥明早加班', 'http://pshangcheng.wsandos.com/SJ5e0969133f797.png', '全新一代volo', '1', 'https://www.volvocars.com/', '2', '1577675032', '1577675518', '1');
INSERT INTO `sankei_banner_img` VALUES ('33', '新volo', 'http://pshangcheng.wsandos.com/SJ5e096b33f2528.png', '全新一代volo', '1', 'https://www.volvocars.com/', '1', '1577675607', '1577675466', '1');
INSERT INTO `sankei_banner_img` VALUES ('34', '新volo', 'http://pshangcheng.wsandos.com/SJ5e096b33f2528.png', '全新一代volo', '1', 'https://www.volvocars.com/', '1', '1577675612', '1577675461', '1');
INSERT INTO `sankei_banner_img` VALUES ('35', '新volo', 'http://pshangcheng.wsandos.com/SJ5e096adb1d905.png', '全新一代volo', '1', 'https://www.volvocars.com/', '1', '1577675615', '1577675649', '1');
INSERT INTO `sankei_banner_img` VALUES ('36', '新volo', 'http://pshangcheng.wsandos.com/SJ5e098f9c09d0c.png', '修改又失败了', '1', 'https://www.volvocars.com/', '1', '1577684898', '1577684918', '1');
INSERT INTO `sankei_banner_img` VALUES ('37', '新volo', 'http://pshangcheng.wsandos.com/SJ5e098f9c09d0c.png', '修改又失败了', '1', 'https://www.volvocars.com/', '1', '1577684902', '1577684915', '1');
INSERT INTO `sankei_banner_img` VALUES ('38', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5e098f692c959.png', '修改又失败了', '1', 'http://www.baidu.com', '1', '1577684846', '1577685230', '1');
INSERT INTO `sankei_banner_img` VALUES ('39', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5e0990945f1c7.jpg', '修改又失败了', '1', 'https://www.volvocars.com/', '0', '1577685144', '1577685226', '1');
INSERT INTO `sankei_banner_img` VALUES ('40', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5e09914a78d5a.png', '修改又失败了', '1', 'https://www.volvocars.com/', '1', '1577685327', '1577685339', '1');
INSERT INTO `sankei_banner_img` VALUES ('41', '123', 'http://pshangcheng.wsandos.com/SJ5e0993e33b37b.jpg', '地方', '1', '', '1', '1577685988', '1577686008', '1');
INSERT INTO `sankei_banner_img` VALUES ('42', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5e09941dc91a1.png', '修改又失败了', '1', 'http://www.baidu.com', '1', '1577686047', '1577699606', '1');
INSERT INTO `sankei_banner_img` VALUES ('43', '新volo', 'http://pshangcheng.wsandos.com/SJ5e0b0b38b9531.jpg', '龙哥周末加班，一起加班的他请吃海底捞', '2', 'https://www.volvocars.com/', '1', '1577698245', '1579414559', '1');
INSERT INTO `sankei_banner_img` VALUES ('44', '龙哥周末加班', 'http://pshangcheng.wsandos.com/SJ5e09c61a3dfd2.png', '龙哥周末加班，一起加班的他请吃海底捞', '1', 'http://www.baidu.com', '1', '1577698844', '1582509746', '0');
INSERT INTO `sankei_banner_img` VALUES ('45', '新volo', 'http://pshangcheng.wsandos.com/SJ5e12dfc6232ea.jpg', '全新一代volo', '1', 'https://www.volvocars.com/', '2', '1577699630', '1579414555', '1');
INSERT INTO `sankei_banner_img` VALUES ('46', '1', 'http://pshangcheng.wsandos.com/SJ5e0d9770bc1d5.png', '1', '2', '1', '4', '1577949041', '1579414573', '1');
INSERT INTO `sankei_banner_img` VALUES ('47', '全新S60丨TA说“理论”更能出真知？', 'http://pshangcheng.wsandos.com/SJ5e577a918e42b.jpg', '全新S60与众不同 谁与争锋', '1', 'www.baidu.com', '1', '1582791321', '1582792520', '0');

-- ----------------------------
-- Table structure for sankei_contact_us
-- ----------------------------
DROP TABLE IF EXISTS `sankei_contact_us`;
CREATE TABLE `sankei_contact_us` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系我们';

-- ----------------------------
-- Records of sankei_contact_us
-- ----------------------------
INSERT INTO `sankei_contact_us` VALUES ('1', '广东省惠州市惠城区惠南大道', '0752-20200116');

-- ----------------------------
-- Table structure for sankei_corporate_culture
-- ----------------------------
DROP TABLE IF EXISTS `sankei_corporate_culture`;
CREATE TABLE `sankei_corporate_culture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label_Icon_s` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '图标1',
  `label_name_s` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '名称1',
  `label_text_s` text COLLATE utf8_czech_ci COMMENT '正文1',
  `label_lcon_ss` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '图标2',
  `label_name_ss` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '名称2',
  `label_text_ss` text COLLATE utf8_czech_ci COMMENT '正文2',
  `label_lcon_sss` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '图标3',
  `label_name_sss` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '名称3',
  `label_text_sss` text COLLATE utf8_czech_ci COMMENT '正文3',
  `content` text COLLATE utf8_czech_ci COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='企业文化';

-- ----------------------------
-- Records of sankei_corporate_culture
-- ----------------------------

-- ----------------------------
-- Table structure for sankei_count
-- ----------------------------
DROP TABLE IF EXISTS `sankei_count`;
CREATE TABLE `sankei_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(8) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '年',
  `month` varchar(16) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '月',
  `day` varchar(24) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '日',
  `views` int(11) DEFAULT NULL COMMENT '访问数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='流量统计';

-- ----------------------------
-- Records of sankei_count
-- ----------------------------
INSERT INTO `sankei_count` VALUES ('1', '2019', '2019-12', '2019-12-16', '2000');
INSERT INTO `sankei_count` VALUES ('2', '2019', '2019-11', '2019-11-17', '200');
INSERT INTO `sankei_count` VALUES ('3', '2019', '2019-10', '2019-10-17', '1000');
INSERT INTO `sankei_count` VALUES ('4', '2019', '2019-09', '2019-09-01', '500');
INSERT INTO `sankei_count` VALUES ('5', '2019', '2019-08', '2019-08-07', '600');
INSERT INTO `sankei_count` VALUES ('6', '2019', '2019-07', '2019-07-01', '700');
INSERT INTO `sankei_count` VALUES ('7', '2019', '2019-06', '2019-06-20', '600');
INSERT INTO `sankei_count` VALUES ('8', '2019', '2019-05', '2019-05-01', '700');
INSERT INTO `sankei_count` VALUES ('9', '2019', '2019-04', '2019-04-08', '300');
INSERT INTO `sankei_count` VALUES ('10', '2019', '2019-03', '2019-03-01', '400');
INSERT INTO `sankei_count` VALUES ('11', '2019', '2019-02', '2019-02-01', '600');
INSERT INTO `sankei_count` VALUES ('12', '2019', '2019-01', '2019-01-05', '300');
INSERT INTO `sankei_count` VALUES ('13', '2019', '2019-12', '2019-12-19', '33');
INSERT INTO `sankei_count` VALUES ('14', '2019', '2019-12', '2019-12-20', '27');
INSERT INTO `sankei_count` VALUES ('15', '2019', '2019-12', '2019-12-23', '2');
INSERT INTO `sankei_count` VALUES ('16', '2019', '2019-12', '2019-12-24', '25');
INSERT INTO `sankei_count` VALUES ('17', '2019', '2019-12', '2019-12-25', '49');
INSERT INTO `sankei_count` VALUES ('18', '2019', '2019-12', '2019-12-26', '48');
INSERT INTO `sankei_count` VALUES ('19', '2019', '2019-12', '2019-12-27', '2');
INSERT INTO `sankei_count` VALUES ('20', '2019', '2019-12', '2019-12-28', '27');
INSERT INTO `sankei_count` VALUES ('21', '2019', '2019-12', '2019-12-30', '304');
INSERT INTO `sankei_count` VALUES ('22', '2019', '2019-12', '2019-12-31', '244');
INSERT INTO `sankei_count` VALUES ('23', '2020', '2020-01', '2020-01-02', '64');
INSERT INTO `sankei_count` VALUES ('24', '2020', '2020-01', '2020-01-03', '52');
INSERT INTO `sankei_count` VALUES ('25', '2020', '2020-01', '2020-01-06', '60');
INSERT INTO `sankei_count` VALUES ('26', '2020', '2020-01', '2020-01-07', '156');
INSERT INTO `sankei_count` VALUES ('27', '2020', '2020-01', '2020-01-08', '122');
INSERT INTO `sankei_count` VALUES ('28', '2020', '2020-01', '2020-01-09', '136');
INSERT INTO `sankei_count` VALUES ('29', '2020', '2020-01', '2020-01-10', '202');
INSERT INTO `sankei_count` VALUES ('30', '2020', '2020-01', '2020-01-11', '82');
INSERT INTO `sankei_count` VALUES ('31', '2020', '2020-01', '2020-01-13', '80');
INSERT INTO `sankei_count` VALUES ('32', '2020', '2020-01', '2020-01-14', '231');
INSERT INTO `sankei_count` VALUES ('33', '2020', '2020-01', '2020-01-15', '389');
INSERT INTO `sankei_count` VALUES ('34', '2020', '2020-01', '2020-01-16', '906');
INSERT INTO `sankei_count` VALUES ('35', '2020', '2020-01', '2020-01-17', '281');
INSERT INTO `sankei_count` VALUES ('36', '2020', '2020-01', '2020-01-18', '91');
INSERT INTO `sankei_count` VALUES ('37', '2020', '2020-01', '2020-01-19', '297');
INSERT INTO `sankei_count` VALUES ('38', '2020', '2020-01', '2020-01-20', '39');
INSERT INTO `sankei_count` VALUES ('39', '2020', '2020-02', '2020-02-02', '18');
INSERT INTO `sankei_count` VALUES ('40', '2020', '2020-02', '2020-02-03', '12');
INSERT INTO `sankei_count` VALUES ('41', '2020', '2020-02', '2020-02-04', '104');
INSERT INTO `sankei_count` VALUES ('42', '2020', '2020-02', '2020-02-05', '36');
INSERT INTO `sankei_count` VALUES ('43', '2020', '2020-02', '2020-02-07', '49');
INSERT INTO `sankei_count` VALUES ('44', '2020', '2020-02', '2020-02-10', '2');
INSERT INTO `sankei_count` VALUES ('45', '2020', '2020-02', '2020-02-12', '1');
INSERT INTO `sankei_count` VALUES ('46', '2020', '2020-02', '2020-02-18', '1');
INSERT INTO `sankei_count` VALUES ('47', '2020', '2020-02', '2020-02-24', '65');
INSERT INTO `sankei_count` VALUES ('48', '2020', '2020-02', '2020-02-25', '1');
INSERT INTO `sankei_count` VALUES ('49', '2020', '2020-02', '2020-02-27', '2');

-- ----------------------------
-- Table structure for sankei_culture
-- ----------------------------
DROP TABLE IF EXISTS `sankei_culture`;
CREATE TABLE `sankei_culture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sankei_culture
-- ----------------------------
INSERT INTO `sankei_culture` VALUES ('1', 'http://pshangcheng.wsandos.com/SJ5e22ede947a27.png', '价值观', '<p style=\"line-height: 0.5;\">打造最具影响力&nbsp;&nbsp;&nbsp;&nbsp;的资深销售品售</p><p style=\"line-height: 0.5;\"><br></p>');
INSERT INTO `sankei_culture` VALUES ('2', 'http://pshangcheng.wsandos.com/SJ5e22eddcc17a7.png', '使命', '<p style=\"line-height: 0.5;\">为员工提供机&nbsp; 会带来幸福人生</p><p style=\"line-height: 0.5;\">为员工提供机&nbsp; 会带来幸福人生</p><p style=\"line-height: 0.5;\">为员工提供机&nbsp; 会带来幸福人生</p><p style=\"line-height: 0.5;\"><br></p>');
INSERT INTO `sankei_culture` VALUES ('3', 'http://pshangcheng.wsandos.com/SJ5e23f883b408f.png', '愿景', '<p style=\"line-height: 0.5;\">打造最具影响力的</p><p style=\"line-height: 0.5;\">资深汽车服务品牌</p>');

-- ----------------------------
-- Table structure for sankei_culture_content
-- ----------------------------
DROP TABLE IF EXISTS `sankei_culture_content`;
CREATE TABLE `sankei_culture_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `culture` text COMMENT '企业文化',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sankei_culture_content
-- ----------------------------
INSERT INTO `sankei_culture_content` VALUES ('1', '<div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><h1><span style=\"font-size: 36px;\"><b>经营理念</b></span></h1><br><span style=\"font-size: 14px;\"><span style=\"font-size: 16px;\">1.超越客户期望是我们永恒的追求</span><br></span><span style=\"font-size: 16px;\">2.我们所做的一切是为了做强</span></blockquote></div><div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><br><h1><b>管理理念</b></h1></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">1、以人为本，重在培养，任人唯贤，人尽其才。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">2、你的满意，是我的希望。你的希望，是我们的追求。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">3、讲原则，讲规矩，讲秩序，讲效益。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">4、人人节约降成本，月月改善增效益。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">5、以结果为导向，以业绩为根本，把控关键节点。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">6、提升组织能力，打造学习型组织，建立学习型企业。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">7、互助协同，提升团队凝聚力和竞争力。\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 16px;\">8、个人利益让步于集体利益，以集体利益为重。</span></span></blockquote></div><div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 14px;\"><br></span></span></blockquote></div><div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 14px;\"><br></span></span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><h1><b>集团荣誉</b></h1></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">2017年获得中信汽车金融“卓越合作伙伴”\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 16px;\">2016年集团获得东南贸易“十年合作金牌奖”</span></span></blockquote></div><div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 14px;\"><br></span></span></blockquote></div><div style=\"text-align: center;\"><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 20px;\"><span style=\"font-size: 14px;\"><br></span></span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><h1><b>品牌荣誉</b></h1></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">2016年东莞永凯店获年度雪佛兰优秀总经理\r\n</span></blockquote><blockquote style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-size: 16px;\">2016年东莞永凯店获年度精兵强将奖</span></blockquote></div>');

-- ----------------------------
-- Table structure for sankei_development_history
-- ----------------------------
DROP TABLE IF EXISTS `sankei_development_history`;
CREATE TABLE `sankei_development_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL COMMENT '年份',
  `month` int(11) DEFAULT NULL COMMENT '月份',
  `content` text COLLATE utf8_czech_ci COMMENT '内容',
  `state` int(255) DEFAULT '1' COMMENT '状态：1启动 2禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `closed` int(11) DEFAULT '0' COMMENT '存在为‘0’，删除为‘1’',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='发展历程';

-- ----------------------------
-- Records of sankei_development_history
-- ----------------------------
INSERT INTO `sankei_development_history` VALUES ('1', '2016', '7', '泸州嘉诚协力汽车销售服务有限公司成立，嘉诚区域扩张进程正式开始', '1', '1576229362', '1582512249', '0');
INSERT INTO `sankei_development_history` VALUES ('2', '2016', '8', ' 宜宾嘉诚捷安汽车销售服务有限公司成立，嘉诚版图向川南地区进一步扩张 ', '1', '1576660758', '1579491548', '0');
INSERT INTO `sankei_development_history` VALUES ('3', '2016', '10', ' 嘉诚旗下首个长城下首个长城4S旗舰，店入驻石羊工业园重装开业', '1', '1576660814', '1582512340', '0');
INSERT INTO `sankei_development_history` VALUES ('4', '2018', '10', 'aaaaa', '1', '1576662947', '1576823570', '1');
INSERT INTO `sankei_development_history` VALUES ('5', '2018', '10', '是不是', '1', '1576662959', '1577783392', '1');
INSERT INTO `sankei_development_history` VALUES ('6', '2018', '10', '我就说可以修改了嘛', '1', '1576662968', '1577783396', '1');
INSERT INTO `sankei_development_history` VALUES ('7', '2019', '12', '但是发射点犯得上发射点发射点犯得上发生鬼地方鬼地方广泛大概', '1', '1576663160', '1577783373', '1');
INSERT INTO `sankei_development_history` VALUES ('8', '2019', '11', '给多少米公司的公司当时看到了你发的身高多少多少', '1', '1576743450', '1577783370', '1');
INSERT INTO `sankei_development_history` VALUES ('9', '2011', '1', '1', '1', '1576822384', '1576823297', '1');
INSERT INTO `sankei_development_history` VALUES ('10', '2019', '6', '都是刮痧放大并发洪水东莞活动非结构化都会放点击返回购买该健康就好提交很多和睫毛膏和', '1', '1577694374', '1577783334', '1');
INSERT INTO `sankei_development_history` VALUES ('11', '2020', '1', '刚给你好地方给对方的都发给你的风格你带饭大过年的发给你发你都发给你的风格你带饭结婚后搞活动发给你发个好发个你的发给你电饭锅你', '1', '1577694405', '1577783331', '1');
INSERT INTO `sankei_development_history` VALUES ('12', '2010', '1', '的发挥三份工你带饭后面的发个你的还没回国下次你的防火门你的皇冠梵蒂冈交付给', '1', '1577695190', '1577783361', '1');
INSERT INTO `sankei_development_history` VALUES ('13', '2011', '6', '刚给你好地方给对方的都发给你的风格你带饭大过年的发给你发你都发给你的风格你带饭结婚后搞活动发给你发个好发个你的发给你电饭锅你', '1', '1577695214', '1577783314', '1');
INSERT INTO `sankei_development_history` VALUES ('14', '2019', '10', '嘉诚旗下首个长城4S旗舰店入驻石羊工业园石羊工园重装业', '1', '1579489356', '1579491531', '0');
INSERT INTO `sankei_development_history` VALUES ('15', '2019', '8', '宜宾嘉诚捷安汽车销售服务有限公司成立，嘉诚版图向川南地区进一步扩张', '1', '1579489386', '1582530274', '0');
INSERT INTO `sankei_development_history` VALUES ('16', '2019', '7', '泸州嘉诚协力汽车销售服务有限公司成立，嘉诚区域扩张进程正式开始', '2', '1579489410', '1582534002', '0');
INSERT INTO `sankei_development_history` VALUES ('17', '2019', '5', '重庆瑞原汽车销售有限公司汽博中心分公司成立', '2', '1579489428', '1582530404', '0');
INSERT INTO `sankei_development_history` VALUES ('18', '2018', '10', ' 嘉诚旗下首个长城4S旗舰店入驻石羊工业园石羊工业园重装开业', '1', '1579489468', '1582512382', '0');
INSERT INTO `sankei_development_history` VALUES ('19', '2018', '8', '宜宾嘉诚捷安汽车销售服务有限公司成立，嘉诚版图向川南地区进一步扩张', '2', '1579489481', '1582512366', '1');
INSERT INTO `sankei_development_history` VALUES ('20', '2017', '10', ' 嘉诚旗下首个长城4S旗舰店入驻石羊工入驻石羊工业园', '1', '1579489511', '1582532444', '0');
INSERT INTO `sankei_development_history` VALUES ('21', '2016', '5', '重庆瑞原汽车销售有限公司汽博中心分公司成立    ', '1', '1579489629', '1582530280', '0');
INSERT INTO `sankei_development_history` VALUES ('22', '2016', '5', '5月 重庆瑞原汽车销售有限公司汽博中心分公司成立    222', '1', '1582511668', '1582511726', '1');
INSERT INTO `sankei_development_history` VALUES ('23', '2018', '8', '宜宾嘉诚捷安汽车销售服务有限公司成立，嘉诚版图向川南地区进一步扩张；', '2', '1582512393', '1582533701', '0');

-- ----------------------------
-- Table structure for sankei_index_about
-- ----------------------------
DROP TABLE IF EXISTS `sankei_index_about`;
CREATE TABLE `sankei_index_about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about` text COMMENT '首页关于',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='首页关于';

-- ----------------------------
-- Records of sankei_index_about
-- ----------------------------
INSERT INTO `sankei_index_about` VALUES ('1', '<p style=\"text-align: center; line-height: 21px;\">&nbsp; &nbsp;惠州市三惠汽车（集团）有限公司隶属广东永奥投资集团（以下简称：三惠集团）自成立以来，全心全力专注于汽车品牌4S店经营管理，</p><p style=\"text-align: center; line-height: 21px;\">&nbsp; &nbsp; &nbsp;以专注、持续、稳健的开拓与发展精神，坚持“以人为本、诚信经营、优质服务、回报社会”的经营方针，积极引进国内外先进的汽车营销理念，努力打造最具影响力的资深汽车服务品牌！</p><p></p><p></p><p style=\"text-align: left;\"></p>');

-- ----------------------------
-- Table structure for sankei_information
-- ----------------------------
DROP TABLE IF EXISTS `sankei_information`;
CREATE TABLE `sankei_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` varchar(255) DEFAULT NULL COMMENT '1公司新闻 2行业新闻 3用车学堂',
  `creation_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `content` text COMMENT '内容',
  `state` int(255) DEFAULT NULL COMMENT '状态：1启动 2禁用',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `introduction` text COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='资讯';

-- ----------------------------
-- Records of sankei_information
-- ----------------------------
INSERT INTO `sankei_information` VALUES ('6', 'http://pshangcheng.wsandos.com/pic/15794219669794', '汽车长久不开，至多能停放多少天？', '2', '1576289904', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e2517d46e35a.png\" style=\"width: 100%;\"></p><p>4月 18 日，滴滴出行发布《 2017 企业公民报告》，从引领分享经济、多样化出行、安全科技创新、智慧交通发展、新能源产业、参与公益等诸多方面阐述了滴滴出行 2017 年社会责任履行的理念和成果。\n</p><p></p><p>让城市交通更智慧&nbsp;&nbsp;运行更高效\n</p><p>2017年，智慧交通成为滴滴新战略，从解决“出行难”，到解决城市交通综合问题，成为政府及城市管理者的伙伴，这是滴滴自身使命、战略、愿景的升级，也是滴滴企业社会责任的升级。\n</p><p>在过去的一年里，滴滴智慧交通实现从0到1的突破，通过海量城市交通数据、业界领先算法和大数据挖掘能力，缓解交通拥堵，提升市民出行效率，提高城市城市运转效率，成绩亮眼。\n</p><p>滴滴智慧交通与国内20多个城市合作，将1200多个“智慧信号灯”与100多块诱导屏，上线到济南、广州、武汉等城市中，切实改善城市拥堵难题，创造社会价值。以济南为例，每天为市民节约超过3万个小时的通行时间、全年累计节省1158万小时，相当于多创造3.6亿元收入。\n</p><p>同时，还推出了滴禹—智慧交通信息平台，发布城市自动化周报、月报及城市交通季度报告，使各地政府能够详细了解当地交通运行现状，进而精准的“对症下药”开展大数据交通治理新模式，成为解决交通问题的巨大助力。\n</p><p></p><p></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e2517e16fbcb.png\" style=\"width: 100%;\"></p><p>科技为安全出行保驾护航\n</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</p><p></p><p>持续创新&nbsp;&nbsp;向共享、智能、新能源方向发展\n</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程&nbsp;30%。\n</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</p><p>2017年，滴滴入选《财富》2017&nbsp;年最受赞赏的中国公司榜单，《快公司》2017&nbsp;年全球最具创新力公司（中国榜），入选TechCrunch&nbsp;第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获&nbsp;2017&nbsp;年度全球互联网领域领先科技成果奖。\n</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。\n</p><p><br></p>', '1', '2', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便。');
INSERT INTO `sankei_information` VALUES ('9', 'http://pshangcheng.wsandos.com/pic/15794164728018', '加强本土研发能力，发力电动汽车市场 沃尔沃汽车亚太区', '2', '1576463749', '<p><br></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b1e5877c9a.png\"><br></p>', '1', '3', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便是根深蒂固士大夫敢死队敢死队敢死队士大夫似的。');
INSERT INTO `sankei_information` VALUES ('10', 'http://pshangcheng.wsandos.com/pic/15794219513378', '汽车长久不开，至多能停放多少天？', '2', '1576463857', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b1e7d5ff05.png\"><br></p>', '1', '4', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便，但有时候…');
INSERT INTO `sankei_information` VALUES ('26', 'http://pshangcheng.wsandos.com/pic/15794164929026', '汽车长久不开，至少能存放多少天？', '3', '1577690679', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b1ea113e9d.png\"><br></p>', '1', '3', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便');
INSERT INTO `sankei_information` VALUES ('32', 'http://pshangcheng.wsandos.com/pic/15794215487455', '汽车长久不开，至少能存放多少天？', '3', '1577690814', '<p><span style=\"font-size: 14px;\">汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？汽车长久不开，至少能存放多少天？</span></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b16ff0cc9f.png\"><br></p>', '1', '1', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便是根深蒂固士大夫敢死队敢死队敢死队士大夫似的。');
INSERT INTO `sankei_information` VALUES ('47', 'http://pshangcheng.wsandos.com/pic/15794163719099', '汽车长久不开，至多能停放多少天？', '1', '1578386959', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e251795c752f.png\" style=\"width: 100%;\"><br></p><p><br></p><p>4月 18 日，滴滴出行发布《 2017 企业公民报告》，从引领分享经济、多样化出行、安全科技创新、智慧交通发展、新能源产业、参与公益等诸多方面阐述了滴滴出行 2017 年社会责任履行的理念和成果。<br></p><p></p><p>让城市交通更智慧&nbsp;&nbsp;运行更高效\n</p><p>2017年，智慧交通成为滴滴新战略，从解决“出行难”，到解决城市交通综合问题，成为政府及城市管理者的伙伴，这是滴滴自身使命、战略、愿景的升级，也是滴滴企业社会责任的升级。\n</p><p>在过去的一年里，滴滴智慧交通实现从0到1的突破，通过海量城市交通数据、业界领先算法和大数据挖掘能力，缓解交通拥堵，提升市民出行效率，提高城市城市运转效率，成绩亮眼。\n</p><p>滴滴智慧交通与国内20多个城市合作，将1200多个“智慧信号灯”与100多块诱导屏，上线到济南、广州、武汉等城市中，切实改善城市拥堵难题，创造社会价值。以济南为例，每天为市民节约超过3万个小时的通行时间、全年累计节省1158万小时，相当于多创造3.6亿元收入。\n</p><p>同时，还推出了滴禹—智慧交通信息平台，发布城市自动化周报、月报及城市交通季度报告，使各地政府能够详细了解当地交通运行现状，进而精准的“对症下药”开展大数据交通治理新模式，成为解决交通问题的巨大助力。\n</p><p></p><p></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e2517a15c4e4.png\" style=\"width: 100%;\"></p><p>科技为安全出行保驾护航\n</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</p><p></p><p>持续创新&nbsp;&nbsp;向共享、智能、新能源方向发展\n</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程&nbsp;30%。\n</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</p><p>2017年，滴滴入选《财富》2017&nbsp;年最受赞赏的中国公司榜单，《快公司》2017&nbsp;年全球最具创新力公司（中国榜），入选TechCrunch&nbsp;第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获&nbsp;2017&nbsp;年度全球互联网领域领先科技成果奖。\n</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。\n</p><p><br></p>', '1', '1', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便是根深蒂固士大夫敢死队敢死队敢死队士大夫似的。');
INSERT INTO `sankei_information` VALUES ('54', 'http://pshangcheng.wsandos.com/pic/15794220319436', '加强本土研发能力，发力电动汽车市场 沃尔沃汽车亚太区研发研发研发', '3', '1579422087', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e2411cce5d4e.png\" style=\"width: 100%;\"><br></p>', '1', '2', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便是根深蒂固士大夫敢死队敢死队敢死队士大夫似的。');
INSERT INTO `sankei_information` VALUES ('55', 'http://pshangcheng.wsandos.com/pic/15794223336178', '加强本土研发能力，发力电动汽车市场 沃尔沃汽车亚太区', '1', '1579422357', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e2414b693630.png\" style=\"width: 100%;\"></p><p>4月 18 日，滴滴出行发布《 2017 企业公民报告》，从引领分享经济、多样化出行、安全科技创新、智慧交通发展、新能源产业、参与公益等诸多方面阐述了滴滴出行 2017 年社会责任履行的理念和成果。\r</p><p>\r</p><p>让城市交通更智慧&nbsp;&nbsp;运行更高效\r</p><p>2017年，智慧交通成为滴滴新战略，从解决“出行难”，到解决城市交通综合问题，成为政府及城市管理者的伙伴，这是滴滴自身使命、战略、愿景的升级，也是滴滴企业社会责任的升级。\r</p><p>在过去的一年里，滴滴智慧交通实现从0到1的突破，通过海量城市交通数据、业界领先算法和大数据挖掘能力，缓解交通拥堵，提升市民出行效率，提高城市城市运转效率，成绩亮眼。\r</p><p>滴滴智慧交通与国内20多个城市合作，将1200多个“智慧信号灯”与100多块诱导屏，上线到济南、广州、武汉等城市中，切实改善城市拥堵难题，创造社会价值。以济南为例，每天为市民节约超过3万个小时的通行时间、全年累计节省1158万小时，相当于多创造3.6亿元收入。\r</p><p>同时，还推出了滴禹—智慧交通信息平台，发布城市自动化周报、月报及城市交通季度报告，使各地政府能够详细了解当地交通运行现状，进而精准的“对症下药”开展大数据交通治理新模式，成为解决交通问题的巨大助力。\r</p><p>\r</p><p>\r<img src=\"http://pshangcheng.wsandos.com/SJ5e2517bfbd063.png\" style=\"width:100%\"></p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>持续创新&nbsp;&nbsp;向共享、智能、新能源方向发展\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程&nbsp;30%。\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>2017年，滴滴入选《财富》2017&nbsp;年最受赞赏的中国公司榜单，《快公司》2017&nbsp;年全球最具创新力公司（中国榜），入选TechCrunch&nbsp;第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获&nbsp;2017&nbsp;年度全球互联网领域领先科技成果奖。\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。\r</p><p><br></p>', '1', '2', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便。');
INSERT INTO `sankei_information` VALUES ('56', 'http://pshangcheng.wsandos.com/pic/15794225376056', ' 汽车长久不开，至少能存放多少天？', '1', '1579422578', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e24136d8a9bc.png\" style=\"width: 100%;\"><br></p><p><br></p>', '1', '3', '\n如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便。');
INSERT INTO `sankei_information` VALUES ('57', 'http://pshangcheng.wsandos.com/pic/15794301728318', '汽车长久不开，至少能存放多少天？', '1', '1579430225', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e24314671f59.png\" style=\"width: 100%;\"><br></p>', '1', '10', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便。');
INSERT INTO `sankei_information` VALUES ('58', 'http://pshangcheng.wsandos.com/pic/15794302846803', '让城市交通更智慧运行更高效', '3', '1579430326', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e2431b25ca35.png\"></p><p>4月 18 日，滴滴出行发布《 2017 企业公民报告》，从引领分享经济、多样化出行、安全科技创新、智慧交通发展、新能源产业、参与公益等诸多方面阐述了滴滴出行 2017 年社会责任履行的理念和成果。\n</p><p></p><p>让城市交通更智慧&nbsp;&nbsp;运行更高效\n</p><p>2017年，智慧交通成为滴滴新战略，从解决“出行难”，到解决城市交通综合问题，成为政府及城市管理者的伙伴，这是滴滴自身使命、战略、愿景的升级，也是滴滴企业社会责任的升级。\n</p><p>在过去的一年里，滴滴智慧交通实现从0到1的突破，通过海量城市交通数据、业界领先算法和大数据挖掘能力，缓解交通拥堵，提升市民出行效率，提高城市城市运转效率，成绩亮眼。\n</p><p>滴滴智慧交通与国内20多个城市合作，将1200多个“智慧信号灯”与100多块诱导屏，上线到济南、广州、武汉等城市中，切实改善城市拥堵难题，创造社会价值。以济南为例，每天为市民节约超过3万个小时的通行时间、全年累计节省1158万小时，相当于多创造3.6亿元收入。\n</p><p>同时，还推出了滴禹—智慧交通信息平台，发布城市自动化周报、月报及城市交通季度报告，使各地政府能够详细了解当地交通运行现状，进而精准的“对症下药”开展大数据交通治理新模式，成为解决交通问题的巨大助力。\n</p><p></p><p></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e251803b53f1.png\" style=\"width: 100%;\"></p><p>科技为安全出行保驾护航\n</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</p><p></p><p>持续创新&nbsp;&nbsp;向共享、智能、新能源方向发展\n</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程&nbsp;30%。\n</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</p><p>2017年，滴滴入选《财富》2017&nbsp;年最受赞赏的中国公司榜单，《快公司》2017&nbsp;年全球最具创新力公司（中国榜），入选TechCrunch&nbsp;第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获&nbsp;2017&nbsp;年度全球互联网领域领先科技成果奖。\n</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。\n</p><p><br></p>', '1', '1', '如今汽车行业发展的十分迅速，很多的家庭都已经买上了汽车，而且每年都在成倍的增长。汽车给我们的生活带来了很多的方便。');
INSERT INTO `sankei_information` VALUES ('59', 'http://pshangcheng.wsandos.com/pic/15825125773026', '在线订购 北京现代订制您的安全空间', '2', '1582512588', '<p>持续蔓延的新型冠状病毒肺炎疫情牵动着全国人民的心，在这场没有硝烟的抗击疫情的战役中，那些奋战在一线的医护人员、不眠不休的医院建设者、冒着感染风险接送医护人员的爱心车主……用他们的负重前行，为更多的人筑起了安全的屏障。对于普通人来说，戴口罩、勤洗手、不聚集，守护好自己和家人的健康安全，防止交叉感染，就是对疫情防控的最大贡献。\r\n</p><p>\r\n</p><p>疫情当前，为了让更多消费者能够拥有一个移动的私享安全空间，北京现代快速响应，特别推出了在线订购、呵护到家的“暖心购”政策，通过线上购买、代办手续的方式，让消费者可以快捷构筑起属于自己的安全空间，解除疫情期间线下实地购车的后顾之忧。\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>暖心购车，安全无忧：即日起，可随时线上订购北京现代涵盖2019年上市新车在内的全系产品，同时，针对广大消费者疫情时期购车的安全顾虑，北京现代将负责把新车安全送到车主家中。\r\n</p><p>\r\n</p><p>暖心代办，足不出户：不仅新车送到家，北京现代还将为新车车主提供上门提取证件(可快递)、代办车辆保险、代办车辆上牌等一系列周到服务，在疫情期间尽全力为消费者构建订制化的安全空间，缩短心与心的距离。\r\n</p><p>\r\n</p><p>暖心政策，贴心享受：考虑到疫情当前消费者的购车压力，北京现代推出了超低首付的钜惠金融政策，用户可享受首付低至2020元的购车优惠(限融资租赁产品)，让安全和关爱变得唾手可得。\r\n</p><p>\r\n</p><p>全系热销产品，满足你的不同需求：此次活动车型为北京现代全系产品，包括周到呵护全家人安全的高科技、大空间产品“智享便捷大六座”SUV第四代胜达，专为年轻人打造的高颜值、高智能、低油耗的“青春型动派SUV”新一代ix25，具有NEDC标准500公里超长续航里程、超低能耗的昂希诺纯电动，以及热销车型新领动、新一代ix35等，将充分满足消费者的不同需求和喜好。\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>疫情面前，有焦躁有痛苦，但就像春天一定如约而至，这场疫情也终将过去，充满希望的明天一定会到来。北京现代此次在线订购、呵护到家的“暖心购”活动，以诚意十足的超级钜惠、无微不至的暖心服务为消费者提供了订制个人安全私享空间的便捷机会。让我们一起坚定信念、守护健康，待到疫情散去、春暖花开之时，将是又一段全新旅程的开始！</p>', '1', '10', '在线订购 北京现代订制您的安全空间');
INSERT INTO `sankei_information` VALUES ('60', 'http://pshangcheng.wsandos.com/pic/15825126604825', '现代汽车集团全球员工，为中国加油！', '2', '1582512679', '<p>我们来自不同的国家，说着不同的语言\r\n</p><p>\r\n</p><p>但我们身处同一个世界，拥有同一颗跳动的心\r\n</p><p>\r\n</p><p>中国的困难就是我们的困难\r\n</p><p>\r\n</p><p>现代汽车集团全球员工，为中国加油！</p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e533a2543850.jpg\" style=\"width:100%\"><br></p>', '1', '10', '现代汽车集团全球员工，为中国加油！');

-- ----------------------------
-- Table structure for sankei_information_label
-- ----------------------------
DROP TABLE IF EXISTS `sankei_information_label`;
CREATE TABLE `sankei_information_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `information_id` int(11) DEFAULT NULL COMMENT '资讯id',
  `label` varchar(255) DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8 COMMENT='资讯-标签';

-- ----------------------------
-- Records of sankei_information_label
-- ----------------------------
INSERT INTO `sankei_information_label` VALUES ('16', '3', '111');
INSERT INTO `sankei_information_label` VALUES ('17', '4', '标签1');
INSERT INTO `sankei_information_label` VALUES ('18', '4', '标签2');
INSERT INTO `sankei_information_label` VALUES ('19', '4', '标签3');
INSERT INTO `sankei_information_label` VALUES ('20', '5', '标签1');
INSERT INTO `sankei_information_label` VALUES ('21', '5', '标签2');
INSERT INTO `sankei_information_label` VALUES ('22', '5', '标签3');
INSERT INTO `sankei_information_label` VALUES ('29', '7', '标签1');
INSERT INTO `sankei_information_label` VALUES ('30', '7', '标签2');
INSERT INTO `sankei_information_label` VALUES ('31', '7', '标签3');
INSERT INTO `sankei_information_label` VALUES ('154', '27', '在东方红您是否该');
INSERT INTO `sankei_information_label` VALUES ('155', '27', '是多功能');
INSERT INTO `sankei_information_label` VALUES ('156', '28', '的发红包是');
INSERT INTO `sankei_information_label` VALUES ('157', '29', '你电饭锅z');
INSERT INTO `sankei_information_label` VALUES ('158', '30', '的说法不合适的风格');
INSERT INTO `sankei_information_label` VALUES ('159', '31', '都不能的发给你 ');
INSERT INTO `sankei_information_label` VALUES ('162', '34', '圣诞节和豆腐干');
INSERT INTO `sankei_information_label` VALUES ('163', '35', '待发货不是的发');
INSERT INTO `sankei_information_label` VALUES ('165', '25', '11');
INSERT INTO `sankei_information_label` VALUES ('166', '24', '打火锅复读过');
INSERT INTO `sankei_information_label` VALUES ('167', '23', '带饭呢三份工');
INSERT INTO `sankei_information_label` VALUES ('168', '22', '托合提');
INSERT INTO `sankei_information_label` VALUES ('169', '8', '舒适');
INSERT INTO `sankei_information_label` VALUES ('170', '8', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('171', '8', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('175', '36', 'qq');
INSERT INTO `sankei_information_label` VALUES ('176', '36', 'q');
INSERT INTO `sankei_information_label` VALUES ('190', '19', '东方红士大夫');
INSERT INTO `sankei_information_label` VALUES ('191', '19', '东方红年大法官');
INSERT INTO `sankei_information_label` VALUES ('192', '18', '地方很多发');
INSERT INTO `sankei_information_label` VALUES ('193', '18', '东方红士大夫');
INSERT INTO `sankei_information_label` VALUES ('194', '17', '多少分河北师大');
INSERT INTO `sankei_information_label` VALUES ('195', '17', '打粉红色');
INSERT INTO `sankei_information_label` VALUES ('196', '16', '是大法官士大夫');
INSERT INTO `sankei_information_label` VALUES ('197', '16', '士大夫和地方');
INSERT INTO `sankei_information_label` VALUES ('198', '16', '说的话的风格');
INSERT INTO `sankei_information_label` VALUES ('201', '21', '先盛饭给你操');
INSERT INTO `sankei_information_label` VALUES ('202', '21', '小高京东方');
INSERT INTO `sankei_information_label` VALUES ('203', '15', '啥发光时代发');
INSERT INTO `sankei_information_label` VALUES ('204', '15', '的粉红色的风格你带饭');
INSERT INTO `sankei_information_label` VALUES ('205', '15', '手动滑动发给你');
INSERT INTO `sankei_information_label` VALUES ('206', '14', '是大公司的');
INSERT INTO `sankei_information_label` VALUES ('207', '14', '地方很多发个');
INSERT INTO `sankei_information_label` VALUES ('208', '14', '的挂号费改a');
INSERT INTO `sankei_information_label` VALUES ('209', '13', '地方不大发');
INSERT INTO `sankei_information_label` VALUES ('210', '13', '方便好多次');
INSERT INTO `sankei_information_label` VALUES ('211', '12', '的发很高大上');
INSERT INTO `sankei_information_label` VALUES ('212', '12', '待发货不是的发');
INSERT INTO `sankei_information_label` VALUES ('324', '37', '111');
INSERT INTO `sankei_information_label` VALUES ('354', '38', '撒的阿萨德撒');
INSERT INTO `sankei_information_label` VALUES ('355', '38', '水电费水电费');
INSERT INTO `sankei_information_label` VALUES ('356', '38', '撒大声地阿萨');
INSERT INTO `sankei_information_label` VALUES ('497', '26', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('498', '26', '舒适');
INSERT INTO `sankei_information_label` VALUES ('500', '26', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('533', '9', '车安全性');
INSERT INTO `sankei_information_label` VALUES ('534', '9', '车舒适性');
INSERT INTO `sankei_information_label` VALUES ('535', '9', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('539', '10', '车安全性');
INSERT INTO `sankei_information_label` VALUES ('540', '10', '车舒适性');
INSERT INTO `sankei_information_label` VALUES ('541', '10', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('542', '56', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('543', '56', '舒适');
INSERT INTO `sankei_information_label` VALUES ('544', '56', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('553', '32', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('560', '57', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('561', '57', '舒适');
INSERT INTO `sankei_information_label` VALUES ('562', '57', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('569', '55', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('570', '55', '舒适');
INSERT INTO `sankei_information_label` VALUES ('571', '55', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('578', '58', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('579', '58', '舒适');
INSERT INTO `sankei_information_label` VALUES ('580', '58', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('581', '54', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('582', '54', '舒适');
INSERT INTO `sankei_information_label` VALUES ('583', '54', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('584', '6', '车安全性指标');
INSERT INTO `sankei_information_label` VALUES ('585', '6', '车舒适性指标');
INSERT INTO `sankei_information_label` VALUES ('586', '6', '汽车品牌质量');
INSERT INTO `sankei_information_label` VALUES ('587', '47', '车安全性测试');
INSERT INTO `sankei_information_label` VALUES ('588', '47', '舒适');
INSERT INTO `sankei_information_label` VALUES ('589', '47', '品牌质量');
INSERT INTO `sankei_information_label` VALUES ('590', '59', '新型冠状病毒');
INSERT INTO `sankei_information_label` VALUES ('591', '59', '肺炎疫情');
INSERT INTO `sankei_information_label` VALUES ('592', '59', '暖心购车');
INSERT INTO `sankei_information_label` VALUES ('593', '60', '中国加油');
INSERT INTO `sankei_information_label` VALUES ('594', '60', '现代汽车');
INSERT INTO `sankei_information_label` VALUES ('595', '60', '');

-- ----------------------------
-- Table structure for sankei_introduction
-- ----------------------------
DROP TABLE IF EXISTS `sankei_introduction`;
CREATE TABLE `sankei_introduction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enterprise_introduction` text COLLATE utf8_czech_ci COMMENT '企业介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='企业介绍';

-- ----------------------------
-- Records of sankei_introduction
-- ----------------------------
INSERT INTO `sankei_introduction` VALUES ('1', '<p>&nbsp; &nbsp;惠州市三惠汽车（集团）有限公司隶属广东永奥投资集团（以下简称：三惠集团）自成立以来，全心全力专注于汽车品牌4S店经营管理，以专注、持续、稳健的开拓与发展精神，坚持“以人为本、诚信经营、优质服务、回报社会”的经营方针，积极引进国内外先进的汽车营销理念，努力打造最具影响力的资深汽车服务品牌！\n</p><p>&nbsp; &nbsp; &nbsp; 广东永奥投资集团有限公司是一家汽车销售服务系统化、标准化、专业化于一体的“4S”现代化汽车贸易集团公司。坐落于中国改革开放前沿国家发展战略的粤港澳大湾区腹地---东莞南城天安数码城，南临深圳、香港，北靠省会广州，纵享广深港2小时经济圈。\n</p><p>自1997年注册成立第一家公司以来，目前在广东深圳、广州、东莞、中山、珠海、惠州、茂名、阳江、湛江、等地共拥有五十多家知名品牌的“4S”汽车专营店，和数十家汽车售后服务网点；努力成为汽车销售服务领域优秀运营商！\n</p><p>公司目前经营的汽车品牌有：梅赛德斯-奔驰、沃尔沃、上汽大众、北京现代、斯柯达、一汽大众、东风本田、通用别克、通用雪佛兰、长安福特、领克、东风标致、东风悦达·起亚、长城魏派、荣威、名爵、广汽新能源、吉利汽车、长安汽车、东风商用、东风风光、东风股份等。每个品牌均建有现代化的标准“4S”店。目前公司所经营多个品牌的销售在珠三角众多的经销商中规模名列前茅，在业界享有很高的声誉。\n</p><p>公司致力于为广大客户提供专业、系统、优质的用车服务。包括：整车销售、维修服务、汽车上牌、代买保险、汽车年审、汽车美容、配件供应、保险理赔、二手车经营等全系列汽车服务。以“更快、更高、更强”的有序竞争精神为客户创造需求，优质服务，提升价值。</p>');

-- ----------------------------
-- Table structure for sankei_qr_code
-- ----------------------------
DROP TABLE IF EXISTS `sankei_qr_code`;
CREATE TABLE `sankei_qr_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL COMMENT '咨询二维码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='咨询二维码';

-- ----------------------------
-- Records of sankei_qr_code
-- ----------------------------
INSERT INTO `sankei_qr_code` VALUES ('1', 'http://pshangcheng.wsandos.com/pic/15793447714387');

-- ----------------------------
-- Table structure for sankei_regional_management
-- ----------------------------
DROP TABLE IF EXISTS `sankei_regional_management`;
CREATE TABLE `sankei_regional_management` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `state` int(255) DEFAULT NULL COMMENT '状态：1启动 2禁用',
  `vehicle_brand_id` int(11) DEFAULT NULL COMMENT '车辆品牌id',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `creation_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='区域管理';

-- ----------------------------
-- Records of sankei_regional_management
-- ----------------------------
INSERT INTO `sankei_regional_management` VALUES ('8', '河源市', '1', '4', '2', '1576652445');
INSERT INTO `sankei_regional_management` VALUES ('10', '惠州市', '1', '1', '1', '1576724595');
INSERT INTO `sankei_regional_management` VALUES ('16', '东莞市', '1', null, '11', '1577695409');
INSERT INTO `sankei_regional_management` VALUES ('19', '上海市', '2', null, '12', '1579146315');
INSERT INTO `sankei_regional_management` VALUES ('24', '深圳市', '1', null, '10', '1579400495');
INSERT INTO `sankei_regional_management` VALUES ('25', '广州市', '1', null, '3', '1579416712');

-- ----------------------------
-- Table structure for sankei_sale
-- ----------------------------
DROP TABLE IF EXISTS `sankei_sale`;
CREATE TABLE `sankei_sale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL COMMENT '图标',
  `content` text COMMENT '文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='售后服务';

-- ----------------------------
-- Records of sankei_sale
-- ----------------------------
INSERT INTO `sankei_sale` VALUES ('1', 'http://pshangcheng.wsandos.com/pic/15793475998423', '车辆维修保养，零部件销售，事故理赔维修，汽车装饰美容，延保服务，24小时道路救援等。');
INSERT INTO `sankei_sale` VALUES ('2', 'http://pshangcheng.wsandos.com/pic/15793476132238', '公司对售后接待，汽修工作准备，车辆预检接收，车辆维修，质量检查，车辆交付等');
INSERT INTO `sankei_sale` VALUES ('3', 'http://pshangcheng.wsandos.com/pic/15793476339149', '公司对售后接待，汽修工作准备，车辆预检接收，车辆维修，质量检查，车辆交付等');
INSERT INTO `sankei_sale` VALUES ('4', 'http://pshangcheng.wsandos.com/pic/15793476458727', '爱车养护课堂，“车友俱部”啊哈好看 是是是三爱车养护课堂，“车友俱部”啊哈好看 是是是三爱车养护课堂，“车友俱部”啊哈好看 是是是');

-- ----------------------------
-- Table structure for sankei_store
-- ----------------------------
DROP TABLE IF EXISTS `sankei_store`;
CREATE TABLE `sankei_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `detailed_address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `state` int(255) DEFAULT NULL COMMENT '状态：1启动 2禁用',
  `introduce` text COMMENT '门店介绍',
  `vehicle_brand_id` int(11) DEFAULT NULL COMMENT '车辆品牌id',
  `regional_management_id` int(11) DEFAULT NULL COMMENT '区域管理id',
  `banner` varchar(255) DEFAULT NULL,
  `creation_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='门店';

-- ----------------------------
-- Records of sankei_store
-- ----------------------------
INSERT INTO `sankei_store` VALUES ('24', '上海惠鑫沃尔沃店 ', '广东省惠州市惠城区三栋镇惠南大道鑫惠沃尔沃4S店（惠淡西中海油正对面）   ', '17329723581', '1', '惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\n<div><br></div>', '2', '24', 'http://pshangcheng.wsandos.com/pic/15785568594501,http://pshangcheng.wsandos.com/pic/15785612377831', '1578556881', '7', '23.116699', '114.418839');
INSERT INTO `sankei_store` VALUES ('27', '河源惠鑫沃尔沃店 ', '广东省惠州市惠城区三栋镇惠南大道鑫惠沃尔沃4S店（惠淡西中海油正对面）   ', '15000000000', '1', '<p style=\"text-indent: 32px;\"><span style=\"caret-color: rgb(51, 51, 51);\">惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\n</span></p><p style=\"text-indent: 32px;\"><span style=\"caret-color: rgb(51, 51, 51);\"><br></span></p>', '70', '8', 'http://pshangcheng.wsandos.com/pic/15788967451814', '1578896798', '10', '22.993429', '114.44194');
INSERT INTO `sankei_store` VALUES ('29', '惠州鑫惠沃尔沃店', '广东省惠州市惠城区三栋镇惠南大道鑫惠沃尔沃4S店（惠淡西中海油正对面）   ', '0752-20200116,   (0752)7801868', '1', '<p style=\"text-indent: 32px;\"><span style=\"caret-color: rgb(51, 51, 51);\">惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\n</span></p><p style=\"text-indent: 32px;\"><span style=\"caret-color: rgb(51, 51, 51);\"><br></span></p>', '1', '10', 'http://pshangcheng.wsandos.com/pic/15791660706779', '1579166073', '5', '22.993429', '114.44194');
INSERT INTO `sankei_store` VALUES ('30', '惠州惠鑫沃尔沃店', '广东省惠州市惠城区三栋镇惠南大道鑫惠沃尔沃4S店', '13433333333', '1', '<p style=\"margin-bottom: 0px; padding-bottom: 25px; line-height: 36px;\">惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\n</p><p style=\"margin-bottom: 0px; padding-bottom: 25px; line-height: 36px;\"><br></p>', '3', '10', 'http://pshangcheng.wsandos.com/pic/15791662204339', '1579166286', '6', '22.993429', '114.44194');
INSERT INTO `sankei_store` VALUES ('31', '广州惠鑫沃尔沃店 ', '广东省惠州市惠城区三栋镇惠南大道鑫惠沃尔沃4S店（惠淡西中海油正对面）   ', '15992163054', '1', '<p>惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\n</p><p><br></p><p></p><p></p>', '39', '25', 'http://pshangcheng.wsandos.com/pic/15793417207524,http://pshangcheng.wsandos.com/pic/15794018673778,http://pshangcheng.wsandos.com/pic/15794018716621,http://pshangcheng.wsandos.com/pic/15794018776894', '1579341834', '10', '23.047131', '114.418297');
INSERT INTO `sankei_store` VALUES ('32', '回山东', '惠州市合立方', '15995612545', '2', '<p>惠州鑫惠汽车销售服务有限公司是由广东永奥汽车集团全资投建，公司成立与2016年4月28日，注册资金1000万元人民币，是惠州地区唯一沃尔沃授权经销商，沃尔沃中国最高建设标准的品牌4S店。 沃尔沃品牌的立足根本和做事原则，始终是“以人为尊”的品牌理念，人驾驭车，车是人安全的根本，沃尔沃不仅致力于打造全世界最安全的轿车，更以追逐用户的全方位感受为最终目标。\r</p><p><br></p>', '3', '10', 'http://pshangcheng.wsandos.com/pic/15794330485488', '1579433090', '10', '23.047131', '114.418297');
INSERT INTO `sankei_store` VALUES ('33', '打的', '广州', '11111111111111', '1', '<p>大大大阿迪拉斯柯达加拉手</p>', '1', '25', 'http://pshangcheng.wsandos.com/pic/15808724185596', '1580872456', '10', '23.15792', '113.27324');
INSERT INTO `sankei_store` VALUES ('34', '成轩', '东莞市', '15555555555', '1', '<p>范德萨范德萨发三法师的</p>', '1', '16', 'http://pshangcheng.wsandos.com/pic/15808734539948', '1580873506', '10', '23.02067', '113.75179');
INSERT INTO `sankei_store` VALUES ('35', '发的发生', '深圳市', '158852125521', '1', '<p>掉分十四的</p>', '1', '24', 'http://pshangcheng.wsandos.com/pic/15808739808049', '1580874009', '10', '22.55329', '113.88308');
INSERT INTO `sankei_store` VALUES ('36', '大大', '河源市区！', '188252636555', '1', '<p>三大飒飒大师大师</p>', '1', '8', 'http://pshangcheng.wsandos.com/pic/15808740235475', '1580874059', '3', '23.73417', '114.70246');
INSERT INTO `sankei_store` VALUES ('37', '惠州市一匠科技', '惠州市惠城区港惠新天地', '15995235525', '1', '<p>的实打实大师的</p>', '1', '10', 'http://pshangcheng.wsandos.com/pic/15810702135655', '1581070261', '10', '23.068304', '114.416217');

-- ----------------------------
-- Table structure for sankei_vehicle_brand
-- ----------------------------
DROP TABLE IF EXISTS `sankei_vehicle_brand`;
CREATE TABLE `sankei_vehicle_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `brief_introduction` text COMMENT '简介',
  `state` int(255) DEFAULT NULL COMMENT '状态：1启动 2禁用',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `creation_time` int(11) DEFAULT NULL,
  `Ico` varchar(255) DEFAULT NULL COMMENT '图标',
  `closed` int(11) DEFAULT '0' COMMENT '‘0’为存在，‘1’为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='车辆品牌';

-- ----------------------------
-- Records of sankei_vehicle_brand
-- ----------------------------
INSERT INTO `sankei_vehicle_brand` VALUES ('1', '1沃尔沃', '<p style=\"text-align: center;\">1沃尔沃（Volvo），瑞典著名豪华汽车品牌，曾译为富豪。该品牌于1927年在瑞典哥德堡创建。</p><p>沃尔沃集团（英文：Volvo Δ]  ），如今生产乘用车、 Ε]  卡车、客车、建筑设备、游艇及工业用发动机的瑞典公司，在1927年时于哥德堡创立。Volvo一词，本来为拉丁文，原意是“滚滚向前”。</p>', '1', '1', '1576468133', 'http://pshangcheng.wsandos.com/SJ5e3a83eff0389.png', '0');
INSERT INTO `sankei_vehicle_brand` VALUES ('2', '3宝马', '<p style=\"text-align: center; \">3沃尔沃（Volvo），瑞典著名豪华汽车品牌，曾译为富豪。该品牌于1927年在瑞典哥德堡创建。</p><p>沃尔沃集团（英文：Volvo Δ]  ），如今生产乘用车、 Ε]  卡车、客车、建筑设备、游艇及工业用发动机的瑞典公司，在1927年时于哥德堡创立。Volvo一词，本来为拉丁文，原意是“滚滚向前”。</p>', '1', '3', '1576491005', 'http://pshangcheng.wsandos.com/SJ5e242c74c226c.png', '0');
INSERT INTO `sankei_vehicle_brand` VALUES ('3', '2奔驰', '<p style=\"text-align: center; \">2奔驰（Volvo），瑞典著名豪华汽车品牌，曾译为富豪。该品牌于1927年在瑞典哥德堡创建。</p><p><span style=\"font-size: 14px;\">沃尔沃集团（英文：Volvo Δ]  ），如今生产乘用车、 Ε]  卡车、客车、建筑设备、游艇及工业用发动机的瑞典公司，在1927年时于哥德堡创立。Volvo一词，本来为拉丁文，原意是“滚滚向前”。沃尔沃集团（英文：Volvo Δ] ），</span>如今生产乘用车、 Ε] 卡车、客车、建筑设备、游艇及工业用发动机的瑞典公司，在1927年时于哥德堡创立。Volvo一词，本来为拉丁文，原意是“滚滚向前”。</p>', '1', '2', '1576491013', 'http://pshangcheng.wsandos.com/SJ5e242c6c0372e.png', '0');
INSERT INTO `sankei_vehicle_brand` VALUES ('4', '8本田', '8沃尔沃（Volvo），瑞典著名豪华汽车品牌，曾译为富豪。该品牌于1927年在瑞典哥德堡创建。沃尔沃集团（英文：Volvo Δ]  ），如今生产乘用车、 Ε]  卡车、客车、建筑设备、游艇及工业用发动机的瑞典公司，在1927年时于哥德堡创立。Volvo一词，本来为拉丁文，原意是“滚滚向前”。', '1', '8', '1576491389', 'http://pshangcheng.wsandos.com/SJ5e23ba521d31a.png', '1');

-- ----------------------------
-- Table structure for sankei_vehicle_information
-- ----------------------------
DROP TABLE IF EXISTS `sankei_vehicle_information`;
CREATE TABLE `sankei_vehicle_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL COMMENT '封面',
  `name` varchar(255) DEFAULT NULL COMMENT '车名',
  `state` int(255) DEFAULT NULL COMMENT '状态：1启动 2禁用',
  `vehicle_brand_id` int(11) DEFAULT NULL COMMENT '车辆品牌id',
  `sort` int(255) DEFAULT '10' COMMENT '排序',
  `creation_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `recommend` int(255) DEFAULT NULL COMMENT '购车推荐：1是 2否',
  `video` varchar(255) DEFAULT NULL COMMENT '视频',
  `details` text COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='车辆信息';

-- ----------------------------
-- Records of sankei_vehicle_information
-- ----------------------------
INSERT INTO `sankei_vehicle_information` VALUES ('7', 'http://pshangcheng.wsandos.com/pic/15794181049663', '北京现代-达胜', '1', '39', '1', '1577157823', '2', 'http://pshangcheng.wsandos.com/pic/15777774988966', '<span style=\"font-size: 14px;\">惠州市三惠汽车（集团）有限公司隶属广东永奥投资集团（以下简称：三惠集团）自成立以来，全心全力专注于汽车品牌4S店经营管理， 以专注、持续、稳健的开拓与发展精神，坚持“以人为本、诚信经营、优质服务、回报社会”的经营方针，积极引进国内外先进的汽车营销理念，努力打造最具影响力的资深汽车服务品牌</span><br>');
INSERT INTO `sankei_vehicle_information` VALUES ('8', 'http://pshangcheng.wsandos.com/pic/15794181949130', '530Li', '1', '2', '3', '1577157904', '1', 'http://pshangcheng.wsandos.com/pic/15776928125473', '<p><img src=\"http://pshangcheng.wsandos.com/SJ5e2522d1619c3.png\" style=\"width:100%\"><br></p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e2522e6d7643.png\" style=\"width:100%\"><br></p><p>科技为安全出行保驾护航\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>持续创新&nbsp;&nbsp;向共享、智能、新能源方向发展\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程&nbsp;30%。\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>2017年，滴滴入选《财富》2017&nbsp;年最受赞赏的中国公司榜单，《快公司》2017&nbsp;年全球最具创新力公司（中国榜），入选TechCrunch&nbsp;第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获&nbsp;2017&nbsp;年度全球互联网领域领先科技成果奖。\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p><p><br></p>');
INSERT INTO `sankei_vehicle_information` VALUES ('13', 'http://pshangcheng.wsandos.com/pic/15777855988106', '沃尔沃', '1', '1', '10', '1577785633', '1', 'http://pshangcheng.wsandos.com/pic/15777856242132', '<p></p><p>\r</p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p>\r</p><p>\r</p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>\r</p><p>\r</p><p>持续创新  向共享、智能、新能源方向发展\r</p><p>\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\r</p><p>\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>\r</p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\r</p><p>\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b1fb19a8f3.png\"><br></p>');
INSERT INTO `sankei_vehicle_information` VALUES ('14', 'http://pshangcheng.wsandos.com/pic/15777856834984', '现代', '1', '39', '10', '1577785757', '1', 'http://pshangcheng.wsandos.com/pic/15777857086636', '<p>\r</p><p><br></p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p>\r</p><p>\r</p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>\r</p><p>\r</p><p>持续创新  向共享、智能、新能源方向发展\r</p><p>\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\r</p><p>\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>\r</p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\r</p><p>\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。<img src=\"http://pshangcheng.wsandos.com/SJ5e0b1ffa3faac.png\"><br></p><p><br></p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b195cab657.png\"><br></p>');
INSERT INTO `sankei_vehicle_information` VALUES ('15', 'http://pshangcheng.wsandos.com/pic/15777857882711', '奥迪', '1', '70', '10', '1577785822', '1', 'http://pshangcheng.wsandos.com/pic/15777858185695', '<p>\r</p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p>\r</p><p>\r</p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>\r</p><p>\r</p><p>持续创新  向共享、智能、新能源方向发展\r</p><p>\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\r</p><p>\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>\r</p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\r</p><p>\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p><p><img src=\"http://pshangcheng.wsandos.com/SJ5e0b19c83ab5a.png\" style=\"width: 100%;\"><br></p>');
INSERT INTO `sankei_vehicle_information` VALUES ('16', 'http://pshangcheng.wsandos.com/pic/15794230797335', '宝马', '1', '2', '10', '1578388482', '1', 'http://pshangcheng.wsandos.com/pic/15783884669035', '<p></p><p><br></p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\n</p><p></p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\n</p><p></p><p>Apple CarPlay 与生活无缝衔接\n</p><p></p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\n</p><p></p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\n</p><p></p><p></p><p></p><p>科技为安全出行保驾护航\n</p><p></p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</p><p></p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</p><p></p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</p><p></p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</p><p></p><p></p><p></p><p>持续创新  向共享、智能、新能源方向发展\n</p><p></p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</p><p></p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\n</p><p></p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</p><p></p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\n</p><p></p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p>');
INSERT INTO `sankei_vehicle_information` VALUES ('18', 'http://pshangcheng.wsandos.com/pic/15794182184133', '北京现代-达胜', '1', '39', '10', '1578388586', '1', 'http://pshangcheng.wsandos.com/pic/15783885698394', '<p>\r</p><p><span style=\"font-size: 16px;\"></span><span style=\"font-size: 14px;\"></span><br></p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p>\r</p><p>\r</p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>\r</p><p>\r</p><p>持续创新  向共享、智能、新能源方向发展\r</p><p>\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\r</p><p>\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>\r</p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\r</p><p>\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p><p><br></p>');
INSERT INTO `sankei_vehicle_information` VALUES ('20', 'http://pshangcheng.wsandos.com/pic/15794232766857', '奔驰2', '1', '3', '10', '1578391092', '1', 'http://pshangcheng.wsandos.com/pic/15794922671127', '<p></p><div><br></div><div>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\n</div><div></div><div>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\n</div><div></div><div>Apple CarPlay 与生活无缝衔接\n</div><div></div><div>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\n</div><div></div><div>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\n</div><div></div><div></div><div></div><div>科技为安全出行保驾护航\n</div><div></div><div>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</div><div></div><div>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</div><div></div><div>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</div><div></div><div>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</div><div></div><div></div><div></div><div>持续创新  向共享、智能、新能源方向发展\n</div><div></div><div>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</div><div></div><div>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\n</div><div></div><div>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</div><div></div><div>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\n</div><div></div><div>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</div>');
INSERT INTO `sankei_vehicle_information` VALUES ('21', 'http://pshangcheng.wsandos.com/pic/15794231698213', '沃尔沃V90', '1', '1', '10', '1578391116', '1', 'http://pshangcheng.wsandos.com/pic/15794923358011', '<p></p><div><br></div><div>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\n</div><div></div><div>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\n</div><div></div><div>Apple CarPlay 与生活无缝衔接\n</div><div></div><div>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\n</div><div></div><div>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\n</div><div></div><div></div><div></div><div>科技为安全出行保驾护航\n</div><div></div><div>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\n</div><div></div><div>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\n</div><div></div><div>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\n</div><div></div><div>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\n</div><div></div><div></div><div></div><div>持续创新  向共享、智能、新能源方向发展\n</div><div></div><div>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\n</div><div></div><div>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\n</div><div></div><div>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\n</div><div></div><div>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\n</div><div></div><div>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</div>');
INSERT INTO `sankei_vehicle_information` VALUES ('22', 'http://pshangcheng.wsandos.com/pic/15794231193433', '奔驰', '1', '3', '10', '1579399867', '1', 'http://pshangcheng.wsandos.com/pic/15794310385755', '<p>\r<img src=\"http://pshangcheng.wsandos.com/SJ5e25231110e40.png\" style=\"width:100%\"></p><p>如今，瑞典已成为继美国和英国之后的全球第三大音乐产地，通过多种风格和流派的音乐征服了全世界。瑞典音乐究竟有何不凡之处？在瑞典新锐迷幻摇滚乐队的成员Fred Joelson看来，瑞典音乐的成功源自于与大自然的亲密关系。人们懂得如何与大自然和谐相处，乐于在户外享受生活，通过音乐进行交流，传递情感。作为来自瑞典的豪华汽车品牌沃尔沃，始终致力于为用户创造最纯粹的音乐享受。当坐进全新XC60的那一刻，犹如置身于哥德堡音乐厅，专程为您打造的听觉盛宴即刻上演。\r</p><p>\r</p><p>在全新XC60的设计中，扬声器和碳纤维通风式低音炮的位置、智能互联系统、触控屏和宝华韦健的殿堂级音响系统结合，打造出纯粹的听觉体验。“您享受到的是如黑胶唱片一样的音质，没有任何冗余的增减。”Henrik对此十分自豪。\r</p><p>\r</p><p>Apple CarPlay 与生活无缝衔接\r</p><p>\r</p><p>Henrik深知，让人们在车内愉悦地享受音乐，仅仅靠一套殿堂级音响是不够的。如今手机智能终端已经几乎可以连接万物，人们不再需要现金、实体钥匙、交通卡、银行卡，只需要一部智能手机就能便利地生活。智能手机，自然是连接个人音乐世界的快速通道。也正因如此，全新XC60搭载了无缝衔接的智能手机集成系统，让车主能够在车内便捷地使用Apple Music功能。\r</p><p>\r</p><p>全新XC60曾获得“最佳人机界面”的9英寸竖式中控大屏不仅符合人们操作智能终端的习惯，还集成了丰富的智能车载互联功能。Henrik表示：“全新XC60搭载的中控触摸大屏变成了一个娱乐中心。我们深知消费者的需求，中控大屏和SENSUS智能车载互联系统将帮助用户他们轻松地获取喜爱的音乐。”通过Apple CarPlay，驾乘人员还可以通过Siri语音控制，告诉爱车想要听的音乐。\r</p><p>\r</p><p>\r</p><p>\r</p><p>科技为安全出行保驾护航\r</p><p>\r</p><p>2017年，滴滴出行从安全、服务、效率三个方面打磨技术提升用户体验。\r</p><p>\r</p><p>在安全方面，滴滴树立引领移动出行安全标杆的“滴滴标准”：全行业第一个设立CEO挂帅的安全决策机制、第一个出台网约车安全准入标准、第一个发布交通事故数据指标、第一个与部级公安机关达成战略合作伙伴关系、首家将手机检测驾驶行为系统应用到实践中的网约车平台。\r</p><p>\r</p><p>同时，自主研发五大安全科技，系统部署安全大脑“护航”“谛听”“三尺”“明镜”“倚天”五大功能系统，开创建设网约车精细化主动安全保障体系；差异化精准教育用户上亿人次，实现交通事故率下降21%、实质性冲突伤害下降40%，平台重大刑事案件100%破案；主动践行社会责任，深耕安全公益事业，倡导乘客使用后座安全带，引领儿童交通安全素质教育。\r</p><p>\r</p><p>在服务方面，滴滴先后推出“失物找回”通道、“智能客服”“优化判责矩阵”等措施，保障司乘人员权益不受侵害，全面提升服务体验。在效率方面，通过“猜你想去”“智能派单”等技术创新提升服务效率的同时，全方位改进分单体系、定价、生态、增长等方面，大幅提升网络效率，使司乘人员能够更为高效、低成本地享受到滴滴带来的出行便捷。\r</p><p>\r</p><p>\r</p><p>\r</p><p>持续创新  向共享、智能、新能源方向发展\r</p><p>\r</p><p>2017年，通过自我学习和迭代，智能系统“滴滴大脑”更加聪明，通过积累的海量出行数据，结合司乘人员的真实需求，以大数据、机器学习和云计算为基础，利用ETA、智能分单、供需预测、运力调度等技术，为在拥堵车流中焦急等待的人们提供最优选择。\r</p><p>\r</p><p>回到技术底层，滴滴借助技术创新驱动业务模式优化。为应对海量订单，滴滴在全国设置3000万个“小绿点”——即推荐上车点，帮助乘客与司机快速定位彼此，为司机、乘客节省了超过20亿次通话需求，节省司乘出行时间，平均减少绕路里程 30%。\r</p><p>\r</p><p>目前，滴滴平台上有26万辆新能源汽车，这也意味着全球平均近10%的新能源车与滴滴平台连接。滴滴将在2020年之前，率先在其平台推广超过100万辆的新能源汽车，携手车企共建新能源共享汽车服务体系，与合作伙伴打造充换电服务体系，这也是全球第一家在新能源汽车上有实质性动作的共享出行企业。\r</p><p>\r</p><p>2017年，滴滴入选《财富》2017 年最受赞赏的中国公司榜单，《快公司》2017 年全球最具创新力公司（中国榜），入选TechCrunch 第十届Crunchies Awards“全球五大最佳创业企业”，“ 基于大数据的新一代移动出行平台”荣获 2017 年度全球互联网领域领先科技成果奖。\r</p><p>\r</p><p>过去五年，滴滴利用科技，为人们打开分享的大门，带来交通的初步变革。未来，滴滴希望通过科技的力量，解决物理世界中人和物体的流动问题，与不同社群及行业伙伴协作互补，解决中国出行、环保、就业等所面临的问题；提升用户体验，创造社会价值，建设开放、高效、可持续的移动出行新业态。</p>');

-- ----------------------------
-- Table structure for think_admin
-- ----------------------------
DROP TABLE IF EXISTS `think_admin`;
CREATE TABLE `think_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '用户名',
  `password` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `portrait` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '真实姓名',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `groupid` int(11) DEFAULT '1' COMMENT '用户角色id',
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of think_admin
-- ----------------------------
INSERT INTO `think_admin` VALUES ('1', 'root', '4a67048fa61e0a905af59bf448e11ba1', 'http://pshangcheng.wsandos.com/SJ5e53af9940f53.jpg', '538', '127.0.0.1', '1582812747', 'admin', '1', '1', 'af806615b5224461320d0fd781865835');
INSERT INTO `think_admin` VALUES ('13', 'test', '4a67048fa61e0a905af59bf448e11ba1', 'http://pshangcheng.wsandos.com/SJ5e53af9940f53.jpg', '2166', '127.0.0.1', '1503366101', 'test', '1', '4', '4ee2e395e9921f515d00599a5f79ae3f');
INSERT INTO `think_admin` VALUES ('31', '匆匆', '4a67048fa61e0a905af59bf448e11ba1', 'http://pshangcheng.wsandos.com/SJ5e53ad498be03.jpg', '0', '', '0', '周测试', '1', '23', null);

-- ----------------------------
-- Table structure for think_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `think_article_cate`;
CREATE TABLE `think_article_cate` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '分类名称',
  `orderby` varchar(10) DEFAULT '100' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_article_cate
-- ----------------------------
INSERT INTO `think_article_cate` VALUES ('1', '24524', '1', '1477140627', '1503036019', '1');
INSERT INTO `think_article_cate` VALUES ('2', '生活随笔1', '2', '1477140627', '1502785916', '0');
INSERT INTO `think_article_cate` VALUES ('3', '热点分享', '3', '1477140604', '1503036009', '0');
INSERT INTO `think_article_cate` VALUES ('4', '.NET', '4', '1477140627', '1477140627', '0');
INSERT INTO `think_article_cate` VALUES ('5', 'PHP', '5', '1477140627', '1477140627', '0');
INSERT INTO `think_article_cate` VALUES ('6', 'Java', '6', '1477140627', '1477140627', '0');
INSERT INTO `think_article_cate` VALUES ('21', '444', '50', '1502888300', '1502888300', '1');
INSERT INTO `think_article_cate` VALUES ('22', '分类1', '50', '1503042891', '1503042891', '1');

-- ----------------------------
-- Table structure for think_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', '超级管理员', '1', '', '1446535750', '1446535750');
INSERT INTO `think_auth_group` VALUES ('4', '系统测试员', '1', '1,2,9,3,30,4,39,61,62,5,6,7,27,29,13,14,22,24,25,40,41,43,26,44,45,47,48,49,50,51,52,53,54,55,56,57,58,70,71,72,73,80,75,76,77,79', '1446535750', '1582509513');
INSERT INTO `think_auth_group` VALUES ('22', '点评员', '1', null, '1582513237', '1582513237');
INSERT INTO `think_auth_group` VALUES ('24', '行政经理', '1', null, '1582596264', '1582596284');

-- ----------------------------
-- Table structure for think_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');
INSERT INTO `think_auth_group_access` VALUES ('13', '4');
INSERT INTO `think_auth_group_access` VALUES ('21', '4');
INSERT INTO `think_auth_group_access` VALUES ('22', '4');
INSERT INTO `think_auth_group_access` VALUES ('23', '4');
INSERT INTO `think_auth_group_access` VALUES ('24', '4');
INSERT INTO `think_auth_group_access` VALUES ('25', '4');
INSERT INTO `think_auth_group_access` VALUES ('26', '4');
INSERT INTO `think_auth_group_access` VALUES ('5015', '4');
INSERT INTO `think_auth_group_access` VALUES ('5026', '22');
INSERT INTO `think_auth_group_access` VALUES ('5028', '23');
INSERT INTO `think_auth_group_access` VALUES ('5029', '22');
INSERT INTO `think_auth_group_access` VALUES ('5038', '23');

-- ----------------------------
-- Table structure for think_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `css` varchar(20) NOT NULL COMMENT '样式',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES ('1', '#', '系统管理', '1', '1', 'fa fa-gear', '', '0', '1', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('2', 'admin/user/index', '用户管理', '1', '1', '', '', '1', '10', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('3', 'admin/role/index', '角色管理', '1', '1', '', '', '1', '20', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('4', 'admin/menu/index', '菜单管理', '1', '1', '', '', '1', '30', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('5', '#', '数据库管理', '1', '0', 'fa fa-database', '', '0', '2', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('6', 'admin/data/index', '数据库备份', '1', '1', '', '', '5', '50', '1446535750', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('7', 'admin/data/optimize', '优化表', '1', '1', '', '', '6', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('8', 'admin/data/repair', '修复表', '1', '1', '', '', '6', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('9', 'admin/user/add', '添加用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('10', 'admin/user/edit', '编辑用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('11', 'admin/user/del', '删除用户', '1', '1', '', '', '2', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('12', 'admin/user/state', '用户状态', '1', '1', '', '', '2', '20', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('13', '#', '日志管理', '1', '0', 'fa fa-tasks', '', '0', '6', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('14', 'admin/log/operate_log', '行为日志', '1', '1', '', '', '13', '50', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('22', 'admin/log/del_log', '删除日志', '1', '1', '', '', '14', '50', '1477312169', '1477316778');
INSERT INTO `think_auth_rule` VALUES ('24', '#', '文章管理', '1', '0', 'fa fa-paste', '', '0', '4', '1477312169', '1477312169');
INSERT INTO `think_auth_rule` VALUES ('25', 'admin/article/index_cate', '文章分类', '1', '1', '', '', '24', '10', '1477312260', '1477312260');
INSERT INTO `think_auth_rule` VALUES ('26', 'admin/article/index', '文章列表', '1', '0', '', '', '24', '20', '1477312333', '1477312333');
INSERT INTO `think_auth_rule` VALUES ('27', 'admin/data/import', '数据库还原', '1', '1', '', '', '5', '50', '1477639870', '1477639870');
INSERT INTO `think_auth_rule` VALUES ('28', 'admin/data/revert', '还原', '1', '1', '', '', '27', '50', '1477639972', '1477639972');
INSERT INTO `think_auth_rule` VALUES ('29', 'admin/data/del', '删除', '1', '1', '', '', '27', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('30', 'admin/role/add', '添加角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('31', 'admin/role/edit', '编辑角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('32', 'admin/role/del', '删除角色', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('33', 'admin/role/state', '角色状态', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('34', 'admin/role/giveAccess', '权限分配', '1', '1', '', '', '3', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('35', 'admin/menu/add', '添加菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('36', 'admin/menu/edit', '编辑菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('37', 'admin/menu/del', '删除菜单', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('38', 'admin/menu/state', '菜单状态', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('39', 'admin/menu/ruleOrderBy', '菜单排序', '1', '1', '', '', '4', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('40', 'admin/article/add_cate', '添加分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('41', 'admin/article/edit_cate', '编辑分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('42', 'admin/article/del_cate', '删除分类', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('43', 'admin/article/cate_state', '分类状态', '1', '1', '', '', '25', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('44', 'admin/article/add_article', '添加文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('45', 'admin/article/edit_article', '编辑文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('46', 'admin/article/del_article', '删除文章', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('47', 'admin/article/article_state', '文章状态', '1', '1', '', '', '26', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('48', '#', '广告管理', '1', '1', 'fa fa-image', '', '0', '5', '1477640011', '1576047018');
INSERT INTO `think_auth_rule` VALUES ('49', 'admin/banner/index_position', '广告位', '1', '0', '', '', '48', '10', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('50', 'admin/banner/add_position', '添加广告位', '1', '1', '', '', '49', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('51', 'admin/banneredit_position', '编辑广告位', '1', '1', '', '', '49', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('52', 'admin/banner/del_position', '删除广告位', '1', '1', '', '', '49', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('53', 'admin/banner/position_state', '广告位状态', '1', '1', '', '', '49', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('54', 'admin/banner/index', '广告列表', '1', '1', '', '', '48', '20', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('55', 'admin/banner/add', '添加广告', '1', '1', '', '', '54', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('56', 'admin/banner/edit', '编辑广告', '1', '1', '', '', '54', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('57', 'admin/banner/del', '删除广告', '1', '1', '', '', '54', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('58', 'admin/banner/state', '广告状态', '1', '1', '', '', '54', '50', '1477640011', '1477640011');
INSERT INTO `think_auth_rule` VALUES ('61', 'admin/config/index', '配置管理', '1', '1', '', '', '1', '50', '1479908607', '1479908607');
INSERT INTO `think_auth_rule` VALUES ('62', 'admin/config/index', '配置列表', '1', '1', '', '', '61', '50', '1479908607', '1487943813');
INSERT INTO `think_auth_rule` VALUES ('63', 'admin/config/save', '保存配置', '1', '1', '', '', '61', '50', '1479908607', '1487943831');
INSERT INTO `think_auth_rule` VALUES ('70', '#', '会员管理', '1', '0', 'fa fa-users', '', '0', '3', '1484103066', '1484103066');
INSERT INTO `think_auth_rule` VALUES ('71', 'admin/member/group', '会员组', '1', '1', '', '', '70', '10', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('72', 'admin/member/add_group', '添加会员组', '1', '1', '', '', '71', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('73', 'admin/member/edit_group', '编辑会员组', '1', '1', '', '', '71', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('74', 'admin/member/del_group', '删除会员组', '1', '1', '', '', '71', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('75', 'admin/member/index', '会员列表', '1', '1', '', '', '70', '20', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('76', 'admin/member/add_member', '添加会员', '1', '1', '', '', '75', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('77', 'admin/member/edit_member', '编辑会员', '1', '1', '', '', '75', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('78', 'admin/member/del_member', '删除会员', '1', '1', '', '', '75', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('79', 'admin/member/member_status', '会员状态', '1', '1', '', '', '75', '50', '1484103304', '1487937671');
INSERT INTO `think_auth_rule` VALUES ('80', 'admin/member/group_status', '会员组状态', '1', '1', '', '', '71', '50', '1484103304', '1484103304');
INSERT INTO `think_auth_rule` VALUES ('83', '#', '门店管理', '1', '1', 'fa fa-columns', '', '0', '50', '1576042775', '1577083874');
INSERT INTO `think_auth_rule` VALUES ('84', 'admin/regionalManagement/index', '区域管理', '1', '1', '', '', '83', '1', '1576042866', '1576042866');
INSERT INTO `think_auth_rule` VALUES ('85', '#', '关于三惠', '1', '1', 'fa fa-chain', '', '0', '50', '1576046645', '1577083949');
INSERT INTO `think_auth_rule` VALUES ('86', 'admin/store/index', '门店列表', '1', '1', '', '', '83', '2', '1576054030', '1576054030');
INSERT INTO `think_auth_rule` VALUES ('87', '#', '车辆管理', '1', '1', 'fa fa-car', '', '0', '50', '1576120134', '1577083065');
INSERT INTO `think_auth_rule` VALUES ('88', 'admin/vehicleInformation/index', '车辆信息', '1', '1', '', '', '87', '50', '1576120208', '1576120208');
INSERT INTO `think_auth_rule` VALUES ('89', 'admin/img/index', 'Banner大图', '1', '1', '', '', '85', '50', '1576135523', '1576466291');
INSERT INTO `think_auth_rule` VALUES ('90', 'admin/introduction/index', '企业介绍', '1', '1', '', '', '85', '50', '1576135692', '1576501180');
INSERT INTO `think_auth_rule` VALUES ('91', 'admin/history/index', '发展历程', '1', '1', '', '', '85', '50', '1576135751', '1576140564');
INSERT INTO `think_auth_rule` VALUES ('92', 'admin/culture/index', '企业文化—图标、配文', '1', '1', '', '', '85', '50', '1576135793', '1576738627');
INSERT INTO `think_auth_rule` VALUES ('93', '#', '资讯中心', '1', '1', 'fa fa-newspaper-o', '', '0', '50', '1576140096', '1577083474');
INSERT INTO `think_auth_rule` VALUES ('94', 'admin/Journalism/index', '公司新闻', '1', '1', '', '', '93', '50', '1576140161', '1576141265');
INSERT INTO `think_auth_rule` VALUES ('95', 'admin/industry/index', '行业新闻', '1', '1', '', '', '93', '50', '1576288625', '1576288625');
INSERT INTO `think_auth_rule` VALUES ('96', 'admin/carSchool/index', '用车学堂', '1', '1', '', '', '93', '50', '1576290298', '1576290298');
INSERT INTO `think_auth_rule` VALUES ('97', '#', '杂项管理', '1', '1', 'fa fa-archive', '', '0', '50', '1576291983', '1577083637');
INSERT INTO `think_auth_rule` VALUES ('98', 'admin/qrCode/index', '咨询二维码', '1', '1', '', '', '97', '50', '1576292038', '1576292038');
INSERT INTO `think_auth_rule` VALUES ('99', 'admin/contactUs/index', '联系我们', '1', '1', '', '', '97', '50', '1576293778', '1576293778');
INSERT INTO `think_auth_rule` VALUES ('100', 'admin/abouts/index', '首页关于', '1', '1', '', '', '97', '50', '1576457643', '1576457643');
INSERT INTO `think_auth_rule` VALUES ('101', '#', '品牌管理', '1', '1', 'fa fa-cube', '', '0', '50', '1576483463', '1577083712');
INSERT INTO `think_auth_rule` VALUES ('102', 'admin/brand/index', '车辆品牌', '1', '1', '', '', '101', '50', '1576483528', '1576483528');
INSERT INTO `think_auth_rule` VALUES ('103', '#', '统计与分析', '1', '1', 'fa fa-filter', '', '0', '50', '1576562448', '1577083123');
INSERT INTO `think_auth_rule` VALUES ('104', 'admin/count/index', '流量统计', '1', '1', '', '', '103', '50', '1576562497', '1576562497');
INSERT INTO `think_auth_rule` VALUES ('105', 'admin/culture/content', '企业文化—正文', '1', '1', '', '', '85', '50', '1576720956', '1576720956');
INSERT INTO `think_auth_rule` VALUES ('106', 'admin/sale/index', '售后服务', '1', '1', '', '', '97', '50', '1577093048', '1577093048');

-- ----------------------------
-- Table structure for think_config
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `value` text COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES ('1', 'web_site_title', '三惠官网');
INSERT INTO `think_config` VALUES ('2', 'web_site_description', '三惠官网');
INSERT INTO `think_config` VALUES ('3', 'web_site_keyword', '三惠官网');
INSERT INTO `think_config` VALUES ('4', 'web_site_icp', '');
INSERT INTO `think_config` VALUES ('5', 'web_site_cnzz', '');
INSERT INTO `think_config` VALUES ('6', 'web_site_copy', 'Copyright © 2019 三惠官网后台管理系统【一匠科技技术支持】 All rights reserved');
INSERT INTO `think_config` VALUES ('7', 'web_site_close', '1');
INSERT INTO `think_config` VALUES ('8', 'list_rows', '10');
INSERT INTO `think_config` VALUES ('9', 'admin_allow_ip', null);
INSERT INTO `think_config` VALUES ('10', 'alisms_appkey', '');
INSERT INTO `think_config` VALUES ('11', 'alisms_appsecret', '');
INSERT INTO `think_config` VALUES ('12', 'alisms_signname', null);

-- ----------------------------
-- Table structure for think_log
-- ----------------------------
DROP TABLE IF EXISTS `think_log`;
CREATE TABLE `think_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `ip` char(60) DEFAULT NULL COMMENT 'IP地址',
  `status` tinyint(1) DEFAULT NULL COMMENT '1 成功 2 失败',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4983 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_log
-- ----------------------------
INSERT INTO `think_log` VALUES ('4981', '1', 'admin', '用户【test】编辑成功', '127.0.0.1', '1', '1582810367');
INSERT INTO `think_log` VALUES ('4982', '1', 'admin', '用户【admin】登录成功', '127.0.0.1', '1', '1582812747');

-- ----------------------------
-- Table structure for think_member
-- ----------------------------
DROP TABLE IF EXISTS `think_member`;
CREATE TABLE `think_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL COMMENT '邮件或者手机',
  `nickname` varchar(32) DEFAULT NULL COMMENT '昵称',
  `sex` int(10) DEFAULT NULL COMMENT '1男2女',
  `password` char(32) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `head_img` varchar(128) DEFAULT NULL COMMENT '头像',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `money` int(11) DEFAULT '0' COMMENT '账户余额',
  `mobile` varchar(11) DEFAULT NULL COMMENT '认证的手机号码',
  `create_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL COMMENT '最后一次登录',
  `login_num` varchar(15) DEFAULT NULL COMMENT '登录次数',
  `status` tinyint(1) DEFAULT NULL COMMENT '1正常  0 禁用',
  `closed` tinyint(1) DEFAULT '0' COMMENT '0正常，1删除',
  `token` char(32) DEFAULT '0' COMMENT '令牌',
  `session_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_member
-- ----------------------------
INSERT INTO `think_member` VALUES ('1', '18809321929', '醉凡尘丶Wordly', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\admin.jpg', '92960', '73', '18809321929', '1476762875', '1476762875', '0', '1', '0', '0', '');
INSERT INTO `think_member` VALUES ('2', '1217037610', 'XiMi丶momo', '2', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\ab9f9c492871857e1a6c5bc1c658ef7f.jpg', '300', '200', '18809321956', '1476779394', '1476779394', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('3', '1217037610', '紫陌轩尘', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\293c8cd05478b029a378ac4e5a880303.jpg', '400', '434', '49494', '1476676516', '1476676516', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('4', '', 'fag', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\8a69f4c962e26265fd9f12efbff65013.jpg', '24', '424', '242', '1476425833', '1476425833', '0', '0', '1', '0', '');
INSERT INTO `think_member` VALUES ('5', '18809321928', '空谷幽兰', '2', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\admin.jpg', '53', '3636', '3636', '1476676464', '1476676464', '0', '1', '0', '0', '');
INSERT INTO `think_member` VALUES ('6', '', '787367373', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\ab9f9c492871857e1a6c5bc1c658ef7f.jpg', '414', '9', '73737373', '1476425750', '1476425750', '0', '0', '1', '0', '');
INSERT INTO `think_member` VALUES ('7', '18809321929', 'XMi丶呵呵', '2', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\293c8cd05478b029a378ac4e5a880303.jpg', '373373', '33', '73', '1476692255', '1476692255', '0', '1', '0', '0', '');
INSERT INTO `think_member` VALUES ('8', '1246470984', 'XY', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\8a69f4c962e26265fd9f12efbff65013.jpg', '7383', '73737373', '7373', '1476692123', '1476692123', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('9', '18793189097', '25773', '1', 'd41d8cd98f00b204e9800998ecf8427e', '1', '20161122\\admin.jpg', '7373737', '77', '7373733', '1476433452', '1476433452', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('10', '1246470984', 'XiYu', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '20161122\\ab9f9c492871857e1a6c5bc1c658ef7f.jpg', '100', '100', '18793189091', '1476694831', '1476694831', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('11', '', '烟勤话少脾气好', '0', '', '1', '20161122\\293c8cd05478b029a378ac4e5a880303.jpg', '0', '0', '', '1488030906', '0', '0', '0', '0', '0', '');
INSERT INTO `think_member` VALUES ('12', '1246470984', 'XiYu', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '20161122\\8a69f4c962e26265fd9f12efbff65013.jpg', '100', '100', '18793189091', '1488030906', '1476694831', '0', '1', '1', '0', '');
INSERT INTO `think_member` VALUES ('212065', '111', '111', '0', 'deb2a3420354e40d55a1b0cb3a947cd0', '121', '<!doctype html>\n<html>\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <title>跳转提示</title>\n', '0', '0', '', '1502341127', '1502341127', null, null, '0', '0', null);
