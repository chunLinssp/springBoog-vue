/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-03-26 00:34:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for me_article
-- ----------------------------
DROP TABLE IF EXISTS `me_article`;
CREATE TABLE `me_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_counts` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `view_counts` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `body_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKndx2m69302cso79y66yxiju4h` (`author_id`),
  KEY `FKrd11pjsmueckfrh9gs7bc6374` (`body_id`),
  KEY `FKjrn3ua4xmiulp8raj7m9d2xk6` (`category_id`),
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk6` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`),
  CONSTRAINT `FKndx2m69302cso79y66yxiju4h` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc6374` FOREIGN KEY (`body_id`) REFERENCES `me_article_body` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article
-- ----------------------------
INSERT INTO `me_article` VALUES ('1', '2', '2018-01-31 13:16:16', 'Vue构建前台页面过程1Vue构建前台页面过程2Vue构建前台页面过程3Vue构建前台页面过程4Vue构建前台页面过程5Vue构建前台页面过程6Vue构建前台页面过程7Vue构建前台页面过程8', 'Vue构建前台页面Vue构建前台页面Vue构建前台页面Vue构建前台页面', '66', '0', '1', '1', '1');
INSERT INTO `me_article` VALUES ('9', '0', '2018-02-01 14:37:23', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。', 'Vue.js 是什么', '9', '0', '1', '9', '1');
INSERT INTO `me_article` VALUES ('10', '0', '2018-02-01 14:47:19', '本节将介绍如何在项目中使用 Element。', 'Element相关', '8', '0', '1', '10', '1');
INSERT INTO `me_article` VALUES ('11', '0', '2018-02-01 14:47:19', '本节将介绍如何在项目中使用 Element。', 'Element相关', '3', '0', '30', '49', '1');
INSERT INTO `me_article` VALUES ('12', '2', '2018-01-31 13:16:16', 'Vue构建前台页面过程1Vue构建前台页面过程2Vue构建前台页面过程3Vue构建前台页面过程4Vue构建前台页面过程5Vue构建前台页面过程6Vue构建前台页面过程7Vue构建前台页面过程8', 'Vue构建前台页面Vue构建前台页面Vue构建前台页面Vue构建前台页面', '54', '0', '30', '50', '1');
INSERT INTO `me_article` VALUES ('33', '0', '2020-03-09 21:25:03', 'ff', 'ff', '0', '0', '30', '45', '1');
INSERT INTO `me_article` VALUES ('34', '1', '2020-03-09 21:29:07', 'ff', 'ff', '0', '0', '30', '46', '1');
INSERT INTO `me_article` VALUES ('35', '0', '2020-03-09 21:30:33', 'fasfa', 'qq', '0', '0', '30', '47', '1');
INSERT INTO `me_article` VALUES ('36', '49', '2020-03-09 21:31:37', 'fasf', 'afasf', '1', '0', '30', '48', '3');
INSERT INTO `me_article` VALUES ('37', '0', '2020-03-25 22:08:04', 'fsafs', 'gadg', '0', '0', '30', '51', '1');
INSERT INTO `me_article` VALUES ('38', '0', '2020-03-25 22:10:26', 'ff', 'ff', '0', '0', '30', '52', '1');
INSERT INTO `me_article` VALUES ('39', '0', '2020-03-25 22:12:00', 'AFfFfFA', 'fff', '0', '0', '30', '53', '1');
INSERT INTO `me_article` VALUES ('40', '0', '2020-03-25 22:12:51', 'fasf', 'fafsd', '0', '0', '30', '54', '2');

-- ----------------------------
-- Table structure for me_article_body
-- ----------------------------
DROP TABLE IF EXISTS `me_article_body`;
CREATE TABLE `me_article_body` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `content_html` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_body
-- ----------------------------
INSERT INTO `me_article_body` VALUES ('1', '## 2018-01-04\n\n```\n# 使用vue的Webpack模板生成脚手架\n```\n\n## 2018-01-05\n\n```\n# 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n```\n## 2018-01-07\n\n```\n# 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n```\n## 2018-01-08\n\n```\n# 使用组件-博客作者tab页 \n# 添加第三方图标\n```\n\n## 2018-01-09\n\n```\n# 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n```\n\n## 2018-01-10\n\n```\n# 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n```\n## 2018-01-11\n\n```\n# 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n```\n## 2018-01-12\n\n```\n# 文章详情页  内容  评论等\n\n```\n## 2018-01-13\n\n```\n## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n```\n## 2018-01-15\n\n``` \n# 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n```\n\n## 2018-01-15  2\n\n``` \n# 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n```\n\n## 2018-01-16\n\n``` \n# 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n```\n\n## 2018-01-24\n\n``` \n# 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n```\n\n## 2018-01-25\n\n``` \n# 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n```\n## 2018-01-26\n\n``` \n# 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n```\n\n## 2018-01-27\n\n``` \n# 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n```\n\n## 2018-01-28\n\n``` \n# 文章分类和标签详情\n\n```\n\n## 2018-01-29\n\n``` \n# 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n```\n## 2018-01-30\n\n``` \n# BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n```', '<h2>2018-01-04</h2>\n<pre><code class=\"lang-\"># 使用vue的Webpack模板生成脚手架\n</code></pre>\n<h2>2018-01-05</h2>\n<pre><code class=\"lang-\"># 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n</code></pre>\n<h2>2018-01-07</h2>\n<pre><code class=\"lang-\"># 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n</code></pre>\n<h2>2018-01-08</h2>\n<pre><code class=\"lang-\"># 使用组件-博客作者tab页 \n# 添加第三方图标\n</code></pre>\n<h2>2018-01-09</h2>\n<pre><code class=\"lang-\"># 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n</code></pre>\n<h2>2018-01-10</h2>\n<pre><code class=\"lang-\"># 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n</code></pre>\n<h2>2018-01-11</h2>\n<pre><code class=\"lang-\"># 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n</code></pre>\n<h2>2018-01-12</h2>\n<pre><code class=\"lang-\"># 文章详情页  内容  评论等\n\n</code></pre>\n<h2>2018-01-13</h2>\n<pre><code class=\"lang-\">## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n</code></pre>\n<h2>2018-01-15</h2>\n<pre><code class=\"lang-\"># 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n</code></pre>\n<h2>2018-01-15  2</h2>\n<pre><code class=\"lang-\"># 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n</code></pre>\n<h2>2018-01-16</h2>\n<pre><code class=\"lang-\"># 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n</code></pre>\n<h2>2018-01-24</h2>\n<pre><code class=\"lang-\"># 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n</code></pre>\n<h2>2018-01-25</h2>\n<pre><code class=\"lang-\"># 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n</code></pre>\n<h2>2018-01-26</h2>\n<pre><code class=\"lang-\"># 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n</code></pre>\n<h2>2018-01-27</h2>\n<pre><code class=\"lang-\"># 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n</code></pre>\n<h2>2018-01-28</h2>\n<pre><code class=\"lang-\"># 文章分类和标签详情\n\n</code></pre>\n<h2>2018-01-29</h2>\n<pre><code class=\"lang-\"># 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n</code></pre>\n<h2>2018-01-30</h2>\n<pre><code class=\"lang-\"># BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n</code></pre>\n');
INSERT INTO `me_article_body` VALUES ('9', 'efew', 'fwef');
INSERT INTO `me_article_body` VALUES ('10', 'fgew', 'fgwefw');
INSERT INTO `me_article_body` VALUES ('45', 'ff', '<p>ff</p>\n');
INSERT INTO `me_article_body` VALUES ('46', 'ff', '<p>ff</p>\n');
INSERT INTO `me_article_body` VALUES ('47', 'fqwfqw', '<p>fqwfqw</p>\n');
INSERT INTO `me_article_body` VALUES ('48', 'fasf', '<p>fasf</p>\n');
INSERT INTO `me_article_body` VALUES ('49', 'fefq', 'fwe');
INSERT INTO `me_article_body` VALUES ('50', 'fef', 'wef');
INSERT INTO `me_article_body` VALUES ('51', 'agasag', '<p>agasag</p>\n');
INSERT INTO `me_article_body` VALUES ('52', 'fff', '<p>fff</p>\n');
INSERT INTO `me_article_body` VALUES ('53', 'fFfFfFfFfFfFfFfFfFfFfF\nfFfFfFfF\nfFfF\nfFfF', '<p>fFfFfFfFfFfFfFfFfFfFfF<br />\nfFfFfFfF<br />\nfFfF<br />\nfFfF</p>\n');
INSERT INTO `me_article_body` VALUES ('54', '### afsasf', '<h3><a id=\"afsasf_0\"></a>afsasf</h3>\n');

