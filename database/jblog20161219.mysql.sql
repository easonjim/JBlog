/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : jblog

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-12-19 16:13:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_article`
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `article_typeID` smallint(6) DEFAULT NULL COMMENT '文章类型',
  `article_title` varchar(40) DEFAULT NULL COMMENT '文章标题',
  `article_content` varchar(255) DEFAULT NULL COMMENT '文章内容',
  `article_sdTime` varchar(30) DEFAULT NULL COMMENT '文章发送时间',
  `article_create` varchar(10) DEFAULT NULL COMMENT '创建人',
  `article_info` varchar(255) DEFAULT NULL COMMENT '备注',
  `article_count` int(11) DEFAULT NULL COMMENT '阅读数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `article_typeID` (`article_typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('63', '4', '保护环境！爱护地球！', '人类好比瞬间流星，<br>自然才是永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！<br>人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！<br>人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！<br>人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落', '2016年02月13日 17:04:29', '原创', '绝对原创！', '1');
INSERT INTO `tb_article` VALUES ('59', '3', '心中最向往的生活方式！', '是衣来伸手、饭来张口；还是日出而作、日落而息？<br>是远离文明世界中的是是非非；还是继续追求昙花一显的那份虚荣？<br>每天都期待着发生什么，街上、商场、餐厅、公司和家里；<br>每天都在这种期待中一无所获的度过。<br>到今天，之前的每一天过的充实人们，<br>也许是为了实现他的目标、也许是想从这个世界找回点公平、也许是一种习惯。<br>满足你所有的要求，你会生存多久？<br>从今天，坚定一种信念，才会体会生存的意义！<br>是衣来伸手、饭来张口；还是日出而作、日落而息？<br>是远离文明世界中的是是', '2016年02月13日 16:50:12', '原创', '绝对原创！', '0');
INSERT INTO `tb_article` VALUES ('64', '4', '爱护环境！保护地球！', '人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！<br>人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！<br>人类好比瞬间流星，<br>自然才识永远夜空。<br>当我们炫耀着不属于自己的光亮<br>一一坠落时，<br>请留下一片干净的天空！', '2016年02月12日 09:15:09', '原创', '绝对原创！', '1');
INSERT INTO `tb_article` VALUES ('60', '1', '心中最向往的居住田园！', '山山水水，绿绿清清；树树草草，郁郁匆匆！<br>小溪流水，鱼儿静游；林间明暗，鸟儿幽闲！<br>微风、流水、淡黑、自然的味道！<br>鸟儿、树语、湿润、万物的生存！<br>山山水水，绿绿清清；树树草草，郁郁匆匆！<br>小溪流水，鱼儿静游；林间明暗，鸟儿幽闲！<br>微风、流水、淡黑、自然的味道！<br>鸟儿、树语、湿润、万物的生存！<br>山山水水，绿绿清清；树树草草，郁郁匆匆！<br>小溪流水，鱼儿静游；林间明暗，鸟儿幽闲！<br>微风、流水、淡黑、自然的味道！<br>鸟儿、树语、湿润、万物的生存！<', '2016年02月13日 16:51:14', '原创', '绝对原创！', '4');
INSERT INTO `tb_article` VALUES ('61', '2', '心中最向往的一顿大餐！', '天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！<br>天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！<br>天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！<br>天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！<br>天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！<br>天上飞的、地上跑的、水里游的！<br>鱼和熊掌、天鹅肉，再加一瓶二锅头！', '2016年02月13日 16:57:56', '原创', '绝对原创！', '0');

