-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 06 月 13 日 13:50
-- 服务器版本: 5.1.63
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `caohejing`
--

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_group`
--

CREATE TABLE IF NOT EXISTS `dux_admin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `base_purview` text,
  `menu_purview` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台管理组' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_admin_group`
--

INSERT INTO `dux_admin_group` (`group_id`, `name`, `base_purview`, `menu_purview`, `status`) VALUES
(1, '管理员', 'a:2:{i:0;s:15:"Admin_AppManage";i:1;s:21:"Admin_AppManage_index";}', 'a:4:{i:0;s:19:"首页_管理首页";i:1;s:19:"内容_栏目管理";i:2;s:19:"内容_文章管理";i:3;s:22:"系统_用户组管理";}', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_log`
--

CREATE TABLE IF NOT EXISTS `dux_admin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `app` varchar(250) DEFAULT '1',
  `content` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台操作记录' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `dux_admin_log`
--

INSERT INTO `dux_admin_log` (`log_id`, `user_id`, `time`, `ip`, `app`, `content`) VALUES
(1, 0, 1556505652, '101.87.210.174', 'admin', '登录系统'),
(2, 0, 1557031884, '101.87.210.174', 'admin', '登录系统'),
(3, 0, 1557285817, '101.87.210.174', 'admin', '登录系统'),
(4, 0, 1557386945, '101.87.210.174', 'admin', '登录系统'),
(5, 0, 1557571369, '101.87.210.174', 'admin', '登录系统'),
(6, 0, 1557714206, '101.87.210.174', 'admin', '登录系统'),
(7, 0, 1559098296, '101.87.210.174', 'admin', '登录系统'),
(8, 0, 1559108768, '101.87.210.174', 'admin', '登录系统'),
(9, 0, 1559357474, '101.87.210.174', 'admin', '登录系统'),
(10, 0, 1559557900, '101.87.210.174', 'admin', '登录系统'),
(11, 0, 1559557925, '101.87.210.174', 'admin', '登录系统'),
(12, 0, 1559559250, '101.87.210.174', 'admin', '登录系统'),
(13, 0, 1559634711, '101.87.210.174', 'admin', '登录系统'),
(14, 0, 1559711871, '101.87.210.174', 'admin', '登录系统'),
(15, 0, 1559798829, '101.87.210.174', 'admin', '登录系统'),
(16, 0, 1560138226, '101.87.210.174', 'admin', '登录系统'),
(17, 0, 1560144197, '101.87.210.174', 'admin', '登录系统'),
(18, 0, 1560159185, '101.87.210.174', 'admin', '登录系统'),
(19, 0, 1560221105, '101.87.210.174', 'admin', '登录系统'),
(20, 0, 1560227611, '101.87.210.174', 'admin', '登录系统'),
(21, 1, 1560239807, '101.87.210.174', 'admin', '登录系统');

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_user`
--

CREATE TABLE IF NOT EXISTS `dux_admin_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户IP',
  `group_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户组ID',
  `username` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `nicename` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `level` int(5) DEFAULT '1' COMMENT '等级',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT '未知' COMMENT '登录IP',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台管理员' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_admin_user`
--

INSERT INTO `dux_admin_user` (`user_id`, `group_id`, `username`, `password`, `nicename`, `email`, `status`, `level`, `reg_time`, `last_login_time`, `last_login_ip`) VALUES
(1, 1, 'admin', 'ff3106b81365a843f81287b3f3584d41', '管理员', 'admin@duxcms.com', 1, 1, 1399361747, 1560239807, '101.87.210.174');

-- --------------------------------------------------------

--
-- 表的结构 `dux_category`
--

CREATE TABLE IF NOT EXISTS `dux_category` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT '0',
  `app` varchar(20) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `sequence` int(10) DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '1',
  `name` varchar(250) DEFAULT NULL,
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `class_tpl` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `upload_config` int(10) DEFAULT '1',
  `url` varchar(250) DEFAULT NULL,
  `cid` int(10) DEFAULT '0',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `urlname` (`urlname`) USING BTREE,
  KEY `pid` (`parent_id`),
  KEY `mid` (`app`),
  KEY `sequence` (`sequence`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='栏目基础信息' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `dux_category`
--

INSERT INTO `dux_category` (`class_id`, `parent_id`, `app`, `show`, `sequence`, `type`, `name`, `urlname`, `subname`, `image`, `class_tpl`, `keywords`, `description`, `upload_config`, `url`, `cid`) VALUES
(1, 0, 'article', 1, 1, 1, '新闻资讯', 'xinwenzixun', '', '', 'list_news', '', '', 1, '', 0),
(2, 0, 'article', 1, 1, 1, '典型案例', 'dianxinganli', '', '', 'list_case', '', '', 1, '', 0),
(6, 5, 'page', 1, 1, 1, '业务介绍', 'yewujieshao', '', '', 'page_businessIntro', '', '', 1, '', 0),
(4, 0, 'article', 1, 1, 1, '园区服务', 'yuanqufuwu', '', '', 'list_services', '', '', 1, '', 0),
(5, 0, 'page', 1, 1, 1, '关于我们', 'guanyuwomen', '', '', 'page_us', '', '', 1, '', 0),
(7, 5, 'page', 1, 1, 1, '品牌介绍', 'pinpaijieshao', '', '', 'page_brandIntro', '', '', 1, '', 0),
(8, 5, 'page', 1, 1, 1, '联系我们', 'lianxiwomen', '', '', 'page_contactUs', '', '', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_category_article`
--

CREATE TABLE IF NOT EXISTS `dux_category_article` (
  `class_id` int(10) NOT NULL,
  `fieldset_id` int(10) NOT NULL,
  `content_tpl` varchar(250) NOT NULL,
  `config_upload` text NOT NULL,
  `content_order` varchar(250) NOT NULL,
  `page` int(10) NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章栏目信息';

--
-- 转存表中的数据 `dux_category_article`
--

INSERT INTO `dux_category_article` (`class_id`, `fieldset_id`, `content_tpl`, `config_upload`, `content_order`, `page`) VALUES
(1, 2, 'content_news', '', 'time DESC', 10),
(2, 4, 'content_case', '', 'time DESC', 12),
(4, 3, 'content_services', '', 'time ASC', 10);

-- --------------------------------------------------------

--
-- 表的结构 `dux_category_page`
--

CREATE TABLE IF NOT EXISTS `dux_category_page` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fieldset_id` int(10) NOT NULL,
  `content` mediumtext COMMENT '内容',
  KEY `cid` (`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页栏目信息';

--
-- 转存表中的数据 `dux_category_page`
--

INSERT INTO `dux_category_page` (`class_id`, `fieldset_id`, `content`) VALUES
(5, 0, '关于我们'),
(6, 0, '业务介绍'),
(7, 0, '品牌介绍'),
(8, 0, '联系我们');

-- --------------------------------------------------------

--
-- 表的结构 `dux_config`
--

CREATE TABLE IF NOT EXISTS `dux_config` (
  `name` varchar(250) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置';

--
-- 转存表中的数据 `dux_config`
--

INSERT INTO `dux_config` (`name`, `data`) VALUES
('site_title', '漕河泾'),
('site_subtitle', '成为科技业创新业的领跑者'),
('site_url', ''),
('site_keywords', ''),
('site_description', '漕河泾网站'),
('site_email', 'admin@duxcms.com'),
('site_copyright', 'duxcms'),
('site_statistics', ''),
('tpl_name', 'default'),
('tpl_index', 'index'),
('tpl_search', 'search'),
('tpl_tags', 'tag'),
('mobile_status', '1'),
('mobile_tpl', 'mobile'),
('mobile_domain', ''),
('ping', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_config_upload`
--

CREATE TABLE IF NOT EXISTS `dux_config_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `upload_size` int(10) NOT NULL,
  `upload_exts` varchar(250) DEFAULT NULL,
  `upload_replace` tinyint(1) DEFAULT NULL,
  `thumb_status` tinyint(1) DEFAULT NULL,
  `water_status` tinyint(1) DEFAULT NULL,
  `thumb_type` tinyint(1) DEFAULT NULL,
  `thumb_width` int(10) DEFAULT NULL,
  `thumb_height` int(10) DEFAULT NULL,
  `water_image` varchar(250) DEFAULT NULL,
  `water_position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='网站配置' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_config_upload`
--

INSERT INTO `dux_config_upload` (`id`, `name`, `upload_size`, `upload_exts`, `upload_replace`, `thumb_status`, `water_status`, `thumb_type`, `thumb_width`, `thumb_height`, `water_image`, `water_position`) VALUES
(1, '默认', 10, 'jpg,gif,bmp,png', 0, 0, 0, 1, 800, 800, 'logo.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_content`
--

CREATE TABLE IF NOT EXISTS `dux_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `class_id` int(10) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `urltitle` varchar(250) DEFAULT NULL COMMENT 'URL路径',
  `font_color` varchar(250) DEFAULT NULL COMMENT '颜色',
  `font_bold` tinyint(1) DEFAULT NULL COMMENT '加粗',
  `font_em` tinyint(1) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(250) DEFAULT NULL COMMENT '描述',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  `image` varchar(250) DEFAULT NULL COMMENT '封面图',
  `url` varchar(250) DEFAULT NULL COMMENT '跳转',
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `views` int(10) DEFAULT '0' COMMENT '浏览数',
  `taglink` int(10) DEFAULT '0' COMMENT 'TAG链接',
  `tpl` varchar(250) DEFAULT NULL,
  `site` int(10) DEFAULT '1',
  `isping` int(10) DEFAULT '0',
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `urltitle` (`urltitle`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `description` (`description`) USING BTREE,
  KEY `keywords` (`keywords`),
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='内容基础' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `dux_content`
--

INSERT INTO `dux_content` (`content_id`, `class_id`, `title`, `urltitle`, `font_color`, `font_bold`, `font_em`, `position`, `keywords`, `description`, `time`, `image`, `url`, `sequence`, `status`, `copyfrom`, `views`, `taglink`, `tpl`, `site`, `isping`) VALUES
(1, 1, '“科技绿洲•海宁”顺利通过市级科技企业孵化器认定', 'kejilvzhouhainingshunlitongguo', '0', 0, 0, '', '', '   11月26日，嘉兴市科学技术局发布了《关于认定“容亿科技中心”等7家科技企业孵化器为市级科技企业孵化器的通知》，由上海漕河泾新兴技术开发区海宁分区经济发展有限公司负责运营', 1557287100, '/upload/2019-05-29/c89cbb9668e057ca03bdedf6aef62cce.png', '', 0, 1, '本站', 20, 1, '', 1, 0),
(2, 1, '“潜星万物，赋能融合” 暨2018创业发展论坛成功举办', 'qianxingwanwufunengronghe-2018', '0', 0, 0, '', '', '   科技创新与文化创意相碰撞，究竟能擦出怎样的火花？10月25号，潜星堂与万物工场牵手合作，共同举办“潜星万物，赋能融合”暨2018年创业发展论坛在漕河泾A7会议中心举办。本次论坛旨', 1557287580, '/upload/2019-05-29/00bdba7fc73d1a27fc63677b68cdefd0.png', '', 0, 1, '本站', 33, 1, '', 1, 0),
(3, 4, '科技金融', 'kejijinrong', '0', 0, 0, '', '', '科技金融', 1557296460, '/public/lib/images/pc/5.png', '', 0, 1, '本站', 79, 1, '', 1, 0),
(4, 4, '人才服务', 'rencaifuwu', '0', 0, 0, '', '', '人才服务', 1557296520, '/public/lib/images/pc/6.png', '', 0, 1, '本站', 93, 1, '', 1, 0),
(5, 2, '“漕河泾创营•海宁”', '2017hekaifaqukejichuangxinzhis', '0', 0, 0, '', '人才服务,科技金融', '&emsp;&emsp;2018年1月11日，上海漕河泾海宁分区公司与上海漕河泾新兴技术开发区科技创业中心在海宁科技绿洲举行沪浙科创平台战略合作协议签约仪式暨“漕河泾创营•海宁”揭牌仪式。&emsp;', 1557301920, '/upload/2019-05-29/480939a9989a23289951cc6d0ecaf5d3.png', '', 0, 1, '本站', 32, 1, '', 1, 0),
(6, 2, '上海漕河泾大同国际创新创业园', 'shanghaihedatongguojichuangxin', '0', 0, 0, '', '人才服务,科技金融', '&emsp;&emsp;2018年10月18日，漕河泾开发区与大同市政府签署《战略合作协议》、《品牌顾问协议》等，开发区将输出品牌和双创服务经验，与大同共建上海漕河泾（大同）国际创新创业园。该', 1557303000, '/upload/2019-05-29/da62a5dd4b18d1987b9ce702132da227.png', '', 0, 1, '本站', 74, 1, '', 1, 0),
(7, 2, '上海漕河泾柳东创新创业园', 'shanghaiheliudongchuangxinchua', '0', 0, 0, '', '', '&emsp;&emsp;由柳州高新技术创业服务中心与上海漕河泾新兴技术开发区科技创业中心合作共建，导入上海漕河泾管理理念和制度体系，紧密围绕企业从成立、孵化、加速到成熟等不同发展阶段', 1557306480, '/upload/2019-05-29/42d213bde3cc670710d75a6e996f3db4.png', '', 0, 1, '本站', 69, 1, '', 1, 0),
(8, 2, '漕河泾创营·智巷', 'chuangyingqianxingtangjianjie', '0', 0, 0, '', '', '&emsp;&emsp;漕河泾创营.智巷是由赵巷镇政府和上海市漕河泾新兴技术开发区发展总公司携手创办，并由上海漕河泾新兴技术开发区科技创业中心运营，漕河泾创营.智巷将继承漕科创三十余年', 1557306480, '/upload/2019-05-29/760a8a25f2dce54b8da3fd34b5362be4.png', '', 0, 1, '本站', 58, 1, '', 1, 0),
(9, 2, '“创营•潜星堂”创新型文创产业孵化器', 'hechuangyingzhixiangjianjie', '0', 0, 0, '', '', '&emsp;&emsp;2016年12月23日，位于漕河泾开发区浦江园区的众创空间“创营•潜星堂”正式宣布开业。闵行区科委副主任顾建平、上海众创联盟理事长范伟军以及漕河泾创业中心、晴明科技、浦', 1557306540, '/upload/2019-05-29/6b56e8f47f4d3107cce98dc987af5f9c.png ', '', 0, 1, '本站', 65, 1, '', 1, 0),
(11, 1, '开发区与大同市战略合作 共建上海漕河泾大同国际创新创业园', 'kaifaquyudatongshizhanluehezuo', '0', 0, 0, '', '', '   10月18日，漕河泾开发区与大同市政府签署《战略合作协议》、《品牌顾问协议》等，开发区将输出品牌和双创服务经验，与大同共建上海漕河泾（大同）国际创新创业园。该园区将作为大', 1559100840, '/upload/2019-05-29/7a8800cd61cdb2f85fc0939fd83b5924.png', '', 0, 1, '本站', 6, 1, '', 1, 0),
(12, 1, '漕河泾大同创新驱动国际发展论坛举办 助力山西大同转型升级', 'hedatongchuangxinqudongguojifa', '0', 0, 0, '', '', '   为响应国家双创升级号召，聚焦和落实山西省大同市“能源革命、对外开放”的工作重点和战略要求，上海市漕河泾新兴技术开发区发展总公司联合大同市人民政府于4月9日举办“智造未', 1559101200, '/upload/2019-05-29/63bc2f637ffbc0067103fa3071289198.png', '', 0, 1, '本站', 1, 1, '', 1, 0),
(13, 1, '漕河泾柳东双创园智慧赋能对接会成功举办', 'heliudongshuangchuangyuanzhihu', '0', 0, 0, '', '', '   为积极推进广西柳东新区与上海漕河泾开发区的战略合作进程，吸引漕河泾优秀企业参与柳东新区智慧城市建设，实现两个园区的产业对接，12月20日，上海漕河泾柳东创新创业园“大手牵', 1559101440, '/upload/2019-05-29/2381190460c849b46b80ebe11ef19107.png', '', 0, 1, '本站', 6, 1, '', 1, 0),
(14, 1, '打造跨区域协同创新样板 上海漕河泾柳东创新创业园揭牌', 'dazaokuaquyuxietongchuangxinya', '0', 0, 0, '', '', '   5月31日，上海漕河泾柳东创新创业园在柳东新区（柳州国家高新区）揭牌。科技部火炬高技术产业开发中心孵化器处处长陈晴，国家知识产权局专利管理司综合处副处长耿德强，商务部投', 1559102520, '/upload/2019-05-29/976327f7bcc66023d0d1a2c804b43db3.png', '', 0, 1, '本站', 8, 1, '', 1, 0),
(15, 1, '创营品牌落地海宁 打通沪浙创业资源——漕河泾科创中心与漕河泾海宁分区签署沪浙科创平台战略合作协议', 'chuangyingpinpailuodihaining-d', '0', 0, 0, '', '', '   1月11日，上海漕河泾海宁分区公司与上海漕河泾新兴技术开发区科技创业中心在海宁科技绿洲举行沪浙科创平台战略合作协议签约仪式暨“漕河泾创营•海宁”揭牌仪式。下午，在上海市', 1559102700, '/upload/2019-05-29/88f495cc03296ff372450effe81cd9b4.png', '', 0, 1, '本站', 14, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_content_article`
--

CREATE TABLE IF NOT EXISTS `dux_content_article` (
  `content_id` int(10) DEFAULT NULL,
  `content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容信息';

--
-- 转存表中的数据 `dux_content_article`
--

INSERT INTO `dux_content_article` (`content_id`, `content`) VALUES
(1, '&lt;p&gt;\r\n	&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n	&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		11月26日，嘉兴市科学技术局发布了《关于认定“容亿科技中心”等7家科技企业孵化器为市级科技企业孵化器的通知》，由上海漕河泾新兴技术开发区海宁分区经济发展有限公司负责运营的“科技绿洲•海宁”名列其中，顺利通过认定。这也是漕河泾创业中心和漕河泾海宁分区牵手以来的又一合作成果。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		&lt;br /&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		今年年初，创业中心与海宁分区签订沪浙科创平台战略合作协议以来，组建了专门的服务团队，依托漕科创丰富的双创资源优势，帮助漕河泾海宁分区建立了完善的载体运营管理制度，并且在创新服务模式、企业辅导等多方面给予了指导。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		&lt;br /&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		创业中心的拓展工作起步不久，通过品牌拓展衍生和覆盖，为更多园区的双创工作开展提供帮助和借鉴，同时也将自身品牌逐步做大做强。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		&lt;br /&gt;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n		&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;附件：2018年度嘉兴市级科技企业孵化器认定名单&lt;/strong&gt;\r\n	&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;am-text-center&quot;&gt;\r\n	&lt;b&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;table class=&quot;am-table am-table-bordered&quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;th&gt;\r\n				序号\r\n			&lt;/th&gt;\r\n			&lt;th&gt;\r\n				科技企业孵化器名称\r\n			&lt;/th&gt;\r\n			&lt;th&gt;\r\n				运营主体\r\n			&lt;/th&gt;\r\n			&lt;th&gt;\r\n				所属区域\r\n			&lt;/th&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				1\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				容亿科技中心\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				咕嘚科技服务（嘉兴）有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				南湖区\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				2\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				浙江（嘉兴）物流科技产业园\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				嘉兴西南物流开发建设有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				秀洲区\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				3\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				嘉兴壹贰叁柒智能制造孵化器\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				嘉兴壹贰叁柒信息科技有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				秀洲区\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				4\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				上海人才创业园\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				嘉兴市京御房地产开发有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				嘉善县\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				5\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				浙江华祥福生物技术科技园\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				浙江华祥福医用器材有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				平湖市\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				6\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				凤岐茶社数字经济孵化器\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				汉荣（桐乡乌镇）信息科技有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				桐乡市\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				7\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				科技绿洲·海宁\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				上海漕河泾新兴技术开发区海宁分区经济发展有限公司\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				海宁市\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;'),
(2, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	科技创新与文化创意相碰撞，究竟能擦出怎样的火花？10月25号，潜星堂与万物工场牵手合作，共同举办“潜星万物，赋能融合”暨2018年创业发展论坛在漕河泾A7会议中心举办。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/c91e50c7bcb372e6aeb1a35e7463b68a.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	本次论坛旨在搭建传递创业诉求的对话平台、获取创业能力的学习平台、聚集创业资源的机遇平台。晴明科技有限公司、上海潜星堂众创空间管理有限公司总经理吴斌表示，通过论坛，打造活跃区域经济、营造优良营生环境，为务实“共创、共享”科技双创平台献计献策，合力共赢惠及创业群体。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/c8dba862fdbc197f17d57b1f8911a729.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;text-align:center;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;AI赋能动画 主流3D实时渲染&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	科技创新赋能动漫产业，将会对动画制作方式产生那些影响呢？现场，灵犀文化创始人杨智超从创业者的角度描绘了未来动漫的万般可能。计算机硬件的高速发展，推动CG动画。而备受关注的链接三维CG动画与二维动画的桥梁技术“三渲二”，将通过计算机CG动画模拟二维手绘动画效果，解决传统手绘效率的问题，并满足大众对传统动画审美的喜爱和情结，已被越来越多的动漫游戏厂商运用于商业作品的制作。AI技术的发展将对CG动画的制作软件不断迭代，实现主流3D实时渲染，游戏制作运用发展至商业动画领域。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;“5G+AI”手机成为人类最亲密的助手&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/11568707737c023e2921ea56744499b1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	上海与德通讯技术有限公司集团副总裁何斌表示，未来，智能硬件是“互联网+”人工智能的重要载体，也是物联网的重要基石，更是推动高科技产业的重要因素之一。下一年五到十年，将是智能硬件的时代。所以，我们希望提供一个平台，为创业者团队提供全产业链的服务，这也是与德通讯成立万物工场的初衷。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/8d874f6446b836409be35f96b0beb126.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	万物工场合伙人周兆林全方位解读了移动终端、智能硬件、人工智能、物联网等科技对当前人们生活的改变。以手机为例，他认为，大手机时代即将来临。AI赋能手机，手机将是人类最亲密的助手机器人。从最早的大哥大、功能机、智能手机，未来手机已来。现代手机“5G+AI”是“科技+艺术”的作品。AI的发展，使得手机支持语音交互和图像识别，引发交互方式的变革，语音交互时代已经来临。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;text-align:center;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;创业发展论坛&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/01b87383aaab887ed77598bcc7e1cafe.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	本次论坛还邀请了上海大学悉尼工商学院创业教育中心主任帅萍教授主持了论坛对话，和闵行区就业促进中心创业辅导师王珮，灵犀文化创始人杨智超，晨脉创投投资总监王沧海一起就“创业发展”主题进行了讨论。嘉宾从各自不同角度对创业人才教育、培养，连续创业者创业成功率，创业者如何获得投资人青睐等话题表达了看法。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;text-align:center;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;优秀项目路演&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;strong style=&quot;box-sizing:border-box;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;&quot; /&gt;\r\n&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	在论坛嘉宾的精彩分享后，来自潜星堂和万物工场的四个优秀项目进行了创业分享。创业者结合自己的创业历程，分享着自己的创业心酸和乐趣。台上每个创业者的故事，带给台下每个嘉宾老师和正在创业道路上的小伙伴们感慨情怀，也带给即将赶往创业道路上的未来创业者启迪明鉴。嘉宾老师的点评，透露出对创业者的关怀，更透露出对创业者的崇敬 。嘉宾和创业者串起了论坛创业发展的主基调，暗喻着潜星堂和万物工场搭建孵化平台的初衷和意义。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/30e579fc336144403346f8ecb4918f84.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	赋能万物、共创未来，成人达己、共铸辉煌。这是万物工场和潜星堂的服务口号，也是对广大创业者的承诺。虽然“潜星万物，赋能融合”2018年创业发展论坛结束了，但创业道路没有结束。通过创业发展论坛，希望留给创业者们更多的思考、更多的奋进、更多的憧憬……\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;'),
(3, '科技金融'),
(4, '人才服务'),
(5, '&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;2018年1月11日，上海漕河泾海宁分区公司与上海漕河泾新兴技术开发区科技创业中心在海宁科技绿洲举行沪浙科创平台战略合作协议签约仪式暨“漕河泾创营•海宁”揭牌仪式。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;漕河泾科创中心提供顾问咨询服务，定期到分区进行双创工作现场咨询，指导分区开展双创体系的品牌建设、氛围营造和载体运营，通过异地孵化、现场指导等形式，共同推动分区双创环境营造，把分区打造成一流的国际科技园区。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;“漕河泾创营·海宁”是分区在漕河泾科创中心的指导下成立的创新型众创空间，依托漕河泾科创中心的品牌和企业孵化经验，结合海宁强大的服务优势，加快项目实施以及科技成果转化。\r\n&lt;/p&gt;'),
(6, '&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;2018年10月18日，漕河泾开发区与大同市政府签署《战略合作协议》、《品牌顾问协议》等，开发区将输出品牌和双创服务经验，与大同共建上海漕河泾（大同）国际创新创业园。该园区将作为大同市能源革命发展的排头兵，参照漕河泾34年来富有成效的开发区运营和双创管理模式，聚焦清洁能源高效利用，推动区域高科技和新兴产业导入，力争实现“煤都”走向“新能源之都”的战略转型。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;此次合将成为漕河泾开发区探索品牌输出的又一次尝试。漕河泾创业中心将定期派遣顾问团队，提供载体布局设计、载体管理、品牌活动、企业辅导、融资平台搭建等顾问服务，将上海漕河泾（大同）国际创新创业园打造成为“一带一路”的重要枢纽。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;上海漕河泾（大同）国际创新创业园总面积近4000平米，可以满足不同阶段的企业及创业者的需求，并配套了会议中心、培训中心、显示中心等，有全装全配的开放式工位、独立间空间等多种办公载体。\r\n&lt;/p&gt;'),
(7, '&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;由柳州高新技术创业服务中心与上海漕河泾新兴技术开发区科技创业中心合作共建，导入上海漕河泾管理理念和制度体系，紧密围绕企业从成立、孵化、加速到成熟等不同发展阶段，构建政策引导、产业集群、创新平台、科技金融、国际合作和创新服务的六大生态要素，打造适宜企业创新创业的生态体系，建设成为“一带一路”和中国—东盟科技创新和产业发展的重要基地。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;创业园位于柳东新区(柳州国家高新区)新柳大道新城智埠大楼、官塘创业园研发中心,总规划面积8万平方米。邻近柳江，紧邻柳州新老城区，多维立体交通速达，区位交通优势明显；周边人才公寓、会展中心、职教园等多职能配套齐全；与已成型汽车城的相邻，周边聚合多家汽车制造产业链企业，丰富城市产业发展亦集聚众多高技术人才，与创业园共同形成优质的共享产业链环境，极其适合与先进装备制造等六大战略性新兴产业相关的小微企业进驻，成为微小企业孵化成长、飞跃发展的成功平台。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 便利化、开放式的创业空间&lt;/strong&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;设立众创空间和独立办公区，公共就餐区、交流区、茶水间、电话间、洽谈室、会议室、培训室、健身房、咖啡厅等多种功能空间配置，为企业降低了创业成本。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 全要素、一站式的配套服务&lt;/strong&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;周边配套柳东新区人才市场、政务服务中心、柳州市科技大市场等公共服务平台，通过建立“创业中心”服务体系，利用信息化手段整合服务资源，为企业提供低成本和多元化的人才引入、工商注册、税务咨询、法律咨询、科技及知识产权、政策申报等全面服务。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 量身制、特定化的政策支持&lt;/strong&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt; &amp;emsp;&amp;emsp;提供相应的量身制、特定化的政策支持，为入孵企业评估、规划和出谋划策，对企业成长进行保驾护航。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 专业性、全面化的创业指导&lt;/strong&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;创业园组建了专业的创业导师服务体系，为企业提供创业指导、项目推介、政策咨询、创业培训、融资服务等创业指导，助力企业快速发展。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 强大的产业整合、对接能力&lt;/strong&gt; &lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;创业园依托汽车城产业链环境，享有柳州乃至广西先进的科技信息、技术支撑、科教研发、人才资金等资源，对于入孵的优秀企业，有足够的产业资源帮其进行业务对接、上下游资源整合等一系列产业整合，引领企业做大做强。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;&lt;strong&gt;■ 多渠道、多层次的融资服务&lt;/strong&gt; &lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;搭建小微企业创业创新金融服务平台，积极引进银行、担保公司等金融机构，为入孵和企业量身定制融资解决方案。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;我们坚信，通过沪、柳两地优势资源共享，开启上海市漕河泾新兴技术开发区的“柳东模式”，让上海漕河泾柳东创新创业园成为区域经济的创新引擎、创业者的前进营地。\r\n&lt;/p&gt;'),
(8, '&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;漕河泾创营.智巷是由赵巷镇政府和上海市漕河泾新兴技术开发区发展总公司携手创办，并由上海漕河泾新兴技术开发区科技创业中心运营，漕河泾创营.智巷将继承漕科创三十余年高新企业孵化经验，打造一个聚集致力于人工智能领域创新创业的中小科技型企业群。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;漕河泾“智巷”科创中心位于沪渝高速赵巷出口正对面，紧挨嘉松公路和沪青平公路。5公里商圈覆盖奥特莱斯、米格天地、凯悦酒店、吉盛伟邦、漕河泾开发区赵巷园区、宋庆龄学校、赵巷中高端别墅公寓区、地铁17好像和地铁9号线，囊括吃喝玩乐住行。10公里完美无缝衔接虹桥商务圈，北望嘉定汽车城、南靠佘山旅游别墅区、西向淀山湖天然湖区、东临上海繁华商务区，是上海西郊新晋崛起的经济带。\r\n&lt;/p&gt;'),
(9, '&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;2016年12月23日，位于漕河泾开发区浦江园区的众创空间“创营•潜星堂”正式宣布开业。闵行区科委副主任顾建平、上海众创联盟理事长范伟军以及漕河泾创业中心、晴明科技、浦江公司、玄机科技等领导莅临。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;“创营•潜星堂”是由漕河泾创业中心与晴明科技合作开发的创新性文创产业众创空间，位于陈行公路2388号浦江科技广场2号楼，空间配有会议中心、3D放映厅、动捕实验室、配音室等特色服务设施，是继创营•ICE、创营•科技绿洲、创营•宝石园之后启用的第四家众创空间。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;emsp;&amp;emsp;“创营•潜星堂”是由漕河泾创业中心，采用“品牌+运营”的方式，与晴明科技合作，漕河泾创业中心一方面输出“创营”品牌，另一方面，派遣运营团队，驻点办公，提供项目引进、载体设计、载体管理、品牌活动、企业辅导、融资平台搭建等服务。\r\n&lt;/p&gt;'),
(11, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/59ad43dd57e33a2e2d4348e518a88b4b.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/1aecf1b8ce385e94369c62fba1cd56b8.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	10月18日，漕河泾开发区与大同市政府签署《战略合作协议》、《品牌顾问协议》等，开发区将输出品牌和双创服务经验，与大同共建上海漕河泾（大同）国际创新创业园。该园区将作为大同市能源革命发展的排头兵，参照漕河泾34年来富有成效的开发区运营和双创管理模式，聚焦清洁能源高效利用，推动区域高科技和新兴产业导入，力争实现“煤都”走向“新能源之都”的战略转型。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	此次合将成为漕河泾开发区探索品牌输出的又一次尝试。漕河泾创业中心将定期派遣顾问团队，提供载体布局设计、载体管理、品牌活动、企业辅导、融资平台搭建等顾问服务，将上海漕河泾（大同）国际创新创业园打造成为“一带一路”的重要枢纽。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	10月19日，上海漕河泾（大同）国际创新创业园启动仪式举行。园区总面积近4000平米，可以满足不同阶段的企业及创业者的需求，并配套了会议中心、培训中心、显示中心等，有全装全配的开放式工位、独立间空间等多种办公载体。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	随后，漕河泾开发区为大同市各相关部门、科技孵化器及众创空间主要负责人、大同大学及入孵企业代表200余人带来“建设全球科创中心背景下的漕河泾孵化器运作培训班”。培训立足漕河泾开发区科技创新的经验和全球科创发展的背景，介绍开发区如何与各国加强合作，抢占创新高地，以优秀的孵化运营管理能力，推动区域内创新机制，不断提供增值服务，培育创新型公司。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	面对日益激烈的同质化竞争，漕河泾开发区建议大同市经开区聚焦特色产业导向，将经开区打造成为创新型特色园区，开展产业创新和应用创新，培育创新性特色产业集群，增强区域竞争力。在“一带一路”和全面开放的大战略背景下，做好面向中亚、西亚国家的通道、商贸物流枢纽、重要产业和人文的交流基地。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	继今年上半年漕河泾品牌输出业务踏入广西柳州后，时隔不到半年又落子山西大同，开发区品牌输出业务模式逐步成型，服务内容趋于标准化，将为发展轻资产业务进一步夯实基础。漕河泾开发区将有信心为大同市注入新的活力和动能，助推经济转型和创新发展。此外，开发区还为大同经开区引荐了入孵企业咖啡码头，积极落实搭建大同区域内创新项目引入机制。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;'),
(12, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/140fcbba78f162999badd39e04566cfa.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	为响应国家双创升级号召，聚焦和落实山西省大同市“能源革命、对外开放”的工作重点和战略要求，上海市漕河泾新兴技术开发区发展总公司联合大同市人民政府于4月9日举办“智造未来 创赢天下”上海漕河泾大同创新驱动国际发展论坛。200多名专家、学者、企业家齐聚古都，共话科技创新，共谋转型发展。会上6家科技企业“入孵”签约、7位专家被授予上海漕河泾大同国际创新创业园区首批创业导师证书。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	中国知识产权研究会理事长田力普、国家商务部投资促进事务局副局长李勇、大同市副市长荆虎、上海市漕河泾新兴技术开发区发展总公司战略发展部总监洪波等为论坛致辞，论坛邀请中国技术经济学会知识产权专委会副秘书长邓仪友、上海市科技创业中心副主任黄丽宏等专家、学者、企业家参加论坛。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	论坛上，基于大同乃至山西省的现状、优势，与会专家围绕“专利技术的转化与打造新兴产业”、“大服务战略是科创园区高质量发展的根本”、“企业发展助力区域经济转型发展”、“山西转型与科技创新”进行主旨发言，展开高端对话，探讨区域转型的困境和破局，推动科技项目和成果落地转化。论坛还设置“产业赋能·孵化未来”分会、高新技术企业认定申报专题培训会等，让专家与企业家面对面交流，零距离对接。论坛上还启用了上海漕河泾大同创新创业园的微信公众号。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	2018年7月，大同经济技术开发区与上海漕河泾新兴技术开发区合作签约，同年10月上海漕河泾大同国际创新创业园启动。园区借鉴上海漕河泾开发区的运营管理经验，推动高科技和新兴产业导入，助力大同 从“煤都”向“新能源产业之都”转型。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	上海、大同两个国家级经济技术开发区携手合作，共享共用，共建共赢，打开了开发区跨省合作的新天地。大同市政府和上海市漕河泾新兴技术开发区共同主办的这场论坛承载着1+1大于2的功能，将招商大会、项目推荐大会、创新驱动大会三者融为一体。在大同转型发展的转折点上，举办这样一场高规格的创新驱动国际发展论坛，将为大同科技创新驱动转型发展插上了腾飞的翅膀。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;&lt;br /&gt;'),
(13, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/55edeed83e586ab0e7631dfb10153ce8.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/a25792abea80cba5d6f42d23dff69e9e.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/bfcb738c5c89545cd7c54bf79de00326.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/125db8632b41fe96ff8adc963e354c93.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/3860617cbcab156350a9fc56ca19ef85.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/ec3e1468bb684a1ef83c267c16f54f56.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/eb3b4e02f0addbee1dcbd381e29488ad.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/35f179b8e69b97a2d5543368f01f153c.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/f82f7c0ad3a621f36c15fbb4048100e4.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/1cccf094078d84fbbdacb43992a96dc2.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	为积极推进广西柳东新区与上海漕河泾开发区的战略合作进程，吸引漕河泾优秀企业参与柳东新区智慧城市建设，实现两个园区的产业对接，12月20日，上海漕河泾柳东创新创业园“大手牵小手”系列专题活动——“上海漕河泾柳东创新创业园智慧赋能对接会”在漕河泾现代服务园A7国际报告厅顺利举行。本次活动由广西柳州市柳东新区科技局、漕河泾开发区总公司科技部（漕河泾创业中心）共同主办，漕河泾创业孵化器管理有限公司承办。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	漕河泾创业中心副总经理信超首先致辞，对柳东新区领导和开发区企业长期以来的支持予以感谢。柳东新区科技局局长卢懿致辞，简要介绍了柳东新区的基本情况，并热烈欢迎漕河泾开发区企业前往柳东考察合作。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	随后，华为公司进行了柳东新区智慧城市产业需求发布，上汽通用五菱公司进行了智能网联无人驾驶汽车示范区需求发布。与会企业对柳东新区的投资和建设布局有了更加清晰的了解，也对加入柳东建设充满渴望，希望共同助力柳东新区智慧城市和智能交通产业发展。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	在企业路演环节中，星环信息、殊尚网络、悟泰信息、云知声、奔悦智能、赫融电子等6家智慧城市、智能交通领域的开发区企业进行了现场路演，充分展示了开发区企业的技术创新性。参会企业也希望未来能参与到柳东新区智慧城市建设和上汽通用五菱的智能交通合作中去。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	本次对接会采用讨论组的座位方式，让每家企业都可以近距离的和柳州领导及嘉宾进行深入沟通，同时在最后还安排了充分的茶歇自由交流环节，参会代表或进行一对一的沟通，交流各自情况谋求合作。活动继续推进了柳东新区与漕河泾开发区的合作，不仅将柳东新区、漕河泾柳东创新创业园呈现在漕河泾开发区各优秀企业面前，也为园区企业提供了新的市场契机。参会领导和企业都给予了高度认可，搭建了两地合作交流平台，进一步助力柳东新区和漕河泾柳东双创园的发展。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;&lt;br /&gt;'),
(14, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/5df08fed2fcc53d5e3e80d6328e2d51e.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/4128f56b36d7df5f4af3d9b44cdb293c.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	5月31日，上海漕河泾柳东创新创业园在柳东新区（柳州国家高新区）揭牌。科技部火炬高技术产业开发中心孵化器处处长陈晴，国家知识产权局专利管理司综合处副处长耿德强，商务部投资促进事务局联络处副处长朱文龙，柳州市委书记郑俊康，市长吴炜，上海市漕河泾新兴技术开发区发展总公司董事长桂恩亮，总工程师韩宝富，上海市商务委相关处室和上海市科创中心等领导出席揭牌仪式。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	桂董在致辞中表示，漕河泾柳东创新创业园在国家将“一带一路”建设成为科技创新之路的重大战略部署下，将建立以项目对接为纽带的合作模式，重点加强新能源汽车、智能汽车研发与配套、高端装备制造、节能环保、电子信息、新材料、生物医药等战略性新兴产业的合作，打造承接产业转移以及向周边辐射的示范区域。通过探索“漕河泾—柳东—东盟国家园区”的产业与科技合作，搭建国内企业走出去一站式服务平台，建立商务部产业转移促进中心上海基地柳东分中心等方式，把漕河泾的标准、最佳实践、创新文化带到创业创新园。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	吴市长在致辞中表示，近年来柳州充分发挥科技创新在调结构、促转型中的引领和支撑作用，有力促进了传统产业转型升级和战略性新兴产业聚集发展。此次双方携手共建上海漕河泾柳东创新创业园，既是区域合作的新成果，也是面向未来、共谋发展的新起点。柳州市将把创新创业园作为大众创业、万众创新的重要平台，努力打造成为推动区域发展的强劲引擎。也希望漕河泾开发区继续发挥人才、技术、资源等方面的优势，加快新技术、新产品、新模式在柳州转化落地，为推动柳州实现高质量发展增添新动力。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	此次揭牌的“上海漕河泾柳东创新创业园”是继柳东新区（柳州国家高新区）与上海市漕河泾新兴技术产业开发区签订战略合作框架签订一年多以后双方共同孕育的共建载体平台。该创新创业园是以柳东新区产业为特色、以漕河泾园区双创管理模式为主导的科技创新创业园区。由上海漕河泾新兴技术开发区科技创业中心定期派驻顾问团队的方式，携手柳州高新技术创业服务中心共同推进科技创新、企业孵化、成果转化、产业转移，以期将上海漕河泾柳东创新创业园建设成为“一带一路”和中国-东盟科技创新和产业发展的重要基地。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	上海漕河泾柳东创新创业园总面积8万平米，以位于柳州市柳东新区（柳州国家高新区）新柳大道新城智埠大楼为主体，大楼配套有一站式服务中心、会议中心、培训中心、展示中心等，有4个层面的众创空间格局，还有标准的200-400不等的空间载体，以及根据客户需求的可分隔的楼层等多种办公载体，计划2018年底交付使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	柳东新区（柳州国家高新区）作为柳州经济发展的新增长点，此次通过以“上海漕河泾柳东创新创业园”为载体的合作，实施科技联合攻关和成果转化，促进东西部产业转移，借鉴和运用漕河泾发展思路、科技资源和园区管理优势，融入柳东新区（柳州国家高新区）跨越发展中，融入到“一带一路”、中国-东盟自贸区等国家战略实施中。通过深入探索和拓展“漕河泾—柳州高新区—东盟国家园区”的合作模式和路径，为上海、柳州跨区域协同创新从国内向域外成功跨越，提供可供借鉴的新样板。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	上海漕河泾新兴技术开发区是全国首批国家级经济技术开发区、国家高新技术产业开发区和出口加工区，在全国国家级开发区中发挥了“排头兵”作用。上海漕河泾开发区和柳东新区（柳州国家高新区）未来将继续在经济、贸易、科技、文化、金融、人才、教育等领域开展多种形式的合作，实现资源共享、信息互通、共同发展。\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;&lt;br /&gt;');
INSERT INTO `dux_content_article` (`content_id`, `content`) VALUES
(15, '&lt;section style=&quot;box-sizing:border-box;text-align:justify;font-size:16px;&quot;&gt;   &lt;section style=&quot;text-align:left;font-size:15px;line-height:1.8;letter-spacing:2px;padding:0px 20px;box-sizing:border-box;&quot; powered-by=&quot;xiumi.us&quot;&gt;\r\n&lt;p style=&quot;text-align:center;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;img src=&quot;/upload/2019-06-03/2fdb7a399d8b54f80fa3c6a112c04d84.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/68044ffc22bb01a85ffe53f8805828c5.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/d5cb111fd4af8b1775238274ccf45b1c.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/upload/2019-06-03/3478858a2be5bceb42c32d93a3cf593e.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	1月11日，上海漕河泾海宁分区公司与上海漕河泾新兴技术开发区科技创业中心在海宁科技绿洲举行沪浙科创平台战略合作协议签约仪式暨“漕河泾创营•海宁”揭牌仪式。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	下午，在上海市漕河泾开发区发展总公司、嘉兴市科技局、海宁市科技局、海宁市人社局、海宁经济开发区管委会等部门领导的共同见证下，上海漕河泾开发区科技创业中心总经理赖浩锋与漕河泾海宁分区公司主要负责人林刚共同签订了《沪浙科创平台战略合作协议》。协议约定，漕河泾海宁分区引进“漕河泾科创中心”、“漕河泾创营”两大品牌及其先进的经营、管理模式和招商资源。并且，漕河泾科创中心定期到分区进行双创工作现场咨询，指导分区开展双创体系的品牌建设、氛围营造和载体运营，通过异地孵化、现场指导等形式，共同推动分区双创环境营造，把分区打造成一流的国际科技园区。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	签约仪式后，举行了“漕河泾创营·海宁”的揭牌仪式。“漕河泾创营·海宁”是分区在漕河泾科创中心的指导下成立的创新型众创空间，依托漕河泾科创中心的品牌和企业孵化经验，结合海宁强大的服务优势，加快项目实施以及科技成果转化。目前已有大数据app、网络科技、设计咨询等15个创客项目入驻。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	随后，与会各方代表就科创平台战略合作进行了交流座谈。在肯定分区及本次合作大力推动了沪浙科创平台合作的同时，也共同展望了科创工作未来的方向及愿景，对分区科创领域的规划及管理，科创载体的开发建设等提出了要求。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-indent:2em;margin-top:0px;margin-bottom:0px;padding:0px;box-sizing:border-box;&quot;&gt;\r\n	沪浙科创平台战略合作协议的签署及“漕河泾创营•海宁”的揭牌，标志着分区实现了两个新突破，一是沪浙园区合作内容新突破，二是分区创业创新平台新突破。这是分区作为嘉兴市接轨上海重点平台，在深化沪浙合作、创新合作方向、拓展合作渠道上做出的新探索，取得的新成果。接下去，分区将不断增强创业创新的勇气，不断改革创业创新的理念，不断推动创业创新的实践，努力发挥好接轨上海重点平台的重要作用。\r\n&lt;/p&gt;\r\n&lt;/section&gt;&lt;/section&gt;&lt;br /&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_cases`
--

CREATE TABLE IF NOT EXISTS `dux_ext_cases` (
  `data_id` int(10) DEFAULT NULL,
  `caseFilter` text,
  `city` varchar(250) DEFAULT NULL,
  `project1` varchar(250) DEFAULT NULL,
  `project2` varchar(250) DEFAULT NULL,
  `project3` varchar(250) DEFAULT NULL,
  `project4` varchar(250) DEFAULT NULL,
  `project5` varchar(250) DEFAULT NULL,
  `project6` varchar(250) DEFAULT NULL,
  `project7` varchar(250) DEFAULT NULL,
  `project8` varchar(250) DEFAULT NULL,
  `process1` varchar(250) DEFAULT NULL,
  `process2` varchar(250) DEFAULT NULL,
  `process3` varchar(250) DEFAULT NULL,
  `process4` varchar(250) DEFAULT NULL,
  `process5` varchar(250) DEFAULT NULL,
  `picUpload` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `qrcode` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dux_ext_cases`
--

INSERT INTO `dux_ext_cases` (`data_id`, `caseFilter`, `city`, `project1`, `project2`, `project3`, `project4`, `project5`, `project6`, `project7`, `project8`, `process1`, `process2`, `process3`, `process4`, `process5`, `picUpload`, `logo`, `qrcode`) VALUES
(6, '2', '大同市', '', '', '', '', '', '', '', '', '', '', '', '', '', '/upload/2019-05-29/f2d205851f9f9bdc0123911057ba1b03.png', '/public/lib/images/pc/36.png', '/upload/2019-06-11/4f5bef6f1dc1bdbd8d10e9939a541bf0.jpg'),
(5, '4', '海宁市', '', '', '', '', '', '', '', '', '', '', '', '', '', '/upload/2019-05-29/deb3fbf5c074889234d9f80623609f0f.png', '/public/lib/images/pc/36.png', '/upload/2019-06-11/aa94efbdb1530ff0e2f39069e8b60e68.jpg'),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(7, '2', '柳州市', '', '', '', '', '', '', '', '', '', '', '', '', '', '/upload/2019-05-29/a6940df0606fbe02dcfda89eec8f4be3.png', '/public/lib/images/pc/36.png', '/upload/2019-06-11/b9259c1f8bc3533d649ef5aa6e701e8d.jpg'),
(8, '3', '上海市青浦区', '', '', '', '', '', '', '', '', '', '', '', '', '', '/upload/2019-05-29/910b85822d282949e30c7f36835abf0c.png', '/public/lib/images/pc/36.png', ''),
(9, '1', '上海市闵行区', '', '', '', '', '', '', '', '', '', '', '', '', '', '/upload/2019-05-29/20d772e86915d1b74331812266f51a34.png', '/public/lib/images/pc/35.png', '/upload/2019-06-11/58580f2a9c0c1f3fd117c3c9c9d95c3f.jpg'),
(10, '1,2', '上海', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_guestbook`
--

CREATE TABLE IF NOT EXISTS `dux_ext_guestbook` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dux_ext_guestbook`
--


-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_news`
--

CREATE TABLE IF NOT EXISTS `dux_ext_news` (
  `data_id` int(10) DEFAULT NULL,
  `news` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dux_ext_news`
--

INSERT INTO `dux_ext_news` (`data_id`, `news`) VALUES
(1, '2'),
(2, '2'),
(11, '2'),
(12, '1'),
(13, '1'),
(14, '1'),
(15, '1');

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_services`
--

CREATE TABLE IF NOT EXISTS `dux_ext_services` (
  `data_id` int(10) DEFAULT NULL,
  `rightImage` varchar(250) DEFAULT NULL,
  `servicesContent` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dux_ext_services`
--

INSERT INTO `dux_ext_services` (`data_id`, `rightImage`, `servicesContent`) VALUES
(3, '/public/lib/images/pc/31.png', '科技金融内容'),
(4, '/public/lib/images/pc/31.png', '人才服务内容');

-- --------------------------------------------------------

--
-- 表的结构 `dux_field`
--

CREATE TABLE IF NOT EXISTS `dux_field` (
  `field_id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldset_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `type` int(5) DEFAULT '1',
  `tip` varchar(250) DEFAULT NULL,
  `verify_type` varchar(250) DEFAULT NULL,
  `verify_data` text,
  `verify_data_js` text,
  `verify_condition` tinyint(1) DEFAULT NULL,
  `issearch` tinyint(1) DEFAULT NULL,
  `default` varchar(250) DEFAULT NULL,
  `sequence` int(10) DEFAULT '0',
  `errormsg` varchar(250) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`field_id`),
  KEY `field` (`field`),
  KEY `sequence` (`sequence`),
  KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='扩展字段基础' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `dux_field`
--

INSERT INTO `dux_field` (`field_id`, `fieldset_id`, `name`, `field`, `type`, `tip`, `verify_type`, `verify_data`, `verify_data_js`, `verify_condition`, `issearch`, `default`, `sequence`, `errormsg`, `config`) VALUES
(1, 1, '昵称', 'name', 1, '', 'regex', 'cmVxdWlyZQ==', 'Kg==', 1, 1, '', 0, '', ''),
(2, 1, '邮箱', 'email', 1, '', 'regex', 'ZW1haWw=', 'ZQ==', 1, 0, '1', 1, '', ''),
(3, 1, '内容', 'content', 2, '', 'regex', 'cmVxdWlyZQ==', 'Kg==', 1, 1, '', 3, '', ''),
(4, 1, '时间', 'time', 10, '', 'regex', '', '', 1, 1, '', 2, '', ''),
(5, 2, '新闻分类', 'news', 9, '', 'regex', '', '', 1, 1, '', 1, '', '企业资讯,媒体报道,园区公告'),
(6, 3, '右侧图片', 'rightImage', 1, '278 × 187', 'regex', '', '', 1, 2, '', 1, '', ''),
(7, 4, '案例分类', 'caseFilter', 9, '', 'regex', '', '', 1, 1, '', 1, '', '品牌运营,品牌顾问,载体运营,顾问咨询'),
(8, 4, '地域', 'city', 1, '', 'regex', '', '', 1, 2, '', 2, '', ''),
(9, 4, '入孵团队项目1', 'project1', 1, '', 'regex', '', '', 1, 2, '', 3, '', ''),
(10, 4, '入孵团队项目2', 'project2', 1, '', 'regex', '', '', 1, 2, '', 4, '', ''),
(11, 4, '入孵团队项目3', 'project3', 1, '', 'regex', '', '', 1, 2, '', 5, '', ''),
(12, 4, '入孵团队项目4', 'project4', 1, '', 'regex', '', '', 1, 2, '', 6, '', ''),
(13, 4, '入孵团队项目5', 'project5', 1, '', 'regex', '', '', 1, 2, '', 7, '', ''),
(14, 4, '入孵团队项目6', 'project6', 1, '', 'regex', '', '', 1, 2, '', 8, '', ''),
(15, 4, '入孵团队项目7', 'project7', 1, '', 'regex', '', '', 1, 2, '', 9, '', ''),
(16, 4, '入孵团队项目8', 'project8', 1, '', 'regex', '', '', 1, 2, '', 10, '', ''),
(17, 4, '入孵流程1', 'process1', 1, '换行用&lt;br/&gt;', 'regex', '', '', 1, 2, '', 10, '', ''),
(18, 4, '入孵流程2', 'process2', 1, '', 'regex', '', '', 1, 2, '', 11, '', ''),
(19, 4, '入孵流程3', 'process3', 1, '', 'regex', '', '', 1, 2, '', 12, '', ''),
(20, 4, '入孵流程4', 'process4', 1, '', 'regex', '', '', 1, 2, '', 13, '', ''),
(21, 4, '入孵流程5', 'process5', 1, '', 'regex', '', '', 1, 2, '', 14, '', ''),
(22, 3, '园区服务内容', 'servicesContent', 3, '', 'regex', '', '', 1, 2, '', 3, '', ''),
(23, 4, '图片上传', 'picUpload', 5, '', 'regex', '', '', 1, 2, '', 16, '', ''),
(24, 4, '图标logo', 'logo', 5, '', 'regex', '', '', 1, 2, '', 18, '', ''),
(25, 4, '二维码', 'qrcode', 5, '', 'regex', '', '', 1, 2, '', 20, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset` (
  `fieldset_id` int(10) NOT NULL AUTO_INCREMENT,
  `table` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='字段集基础' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dux_fieldset`
--

INSERT INTO `dux_fieldset` (`fieldset_id`, `table`, `name`) VALUES
(1, 'guestbook', '留言板'),
(2, 'news', '新闻资讯'),
(3, 'services', '园区服务'),
(4, 'cases', '典型案例');

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset_expand`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset_expand` (
  `fieldset_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字段集-扩展模型';

--
-- 转存表中的数据 `dux_fieldset_expand`
--

INSERT INTO `dux_fieldset_expand` (`fieldset_id`, `status`) VALUES
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset_form`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset_form` (
  `fieldset_id` int(10) DEFAULT NULL,
  `show_list` tinyint(1) DEFAULT NULL,
  `show_info` tinyint(1) DEFAULT NULL,
  `list_page` int(5) DEFAULT NULL,
  `list_where` varchar(250) DEFAULT NULL,
  `list_order` varchar(250) DEFAULT NULL,
  `tpl_list` varchar(250) DEFAULT NULL,
  `tpl_info` varchar(250) DEFAULT NULL,
  `post_status` tinyint(1) DEFAULT NULL,
  `post_msg` varchar(250) DEFAULT NULL,
  `post_return_url` varchar(250) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字段集-扩展表单';

--
-- 转存表中的数据 `dux_fieldset_form`
--

INSERT INTO `dux_fieldset_form` (`fieldset_id`, `show_list`, `show_info`, `list_page`, `list_where`, `list_order`, `tpl_list`, `tpl_info`, `post_status`, `post_msg`, `post_return_url`) VALUES
(1, 1, 0, 10, '', 'data_id desc', 'guestbook', 'guestbook', 1, '留言发布成功！', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_field_expand`
--

CREATE TABLE IF NOT EXISTS `dux_field_expand` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展字段-扩展模型';

--
-- 转存表中的数据 `dux_field_expand`
--

INSERT INTO `dux_field_expand` (`field_id`, `post`) VALUES
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dux_field_form`
--

CREATE TABLE IF NOT EXISTS `dux_field_form` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `search` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展字段-表单';

--
-- 转存表中的数据 `dux_field_form`
--

INSERT INTO `dux_field_form` (`field_id`, `post`, `show`, `search`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_file`
--

CREATE TABLE IF NOT EXISTS `dux_file` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `original` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ext` varchar(250) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `ext` (`ext`),
  KEY `time` (`time`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='上传文件' AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `dux_file`
--

INSERT INTO `dux_file` (`file_id`, `url`, `original`, `title`, `ext`, `size`, `time`) VALUES
(1, '/upload/2019-05-29/c89cbb9668e057ca03bdedf6aef62cce.png', '/upload/2019-05-29/c89cbb9668e057ca03bdedf6aef62cce.png', '', 'png', 59552, 1559098545),
(2, '/upload/2019-05-29/00bdba7fc73d1a27fc63677b68cdefd0.png', '/upload/2019-05-29/00bdba7fc73d1a27fc63677b68cdefd0.png', ' 暨2018创业发展论坛成功举办', 'png', 46745, 1559099121),
(3, '/upload/2019-05-29/905f3f5ecb2a4ccb07301fe9876fc788.png', '/upload/2019-05-29/905f3f5ecb2a4ccb07301fe9876fc788.png', '1', 'png', 756348, 1559099611),
(4, '/upload/2019-05-29/cbe56cf9d7a671728d0a375880b994d9.png', '/upload/2019-05-29/cbe56cf9d7a671728d0a375880b994d9.png', '2', 'png', 805420, 1559100724),
(5, '/upload/2019-05-29/9e5c1f50093bf4041b359f545b5c313c.png', '/upload/2019-05-29/9e5c1f50093bf4041b359f545b5c313c.png', '3', 'png', 878618, 1559100735),
(6, '/upload/2019-05-29/402a56b4b451ab8407bd67d88190f59a.png', '/upload/2019-05-29/402a56b4b451ab8407bd67d88190f59a.png', '4', 'png', 841797, 1559100746),
(7, '/upload/2019-05-29/f32e2fefa864e82a92ac96f619e3ae2e.png', '/upload/2019-05-29/f32e2fefa864e82a92ac96f619e3ae2e.png', '5', 'png', 873714, 1559100758),
(8, '/upload/2019-05-29/547f4e143a79c93720097f5a763b4e0b.png', '/upload/2019-05-29/547f4e143a79c93720097f5a763b4e0b.png', '6', 'png', 823620, 1559100769),
(9, '/upload/2019-05-29/7a8800cd61cdb2f85fc0939fd83b5924.png', '/upload/2019-05-29/7a8800cd61cdb2f85fc0939fd83b5924.png', ' 共建上海漕河泾大同国际创新创业园', 'png', 68863, 1559101008),
(10, '/upload/2019-05-29/f2d205851f9f9bdc0123911057ba1b03.png', '/upload/2019-05-29/f2d205851f9f9bdc0123911057ba1b03.png', '1', 'png', 983655, 1559101073),
(11, '/upload/2019-05-29/96f37f3adc7c4705bce8c0f1ed40a72c.png', '/upload/2019-05-29/96f37f3adc7c4705bce8c0f1ed40a72c.png', '2', 'png', 1027799, 1559101081),
(12, '/upload/2019-05-29/63bc2f637ffbc0067103fa3071289198.png', '/upload/2019-05-29/63bc2f637ffbc0067103fa3071289198.png', ' 助力山西大同转型升级', 'png', 51345, 1559101283),
(13, '/upload/2019-05-29/7ffa6a999ad27c0df36edaeb798fe1d6.png', '/upload/2019-05-29/7ffa6a999ad27c0df36edaeb798fe1d6.png', '1', 'png', 573962, 1559101339),
(14, '/upload/2019-05-29/44a37778cc108266d2fb7a36cb061f8a.png', '/upload/2019-05-29/44a37778cc108266d2fb7a36cb061f8a.png', '1', 'png', 507990, 1559101968),
(15, '/upload/2019-05-29/df865232baf629fcfffb1f90dca58e81.png', '/upload/2019-05-29/df865232baf629fcfffb1f90dca58e81.png', '2', 'png', 573088, 1559101980),
(16, '/upload/2019-05-29/621f04aac27a05f8fdc90ff65fede771.png', '/upload/2019-05-29/621f04aac27a05f8fdc90ff65fede771.png', '3', 'png', 598044, 1559101990),
(17, '/upload/2019-05-29/45d52c16a0044abb00cb260d26d75375.png', '/upload/2019-05-29/45d52c16a0044abb00cb260d26d75375.png', '4', 'png', 584866, 1559102000),
(18, '/upload/2019-05-29/52baf7a0ac9ef5c0b785c553d371ea53.png', '/upload/2019-05-29/52baf7a0ac9ef5c0b785c553d371ea53.png', '5', 'png', 509399, 1559102010),
(19, '/upload/2019-05-29/50449d141efccae422dd077dd5b1b63a.png', '/upload/2019-05-29/50449d141efccae422dd077dd5b1b63a.png', '6', 'png', 527865, 1559102026),
(20, '/upload/2019-05-29/aedd8d8b54bd9088a9f0f343348a82dc.png', '/upload/2019-05-29/aedd8d8b54bd9088a9f0f343348a82dc.png', '7', 'png', 562204, 1559102036),
(21, '/upload/2019-05-29/a2ed94b0f6c64ac11101eff3822edfec.png', '/upload/2019-05-29/a2ed94b0f6c64ac11101eff3822edfec.png', '8', 'png', 619863, 1559102048),
(22, '/upload/2019-05-29/b7c0f3b75f38277d2689e527e2652780.png', '/upload/2019-05-29/b7c0f3b75f38277d2689e527e2652780.png', '9', 'png', 735458, 1559102059),
(23, '/upload/2019-05-29/2381190460c849b46b80ebe11ef19107.png', '/upload/2019-05-29/2381190460c849b46b80ebe11ef19107.png', '10', 'png', 798990, 1559102069),
(24, '/upload/2019-05-29/976327f7bcc66023d0d1a2c804b43db3.png', '/upload/2019-05-29/976327f7bcc66023d0d1a2c804b43db3.png', ' 上海漕河泾柳东创新创业园揭牌', 'png', 56166, 1559102633),
(25, '/upload/2019-05-29/c7bac08b27c045afaaa80bce482e913b.png', '/upload/2019-05-29/c7bac08b27c045afaaa80bce482e913b.png', '1', 'png', 673357, 1559102691),
(26, '/upload/2019-05-29/b12d2b5d9f4404926dc663f0f81936ba.png', '/upload/2019-05-29/b12d2b5d9f4404926dc663f0f81936ba.png', '2', 'png', 1552428, 1559102701),
(27, '/upload/2019-05-29/deb3fbf5c074889234d9f80623609f0f.png', '/upload/2019-05-29/deb3fbf5c074889234d9f80623609f0f.png', '1', 'png', 733057, 1559102888),
(28, '/upload/2019-05-29/c15bd6f64bdbcd36ec19fb757d58ddc3.png', '/upload/2019-05-29/c15bd6f64bdbcd36ec19fb757d58ddc3.png', '2', 'png', 727791, 1559102896),
(29, '/upload/2019-05-29/485989dfe6f7f0320513cd63d9a4b0c8.png', '/upload/2019-05-29/485989dfe6f7f0320513cd63d9a4b0c8.png', '3', 'png', 833295, 1559102906),
(30, '/upload/2019-05-29/507c0b41ade8009dee16307f53f79ce5.png', '/upload/2019-05-29/507c0b41ade8009dee16307f53f79ce5.png', '4', 'png', 997729, 1559102916),
(31, '/upload/2019-05-29/88f495cc03296ff372450effe81cd9b4.png', '/upload/2019-05-29/88f495cc03296ff372450effe81cd9b4.png', ' 打通沪浙创业资源——漕河泾科创中心与漕河泾海宁分区签署沪浙科创平台战略合作协议 ', 'png', 60241, 1559104426),
(32, '/upload/2019-05-29/480939a9989a23289951cc6d0ecaf5d3.png', '/upload/2019-05-29/480939a9989a23289951cc6d0ecaf5d3.png', '1', 'png', 294841, 1559113863),
(33, '/upload/2019-05-29/deb3fbf5c074889234d9f80623609f0f.png', '/upload/2019-05-29/deb3fbf5c074889234d9f80623609f0f.png', '2222', 'png', 733057, 1559113943),
(34, '/upload/2019-05-29/da62a5dd4b18d1987b9ce702132da227.png', '/upload/2019-05-29/da62a5dd4b18d1987b9ce702132da227.png', '2', 'png', 241608, 1559114243),
(35, '/upload/2019-05-29/f2d205851f9f9bdc0123911057ba1b03.png', '/upload/2019-05-29/f2d205851f9f9bdc0123911057ba1b03.png', ' 1', 'png', 983655, 1559114340),
(36, '/upload/2019-05-29/42d213bde3cc670710d75a6e996f3db4.png', '/upload/2019-05-29/42d213bde3cc670710d75a6e996f3db4.png', '3', 'png', 191650, 1559114676),
(37, '/upload/2019-05-29/a6940df0606fbe02dcfda89eec8f4be3.png', '/upload/2019-05-29/a6940df0606fbe02dcfda89eec8f4be3.png', ' 1', 'png', 296034, 1559115286),
(38, '/upload/2019-05-29/6b56e8f47f4d3107cce98dc987af5f9c.png', '/upload/2019-05-29/6b56e8f47f4d3107cce98dc987af5f9c.png', '4', 'png', 256559, 1559115543),
(39, '/upload/2019-05-29/760a8a25f2dce54b8da3fd34b5362be4.png', '/upload/2019-05-29/760a8a25f2dce54b8da3fd34b5362be4.png', '5', 'png', 247560, 1559115720),
(40, '/upload/2019-05-29/20d772e86915d1b74331812266f51a34.png', '/upload/2019-05-29/20d772e86915d1b74331812266f51a34.png', ' 1', 'png', 874077, 1559115748),
(41, '/upload/2019-05-29/760a8a25f2dce54b8da3fd34b5362be4.png', '/upload/2019-05-29/760a8a25f2dce54b8da3fd34b5362be4.png', '5', 'png', 247560, 1559115996),
(42, '/upload/2019-05-29/910b85822d282949e30c7f36835abf0c.png', '/upload/2019-05-29/910b85822d282949e30c7f36835abf0c.png', ' 1', 'png', 532580, 1559116050),
(43, '/upload/2019-05-29/6b56e8f47f4d3107cce98dc987af5f9c.png', '/upload/2019-05-29/6b56e8f47f4d3107cce98dc987af5f9c.png', '4', 'png', 256559, 1559116976),
(44, '/upload/2019-06-03/c91e50c7bcb372e6aeb1a35e7463b68a.jpg', '/upload/2019-06-03/c91e50c7bcb372e6aeb1a35e7463b68a.jpg', '1', 'jpg', 121753, 1559560656),
(45, '/upload/2019-06-03/c8dba862fdbc197f17d57b1f8911a729.jpg', '/upload/2019-06-03/c8dba862fdbc197f17d57b1f8911a729.jpg', '2', 'jpg', 147058, 1559560669),
(46, '/upload/2019-06-03/11568707737c023e2921ea56744499b1.jpg', '/upload/2019-06-03/11568707737c023e2921ea56744499b1.jpg', '3', 'jpg', 156239, 1559560700),
(47, '/upload/2019-06-03/8d874f6446b836409be35f96b0beb126.jpg', '/upload/2019-06-03/8d874f6446b836409be35f96b0beb126.jpg', '4', 'jpg', 164286, 1559560714),
(48, '/upload/2019-06-03/01b87383aaab887ed77598bcc7e1cafe.jpg', '/upload/2019-06-03/01b87383aaab887ed77598bcc7e1cafe.jpg', '5', 'jpg', 196277, 1559560729),
(49, '/upload/2019-06-03/30e579fc336144403346f8ecb4918f84.jpg', '/upload/2019-06-03/30e579fc336144403346f8ecb4918f84.jpg', '6', 'jpg', 120704, 1559560743),
(50, '/upload/2019-06-03/59ad43dd57e33a2e2d4348e518a88b4b.jpg', '/upload/2019-06-03/59ad43dd57e33a2e2d4348e518a88b4b.jpg', '1', 'jpg', 73978, 1559560870),
(51, '/upload/2019-06-03/1aecf1b8ce385e94369c62fba1cd56b8.jpg', '/upload/2019-06-03/1aecf1b8ce385e94369c62fba1cd56b8.jpg', '2', 'jpg', 85813, 1559560884),
(52, '/upload/2019-06-03/140fcbba78f162999badd39e04566cfa.jpg', '/upload/2019-06-03/140fcbba78f162999badd39e04566cfa.jpg', '1', 'jpg', 77641, 1559560949),
(53, '/upload/2019-06-03/55edeed83e586ab0e7631dfb10153ce8.jpg', '/upload/2019-06-03/55edeed83e586ab0e7631dfb10153ce8.jpg', '1', 'jpg', 33536, 1559561091),
(54, '/upload/2019-06-03/a25792abea80cba5d6f42d23dff69e9e.jpg', '/upload/2019-06-03/a25792abea80cba5d6f42d23dff69e9e.jpg', '2', 'jpg', 36130, 1559561092),
(55, '/upload/2019-06-03/bfcb738c5c89545cd7c54bf79de00326.jpg', '/upload/2019-06-03/bfcb738c5c89545cd7c54bf79de00326.jpg', '3', 'jpg', 35325, 1559561092),
(56, '/upload/2019-06-03/125db8632b41fe96ff8adc963e354c93.jpg', '/upload/2019-06-03/125db8632b41fe96ff8adc963e354c93.jpg', '4', 'jpg', 37665, 1559561130),
(57, '/upload/2019-06-03/3860617cbcab156350a9fc56ca19ef85.jpg', '/upload/2019-06-03/3860617cbcab156350a9fc56ca19ef85.jpg', '5', 'jpg', 29484, 1559561130),
(58, '/upload/2019-06-03/ec3e1468bb684a1ef83c267c16f54f56.jpg', '/upload/2019-06-03/ec3e1468bb684a1ef83c267c16f54f56.jpg', '6', 'jpg', 31324, 1559561130),
(59, '/upload/2019-06-03/eb3b4e02f0addbee1dcbd381e29488ad.jpg', '/upload/2019-06-03/eb3b4e02f0addbee1dcbd381e29488ad.jpg', '7', 'jpg', 32538, 1559561130),
(60, '/upload/2019-06-03/35f179b8e69b97a2d5543368f01f153c.jpg', '/upload/2019-06-03/35f179b8e69b97a2d5543368f01f153c.jpg', '8', 'jpg', 37928, 1559561144),
(61, '/upload/2019-06-03/f82f7c0ad3a621f36c15fbb4048100e4.jpg', '/upload/2019-06-03/f82f7c0ad3a621f36c15fbb4048100e4.jpg', '9', 'jpg', 56307, 1559561144),
(62, '/upload/2019-06-03/1cccf094078d84fbbdacb43992a96dc2.jpg', '/upload/2019-06-03/1cccf094078d84fbbdacb43992a96dc2.jpg', '10', 'jpg', 58104, 1559561144),
(63, '/upload/2019-06-03/5df08fed2fcc53d5e3e80d6328e2d51e.jpg', '/upload/2019-06-03/5df08fed2fcc53d5e3e80d6328e2d51e.jpg', '1', 'jpg', 51500, 1559561235),
(64, '/upload/2019-06-03/4128f56b36d7df5f4af3d9b44cdb293c.jpg', '/upload/2019-06-03/4128f56b36d7df5f4af3d9b44cdb293c.jpg', '2', 'jpg', 133967, 1559561246),
(65, '/upload/2019-06-03/2fdb7a399d8b54f80fa3c6a112c04d84.jpg', '/upload/2019-06-03/2fdb7a399d8b54f80fa3c6a112c04d84.jpg', '1', 'jpg', 56681, 1559561319),
(66, '/upload/2019-06-03/68044ffc22bb01a85ffe53f8805828c5.jpg', '/upload/2019-06-03/68044ffc22bb01a85ffe53f8805828c5.jpg', '2', 'jpg', 52302, 1559561320),
(67, '/upload/2019-06-03/d5cb111fd4af8b1775238274ccf45b1c.jpg', '/upload/2019-06-03/d5cb111fd4af8b1775238274ccf45b1c.jpg', '3', 'jpg', 68098, 1559561320),
(68, '/upload/2019-06-03/3478858a2be5bceb42c32d93a3cf593e.jpg', '/upload/2019-06-03/3478858a2be5bceb42c32d93a3cf593e.jpg', '4', 'jpg', 78731, 1559561320),
(69, '/upload/2019-06-11/4f5bef6f1dc1bdbd8d10e9939a541bf0.jpg', '/upload/2019-06-11/4f5bef6f1dc1bdbd8d10e9939a541bf0.jpg', '', 'jpg', 19448, 1560227838),
(70, '/upload/2019-06-11/aa94efbdb1530ff0e2f39069e8b60e68.jpg', '/upload/2019-06-11/aa94efbdb1530ff0e2f39069e8b60e68.jpg', '', 'jpg', 64880, 1560227890),
(71, '/upload/2019-06-11/b9259c1f8bc3533d649ef5aa6e701e8d.jpg', '/upload/2019-06-11/b9259c1f8bc3533d649ef5aa6e701e8d.jpg', '', 'jpg', 67115, 1560228027),
(72, '/upload/2019-06-11/58580f2a9c0c1f3fd117c3c9c9d95c3f.jpg', '/upload/2019-06-11/58580f2a9c0c1f3fd117c3c9c9d95c3f.jpg', '_860', 'jpg', 46206, 1560228090);

-- --------------------------------------------------------

--
-- 表的结构 `dux_fragment`
--

CREATE TABLE IF NOT EXISTS `dux_fragment` (
  `fragment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` int(10) NOT NULL COMMENT '碎片类型',
  `content` text,
  PRIMARY KEY (`fragment_id`),
  KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站碎片' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dux_fragment`
--


-- --------------------------------------------------------

--
-- 表的结构 `dux_position`
--

CREATE TABLE IF NOT EXISTS `dux_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sequence` int(10) DEFAULT '0',
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='推荐位' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_position`
--

INSERT INTO `dux_position` (`position_id`, `name`, `sequence`) VALUES
(1, '首页推荐', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_tags`
--

CREATE TABLE IF NOT EXISTS `dux_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `urlname` varchar(200) NOT NULL,
  `click` int(10) DEFAULT '1',
  `quote` int(10) DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  KEY `quote` (`quote`),
  KEY `click` (`click`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='TAG标签' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dux_tags`
--

INSERT INTO `dux_tags` (`tag_id`, `name`, `urlname`, `click`, `quote`) VALUES
(1, '人才服务', 'rencaifuwu', 1, 32),
(2, '科技金融', 'kejijinrong', 1, 32);

-- --------------------------------------------------------

--
-- 表的结构 `dux_tags_has`
--

CREATE TABLE IF NOT EXISTS `dux_tags_has` (
  `content_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT NULL,
  KEY `aid` (`content_id`),
  KEY `tid` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TAG关系';

--
-- 转存表中的数据 `dux_tags_has`
--

INSERT INTO `dux_tags_has` (`content_id`, `tag_id`) VALUES
(5, 2),
(5, 1),
(6, 2),
(6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_total_spider`
--

CREATE TABLE IF NOT EXISTS `dux_total_spider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `baidu` int(10) DEFAULT '0',
  `google` int(10) DEFAULT '0',
  `soso` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='蜘蛛统计' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dux_total_spider`
--


-- --------------------------------------------------------

--
-- 表的结构 `dux_total_spider_info`
--

CREATE TABLE IF NOT EXISTS `dux_total_spider_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `boot` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dux_total_spider_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `dux_total_visitor`
--

CREATE TABLE IF NOT EXISTS `dux_total_visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `api` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='访客统计' AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `dux_total_visitor`
--

INSERT INTO `dux_total_visitor` (`id`, `time`, `count`, `api`) VALUES
(1, 1556467200, 177, NULL),
(2, 1556553600, 1, NULL),
(3, 1556985600, 1289, NULL),
(4, 1557072000, 424, NULL),
(5, 1557158400, 760, NULL),
(6, 1557244800, 488, NULL),
(7, 1557331200, 130, NULL),
(8, 1557417600, 126, NULL),
(9, 1557504000, 609, NULL),
(10, 1557590400, 1, NULL),
(11, 1557676800, 454, NULL),
(12, 1557763200, 78, NULL),
(13, 1557849600, 12, NULL),
(14, 1557936000, 22, NULL),
(15, 1558022400, 2, NULL),
(16, 1558281600, 28, NULL),
(17, 1558368000, 2, NULL),
(18, 1558454400, 3, NULL),
(19, 1558540800, 25, NULL),
(20, 1558627200, 77, NULL),
(21, 1558713600, 1, NULL),
(22, 1558800000, 9, NULL),
(23, 1558886400, 2, NULL),
(24, 1558972800, 77, NULL),
(25, 1559059200, 439, NULL),
(26, 1559145600, 1, NULL),
(27, 1559232000, 29, NULL),
(28, 1559318400, 260, NULL),
(29, 1559404800, 32, NULL),
(30, 1559491200, 426, NULL),
(31, 1559577600, 159, NULL),
(32, 1559664000, 42, NULL),
(33, 1559750400, 137, NULL),
(34, 1559923200, 18, NULL),
(35, 1560009600, 20, NULL),
(36, 1560096000, 326, NULL),
(37, 1560182400, 243, NULL),
(38, 1560268800, 30, NULL),
(39, 1560355200, 16, NULL);