-- ----------------------------
-- Table structure for me_article_pic
-- ----------------------------
DROP TABLE IF EXISTS `me_article_pic`;
CREATE TABLE `me_article_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author_id` bigint(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKesg9nfhxinmhee3jwm8x16wmk` (`article_id`),
  CONSTRAINT `FKesg9nfhxinmhee3jwm8x16wmk` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_pic
-- ----------------------------
INSERT INTO `me_article_pic` VALUES ('27', '12', '30', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZQiANUoqAAAFizPyGJA958_big.png');

-- ----------------------------
-- Table structure for me_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_article_tag`;
CREATE TABLE `me_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2s65pu9coxh7w16s8jycih79w` (`tag_id`),
  KEY `FKsmysra6pt3ehcvts18q2h4409` (`article_id`),
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79w` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`),
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h4409` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_tag
-- ----------------------------
INSERT INTO `me_article_tag` VALUES ('1', '1', '7', '', '', null);
INSERT INTO `me_article_tag` VALUES ('2', '1', '7', '', '', null);
INSERT INTO `me_article_tag` VALUES ('3', '1', '5', '', '', null);
INSERT INTO `me_article_tag` VALUES ('4', '1', '8', '', '', null);
INSERT INTO `me_article_tag` VALUES ('5', '9', '7', '', '', null);
INSERT INTO `me_article_tag` VALUES ('6', '10', '7', '', '', null);
INSERT INTO `me_article_tag` VALUES ('7', '10', '8', '', '', null);
INSERT INTO `me_article_tag` VALUES ('8', '10', '5', '', '', null);
INSERT INTO `me_article_tag` VALUES ('9', '10', '6', '', '', null);
INSERT INTO `me_article_tag` VALUES ('10', '11', '5', '', null, null);
INSERT INTO `me_article_tag` VALUES ('11', '11', '6', null, null, null);
INSERT INTO `me_article_tag` VALUES ('12', '33', '2', null, null, null);
INSERT INTO `me_article_tag` VALUES ('13', '33', '5', null, null, null);
INSERT INTO `me_article_tag` VALUES ('14', '34', '2', null, null, null);
INSERT INTO `me_article_tag` VALUES ('15', '34', '5', null, null, null);
INSERT INTO `me_article_tag` VALUES ('16', '35', '3', null, null, null);
INSERT INTO `me_article_tag` VALUES ('17', '36', '2', null, null, null);
INSERT INTO `me_article_tag` VALUES ('18', '37', '4', null, null, null);
INSERT INTO `me_article_tag` VALUES ('19', '38', '5', null, null, null);
INSERT INTO `me_article_tag` VALUES ('20', '39', '6', null, null, null);
INSERT INTO `me_article_tag` VALUES ('21', '39', '5', null, null, null);
INSERT INTO `me_article_tag` VALUES ('22', '40', '4', null, null, null);

-- ----------------------------
-- Table structure for me_category
-- ----------------------------
DROP TABLE IF EXISTS `me_category`;
CREATE TABLE `me_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_category
-- ----------------------------
INSERT INTO `me_category` VALUES ('1', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZQiANUoqAAAFizPyGJA958_big.png', '前端', null);
INSERT INTO `me_category` VALUES ('2', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5gXguANSk-http://192.168.137.85/group1/M00/00/00/wKiJVV5iZBWAFCUaAAAD3vWua9c644_big.png', '后端', null);
INSERT INTO `me_category` VALUES ('3', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZUCABafZAAAI423IA6Y798_big.jpg', '生活', null);
INSERT INTO `me_category` VALUES ('4', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZHmAKM0sAAAJFJR_27w256_big.png', '数据库', null);
INSERT INTO `me_category` VALUES ('5', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZL2AA4lfAAAD3Fre07s679_big.png', '编程语言', null);

-- ----------------------------
-- Table structure for me_category_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_category_tag`;
CREATE TABLE `me_category_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `me_category_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`),
  CONSTRAINT `me_category_tag_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of me_category_tag
-- ----------------------------
INSERT INTO `me_category_tag` VALUES ('1', '5', '1');
INSERT INTO `me_category_tag` VALUES ('2', '7', '1');
INSERT INTO `me_category_tag` VALUES ('3', '8', '1');
INSERT INTO `me_category_tag` VALUES ('4', '1', '2');
INSERT INTO `me_category_tag` VALUES ('5', '2', '2');
INSERT INTO `me_category_tag` VALUES ('6', '3', '2');

-- ----------------------------
-- Table structure for me_comment
-- ----------------------------
DROP TABLE IF EXISTS `me_comment`;
CREATE TABLE `me_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `to_uid` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '类型 0 文章的评论 1 评论的评论 2 评论的回复',
  PRIMARY KEY (`id`),
  KEY `FKecq0fuo9k0lnmea6r01vfhiok` (`article_id`),
  KEY `FKkvuyh6ih7dt1rfqhwsjomsa6i` (`author_id`),
  KEY `FKaecafrcorkhyyp1luffinsfqs` (`parent_id`),
  KEY `FK73dgr23lbs3ebex5qvqyku308` (`to_uid`),
  CONSTRAINT `FK73dgr23lbs3ebex5qvqyku308` FOREIGN KEY (`to_uid`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKaecafrcorkhyyp1luffinsfqs` FOREIGN KEY (`parent_id`) REFERENCES `me_comment` (`id`),
  CONSTRAINT `FKecq0fuo9k0lnmea6r01vfhiok` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`),
  CONSTRAINT `FKkvuyh6ih7dt1rfqhwsjomsa6i` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_comment
-- ----------------------------
INSERT INTO `me_comment` VALUES ('53', 'fasf', '2020-03-09 23:24:50', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('54', 'fasfa', '2020-03-09 23:25:42', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('55', 'gagd', '2020-03-09 23:31:41', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('56', 'gagdfs', '2020-03-09 23:32:13', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('57', 'fafs', '2020-03-09 23:33:31', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('58', 'fafs', '2020-03-09 23:33:44', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('59', 'fafsf', '2020-03-09 23:33:52', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('60', 'gda ', '2020-03-09 23:34:14', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('61', 'gwg', '2020-03-10 01:20:57', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('62', '发顺丰', '2020-03-10 01:21:44', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('63', '发顺丰啊啊', '2020-03-10 01:21:48', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('64', '发顺丰啊啊', '2020-03-10 01:21:51', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('65', '发', '2020-03-10 01:21:59', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('66', '11', '2020-03-10 02:52:42', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('67', '1111', '2020-03-10 02:52:54', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('68', 'rr', '2020-03-10 02:53:33', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('69', 'rrrr', '2020-03-10 02:53:43', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('70', 'rrrrgg', '2020-03-10 02:53:54', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('71', 'rrrrgg', '2020-03-10 02:54:16', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('72', 'ff', '2020-03-10 02:55:26', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('73', 'gaga', '2020-03-10 02:56:08', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('74', 'ff', '2020-03-10 02:57:10', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('75', 'gaga', '2020-03-10 02:57:15', '36', '30', null, null, null);
INSERT INTO `me_comment` VALUES ('96', '嘎嘎', '2020-03-10 22:16:17', '36', '30', '75', null, '1');
INSERT INTO `me_comment` VALUES ('97', '嘎嘎', '2020-03-10 22:16:47', '36', '30', '75', null, '1');
INSERT INTO `me_comment` VALUES ('98', '噶尔', '2020-03-10 22:17:12', '36', '30', '75', '30', '2');
INSERT INTO `me_comment` VALUES ('100', '发放', '2020-03-10 22:23:12', '36', '30', null, null, '0');
INSERT INTO `me_comment` VALUES ('101', '二v', '2020-03-10 22:23:31', '36', '30', '100', null, '1');
INSERT INTO `me_comment` VALUES ('102', '嘎嘎', '2020-03-10 22:23:39', '36', '30', '100', '30', '2');
INSERT INTO `me_comment` VALUES ('103', '嘎嘎', '2020-03-10 22:25:52', '36', '30', '102', null, '1');
INSERT INTO `me_comment` VALUES ('104', '皇太后', '2020-03-10 22:26:00', '36', '30', '102', '30', '2');

-- ----------------------------
-- Table structure for me_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_tag`;
CREATE TABLE `me_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `tagname` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `module` varchar(10) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `operation` varchar(25) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `num_click` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_tag
-- ----------------------------
INSERT INTO `me_tag` VALUES ('1', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZKyAJQPhAAARIy4e2kY630_big.png', 'Java', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `me_tag` VALUES ('2', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZVOANmqeAAAdC3VIwRg534_big.png', 'Spring', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `me_tag` VALUES ('3', ' http://192.168.137.85/group1/M00/00/00/wKiJVV5iZI6AdlEgAAAN-4nXFrM209_big.svg', 'Hibernate', null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `me_tag` VALUES ('4', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZNWAQ9qBAAAmKgxlaMA989_big.png', 'Maven', null, null, null, null, null, null, null, null, null, '4');
INSERT INTO `me_tag` VALUES ('5', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZRyAEOD2AAAENZ1ylZk638_big.png', 'Html', null, null, null, null, null, null, null, null, null, '5');
INSERT INTO `me_tag` VALUES ('6', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZTCAT7eNAAAHXEh2KEQ783_big.png', 'JavaScript', null, null, null, null, null, null, null, null, null, '6');
INSERT INTO `me_tag` VALUES ('7', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZOiAUwuiAAAawU0ID2Q302_big.png', 'Vue', null, null, null, null, null, null, null, null, null, '7');
INSERT INTO `me_tag` VALUES ('8', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZPmAf9Q1AAAH6DNA1zE856_big.png', 'Css', null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `module` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `operation` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4511 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('3019', '2020-02-24 03:21:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '11', null);
INSERT INTO `sys_log` VALUES ('3020', '2020-02-24 03:21:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '11', null);
INSERT INTO `sys_log` VALUES ('3021', '2020-02-24 03:21:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3022', '2020-02-24 03:21:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3023', '2020-02-24 03:21:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3024', '2020-02-24 03:21:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3025', '2020-02-24 03:21:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3026', '2020-02-24 03:21:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3027', '2020-02-24 03:21:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3028', '2020-02-24 03:21:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3029', '2020-02-24 03:21:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3030', '2020-02-24 03:21:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3031', '2020-02-24 03:21:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3032', '2020-02-24 03:21:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3033', '2020-02-24 03:21:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3034', '2020-02-24 03:21:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3035', '2020-02-24 03:21:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3036', '2020-02-24 03:21:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3037', '2020-02-24 03:22:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3038', '2020-02-24 03:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3039', '2020-02-24 03:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3040', '2020-02-24 03:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3041', '2020-02-24 03:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3042', '2020-02-24 03:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3043', '2020-02-24 03:22:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3044', '2020-02-24 03:22:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '18', null);
INSERT INTO `sys_log` VALUES ('3045', '2020-02-24 03:22:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3046', '2020-02-24 03:22:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3047', '2020-02-24 03:22:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3048', '2020-02-24 03:22:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3049', '2020-02-24 03:22:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3050', '2020-02-24 03:22:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3051', '2020-02-24 03:22:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3052', '2020-02-24 03:22:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3053', '2020-02-24 03:22:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3054', '2020-02-24 03:22:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3055', '2020-02-24 03:22:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3056', '2020-02-24 03:22:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3057', '2020-02-24 03:22:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3058', '2020-02-24 03:22:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3059', '2020-02-24 03:22:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3060', '2020-02-24 03:22:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3061', '2020-02-24 03:22:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3062', '2020-02-24 03:22:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3063', '2020-02-24 03:22:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3064', '2020-02-24 03:22:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '5', null);
INSERT INTO `sys_log` VALUES ('3065', '2020-02-24 03:22:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3066', '2020-02-24 03:22:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3067', '2020-02-24 03:22:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3068', '2020-02-24 03:22:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3069', '2020-02-24 03:22:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3070', '2020-02-24 03:22:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3071', '2020-02-24 03:22:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3072', '2020-02-24 03:22:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3073', '2020-02-24 03:22:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3074', '2020-03-03 18:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '438', null);
INSERT INTO `sys_log` VALUES ('3075', '2020-03-03 18:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '438', null);
INSERT INTO `sys_log` VALUES ('3076', '2020-03-03 18:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '424', null);
INSERT INTO `sys_log` VALUES ('3077', '2020-03-03 18:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '429', null);
INSERT INTO `sys_log` VALUES ('3078', '2020-03-03 18:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '429', null);
INSERT INTO `sys_log` VALUES ('3079', '2020-03-03 18:00:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3080', '2020-03-03 18:00:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '39', null);
INSERT INTO `sys_log` VALUES ('3081', '2020-03-03 18:00:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3082', '2020-03-03 18:00:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3083', '2020-03-03 18:00:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3084', '2020-03-03 18:00:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3085', '2020-03-03 18:00:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '12', null);
INSERT INTO `sys_log` VALUES ('3086', '2020-03-03 18:00:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '12', null);
INSERT INTO `sys_log` VALUES ('3087', '2020-03-03 18:03:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '12', null);
INSERT INTO `sys_log` VALUES ('3088', '2020-03-03 18:03:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '17', null);
INSERT INTO `sys_log` VALUES ('3089', '2020-03-03 18:03:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '23', null);
INSERT INTO `sys_log` VALUES ('3090', '2020-03-03 18:03:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '23', null);
INSERT INTO `sys_log` VALUES ('3091', '2020-03-03 18:03:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '11', null);
INSERT INTO `sys_log` VALUES ('3092', '2020-03-03 18:03:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '9', null);
INSERT INTO `sys_log` VALUES ('3093', '2020-03-03 18:03:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '27', null);
INSERT INTO `sys_log` VALUES ('3094', '2020-03-03 18:04:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3095', '2020-03-03 18:04:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3096', '2020-03-03 18:04:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3097', '2020-03-03 18:04:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '7', null);
INSERT INTO `sys_log` VALUES ('3098', '2020-03-03 18:04:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3099', '2020-03-03 18:04:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3100', '2020-03-03 18:04:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3101', '2020-03-03 18:05:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3102', '2020-03-03 18:05:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3103', '2020-03-03 18:05:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3104', '2020-03-03 18:05:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3105', '2020-03-03 18:05:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3106', '2020-03-03 18:05:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3107', '2020-03-03 18:05:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3108', '2020-03-03 18:05:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '21', null);
INSERT INTO `sys_log` VALUES ('3109', '2020-03-03 18:05:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3110', '2020-03-03 18:05:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3111', '2020-03-03 18:05:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3112', '2020-03-03 18:05:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3113', '2020-03-03 18:05:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '11', null);
INSERT INTO `sys_log` VALUES ('3114', '2020-03-03 18:05:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3115', '2020-03-03 18:05:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3116', '2020-03-03 18:05:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3117', '2020-03-03 18:05:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3118', '2020-03-03 18:05:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3119', '2020-03-03 18:05:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3120', '2020-03-03 18:05:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3121', '2020-03-03 18:05:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3122', '2020-03-03 18:05:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3123', '2020-03-03 18:05:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3124', '2020-03-03 18:05:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3125', '2020-03-03 18:05:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3126', '2020-03-03 18:05:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3127', '2020-03-03 18:05:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '12', null);
INSERT INTO `sys_log` VALUES ('3128', '2020-03-03 18:05:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '12', null);
INSERT INTO `sys_log` VALUES ('3129', '2020-03-03 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3130', '2020-03-03 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3131', '2020-03-03 18:05:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3132', '2020-03-03 18:05:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3133', '2020-03-03 18:05:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3134', '2020-03-03 18:05:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3135', '2020-03-03 18:05:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3136', '2020-03-03 18:05:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3137', '2020-03-03 18:05:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3138', '2020-03-03 18:05:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3139', '2020-03-03 18:05:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3140', '2020-03-03 18:05:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3141', '2020-03-03 18:05:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3142', '2020-03-03 18:05:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3143', '2020-03-03 18:05:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3144', '2020-03-03 18:05:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '11', null);
INSERT INTO `sys_log` VALUES ('3145', '2020-03-03 18:05:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3146', '2020-03-03 18:05:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3147', '2020-03-03 18:06:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3148', '2020-03-03 18:06:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3149', '2020-03-03 18:06:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3150', '2020-03-03 18:06:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3151', '2020-03-03 18:06:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '34', null);
INSERT INTO `sys_log` VALUES ('3152', '2020-03-03 18:07:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '16', null);
INSERT INTO `sys_log` VALUES ('3153', '2020-03-03 18:07:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '4', null);
INSERT INTO `sys_log` VALUES ('3154', '2020-03-03 18:07:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3', null);
INSERT INTO `sys_log` VALUES ('3155', '2020-03-03 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3156', '2020-03-03 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3157', '2020-03-03 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3158', '2020-03-03 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3159', '2020-03-03 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3160', '2020-03-03 18:09:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '6100', null);
INSERT INTO `sys_log` VALUES ('3161', '2020-03-03 18:09:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3162', '2020-03-03 18:09:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3163', '2020-03-03 18:09:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3164', '2020-03-03 18:09:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3165', '2020-03-03 18:09:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3166', '2020-03-03 18:09:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '6047', null);
INSERT INTO `sys_log` VALUES ('3167', '2020-03-03 18:09:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3168', '2020-03-03 18:09:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3169', '2020-03-03 18:09:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3170', '2020-03-03 18:09:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3171', '2020-03-03 18:09:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '8', null);
INSERT INTO `sys_log` VALUES ('3172', '2020-03-03 18:09:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3173', '2020-03-03 18:09:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3174', '2020-03-03 18:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3175', '2020-03-03 18:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3176', '2020-03-03 18:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3177', '2020-03-03 18:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '8', null);
INSERT INTO `sys_log` VALUES ('3178', '2020-03-03 18:09:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3179', '2020-03-03 18:09:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3180', '2020-03-03 18:09:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3181', '2020-03-03 18:09:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3182', '2020-03-03 18:09:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3183', '2020-03-03 18:09:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3184', '2020-03-03 19:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '203', null);
INSERT INTO `sys_log` VALUES ('3185', '2020-03-03 19:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '179', null);
INSERT INTO `sys_log` VALUES ('3186', '2020-03-03 19:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '161', null);
INSERT INTO `sys_log` VALUES ('3187', '2020-03-03 19:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '170', null);
INSERT INTO `sys_log` VALUES ('3188', '2020-03-03 19:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '179', null);
INSERT INTO `sys_log` VALUES ('3189', '2020-03-03 19:23:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '31', null);
INSERT INTO `sys_log` VALUES ('3190', '2020-03-03 19:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3191', '2020-03-03 19:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3192', '2020-03-03 19:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3193', '2020-03-03 19:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3194', '2020-03-03 19:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3195', '2020-03-03 19:23:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '9', null);
INSERT INTO `sys_log` VALUES ('3196', '2020-03-03 19:23:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '8', null);
INSERT INTO `sys_log` VALUES ('3197', '2020-03-03 19:23:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3198', '2020-03-03 19:23:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3199', '2020-03-03 19:23:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3200', '2020-03-03 19:23:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3201', '2020-03-03 19:23:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3202', '2020-03-03 19:35:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '13', null);
INSERT INTO `sys_log` VALUES ('3203', '2020-03-03 19:35:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '9', null);
INSERT INTO `sys_log` VALUES ('3204', '2020-03-03 19:35:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3205', '2020-03-03 19:35:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3206', '2020-03-03 19:35:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3207', '2020-03-03 19:35:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '11', null);
INSERT INTO `sys_log` VALUES ('3208', '2020-03-03 19:35:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3209', '2020-03-03 19:38:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3210', '2020-03-03 19:38:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3211', '2020-03-03 19:38:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3212', '2020-03-03 19:38:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3213', '2020-03-03 19:38:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3214', '2020-03-03 19:38:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3215', '2020-03-03 19:38:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3216', '2020-03-03 19:38:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3217', '2020-03-03 19:38:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3218', '2020-03-03 19:38:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3219', '2020-03-03 19:38:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3220', '2020-03-03 19:38:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3221', '2020-03-03 19:38:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3222', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3223', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3224', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3225', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3226', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3227', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3228', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3229', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3230', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3231', '2020-03-03 19:38:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3232', '2020-03-03 19:38:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3233', '2020-03-03 19:38:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3234', '2020-03-03 19:38:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3235', '2020-03-03 19:38:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3236', '2020-03-03 19:38:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3237', '2020-03-03 19:39:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3238', '2020-03-03 19:39:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '12', null);
INSERT INTO `sys_log` VALUES ('3239', '2020-03-03 19:39:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '4', null);
INSERT INTO `sys_log` VALUES ('3240', '2020-03-03 19:39:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3241', '2020-03-03 19:47:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '8', null);
INSERT INTO `sys_log` VALUES ('3242', '2020-03-03 19:47:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '6', null);
INSERT INTO `sys_log` VALUES ('3243', '2020-03-03 19:47:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '13', null);
INSERT INTO `sys_log` VALUES ('3244', '2020-03-03 19:47:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '32', null);
INSERT INTO `sys_log` VALUES ('3245', '2020-03-03 19:47:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3246', '2020-03-03 19:47:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3247', '2020-03-03 19:47:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3248', '2020-03-03 19:47:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3249', '2020-03-03 19:47:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3250', '2020-03-03 19:47:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3251', '2020-03-04 22:51:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '338', null);
INSERT INTO `sys_log` VALUES ('3252', '2020-03-04 22:51:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '356', null);
INSERT INTO `sys_log` VALUES ('3253', '2020-03-04 22:51:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '356', null);
INSERT INTO `sys_log` VALUES ('3254', '2020-03-04 22:51:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '340', null);
INSERT INTO `sys_log` VALUES ('3255', '2020-03-04 22:51:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '332', null);
INSERT INTO `sys_log` VALUES ('3256', '2020-03-04 22:51:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3257', '2020-03-04 23:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '320', null);
INSERT INTO `sys_log` VALUES ('3258', '2020-03-04 23:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '329', null);
INSERT INTO `sys_log` VALUES ('3259', '2020-03-04 23:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '317', null);
INSERT INTO `sys_log` VALUES ('3260', '2020-03-04 23:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '319', null);
INSERT INTO `sys_log` VALUES ('3261', '2020-03-04 23:41:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '329', null);
INSERT INTO `sys_log` VALUES ('3262', '2020-03-04 23:41:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3263', '2020-03-04 23:41:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3264', '2020-03-04 23:41:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3265', '2020-03-04 23:41:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3266', '2020-03-04 23:42:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '10', null);
INSERT INTO `sys_log` VALUES ('3267', '2020-03-05 02:10:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '285', null);
INSERT INTO `sys_log` VALUES ('3268', '2020-03-05 02:10:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '277', null);
INSERT INTO `sys_log` VALUES ('3269', '2020-03-05 02:10:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '290', null);
INSERT INTO `sys_log` VALUES ('3270', '2020-03-05 02:10:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '290', null);
INSERT INTO `sys_log` VALUES ('3271', '2020-03-05 02:10:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '291', null);
INSERT INTO `sys_log` VALUES ('3272', '2020-03-05 02:10:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3273', '2020-03-05 02:11:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3274', '2020-03-05 02:11:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '19', null);
INSERT INTO `sys_log` VALUES ('3275', '2020-03-05 02:12:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3276', '2020-03-05 02:12:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '6', null);
INSERT INTO `sys_log` VALUES ('3277', '2020-03-05 02:12:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3278', '2020-03-05 02:12:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3279', '2020-03-05 02:15:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '8', null);
INSERT INTO `sys_log` VALUES ('3280', '2020-03-05 02:15:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '11', null);
INSERT INTO `sys_log` VALUES ('3281', '2020-03-05 02:15:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3282', '2020-03-05 02:15:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3283', '2020-03-05 02:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3284', '2020-03-05 02:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3285', '2020-03-05 02:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '12', null);
INSERT INTO `sys_log` VALUES ('3286', '2020-03-05 02:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '9', null);
INSERT INTO `sys_log` VALUES ('3287', '2020-03-05 02:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '15', null);
INSERT INTO `sys_log` VALUES ('3288', '2020-03-05 02:15:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3289', '2020-03-05 02:23:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '127', null);
INSERT INTO `sys_log` VALUES ('3290', '2020-03-05 09:56:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '298', null);
INSERT INTO `sys_log` VALUES ('3291', '2020-03-05 09:56:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '316', null);
INSERT INTO `sys_log` VALUES ('3292', '2020-03-05 09:56:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '302', null);
INSERT INTO `sys_log` VALUES ('3293', '2020-03-05 09:56:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '299', null);
INSERT INTO `sys_log` VALUES ('3294', '2020-03-05 09:56:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '316', null);
INSERT INTO `sys_log` VALUES ('3295', '2020-03-05 09:56:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3296', '2020-03-05 09:56:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '5', null);
INSERT INTO `sys_log` VALUES ('3297', '2020-03-05 09:56:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '12', null);
INSERT INTO `sys_log` VALUES ('3298', '2020-03-05 09:56:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3299', '2020-03-05 09:56:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '8', null);
INSERT INTO `sys_log` VALUES ('3300', '2020-03-05 09:56:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3301', '2020-03-05 09:56:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3302', '2020-03-05 10:05:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '27', null);
INSERT INTO `sys_log` VALUES ('3303', '2020-03-05 10:05:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '29', null);
INSERT INTO `sys_log` VALUES ('3304', '2020-03-05 10:06:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '5', null);
INSERT INTO `sys_log` VALUES ('3305', '2020-03-05 10:06:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3306', '2020-03-05 10:21:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '93', null);
INSERT INTO `sys_log` VALUES ('3307', '2020-03-05 10:40:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1082490', null);
INSERT INTO `sys_log` VALUES ('3308', '2020-03-05 10:40:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '19', null);
INSERT INTO `sys_log` VALUES ('3309', '2020-03-05 10:40:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2955', null);
INSERT INTO `sys_log` VALUES ('3310', '2020-03-05 10:40:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2954', null);
INSERT INTO `sys_log` VALUES ('3311', '2020-03-05 10:40:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '132', null);
INSERT INTO `sys_log` VALUES ('3312', '2020-03-05 10:40:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '132', null);
INSERT INTO `sys_log` VALUES ('3313', '2020-03-05 10:41:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '5', null);
INSERT INTO `sys_log` VALUES ('3314', '2020-03-05 10:41:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '7', null);
INSERT INTO `sys_log` VALUES ('3315', '2020-03-05 10:41:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '16', null);
INSERT INTO `sys_log` VALUES ('3316', '2020-03-05 10:41:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '100', null);
INSERT INTO `sys_log` VALUES ('3317', '2020-03-05 10:42:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3318', '2020-03-05 10:42:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '14', null);
INSERT INTO `sys_log` VALUES ('3319', '2020-03-05 10:42:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3320', '2020-03-05 10:42:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3321', '2020-03-05 10:42:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3322', '2020-03-05 10:42:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '9', null);
INSERT INTO `sys_log` VALUES ('3323', '2020-03-05 10:42:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3324', '2020-03-05 10:42:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3325', '2020-03-05 10:42:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3326', '2020-03-05 10:42:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3327', '2020-03-05 10:42:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3328', '2020-03-05 10:42:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3329', '2020-03-05 10:42:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3330', '2020-03-05 10:42:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3331', '2020-03-05 10:42:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3332', '2020-03-05 10:42:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3333', '2020-03-05 10:44:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3334', '2020-03-05 10:44:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3335', '2020-03-05 10:44:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3336', '2020-03-05 10:44:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3337', '2020-03-05 10:44:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3338', '2020-03-05 11:32:32', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '861', null);
INSERT INTO `sys_log` VALUES ('3339', '2020-03-05 11:32:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '300', null);
INSERT INTO `sys_log` VALUES ('3340', '2020-03-05 11:33:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '139', null);
INSERT INTO `sys_log` VALUES ('3341', '2020-03-05 11:33:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3342', '2020-03-05 11:34:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '93', null);
INSERT INTO `sys_log` VALUES ('3343', '2020-03-05 11:34:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '129', null);
INSERT INTO `sys_log` VALUES ('3344', '2020-03-05 11:34:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '225', null);
INSERT INTO `sys_log` VALUES ('3345', '2020-03-05 11:34:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '237', null);
INSERT INTO `sys_log` VALUES ('3346', '2020-03-05 11:34:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '255', null);
INSERT INTO `sys_log` VALUES ('3347', '2020-03-05 11:35:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '6313', null);
INSERT INTO `sys_log` VALUES ('3348', '2020-03-05 11:37:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '424', null);
INSERT INTO `sys_log` VALUES ('3349', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '110', null);
INSERT INTO `sys_log` VALUES ('3350', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '7', null);
INSERT INTO `sys_log` VALUES ('3351', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '39', null);
INSERT INTO `sys_log` VALUES ('3352', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '51', null);
INSERT INTO `sys_log` VALUES ('3353', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '45', null);
INSERT INTO `sys_log` VALUES ('3354', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '68', null);
INSERT INTO `sys_log` VALUES ('3355', '2020-03-05 11:37:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '94', null);
INSERT INTO `sys_log` VALUES ('3356', '2020-03-05 11:37:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3357', '2020-03-05 11:40:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '21', null);
INSERT INTO `sys_log` VALUES ('3358', '2020-03-05 11:40:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '30202', null);
INSERT INTO `sys_log` VALUES ('3359', '2020-03-05 11:41:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '4777', null);
INSERT INTO `sys_log` VALUES ('3360', '2020-03-05 11:41:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '12', null);
INSERT INTO `sys_log` VALUES ('3361', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '13084', null);
INSERT INTO `sys_log` VALUES ('3362', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '13096', null);
INSERT INTO `sys_log` VALUES ('3363', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '14', null);
INSERT INTO `sys_log` VALUES ('3364', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '13075', null);
INSERT INTO `sys_log` VALUES ('3365', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '13130', null);
INSERT INTO `sys_log` VALUES ('3366', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '13137', null);
INSERT INTO `sys_log` VALUES ('3367', '2020-03-05 11:41:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '0', null);
INSERT INTO `sys_log` VALUES ('3368', '2020-03-05 12:03:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '1208343', null);
INSERT INTO `sys_log` VALUES ('3369', '2020-03-05 12:04:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '21422', null);
INSERT INTO `sys_log` VALUES ('3370', '2020-03-05 12:04:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '4163', null);
INSERT INTO `sys_log` VALUES ('3371', '2020-03-05 12:04:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '6', null);
INSERT INTO `sys_log` VALUES ('3372', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '11936', null);
INSERT INTO `sys_log` VALUES ('3373', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '11936', null);
INSERT INTO `sys_log` VALUES ('3374', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '20', null);
INSERT INTO `sys_log` VALUES ('3375', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '11967', null);
INSERT INTO `sys_log` VALUES ('3376', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '11953', null);
INSERT INTO `sys_log` VALUES ('3377', '2020-03-05 12:04:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '11892', null);
INSERT INTO `sys_log` VALUES ('3378', '2020-03-05 12:04:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '21335', null);
INSERT INTO `sys_log` VALUES ('3379', '2020-03-05 12:04:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3090', null);
INSERT INTO `sys_log` VALUES ('3380', '2020-03-05 12:04:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3381', '2020-03-05 12:04:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3382', '2020-03-05 12:04:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3383', '2020-03-05 12:05:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '6013', null);
INSERT INTO `sys_log` VALUES ('3384', '2020-03-05 12:05:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '6014', null);
INSERT INTO `sys_log` VALUES ('3385', '2020-03-05 12:05:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '6023', null);
INSERT INTO `sys_log` VALUES ('3386', '2020-03-05 12:05:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '22', null);
INSERT INTO `sys_log` VALUES ('3387', '2020-03-05 12:20:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3258', null);
INSERT INTO `sys_log` VALUES ('3388', '2020-03-05 12:20:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '3', null);
INSERT INTO `sys_log` VALUES ('3389', '2020-03-05 12:20:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '9509', null);
INSERT INTO `sys_log` VALUES ('3390', '2020-03-05 12:20:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '9510', null);
INSERT INTO `sys_log` VALUES ('3391', '2020-03-05 12:20:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '9507', null);
INSERT INTO `sys_log` VALUES ('3392', '2020-03-05 12:20:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '9510', null);
INSERT INTO `sys_log` VALUES ('3393', '2020-03-05 12:20:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '9513', null);
INSERT INTO `sys_log` VALUES ('3394', '2020-03-05 12:20:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '83', null);
INSERT INTO `sys_log` VALUES ('3395', '2020-03-05 12:20:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '85', null);
INSERT INTO `sys_log` VALUES ('3396', '2020-03-05 12:20:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3397', '2020-03-05 12:20:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3398', '2020-03-05 12:20:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '8904', null);
INSERT INTO `sys_log` VALUES ('3399', '2020-03-05 12:20:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '8897', null);
INSERT INTO `sys_log` VALUES ('3400', '2020-03-05 12:20:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8902', null);
INSERT INTO `sys_log` VALUES ('3401', '2020-03-05 12:21:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '33775', null);
INSERT INTO `sys_log` VALUES ('3402', '2020-03-05 12:21:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '7', null);
INSERT INTO `sys_log` VALUES ('3403', '2020-03-05 12:21:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '9', null);
INSERT INTO `sys_log` VALUES ('3404', '2020-03-05 12:23:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '584', null);
INSERT INTO `sys_log` VALUES ('3405', '2020-03-05 12:23:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '554', null);
INSERT INTO `sys_log` VALUES ('3406', '2020-03-05 12:23:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '584', null);
INSERT INTO `sys_log` VALUES ('3407', '2020-03-05 12:22:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '564', null);
INSERT INTO `sys_log` VALUES ('3408', '2020-03-05 12:22:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '559', null);
INSERT INTO `sys_log` VALUES ('3409', '2020-03-05 12:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '69', null);
INSERT INTO `sys_log` VALUES ('3410', '2020-03-05 12:23:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '47', null);
INSERT INTO `sys_log` VALUES ('3411', '2020-03-05 12:23:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '10', null);
INSERT INTO `sys_log` VALUES ('3412', '2020-03-05 12:23:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3413', '2020-03-05 12:23:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '8', null);
INSERT INTO `sys_log` VALUES ('3414', '2020-03-05 12:23:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3415', '2020-03-05 12:23:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '13', null);
INSERT INTO `sys_log` VALUES ('3416', '2020-03-05 12:23:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3417', '2020-03-05 12:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3418', '2020-03-05 12:23:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3419', '2020-03-05 12:25:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3420', '2020-03-05 12:25:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3421', '2020-03-05 12:25:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3422', '2020-03-05 12:25:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3423', '2020-03-05 12:25:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '9', null);
INSERT INTO `sys_log` VALUES ('3424', '2020-03-05 12:25:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '7', null);
INSERT INTO `sys_log` VALUES ('3425', '2020-03-05 12:25:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '21', null);
INSERT INTO `sys_log` VALUES ('3426', '2020-03-05 12:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3427', '2020-03-05 12:25:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '10', null);
INSERT INTO `sys_log` VALUES ('3428', '2020-03-05 12:25:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3429', '2020-03-05 12:25:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3430', '2020-03-05 12:25:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3431', '2020-03-05 12:25:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3432', '2020-03-05 12:25:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3433', '2020-03-05 12:25:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '14', null);
INSERT INTO `sys_log` VALUES ('3434', '2020-03-05 12:25:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '10', null);
INSERT INTO `sys_log` VALUES ('3435', '2020-03-05 12:26:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3436', '2020-03-05 12:26:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3437', '2020-03-05 12:26:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3438', '2020-03-05 12:26:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3439', '2020-03-05 12:26:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '8', null);
INSERT INTO `sys_log` VALUES ('3440', '2020-03-05 12:26:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3441', '2020-03-05 12:26:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3442', '2020-03-05 12:26:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '19', null);
INSERT INTO `sys_log` VALUES ('3443', '2020-03-05 12:26:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3444', '2020-03-05 12:26:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3445', '2020-03-05 12:26:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3446', '2020-03-05 12:26:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3447', '2020-03-05 12:26:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3448', '2020-03-05 12:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3449', '2020-03-05 12:26:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3450', '2020-03-05 12:26:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3451', '2020-03-05 12:26:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3452', '2020-03-05 12:26:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3453', '2020-03-05 12:26:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3454', '2020-03-05 12:26:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3455', '2020-03-05 12:26:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3456', '2020-03-05 12:26:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '6', null);
INSERT INTO `sys_log` VALUES ('3457', '2020-03-05 12:26:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3458', '2020-03-05 12:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3459', '2020-03-05 12:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3460', '2020-03-05 12:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3461', '2020-03-05 12:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3462', '2020-03-05 12:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3463', '2020-03-05 12:26:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3464', '2020-03-05 12:29:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3465', '2020-03-05 12:29:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3466', '2020-03-05 12:29:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3467', '2020-03-05 12:29:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3468', '2020-03-05 12:29:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '7', null);
INSERT INTO `sys_log` VALUES ('3469', '2020-03-05 12:30:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '21', null);
INSERT INTO `sys_log` VALUES ('3470', '2020-03-05 12:30:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '144', null);
INSERT INTO `sys_log` VALUES ('3471', '2020-03-05 13:57:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '621', null);
INSERT INTO `sys_log` VALUES ('3472', '2020-03-05 13:57:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '638', null);
INSERT INTO `sys_log` VALUES ('3473', '2020-03-05 13:57:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '626', null);
INSERT INTO `sys_log` VALUES ('3474', '2020-03-05 13:57:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '622', null);
INSERT INTO `sys_log` VALUES ('3475', '2020-03-05 13:57:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '638', null);
INSERT INTO `sys_log` VALUES ('3476', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '113', null);
INSERT INTO `sys_log` VALUES ('3477', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '6', null);
INSERT INTO `sys_log` VALUES ('3478', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '6', null);
INSERT INTO `sys_log` VALUES ('3479', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3480', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3481', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3482', '2020-03-05 13:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '17', null);
INSERT INTO `sys_log` VALUES ('3483', '2020-03-05 14:01:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '75', null);
INSERT INTO `sys_log` VALUES ('3484', '2020-03-05 14:18:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '448', null);
INSERT INTO `sys_log` VALUES ('3485', '2020-03-05 14:19:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '46753', null);
INSERT INTO `sys_log` VALUES ('3486', '2020-03-05 14:53:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '661', null);
INSERT INTO `sys_log` VALUES ('3487', '2020-03-05 15:09:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '751', null);
INSERT INTO `sys_log` VALUES ('3488', '2020-03-05 15:09:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '718', null);
INSERT INTO `sys_log` VALUES ('3489', '2020-03-05 15:09:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '750', null);
INSERT INTO `sys_log` VALUES ('3490', '2020-03-05 15:09:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '735', null);
INSERT INTO `sys_log` VALUES ('3491', '2020-03-05 15:09:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '726', null);
INSERT INTO `sys_log` VALUES ('3492', '2020-03-05 15:09:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3493', '2020-03-05 15:09:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '22', null);
INSERT INTO `sys_log` VALUES ('3494', '2020-03-05 15:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3495', '2020-03-05 15:09:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3496', '2020-03-05 15:09:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3497', '2020-03-05 15:09:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3498', '2020-03-05 15:09:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3499', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '199', null);
INSERT INTO `sys_log` VALUES ('3500', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '199', null);
INSERT INTO `sys_log` VALUES ('3501', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '196', null);
INSERT INTO `sys_log` VALUES ('3502', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '176', null);
INSERT INTO `sys_log` VALUES ('3503', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '193', null);
INSERT INTO `sys_log` VALUES ('3504', '2020-03-05 15:41:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3505', '2020-03-05 15:41:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '133', null);
INSERT INTO `sys_log` VALUES ('3506', '2020-03-05 15:41:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '47', null);
INSERT INTO `sys_log` VALUES ('3507', '2020-03-05 15:41:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3508', '2020-03-05 15:41:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3509', '2020-03-05 15:41:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3510', '2020-03-05 15:41:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3511', '2020-03-05 15:41:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3512', '2020-03-05 15:41:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '11', null);
INSERT INTO `sys_log` VALUES ('3513', '2020-03-05 15:41:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '3', null);
INSERT INTO `sys_log` VALUES ('3514', '2020-03-05 15:41:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3515', '2020-03-05 15:46:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '117', null);
INSERT INTO `sys_log` VALUES ('3516', '2020-03-05 15:46:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '134', null);
INSERT INTO `sys_log` VALUES ('3517', '2020-03-05 15:46:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '134', null);
INSERT INTO `sys_log` VALUES ('3518', '2020-03-05 15:46:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '134', null);
INSERT INTO `sys_log` VALUES ('3519', '2020-03-05 15:46:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '116', null);
INSERT INTO `sys_log` VALUES ('3520', '2020-03-05 15:46:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3521', '2020-03-05 15:47:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '35', null);
INSERT INTO `sys_log` VALUES ('3522', '2020-03-05 15:54:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '96', null);
INSERT INTO `sys_log` VALUES ('3523', '2020-03-05 15:54:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '117', null);
INSERT INTO `sys_log` VALUES ('3524', '2020-03-05 15:54:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3525', '2020-03-05 15:54:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3526', '2020-03-05 15:54:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3527', '2020-03-05 15:54:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3528', '2020-03-05 15:54:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '14', null);
INSERT INTO `sys_log` VALUES ('3529', '2020-03-05 15:54:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '10', null);
INSERT INTO `sys_log` VALUES ('3530', '2020-03-05 15:54:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '8', null);
INSERT INTO `sys_log` VALUES ('3531', '2020-03-05 15:54:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '12', null);
INSERT INTO `sys_log` VALUES ('3532', '2020-03-05 15:54:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '43', null);
INSERT INTO `sys_log` VALUES ('3533', '2020-03-05 15:54:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3534', '2020-03-05 15:54:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3535', '2020-03-05 15:54:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3536', '2020-03-05 15:54:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '8', null);
INSERT INTO `sys_log` VALUES ('3537', '2020-03-05 15:54:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '36', null);
INSERT INTO `sys_log` VALUES ('3538', '2020-03-05 15:54:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '36', null);
INSERT INTO `sys_log` VALUES ('3539', '2020-03-05 15:54:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3540', '2020-03-05 15:54:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3541', '2020-03-05 15:54:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '10', null);
INSERT INTO `sys_log` VALUES ('3542', '2020-03-05 15:55:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3543', '2020-03-05 15:55:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '18', null);
INSERT INTO `sys_log` VALUES ('3544', '2020-03-05 15:55:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3545', '2020-03-05 15:55:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3546', '2020-03-05 15:55:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3547', '2020-03-05 15:55:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3548', '2020-03-05 15:55:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3549', '2020-03-05 15:55:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3550', '2020-03-05 15:55:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3551', '2020-03-05 15:55:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '22', null);
INSERT INTO `sys_log` VALUES ('3552', '2020-03-05 15:55:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '4', null);
INSERT INTO `sys_log` VALUES ('3553', '2020-03-05 15:56:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '10', null);
INSERT INTO `sys_log` VALUES ('3554', '2020-03-05 15:56:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3555', '2020-03-05 15:56:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3556', '2020-03-05 15:56:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3557', '2020-03-05 15:56:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3558', '2020-03-05 15:56:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3559', '2020-03-05 17:12:02', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '771', null);
INSERT INTO `sys_log` VALUES ('3560', '2020-03-05 17:12:02', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '784', null);
INSERT INTO `sys_log` VALUES ('3561', '2020-03-05 17:12:02', '127.0.0.1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '811', null);
INSERT INTO `sys_log` VALUES ('3562', '2020-03-05 17:12:02', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '792', null);
INSERT INTO `sys_log` VALUES ('3563', '2020-03-05 17:12:02', '127.0.0.1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '811', null);
INSERT INTO `sys_log` VALUES ('3564', '2020-03-05 17:12:03', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3565', '2020-03-05 17:12:09', '127.0.0.1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '58', null);
INSERT INTO `sys_log` VALUES ('3566', '2020-03-05 17:12:09', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '6', null);
INSERT INTO `sys_log` VALUES ('3567', '2020-03-05 17:12:14', '127.0.0.1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '12', null);
INSERT INTO `sys_log` VALUES ('3568', '2020-03-05 17:12:25', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '4', null);
INSERT INTO `sys_log` VALUES ('3569', '2020-03-05 17:12:30', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3570', '2020-03-05 17:13:19', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '7', null);
INSERT INTO `sys_log` VALUES ('3571', '2020-03-05 17:13:28', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '2', null);
INSERT INTO `sys_log` VALUES ('3572', '2020-03-05 17:14:24', '127.0.0.1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '9', null);
INSERT INTO `sys_log` VALUES ('3573', '2020-03-05 17:14:25', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '78', null);
INSERT INTO `sys_log` VALUES ('3574', '2020-03-05 17:14:25', '127.0.0.1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '81', null);
INSERT INTO `sys_log` VALUES ('3575', '2020-03-05 17:14:25', '127.0.0.1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '126', null);
INSERT INTO `sys_log` VALUES ('3576', '2020-03-05 17:14:25', '127.0.0.1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '99', null);
INSERT INTO `sys_log` VALUES ('3577', '2020-03-05 17:14:25', '127.0.0.1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '270', null);
INSERT INTO `sys_log` VALUES ('3578', '2020-03-09 18:34:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '331', null);
INSERT INTO `sys_log` VALUES ('3579', '2020-03-09 18:34:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '328', null);
INSERT INTO `sys_log` VALUES ('3580', '2020-03-09 18:34:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '344', null);
INSERT INTO `sys_log` VALUES ('3581', '2020-03-09 18:34:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '345', null);
INSERT INTO `sys_log` VALUES ('3582', '2020-03-09 18:34:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '327', null);
INSERT INTO `sys_log` VALUES ('3583', '2020-03-09 18:35:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '30', null);
INSERT INTO `sys_log` VALUES ('3584', '2020-03-09 18:35:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '4', null);
INSERT INTO `sys_log` VALUES ('3585', '2020-03-09 18:35:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3586', '2020-03-09 18:35:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3587', '2020-03-09 18:35:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3588', '2020-03-09 18:35:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3589', '2020-03-09 18:35:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3590', '2020-03-09 18:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '13', null);
INSERT INTO `sys_log` VALUES ('3591', '2020-03-09 18:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '23', null);
INSERT INTO `sys_log` VALUES ('3592', '2020-03-09 18:35:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '2', null);
INSERT INTO `sys_log` VALUES ('3593', '2020-03-09 18:35:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3594', '2020-03-09 18:35:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '4', null);
INSERT INTO `sys_log` VALUES ('3595', '2020-03-09 18:35:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3596', '2020-03-09 18:35:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '9', null);
INSERT INTO `sys_log` VALUES ('3597', '2020-03-09 18:36:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3598', '2020-03-09 18:36:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '8', null);
INSERT INTO `sys_log` VALUES ('3599', '2020-03-09 18:36:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '13', null);
INSERT INTO `sys_log` VALUES ('3600', '2020-03-09 18:36:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '13', null);
INSERT INTO `sys_log` VALUES ('3601', '2020-03-09 18:36:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '17', null);
INSERT INTO `sys_log` VALUES ('3602', '2020-03-09 18:36:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3603', '2020-03-09 18:36:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '9', null);
INSERT INTO `sys_log` VALUES ('3604', '2020-03-09 18:36:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3605', '2020-03-19 12:42:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '30333', null);
INSERT INTO `sys_log` VALUES ('3606', '2020-03-19 12:42:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '30020', null);
INSERT INTO `sys_log` VALUES ('3607', '2020-03-19 12:42:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '30014', null);
INSERT INTO `sys_log` VALUES ('3608', '2020-03-19 12:43:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '6360', null);
INSERT INTO `sys_log` VALUES ('3609', '2020-03-19 12:44:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '10366', null);
INSERT INTO `sys_log` VALUES ('3610', '2020-03-19 12:44:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '4', null);
INSERT INTO `sys_log` VALUES ('3611', '2020-03-19 12:44:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '45', null);
INSERT INTO `sys_log` VALUES ('3612', '2020-03-19 12:44:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '36', null);
INSERT INTO `sys_log` VALUES ('3613', '2020-03-19 12:44:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '59', null);
INSERT INTO `sys_log` VALUES ('3614', '2020-03-19 12:44:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '57', null);
INSERT INTO `sys_log` VALUES ('3615', '2020-03-19 12:44:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '23', null);
INSERT INTO `sys_log` VALUES ('3616', '2020-03-19 12:45:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '5', null);
INSERT INTO `sys_log` VALUES ('3617', '2020-03-19 12:45:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '591', null);
INSERT INTO `sys_log` VALUES ('3618', '2020-03-19 12:45:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '431', null);
INSERT INTO `sys_log` VALUES ('3619', '2020-03-19 12:45:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '877', null);
INSERT INTO `sys_log` VALUES ('3620', '2020-03-19 12:45:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '809', null);
INSERT INTO `sys_log` VALUES ('3621', '2020-03-19 12:45:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '734', null);
INSERT INTO `sys_log` VALUES ('3622', '2020-03-19 12:46:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '51', null);
INSERT INTO `sys_log` VALUES ('3623', '2020-03-23 23:45:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '62416', '-1');
INSERT INTO `sys_log` VALUES ('3624', '2020-03-23 23:47:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '22207', '-1');
INSERT INTO `sys_log` VALUES ('3625', '2020-03-24 01:22:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '27339', '-1');
INSERT INTO `sys_log` VALUES ('3626', '2020-03-24 13:22:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '2923', '-1');
INSERT INTO `sys_log` VALUES ('3627', '2020-03-24 13:24:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '53977', '-1');
INSERT INTO `sys_log` VALUES ('3628', '2020-03-24 13:29:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '328457', '-1');
INSERT INTO `sys_log` VALUES ('3629', '2020-03-24 13:31:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '88341', '-1');
INSERT INTO `sys_log` VALUES ('3630', '2020-03-24 13:56:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAllCateTreeVo()', '分类', '获取用户信息为空', '树形分类', null, '4699', '-1');
INSERT INTO `sys_log` VALUES ('3631', '2020-03-24 13:57:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAllCateTreeVo()', '分类', '获取用户信息为空', '树形分类', null, '4828', '-1');
INSERT INTO `sys_log` VALUES ('3632', '2020-03-24 13:57:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAllCateTreeVo()', '分类', '获取用户信息为空', '树形分类', null, '2134', '-1');
INSERT INTO `sys_log` VALUES ('3633', '2020-03-24 14:03:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '56', '-1');
INSERT INTO `sys_log` VALUES ('3634', '2020-03-24 16:01:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '88', '-1');
INSERT INTO `sys_log` VALUES ('3635', '2020-03-24 16:02:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3636', '2020-03-24 16:05:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3637', '2020-03-24 16:06:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3638', '2020-03-24 16:07:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3639', '2020-03-24 16:08:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3640', '2020-03-24 16:09:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3641', '2020-03-24 16:11:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3642', '2020-03-24 16:14:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3643', '2020-03-24 16:16:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3644', '2020-03-24 16:16:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3645', '2020-03-24 16:17:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3646', '2020-03-24 16:17:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3647', '2020-03-24 16:19:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3648', '2020-03-24 16:21:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3649', '2020-03-24 16:21:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3650', '2020-03-24 16:23:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3651', '2020-03-24 16:23:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3652', '2020-03-24 16:24:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3653', '2020-03-24 16:24:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3654', '2020-03-24 16:43:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3655', '2020-03-24 16:43:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3656', '2020-03-24 16:51:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAllCateTreeVo()', '分类', '获取用户信息为空', '树形分类', null, '39', '-1');
INSERT INTO `sys_log` VALUES ('3657', '2020-03-24 16:52:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3658', '2020-03-24 17:00:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '228553', '-1');
INSERT INTO `sys_log` VALUES ('3659', '2020-03-24 17:00:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3660', '2020-03-24 17:00:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3661', '2020-03-24 17:00:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3662', '2020-03-24 17:05:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3663', '2020-03-24 17:33:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3664', '2020-03-24 17:39:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3665', '2020-03-24 17:53:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3666', '2020-03-24 18:06:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3667', '2020-03-24 18:10:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13623', '-1');
INSERT INTO `sys_log` VALUES ('3668', '2020-03-24 18:10:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '2837', '-1');
INSERT INTO `sys_log` VALUES ('3669', '2020-03-24 18:10:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '3813', '-1');
INSERT INTO `sys_log` VALUES ('3671', '2020-03-24 18:20:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '3954', '-1');
INSERT INTO `sys_log` VALUES ('3672', '2020-03-24 18:21:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '23198', '-1');
INSERT INTO `sys_log` VALUES ('3673', '2020-03-24 18:26:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '50', '-1');
INSERT INTO `sys_log` VALUES ('3674', '2020-03-24 18:26:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '4787', '-1');
INSERT INTO `sys_log` VALUES ('3675', '2020-03-24 18:26:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3676', '2020-03-24 18:27:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3677', '2020-03-24 18:27:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3678', '2020-03-24 18:27:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3679', '2020-03-24 18:29:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '61786', '-1');
INSERT INTO `sys_log` VALUES ('3680', '2020-03-24 18:40:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '671948', '-1');
INSERT INTO `sys_log` VALUES ('3681', '2020-03-24 19:20:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3682', '2020-03-24 19:20:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17032', '-1');
INSERT INTO `sys_log` VALUES ('3683', '2020-03-24 19:21:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8167', '-1');
INSERT INTO `sys_log` VALUES ('3684', '2020-03-24 19:22:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '114656', '-1');
INSERT INTO `sys_log` VALUES ('3685', '2020-03-24 19:23:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '4471', '-1');
INSERT INTO `sys_log` VALUES ('3686', '2020-03-24 19:24:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '5475', '-1');
INSERT INTO `sys_log` VALUES ('3687', '2020-03-24 19:25:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '2840', '-1');
INSERT INTO `sys_log` VALUES ('3688', '2020-03-24 19:27:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '2818', '-1');
INSERT INTO `sys_log` VALUES ('3689', '2020-03-24 19:27:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '1966', '-1');
INSERT INTO `sys_log` VALUES ('3690', '2020-03-24 19:28:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '3491', '-1');
INSERT INTO `sys_log` VALUES ('3691', '2020-03-24 19:30:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '128020', '-1');
INSERT INTO `sys_log` VALUES ('3692', '2020-03-24 19:30:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3693', '2020-03-24 19:30:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '1173', '-1');
INSERT INTO `sys_log` VALUES ('3694', '2020-03-24 19:32:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '115656', '-1');
INSERT INTO `sys_log` VALUES ('3695', '2020-03-24 19:39:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '302233', '-1');
INSERT INTO `sys_log` VALUES ('3696', '2020-03-24 19:39:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3697', '2020-03-24 19:39:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3698', '2020-03-24 19:39:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3699', '2020-03-24 19:39:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3700', '2020-03-24 19:40:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '18', '-1');
INSERT INTO `sys_log` VALUES ('3701', '2020-03-24 19:40:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3702', '2020-03-24 19:41:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3703', '2020-03-24 19:41:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3704', '2020-03-24 19:41:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3705', '2020-03-24 19:41:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('3706', '2020-03-24 19:44:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3707', '2020-03-24 19:53:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3708', '2020-03-24 19:57:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '21', '-1');
INSERT INTO `sys_log` VALUES ('3709', '2020-03-24 19:57:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '67', '-1');
INSERT INTO `sys_log` VALUES ('3710', '2020-03-24 19:57:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3711', '2020-03-24 19:58:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6870', '-1');
INSERT INTO `sys_log` VALUES ('3712', '2020-03-24 19:59:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '709', '-1');
INSERT INTO `sys_log` VALUES ('3713', '2020-03-24 19:59:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '2470', '-1');
INSERT INTO `sys_log` VALUES ('3714', '2020-03-24 19:59:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '3383', '-1');
INSERT INTO `sys_log` VALUES ('3715', '2020-03-24 19:59:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3716', '2020-03-24 19:59:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3717', '2020-03-24 19:59:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3718', '2020-03-24 19:59:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3719', '2020-03-24 19:59:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3720', '2020-03-24 19:59:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3721', '2020-03-24 20:02:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3722', '2020-03-24 20:09:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3723', '2020-03-24 20:09:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3724', '2020-03-24 20:10:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3725', '2020-03-24 20:11:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3726', '2020-03-24 20:12:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3727', '2020-03-24 20:13:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '18', '-1');
INSERT INTO `sys_log` VALUES ('3728', '2020-03-24 20:13:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '54', '-1');
INSERT INTO `sys_log` VALUES ('3729', '2020-03-24 20:13:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('3730', '2020-03-24 20:13:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3731', '2020-03-24 20:13:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3732', '2020-03-24 20:13:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3733', '2020-03-24 20:13:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3734', '2020-03-24 20:13:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3735', '2020-03-24 20:15:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '384', '-1');
INSERT INTO `sys_log` VALUES ('3736', '2020-03-24 20:15:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '19', '-1');
INSERT INTO `sys_log` VALUES ('3737', '2020-03-24 20:15:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3738', '2020-03-24 20:17:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '58046', '-1');
INSERT INTO `sys_log` VALUES ('3739', '2020-03-24 20:17:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11970', '-1');
INSERT INTO `sys_log` VALUES ('3740', '2020-03-24 20:17:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3741', '2020-03-24 20:17:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3742', '2020-03-24 20:17:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3743', '2020-03-24 20:17:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3744', '2020-03-24 20:17:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3745', '2020-03-24 20:17:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3746', '2020-03-24 20:17:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3747', '2020-03-24 20:17:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3748', '2020-03-24 20:17:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3749', '2020-03-24 20:17:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3750', '2020-03-24 20:17:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3751', '2020-03-24 20:18:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15009', '-1');
INSERT INTO `sys_log` VALUES ('3752', '2020-03-24 20:18:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14319', '-1');
INSERT INTO `sys_log` VALUES ('3753', '2020-03-24 20:18:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '3542', '-1');
INSERT INTO `sys_log` VALUES ('3754', '2020-03-24 20:18:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12459', '-1');
INSERT INTO `sys_log` VALUES ('3755', '2020-03-24 20:19:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7654', '-1');
INSERT INTO `sys_log` VALUES ('3756', '2020-03-24 20:19:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('3757', '2020-03-24 20:19:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3758', '2020-03-24 20:19:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3759', '2020-03-24 20:29:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3760', '2020-03-24 20:30:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '25', '-1');
INSERT INTO `sys_log` VALUES ('3761', '2020-03-24 20:32:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '74', '-1');
INSERT INTO `sys_log` VALUES ('3762', '2020-03-24 20:33:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3763', '2020-03-24 20:33:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '45', '-1');
INSERT INTO `sys_log` VALUES ('3764', '2020-03-24 20:35:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3765', '2020-03-24 20:36:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3766', '2020-03-24 20:36:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3767', '2020-03-24 20:38:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3768', '2020-03-24 20:39:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3769', '2020-03-24 20:39:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3770', '2020-03-24 20:41:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3771', '2020-03-24 20:41:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3772', '2020-03-24 20:43:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3773', '2020-03-24 20:43:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3774', '2020-03-24 20:43:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3775', '2020-03-24 20:43:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3776', '2020-03-24 20:43:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3777', '2020-03-24 20:43:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3778', '2020-03-24 20:43:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3779', '2020-03-24 20:43:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3780', '2020-03-24 20:43:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3781', '2020-03-24 20:43:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3782', '2020-03-24 20:47:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3783', '2020-03-24 20:47:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3784', '2020-03-24 20:50:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3785', '2020-03-24 20:50:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3786', '2020-03-24 20:52:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3787', '2020-03-24 20:52:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3788', '2020-03-24 20:52:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3789', '2020-03-24 20:52:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3790', '2020-03-24 20:52:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3791', '2020-03-24 20:52:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3792', '2020-03-24 20:53:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3793', '2020-03-24 20:53:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3794', '2020-03-24 20:56:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3795', '2020-03-24 20:56:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3796', '2020-03-24 20:57:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3797', '2020-03-24 20:59:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3798', '2020-03-24 20:59:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '96', '-1');
INSERT INTO `sys_log` VALUES ('3799', '2020-03-24 21:01:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3800', '2020-03-24 21:04:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3801', '2020-03-24 21:05:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3802', '2020-03-24 21:05:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3803', '2020-03-24 21:06:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3804', '2020-03-24 21:08:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3805', '2020-03-24 21:08:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3806', '2020-03-24 21:08:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3807', '2020-03-24 21:10:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3808', '2020-03-24 21:10:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3809', '2020-03-24 21:11:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3810', '2020-03-24 21:12:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3811', '2020-03-24 21:13:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3812', '2020-03-24 21:14:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3813', '2020-03-24 21:14:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3814', '2020-03-24 21:14:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3815', '2020-03-24 21:14:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3816', '2020-03-24 21:15:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3817', '2020-03-24 21:16:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '22', '-1');
INSERT INTO `sys_log` VALUES ('3818', '2020-03-24 21:30:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '20', '-1');
INSERT INTO `sys_log` VALUES ('3819', '2020-03-24 21:30:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3820', '2020-03-24 21:35:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3821', '2020-03-24 21:43:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3822', '2020-03-24 22:04:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3823', '2020-03-24 22:06:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3824', '2020-03-24 22:06:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '83', '-1');
INSERT INTO `sys_log` VALUES ('3825', '2020-03-24 22:10:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3826', '2020-03-24 22:10:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '41', '-1');
INSERT INTO `sys_log` VALUES ('3827', '2020-03-24 22:11:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3828', '2020-03-24 22:11:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3829', '2020-03-24 22:12:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3830', '2020-03-24 22:13:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3831', '2020-03-24 22:13:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3832', '2020-03-24 22:13:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3833', '2020-03-24 22:13:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '64', '-1');
INSERT INTO `sys_log` VALUES ('3834', '2020-03-24 22:13:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3835', '2020-03-24 22:13:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3836', '2020-03-24 22:13:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3837', '2020-03-24 22:13:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3838', '2020-03-24 22:13:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3839', '2020-03-24 22:14:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3840', '2020-03-24 22:14:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3841', '2020-03-24 22:14:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3842', '2020-03-24 22:14:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3843', '2020-03-24 22:14:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3844', '2020-03-24 22:14:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3845', '2020-03-24 22:17:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3846', '2020-03-24 22:22:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3847', '2020-03-24 22:22:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '24', '-1');
INSERT INTO `sys_log` VALUES ('3848', '2020-03-24 22:22:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3849', '2020-03-24 22:23:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3850', '2020-03-24 22:23:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3851', '2020-03-24 22:23:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3852', '2020-03-24 22:23:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3853', '2020-03-24 22:23:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3854', '2020-03-24 22:23:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3855', '2020-03-24 22:26:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3856', '2020-03-24 22:27:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3899', '-1');
INSERT INTO `sys_log` VALUES ('3857', '2020-03-24 22:31:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3122', '-1');
INSERT INTO `sys_log` VALUES ('3858', '2020-03-24 22:31:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3859', '2020-03-24 22:33:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3860', '2020-03-24 22:33:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '42', '-1');
INSERT INTO `sys_log` VALUES ('3861', '2020-03-24 22:34:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3862', '2020-03-24 22:35:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '95318', '-1');
INSERT INTO `sys_log` VALUES ('3863', '2020-03-24 22:36:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('3864', '2020-03-24 22:36:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3024', '-1');
INSERT INTO `sys_log` VALUES ('3865', '2020-03-24 22:38:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3866', '2020-03-24 22:39:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '43561', '-1');
INSERT INTO `sys_log` VALUES ('3867', '2020-03-24 22:40:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3868', '2020-03-24 22:40:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '36295', '-1');
INSERT INTO `sys_log` VALUES ('3869', '2020-03-24 22:41:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '1858', '-1');
INSERT INTO `sys_log` VALUES ('3870', '2020-03-24 22:47:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '18370', '-1');
INSERT INTO `sys_log` VALUES ('3871', '2020-03-24 22:47:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3872', '2020-03-24 22:47:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3873', '2020-03-24 22:51:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3874', '2020-03-24 22:52:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('3875', '2020-03-24 22:53:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '37', '-1');
INSERT INTO `sys_log` VALUES ('3876', '2020-03-24 22:53:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3877', '2020-03-24 22:53:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3878', '2020-03-24 22:53:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3879', '2020-03-24 22:55:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3880', '2020-03-24 22:55:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '109', '-1');
INSERT INTO `sys_log` VALUES ('3881', '2020-03-24 22:55:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3882', '2020-03-24 22:55:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3883', '2020-03-24 22:55:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3884', '2020-03-24 22:55:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3885', '2020-03-24 22:55:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3886', '2020-03-24 22:55:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3887', '2020-03-24 22:58:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3888', '2020-03-24 22:58:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('3889', '2020-03-24 22:58:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3890', '2020-03-24 22:58:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '19', '-1');
INSERT INTO `sys_log` VALUES ('3891', '2020-03-24 22:58:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3892', '2020-03-24 22:58:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3893', '2020-03-24 23:00:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '24', '-1');
INSERT INTO `sys_log` VALUES ('3894', '2020-03-24 23:01:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3895', '2020-03-24 23:01:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3896', '2020-03-24 23:01:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3897', '2020-03-24 23:04:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3898', '2020-03-24 23:04:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3899', '2020-03-24 23:06:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3900', '2020-03-24 23:06:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3901', '2020-03-24 23:06:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3902', '2020-03-24 23:06:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3903', '2020-03-24 23:07:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3904', '2020-03-24 23:07:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3905', '2020-03-24 23:07:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3906', '2020-03-24 23:07:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3907', '2020-03-24 23:07:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3908', '2020-03-24 23:07:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3909', '2020-03-24 23:07:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3910', '2020-03-24 23:07:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3911', '2020-03-24 23:07:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3912', '2020-03-24 23:07:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3913', '2020-03-24 23:07:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3914', '2020-03-24 23:07:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3915', '2020-03-24 23:10:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3916', '2020-03-24 23:10:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '23', '-1');
INSERT INTO `sys_log` VALUES ('3917', '2020-03-24 23:10:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3918', '2020-03-24 23:11:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3919', '2020-03-24 23:11:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3920', '2020-03-24 23:11:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3921', '2020-03-24 23:11:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3922', '2020-03-24 23:11:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3923', '2020-03-24 23:11:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3924', '2020-03-24 23:11:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3925', '2020-03-24 23:11:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3926', '2020-03-24 23:11:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3927', '2020-03-24 23:11:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('3928', '2020-03-24 23:12:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3929', '2020-03-24 23:12:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3930', '2020-03-24 23:12:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3931', '2020-03-24 23:12:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3932', '2020-03-24 23:12:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3933', '2020-03-24 23:12:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3934', '2020-03-24 23:12:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3935', '2020-03-24 23:12:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('3936', '2020-03-24 23:12:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3937', '2020-03-24 23:12:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3938', '2020-03-24 23:12:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3939', '2020-03-24 23:12:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3940', '2020-03-24 23:12:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3941', '2020-03-24 23:12:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3942', '2020-03-24 23:12:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3943', '2020-03-24 23:12:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('3944', '2020-03-24 23:12:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3945', '2020-03-24 23:12:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3946', '2020-03-24 23:12:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3947', '2020-03-24 23:12:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3948', '2020-03-24 23:12:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3949', '2020-03-24 23:12:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '83', '-1');
INSERT INTO `sys_log` VALUES ('3950', '2020-03-24 23:14:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3951', '2020-03-24 23:14:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '13966', '-1');
INSERT INTO `sys_log` VALUES ('3952', '2020-03-24 23:14:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3953', '2020-03-24 23:14:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3954', '2020-03-24 23:14:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('3955', '2020-03-24 23:18:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3956', '2020-03-24 23:18:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3957', '2020-03-24 23:18:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3958', '2020-03-24 23:18:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3959', '2020-03-24 23:18:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3960', '2020-03-24 23:18:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('3961', '2020-03-24 23:18:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3962', '2020-03-24 23:18:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3963', '2020-03-24 23:18:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3964', '2020-03-24 23:18:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3965', '2020-03-24 23:20:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3966', '2020-03-24 23:20:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3967', '2020-03-24 23:25:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3968', '2020-03-24 23:25:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3969', '2020-03-24 23:25:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3970', '2020-03-24 23:25:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3971', '2020-03-24 23:35:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3972', '2020-03-24 23:35:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('3973', '2020-03-24 23:35:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3974', '2020-03-24 23:35:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3975', '2020-03-24 23:35:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3976', '2020-03-24 23:35:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3977', '2020-03-24 23:36:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3978', '2020-03-24 23:37:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('3979', '2020-03-24 23:37:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('3980', '2020-03-24 23:37:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3981', '2020-03-24 23:37:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '2499', '-1');
INSERT INTO `sys_log` VALUES ('3982', '2020-03-24 23:41:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3983', '2020-03-24 23:41:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '52', '-1');
INSERT INTO `sys_log` VALUES ('3984', '2020-03-24 23:49:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3985', '2020-03-24 23:49:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('3986', '2020-03-24 23:49:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '18', '-1');
INSERT INTO `sys_log` VALUES ('3987', '2020-03-24 23:49:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('3988', '2020-03-24 23:49:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '38', '-1');
INSERT INTO `sys_log` VALUES ('3989', '2020-03-24 23:51:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('3990', '2020-03-24 23:51:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '18', '-1');
INSERT INTO `sys_log` VALUES ('3991', '2020-03-24 23:52:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('3992', '2020-03-24 23:52:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '26', '-1');
INSERT INTO `sys_log` VALUES ('3993', '2020-03-24 23:54:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '22', '-1');
INSERT INTO `sys_log` VALUES ('3994', '2020-03-25 00:00:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '74', '-1');
INSERT INTO `sys_log` VALUES ('3995', '2020-03-25 00:01:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('3996', '2020-03-25 00:01:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('3997', '2020-03-25 00:03:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '24', '-1');
INSERT INTO `sys_log` VALUES ('3998', '2020-03-25 00:03:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('3999', '2020-03-25 00:04:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4000', '2020-03-25 00:04:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4001', '2020-03-25 00:04:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4002', '2020-03-25 00:07:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4003', '2020-03-25 00:07:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('4004', '2020-03-25 00:07:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4005', '2020-03-25 00:08:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('4006', '2020-03-25 00:08:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4007', '2020-03-25 00:09:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4008', '2020-03-25 00:09:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4009', '2020-03-25 00:09:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4010', '2020-03-25 00:10:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4011', '2020-03-25 00:10:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4012', '2020-03-25 00:10:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4013', '2020-03-25 00:10:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('4014', '2020-03-25 00:10:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4015', '2020-03-25 00:10:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4016', '2020-03-25 00:10:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4017', '2020-03-25 00:10:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4018', '2020-03-25 00:10:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4019', '2020-03-25 00:10:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4020', '2020-03-25 00:10:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4021', '2020-03-25 00:10:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4022', '2020-03-25 00:10:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4023', '2020-03-25 00:10:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4024', '2020-03-25 00:10:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4025', '2020-03-25 00:10:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4026', '2020-03-25 00:10:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4027', '2020-03-25 00:10:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4028', '2020-03-25 00:10:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4029', '2020-03-25 00:10:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4030', '2020-03-25 00:11:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4031', '2020-03-25 00:11:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4032', '2020-03-25 00:11:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4033', '2020-03-25 00:11:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4034', '2020-03-25 00:11:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4035', '2020-03-25 00:11:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4036', '2020-03-25 00:11:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4037', '2020-03-25 00:11:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4038', '2020-03-25 00:11:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4039', '2020-03-25 00:11:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4040', '2020-03-25 00:11:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4041', '2020-03-25 00:11:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4042', '2020-03-25 00:11:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '37', '-1');
INSERT INTO `sys_log` VALUES ('4043', '2020-03-25 00:11:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4044', '2020-03-25 00:11:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4045', '2020-03-25 00:12:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4046', '2020-03-25 00:12:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4047', '2020-03-25 00:12:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4048', '2020-03-25 00:12:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4049', '2020-03-25 00:12:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('4050', '2020-03-25 00:13:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4051', '2020-03-25 00:13:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4052', '2020-03-25 00:13:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4053', '2020-03-25 00:13:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4054', '2020-03-25 00:13:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('4055', '2020-03-25 00:52:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '64', '-1');
INSERT INTO `sys_log` VALUES ('4056', '2020-03-25 00:52:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4057', '2020-03-25 00:59:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '21', '-1');
INSERT INTO `sys_log` VALUES ('4058', '2020-03-25 01:01:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4059', '2020-03-25 01:01:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4060', '2020-03-25 01:01:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('4061', '2020-03-25 01:01:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4062', '2020-03-25 01:01:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '19', '-1');
INSERT INTO `sys_log` VALUES ('4063', '2020-03-25 01:01:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4064', '2020-03-25 01:02:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4065', '2020-03-25 01:13:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4066', '2020-03-25 01:14:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4067', '2020-03-25 01:21:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4068', '2020-03-25 01:21:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4069', '2020-03-25 01:25:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4070', '2020-03-25 01:26:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4071', '2020-03-25 01:29:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4072', '2020-03-25 01:29:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4073', '2020-03-25 01:30:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4074', '2020-03-25 01:30:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('4075', '2020-03-25 01:30:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4076', '2020-03-25 01:30:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4077', '2020-03-25 01:30:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4078', '2020-03-25 01:31:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4079', '2020-03-25 01:31:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4080', '2020-03-25 01:31:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4081', '2020-03-25 01:31:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4082', '2020-03-25 01:31:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4083', '2020-03-25 01:31:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4084', '2020-03-25 01:31:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4085', '2020-03-25 01:31:15', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4086', '2020-03-25 01:31:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4087', '2020-03-25 01:31:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4088', '2020-03-25 01:31:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4089', '2020-03-25 01:31:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4090', '2020-03-25 01:31:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4091', '2020-03-25 01:31:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4092', '2020-03-25 01:31:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4093', '2020-03-25 01:31:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4094', '2020-03-25 01:31:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4095', '2020-03-25 01:31:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4096', '2020-03-25 01:31:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4097', '2020-03-25 01:32:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4098', '2020-03-25 01:32:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4099', '2020-03-25 01:32:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4100', '2020-03-25 01:33:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4101', '2020-03-25 01:33:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4102', '2020-03-25 01:33:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4103', '2020-03-25 01:33:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4104', '2020-03-25 01:33:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4105', '2020-03-25 01:33:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4106', '2020-03-25 01:33:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4107', '2020-03-25 01:35:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4108', '2020-03-25 01:35:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4109', '2020-03-25 01:35:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4110', '2020-03-25 01:35:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4111', '2020-03-25 01:35:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4112', '2020-03-25 01:35:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('4113', '2020-03-25 01:35:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4114', '2020-03-25 01:35:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4115', '2020-03-25 01:35:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4116', '2020-03-25 01:35:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4117', '2020-03-25 01:35:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4118', '2020-03-25 01:35:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4119', '2020-03-25 01:35:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4120', '2020-03-25 01:35:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4121', '2020-03-25 01:37:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4122', '2020-03-25 01:37:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4123', '2020-03-25 01:37:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4124', '2020-03-25 01:38:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4125', '2020-03-25 01:38:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4126', '2020-03-25 01:38:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4127', '2020-03-25 01:38:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4128', '2020-03-25 01:38:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4129', '2020-03-25 01:38:20', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4130', '2020-03-25 01:38:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4131', '2020-03-25 01:38:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4132', '2020-03-25 01:38:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4133', '2020-03-25 01:38:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4134', '2020-03-25 01:38:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4135', '2020-03-25 01:38:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4136', '2020-03-25 01:38:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4137', '2020-03-25 01:38:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4138', '2020-03-25 01:38:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4139', '2020-03-25 01:38:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4140', '2020-03-25 01:38:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4141', '2020-03-25 01:38:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4142', '2020-03-25 01:38:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4143', '2020-03-25 01:38:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4144', '2020-03-25 01:38:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4145', '2020-03-25 01:38:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4146', '2020-03-25 01:38:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4147', '2020-03-25 01:38:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4148', '2020-03-25 01:38:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4149', '2020-03-25 01:38:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4150', '2020-03-25 01:38:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4151', '2020-03-25 01:38:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4152', '2020-03-25 01:38:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4153', '2020-03-25 01:38:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('4154', '2020-03-25 01:39:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4155', '2020-03-25 01:39:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4156', '2020-03-25 01:39:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4157', '2020-03-25 01:39:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4158', '2020-03-25 01:42:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4159', '2020-03-25 01:42:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '41117', '-1');
INSERT INTO `sys_log` VALUES ('4160', '2020-03-25 01:53:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4161', '2020-03-25 01:53:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4162', '2020-03-25 01:53:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4163', '2020-03-25 01:53:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4164', '2020-03-25 01:53:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4165', '2020-03-25 01:53:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4166', '2020-03-25 01:53:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4167', '2020-03-25 01:53:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4168', '2020-03-25 01:53:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4169', '2020-03-25 01:53:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4170', '2020-03-25 01:53:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4171', '2020-03-25 01:53:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4172', '2020-03-25 01:53:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4173', '2020-03-25 01:53:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4174', '2020-03-25 01:53:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4175', '2020-03-25 01:54:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4176', '2020-03-25 01:54:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4177', '2020-03-25 16:24:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4178', '2020-03-25 16:24:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '54', '-1');
INSERT INTO `sys_log` VALUES ('4179', '2020-03-25 16:24:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4180', '2020-03-25 16:24:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4181', '2020-03-25 16:24:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4182', '2020-03-25 16:24:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('4183', '2020-03-25 16:24:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4184', '2020-03-25 16:24:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4185', '2020-03-25 16:24:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4186', '2020-03-25 16:24:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4187', '2020-03-25 16:24:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4188', '2020-03-25 16:24:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('4189', '2020-03-25 16:24:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4190', '2020-03-25 16:24:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4191', '2020-03-25 16:25:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4192', '2020-03-25 16:27:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4193', '2020-03-25 16:52:11', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('4194', '2020-03-25 16:52:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4195', '2020-03-25 16:57:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4196', '2020-03-25 17:00:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4197', '2020-03-25 17:02:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('4198', '2020-03-25 17:03:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '35538', '-1');
INSERT INTO `sys_log` VALUES ('4199', '2020-03-25 17:03:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4200', '2020-03-25 17:10:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '421846', '-1');
INSERT INTO `sys_log` VALUES ('4201', '2020-03-25 17:10:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '2053', '-1');
INSERT INTO `sys_log` VALUES ('4202', '2020-03-25 17:52:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('4203', '2020-03-25 17:52:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '116', '-1');
INSERT INTO `sys_log` VALUES ('4204', '2020-03-25 17:59:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('4205', '2020-03-25 17:59:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4206', '2020-03-25 17:59:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4207', '2020-03-25 17:59:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4208', '2020-03-25 18:00:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4209', '2020-03-25 18:01:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4210', '2020-03-25 18:02:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4211', '2020-03-25 18:02:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4212', '2020-03-25 18:02:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4213', '2020-03-25 18:02:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4214', '2020-03-25 18:02:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4215', '2020-03-25 18:02:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4216', '2020-03-25 18:02:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4217', '2020-03-25 18:04:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4218', '2020-03-25 18:04:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4219', '2020-03-25 18:06:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4220', '2020-03-25 18:06:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4221', '2020-03-25 18:06:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '15', '-1');
INSERT INTO `sys_log` VALUES ('4222', '2020-03-25 18:06:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4223', '2020-03-25 18:06:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4224', '2020-03-25 18:06:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4225', '2020-03-25 18:06:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4226', '2020-03-25 18:06:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4227', '2020-03-25 18:06:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4228', '2020-03-25 18:06:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4229', '2020-03-25 18:06:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4230', '2020-03-25 18:06:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4231', '2020-03-25 18:06:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4232', '2020-03-25 18:06:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4233', '2020-03-25 18:06:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4234', '2020-03-25 18:06:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4235', '2020-03-25 18:06:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4236', '2020-03-25 18:06:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4237', '2020-03-25 18:06:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4238', '2020-03-25 18:06:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4239', '2020-03-25 18:06:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4240', '2020-03-25 18:06:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4241', '2020-03-25 18:06:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4242', '2020-03-25 18:06:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4243', '2020-03-25 18:07:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4244', '2020-03-25 18:07:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4245', '2020-03-25 18:08:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4246', '2020-03-25 18:08:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4247', '2020-03-25 18:08:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '20', '-1');
INSERT INTO `sys_log` VALUES ('4248', '2020-03-25 18:08:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4249', '2020-03-25 18:08:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '28', '-1');
INSERT INTO `sys_log` VALUES ('4250', '2020-03-25 18:08:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4251', '2020-03-25 18:08:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4252', '2020-03-25 18:08:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4253', '2020-03-25 18:08:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4254', '2020-03-25 18:08:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4255', '2020-03-25 18:08:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '获取用户信息为空', '获取最热标签', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4256', '2020-03-25 18:08:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4257', '2020-03-25 18:08:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4258', '2020-03-25 18:08:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4259', '2020-03-25 18:08:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4260', '2020-03-25 18:08:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '获取用户信息为空', '获取文章归档', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4261', '2020-03-25 18:08:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4262', '2020-03-25 18:10:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4263', '2020-03-25 18:10:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4264', '2020-03-25 18:10:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4265', '2020-03-25 18:12:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Register()', '注册', 'few', '注册用户', null, '90', '34');
INSERT INTO `sys_log` VALUES ('4266', '2020-03-25 18:12:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'few', '获取当前登录用户', null, '2', '34');
INSERT INTO `sys_log` VALUES ('4267', '2020-03-25 18:12:49', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', 'few', '获得文章概要信息', null, '7', '34');
INSERT INTO `sys_log` VALUES ('4268', '2020-03-25 18:14:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4269', '2020-03-25 18:14:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '获取用户信息为空', '获取文章详情', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4270', '2020-03-25 18:17:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Register()', '注册', 'qweq', '注册用户', null, '30', '35');
INSERT INTO `sys_log` VALUES ('4271', '2020-03-25 18:17:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'qweq', '获取当前登录用户', null, '2', '35');
INSERT INTO `sys_log` VALUES ('4272', '2020-03-25 18:17:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', 'qweq', '获得文章概要信息', null, '8', '35');
INSERT INTO `sys_log` VALUES ('4273', '2020-03-25 18:22:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'qweq', '获取当前登录用户', null, '1', '35');
INSERT INTO `sys_log` VALUES ('4274', '2020-03-25 18:23:58', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'qweq', '获取当前登录用户', null, '3', '35');
INSERT INTO `sys_log` VALUES ('4275', '2020-03-25 18:30:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'qweq', '获取当前登录用户', null, '1', '35');
INSERT INTO `sys_log` VALUES ('4276', '2020-03-25 18:42:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', 'qweq', '获取当前登录用户', null, '0', '35');
INSERT INTO `sys_log` VALUES ('4277', '2020-03-25 18:56:32', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '4456', '-1');
INSERT INTO `sys_log` VALUES ('4278', '2020-03-25 18:57:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4279', '2020-03-25 18:57:36', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4280', '2020-03-25 18:57:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Register()', '注册', '123', '注册用户', null, '26', '36');
INSERT INTO `sys_log` VALUES ('4281', '2020-03-25 18:57:40', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '20', '36');
INSERT INTO `sys_log` VALUES ('4282', '2020-03-25 18:57:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '9', '36');
INSERT INTO `sys_log` VALUES ('4283', '2020-03-25 18:57:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4284', '2020-03-25 18:57:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4285', '2020-03-25 18:57:51', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4286', '2020-03-25 19:04:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4287', '2020-03-25 19:04:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4288', '2020-03-25 19:04:07', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4289', '2020-03-25 19:04:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4290', '2020-03-25 19:04:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4291', '2020-03-25 19:04:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4292', '2020-03-25 19:04:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4293', '2020-03-25 19:05:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4294', '2020-03-25 19:05:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4295', '2020-03-25 19:05:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4296', '2020-03-25 19:05:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4297', '2020-03-25 19:05:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4298', '2020-03-25 19:05:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4299', '2020-03-25 19:06:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4300', '2020-03-25 19:06:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '7', '30');
INSERT INTO `sys_log` VALUES ('4301', '2020-03-25 20:22:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4302', '2020-03-25 20:25:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '39', '-1');
INSERT INTO `sys_log` VALUES ('4303', '2020-03-25 20:25:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4304', '2020-03-25 20:25:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4305', '2020-03-25 20:26:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4306', '2020-03-25 20:26:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4307', '2020-03-25 20:26:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4308', '2020-03-25 20:28:03', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4309', '2020-03-25 20:28:37', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4310', '2020-03-25 20:31:41', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4311', '2020-03-25 20:31:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4312', '2020-03-25 20:32:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4313', '2020-03-25 20:35:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4314', '2020-03-25 20:35:56', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4315', '2020-03-25 20:45:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('4316', '2020-03-25 20:46:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4317', '2020-03-25 20:50:57', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4318', '2020-03-25 20:59:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4319', '2020-03-25 21:00:54', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4320', '2020-03-25 21:01:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4321', '2020-03-25 21:11:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4322', '2020-03-25 21:12:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4323', '2020-03-25 21:14:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4324', '2020-03-25 21:15:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4325', '2020-03-25 21:17:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4326', '2020-03-25 21:17:33', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4327', '2020-03-25 21:20:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4328', '2020-03-25 21:23:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4329', '2020-03-25 21:24:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4330', '2020-03-25 21:25:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4331', '2020-03-25 21:27:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4332', '2020-03-25 21:27:48', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4333', '2020-03-25 21:42:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '412', '-1');
INSERT INTO `sys_log` VALUES ('4334', '2020-03-25 21:43:06', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4335', '2020-03-25 21:43:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4336', '2020-03-25 21:45:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '509', '-1');
INSERT INTO `sys_log` VALUES ('4337', '2020-03-25 21:52:19', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '16', '-1');
INSERT INTO `sys_log` VALUES ('4338', '2020-03-25 21:53:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4339', '2020-03-25 21:53:39', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '5', '-1');
INSERT INTO `sys_log` VALUES ('4340', '2020-03-25 21:53:52', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '获取用户信息为空', '获得全部文章分类', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4341', '2020-03-25 21:54:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4342', '2020-03-25 21:54:18', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '74', '-1');
INSERT INTO `sys_log` VALUES ('4343', '2020-03-25 21:54:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4344', '2020-03-25 21:54:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '19', '-1');
INSERT INTO `sys_log` VALUES ('4345', '2020-03-25 21:55:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4346', '2020-03-25 21:55:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4347', '2020-03-25 21:55:14', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '17', '-1');
INSERT INTO `sys_log` VALUES ('4348', '2020-03-25 21:56:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4349', '2020-03-25 21:56:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4350', '2020-03-25 21:56:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4351', '2020-03-25 21:56:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4352', '2020-03-25 21:56:45', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4353', '2020-03-25 21:56:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4354', '2020-03-25 21:56:55', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '8', '30');
INSERT INTO `sys_log` VALUES ('4355', '2020-03-25 21:56:59', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4356', '2020-03-25 21:59:09', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '9', '30');
INSERT INTO `sys_log` VALUES ('4357', '2020-03-25 21:59:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4358', '2020-03-25 21:59:09', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4359', '2020-03-25 22:00:01', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4360', '2020-03-25 22:05:03', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4361', '2020-03-25 22:06:43', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4362', '2020-03-25 22:06:46', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4363', '2020-03-25 22:06:47', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4364', '2020-03-25 22:07:35', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4365', '2020-03-25 22:07:35', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '29', '30');
INSERT INTO `sys_log` VALUES ('4366', '2020-03-25 22:07:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4367', '2020-03-25 22:07:42', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4368', '2020-03-25 22:08:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.saveArticle()', '文章', '123', '添加文章', null, '10330', '30');
INSERT INTO `sys_log` VALUES ('4369', '2020-03-25 22:10:03', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '14', '30');
INSERT INTO `sys_log` VALUES ('4370', '2020-03-25 22:10:14', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4371', '2020-03-25 22:10:14', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4372', '2020-03-25 22:10:27', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.saveArticle()', '文章', '123', '添加文章', null, '4203', '30');
INSERT INTO `sys_log` VALUES ('4373', '2020-03-25 22:11:21', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4374', '2020-03-25 22:12:00', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.saveArticle()', '文章', '123', '添加文章', null, '4761', '30');
INSERT INTO `sys_log` VALUES ('4375', '2020-03-25 22:12:41', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4376', '2020-03-25 22:12:51', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.saveArticle()', '文章', '123', '添加文章', null, '8', '30');
INSERT INTO `sys_log` VALUES ('4377', '2020-03-25 22:12:51', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '123', '获取文章详情', null, '53', '30');
INSERT INTO `sys_log` VALUES ('4378', '2020-03-25 22:12:58', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '44', '30');
INSERT INTO `sys_log` VALUES ('4379', '2020-03-25 22:12:59', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '123', '获取文章详情', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4380', '2020-03-25 22:13:02', '127.0.0.1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '123', '获取最热标签', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4381', '2020-03-25 22:13:18', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '8', '30');
INSERT INTO `sys_log` VALUES ('4382', '2020-03-25 22:13:22', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4383', '2020-03-25 22:13:23', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4384', '2020-03-25 22:13:25', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4385', '2020-03-25 22:13:26', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '123', '获取文章详情', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4386', '2020-03-25 22:13:37', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4387', '2020-03-25 22:14:30', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4388', '2020-03-25 22:14:30', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4389', '2020-03-25 22:14:47', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '14', '30');
INSERT INTO `sys_log` VALUES ('4390', '2020-03-25 22:14:53', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '8', '30');
INSERT INTO `sys_log` VALUES ('4391', '2020-03-25 22:24:57', '127.0.0.1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '19', '-1');
INSERT INTO `sys_log` VALUES ('4392', '2020-03-25 22:24:57', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4393', '2020-03-25 22:24:58', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4394', '2020-03-25 22:24:58', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4395', '2020-03-25 22:28:37', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4396', '2020-03-25 22:28:43', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4397', '2020-03-25 22:28:43', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '10', '30');
INSERT INTO `sys_log` VALUES ('4398', '2020-03-25 22:28:46', '127.0.0.1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4399', '2020-03-25 22:28:47', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4400', '2020-03-25 22:28:47', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4401', '2020-03-25 22:31:06', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4402', '2020-03-25 22:31:06', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '7', '30');
INSERT INTO `sys_log` VALUES ('4403', '2020-03-25 22:31:12', '127.0.0.1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '123', '获取最热标签', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4404', '2020-03-25 22:31:15', '127.0.0.1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4405', '2020-03-25 22:31:15', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4406', '2020-03-25 22:31:15', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4407', '2020-03-25 22:35:42', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4408', '2020-03-25 22:35:44', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4409', '2020-03-25 22:35:44', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '45', '-1');
INSERT INTO `sys_log` VALUES ('4410', '2020-03-25 22:37:00', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4411', '2020-03-25 22:37:01', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4412', '2020-03-25 22:37:01', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '12', '-1');
INSERT INTO `sys_log` VALUES ('4413', '2020-03-25 22:38:58', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4414', '2020-03-25 22:39:02', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4415', '2020-03-25 22:39:02', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '13', '-1');
INSERT INTO `sys_log` VALUES ('4416', '2020-03-25 22:43:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4417', '2020-03-25 22:43:24', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '14', '-1');
INSERT INTO `sys_log` VALUES ('4418', '2020-03-25 22:43:42', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4419', '2020-03-25 22:43:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4420', '2020-03-25 22:43:46', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4421', '2020-03-25 22:44:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4422', '2020-03-25 22:44:22', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4423', '2020-03-25 22:44:27', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4424', '2020-03-25 22:44:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4425', '2020-03-25 22:44:31', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4426', '2020-03-25 22:44:43', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4427', '2020-03-25 22:45:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4428', '2020-03-25 22:45:12', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4429', '2020-03-25 22:45:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '10', '-1');
INSERT INTO `sys_log` VALUES ('4430', '2020-03-25 22:45:25', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4431', '2020-03-25 22:45:25', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4432', '2020-03-25 22:45:27', '127.0.0.1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4433', '2020-03-25 22:46:38', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4434', '2020-03-25 22:46:42', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4435', '2020-03-25 22:46:51', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4436', '2020-03-25 22:46:52', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4437', '2020-03-25 22:46:52', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4438', '2020-03-25 22:47:04', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4439', '2020-03-25 22:47:11', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4440', '2020-03-25 22:47:11', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '11', '-1');
INSERT INTO `sys_log` VALUES ('4441', '2020-03-25 22:49:28', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4442', '2020-03-25 22:49:28', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '8', '-1');
INSERT INTO `sys_log` VALUES ('4443', '2020-03-25 22:49:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4444', '2020-03-25 22:49:29', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4445', '2020-03-25 22:49:30', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4446', '2020-03-25 22:49:32', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4447', '2020-03-25 22:49:32', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4448', '2020-03-25 22:49:40', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4449', '2020-03-25 22:49:44', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4450', '2020-03-25 22:49:44', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '11', '30');
INSERT INTO `sys_log` VALUES ('4451', '2020-03-25 22:49:48', '127.0.0.1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '9', '-1');
INSERT INTO `sys_log` VALUES ('4452', '2020-03-25 22:49:50', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4453', '2020-03-25 22:49:57', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4454', '2020-03-25 22:49:57', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4455', '2020-03-25 22:50:53', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4456', '2020-03-25 23:13:33', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4457', '2020-03-25 23:13:34', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '123', '获取文章详情', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4458', '2020-03-25 23:13:35', '127.0.0.1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '123', '获取最热标签', null, '9', '30');
INSERT INTO `sys_log` VALUES ('4459', '2020-03-25 23:13:40', '127.0.0.1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '123', '获取最热标签', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4460', '2020-03-25 23:13:44', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4461', '2020-03-25 23:13:59', '127.0.0.1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '6', '30');
INSERT INTO `sys_log` VALUES ('4462', '2020-03-25 23:14:00', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '11', '30');
INSERT INTO `sys_log` VALUES ('4463', '2020-03-25 23:19:59', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4464', '2020-03-25 23:19:59', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '9', '30');
INSERT INTO `sys_log` VALUES ('4465', '2020-03-25 23:20:00', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '6', '-1');
INSERT INTO `sys_log` VALUES ('4466', '2020-03-25 23:20:01', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4467', '2020-03-25 23:23:43', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4468', '2020-03-25 23:23:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4469', '2020-03-25 23:23:44', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '获取用户信息为空', '获得文章概要信息', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4470', '2020-03-25 23:23:48', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '10', '30');
INSERT INTO `sys_log` VALUES ('4471', '2020-03-25 23:24:41', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4472', '2020-03-25 23:24:41', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '34', '-1');
INSERT INTO `sys_log` VALUES ('4473', '2020-03-25 23:24:47', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '10', '30');
INSERT INTO `sys_log` VALUES ('4474', '2020-03-25 23:24:49', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '0', '-1');
INSERT INTO `sys_log` VALUES ('4475', '2020-03-25 23:47:59', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.updateEmail()', '邮箱', '获取用户信息为空', '更新用户邮箱', null, '64', '-1');
INSERT INTO `sys_log` VALUES ('4476', '2020-03-25 23:48:03', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '1', '30');
INSERT INTO `sys_log` VALUES ('4477', '2020-03-25 23:48:03', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4478', '2020-03-25 23:48:06', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4479', '2020-03-25 23:48:07', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4480', '2020-03-25 23:48:23', '127.0.0.1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '9', '30');
INSERT INTO `sys_log` VALUES ('4481', '2020-03-25 23:48:26', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4482', '2020-03-25 23:48:39', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4483', '2020-03-25 23:48:39', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4484', '2020-03-25 23:49:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '2', '-1');
INSERT INTO `sys_log` VALUES ('4485', '2020-03-25 23:49:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '0', '30');
INSERT INTO `sys_log` VALUES ('4486', '2020-03-25 23:49:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4487', '2020-03-25 23:49:38', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '4', '-1');
INSERT INTO `sys_log` VALUES ('4488', '2020-03-25 23:51:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4489', '2020-03-25 23:53:13', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4490', '2020-03-25 23:53:16', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4491', '2020-03-25 23:53:17', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4492', '2020-03-25 23:53:21', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4493', '2020-03-25 23:53:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4494', '2020-03-25 23:53:26', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4495', '2020-03-25 23:53:28', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '5', '30');
INSERT INTO `sys_log` VALUES ('4496', '2020-03-25 23:53:30', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4497', '2020-03-25 23:53:34', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.TagController.listHotTags()', '标签', '123', '获取最热标签', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4498', '2020-03-25 23:53:50', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.listArchives()', '文章', '123', '获取文章归档', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4499', '2020-03-25 23:53:53', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.ArticleDetial()', '文章', '123', '获取文章详情', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4500', '2020-03-25 23:53:57', '127.0.0.1', 'com.org.blog.myblog.controller.UserController.CurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '1', '-1');
INSERT INTO `sys_log` VALUES ('4501', '2020-03-25 23:54:02', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.CategoryController.findAll()', '分类', '123', '获得全部文章分类', null, '2', '30');
INSERT INTO `sys_log` VALUES ('4502', '2020-03-25 23:54:04', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4503', '2020-03-25 23:55:05', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '18', '-1');
INSERT INTO `sys_log` VALUES ('4504', '2020-03-25 23:55:08', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '3', '-1');
INSERT INTO `sys_log` VALUES ('4505', '2020-03-25 23:55:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '3', '30');
INSERT INTO `sys_log` VALUES ('4506', '2020-03-25 23:55:23', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '4', '30');
INSERT INTO `sys_log` VALUES ('4507', '2020-03-26 00:07:38', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.LoginController.Logout()', '退出', '获取用户信息为空', '退出登录', null, '7', '-1');
INSERT INTO `sys_log` VALUES ('4508', '2020-03-26 00:07:47', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '获取用户信息为空', '获取当前登录用户', null, '7495', '-1');
INSERT INTO `sys_log` VALUES ('4509', '2020-03-26 00:08:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.UserController.getCurrentUser()', '用户', '123', '获取当前登录用户', null, '13166', '30');
INSERT INTO `sys_log` VALUES ('4510', '2020-03-26 00:08:10', '0:0:0:0:0:0:0:1', 'com.org.blog.myblog.controller.ArticleContrller.getArticleSummary()', '文章', '123', '获得文章概要信息', null, '5', '30');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile_phone_number` varchar(20) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_awpog86ljqwb89aqa1c5gvdrd` (`account`),
  UNIQUE KEY `UK_ahtq5ew3v0kt1n7hf1sgp7p8l` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'shimh', '', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZQiANUoqAAAFizPyGJA958_big.png', '2018-01-22 17:14:49', '\0', 'ff', null, '18219322737', 'ssp', 'c237910910ffa1f4827bf7fe1831ce43', 'e4153a582cbc45c3a199998b506dab28', 'normal');
INSERT INTO `sys_user` VALUES ('16', 'ff', null, null, null, null, null, null, null, null, '11', null, null);
INSERT INTO `sys_user` VALUES ('17', '11', '', '/static/user/user_3.png', null, '\0', null, null, null, '11', '16b4bde9004d5d06089106b846fe9315', '1d4f1800ef3b52b3ad377b533722d90c', 'normal');
INSERT INTO `sys_user` VALUES ('18', 'q123', '\0', '/static/user/user_3.png', null, '\0', null, null, null, 'haha', 'd55968b98e8056070824df9a2a01f19d', '34d87e2fd35f557edd9aae300a8f5035', 'normal');
INSERT INTO `sys_user` VALUES ('19', 'q11', '', '/static/user/user_6.png', null, '\0', null, null, null, '123', '532d317902af02a275fc33c750f8a7db', 'fcba9f0ccc74ac0ce2a0b137b46104e9', 'normal');
INSERT INTO `sys_user` VALUES ('20', 'q22', '\0', '/static/user/user_2.png', null, '\0', null, null, null, '22', '488e0dc38e0cb052be7f4bbe8dc23d05', '0e32243034c92453155f8b1c45b16939', 'normal');
INSERT INTO `sys_user` VALUES ('30', 'r22', '\0', 'http://192.168.137.85/group1/M00/00/00/wKiJVV5iZxmAB7hsAAHG-Awx308912.jpg', '2020-03-04 17:25:26', '\0', '1566165@qq.com', null, '15875413099', '123', '4db204f8d33205940c4aa5bd9c26ac0b', 'a11ad4e6cb0c956ca4f78a75fe4e0a35', 'normal');
INSERT INTO `sys_user` VALUES ('31', 't11', '\0', '/static/user/user_6.png', null, '\0', null, null, null, '11', '1a6d617da1341db7beedcc461f9e1258', '1fe7d1c97ecb4821dd7deacb8acf9df0', 'normal');
INSERT INTO `sys_user` VALUES ('32', 'z11', '\0', '/static/user/user_6.png', null, '\0', null, null, null, '11', '9acd1bebc259d64009a27f0e6559ddbe', '28f43490575d20c9c0abd93790a33c13', 'normal');
INSERT INTO `sys_user` VALUES ('33', 'f11', '\0', '/static/user/user_5.png', null, '\0', null, null, null, '11', '52f1c7c38431c985eb7ee6bc6cf321bb', '86c796bb7c1532a934811946e3184854', 'normal');
INSERT INTO `sys_user` VALUES ('34', 'qwer', '\0', '/static/user/user_2.png', null, '\0', null, null, null, 'few', '27d650da3d82a6255da34737ee4245a8', 'b260b99200b09706d24c0465a0a843e9', 'normal');
INSERT INTO `sys_user` VALUES ('35', 'q1523', '\0', '/static/user/user_3.png', null, '\0', null, null, null, 'qweq', 'd570364a1e4a188b5c3153f7bb0bbd13', 'fdeaf8f8cd31b3ded276a0e37dc99f3d', 'normal');
INSERT INTO `sys_user` VALUES ('36', '123111', '\0', '/static/user/user_6.png', null, '\0', null, null, null, '123', 'c9e86567ab46af43191ef72495c8fb5d', 'a73f9381e37b4d706020947fa1b99e61', 'normal');