-- ----------------------------
-- Table structure for `tb_articletype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_articletype`;
CREATE TABLE `tb_articletype` (
  `articleType_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `articleType_name` varchar(20) DEFAULT NULL COMMENT '文章类型名称',
  `articleType_info` varchar(100) DEFAULT NULL COMMENT '类型备注',
  PRIMARY KEY (`articleType_id`),
  UNIQUE KEY `articleType_id` (`articleType_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章类型表';

-- ----------------------------
-- Records of tb_articletype
-- ----------------------------
INSERT INTO `tb_articletype` VALUES ('1', '个人随想', '记录心里所想');
INSERT INTO `tb_articletype` VALUES ('2', '个人日记', '记录一天所发生的事情');
INSERT INTO `tb_articletype` VALUES ('3', '人生感悟', '记录生活中所发生的事情');
INSERT INTO `tb_articletype` VALUES ('4', '推荐文章', '推荐好的文章');

-- ----------------------------
-- Table structure for `tb_friend`
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend`;
CREATE TABLE `tb_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `friend_name` varchar(20) DEFAULT NULL COMMENT '朋友名字',
  `friend_sex` varchar(2) DEFAULT NULL COMMENT '朋友性别',
  `friend_OICQ` varchar(20) DEFAULT NULL COMMENT '朋友QQ',
  `friend_blog` varchar(200) DEFAULT NULL COMMENT '朋友博客',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='好友表';

-- ----------------------------
-- Records of tb_friend
-- ----------------------------
INSERT INTO `tb_friend` VALUES ('36', '许久', '男', '10500646A', 'http://www.jbolg.com');
INSERT INTO `tb_friend` VALUES ('37', '雨飞', '女', '10568974A', 'http://www.jblog.com');
INSERT INTO `tb_friend` VALUES ('38', '莫明', '男', '56987425A', 'http://www.jblog.com');
INSERT INTO `tb_friend` VALUES ('39', '荣少天', '男', '25987464A', 'http://www.jblog.com');

-- ----------------------------
-- Table structure for `tb_master`
-- ----------------------------
DROP TABLE IF EXISTS `tb_master`;
CREATE TABLE `tb_master` (
  `master_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `master_password` varchar(10) DEFAULT NULL COMMENT '密码',
  `master_sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `master_oicq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  PRIMARY KEY (`master_name`),
  UNIQUE KEY `master_name` (`master_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of tb_master
-- ----------------------------
INSERT INTO `tb_master` VALUES ('admin', '111', '男', '10500646*');

-- ----------------------------
-- Table structure for `tb_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `photo_addr` varchar(255) DEFAULT NULL COMMENT '路径',
  `photo_sdTime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `photo_desc` varchar(100) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='图片表';

-- ----------------------------
-- Records of tb_photo
-- ----------------------------
INSERT INTO `tb_photo` VALUES ('43', 'front\\photo\\pic\\41.jpg', '2016年02月14日 08:57:59', '超越');
INSERT INTO `tb_photo` VALUES ('44', 'front\\photo\\pic\\43.jpg', '2016年02月14日 08:59:11', '水中倒影');
INSERT INTO `tb_photo` VALUES ('45', 'front\\photo\\pic\\44.jpg', '2016年02月14日 08:59:44', '假山、瀑布');

-- ----------------------------
-- Table structure for `tb_review`
-- ----------------------------
DROP TABLE IF EXISTS `tb_review`;
CREATE TABLE `tb_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `review_articleId` int(11) DEFAULT NULL COMMENT '文章ID',
  `review_author` varchar(50) DEFAULT NULL COMMENT '评论人',
  `review_content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `review_sdTime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `review_articleId` (`review_articleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of tb_review
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_word`
-- ----------------------------
DROP TABLE IF EXISTS `tb_word`;
CREATE TABLE `tb_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `word_title` varchar(50) DEFAULT NULL COMMENT '留言标题',
  `word_content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `word_sdTime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `word_author` varchar(20) DEFAULT NULL COMMENT '留言人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of tb_word
-- ----------------------------
INSERT INTO `tb_word` VALUES ('18', '支持！', '博主的文章写的还不错，支持你！', '2016年02月14日 09:05:55', '无名');
INSERT INTO `tb_word` VALUES ('19', '建议', '建议博主再发表一些好的文章！', '2016年02月14日 09:06:46', '匿名好友');
