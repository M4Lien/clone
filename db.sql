CREATE TABLE IF NOT EXISTS `bases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(256) NOT NULL,
  `color` varchar(10) NOT NULL,
  `precent` int(10) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;


INSERT INTO `bases` (`id`, `category`, `color`, `precent`, `type`) VALUES
(1, '4', '#2b9032', 100, 1),
(2, '3', '#ffa200', 50, 1),
(3, '1', '#ff1800', 30, 1),
(4, '2', '#48be6d', 85, 1),
(5, '1', '#f39826', 50, 2),
(6, '2', '#f40023', 27, 2),
(7, '3', '#329001', 90, 2),
(8, '4', '#329001', 85, 2);

CREATE TABLE IF NOT EXISTS `cards` (
  `cardId` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `categoryId` int(11) NOT NULL DEFAULT '1',
  `cardUsed` int(11) NOT NULL DEFAULT '0',
  `cardContent` varchar(512) NOT NULL,
  `cardNum` varchar(20) NOT NULL,
  `cardMon` varchar(10) NOT NULL,
  `cardYea` varchar(10) NOT NULL,
  `cardCvv` varchar(10) DEFAULT NULL,
  `cardCou` varchar(128) NOT NULL,
  `CardState` varchar(255) NOT NULL,
  `CardCity` varchar(255) NOT NULL,
  `CardZip` varchar(255) NOT NULL,
  `cardSpliter` varchar(11) NOT NULL,
  `cardNumPost` int(11) NOT NULL,
  `cardMonPost` int(11) NOT NULL,
  `cardYeaPost` int(11) NOT NULL,
  `cardCvvPost` int(11) NOT NULL,
  `cardCouPost` int(11) NOT NULL,
  `CardStatePost` int(11) NOT NULL,
  `CardCityPost` int(11) NOT NULL,
  `CardZipPost` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` varchar(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '1',
  `sellerprc` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardId`),
  UNIQUE KEY `cardContent` (`cardContent`),
  UNIQUE KEY `cardNum` (`cardNum`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(256) NOT NULL,
  `categoryInfo` text NOT NULL,
  `categoryPrice` double NOT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `categoryName` (`categoryName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `category` (`categoryId`, `categoryName`, `categoryInfo`, `categoryPrice`) VALUES
(1, 'USBASE01', 'seller1/seller2', 3.5),
(2, 'USBASE02', 'EXAMPLE2', 2),
(3, 'EUBASE4', 'EXAMPLE3', 0),
(4, 'MIXDBCVV', 'for admin', 0),
(5, 'TEST category', 'for admin', 0),
(6, 'TEST categoryz', 'for admin', 0);

CREATE TABLE IF NOT EXISTS `dumpcategory` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(256) NOT NULL,
  `categoryInfo` text NOT NULL,
  `categoryPrice` double NOT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `categoryName` (`categoryName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

INSERT INTO `dumpcategory` (`categoryId`, `categoryName`, `categoryInfo`, `categoryPrice`) VALUES
(1, 'USA DUMPS', 'great valid', 30),
(2, 'NO RUSSIAN DUMPS', 'skimmer', 150),
(3, 'JACKPOS DB', 'example)', 0),
(4, 'EUBASE[100%]', '101% valid', 0),
(6, 'emty cay', 'emty cay', 0);

CREATE TABLE IF NOT EXISTS `dumps` (
  `dumpId` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `categoryId` int(11) NOT NULL DEFAULT '1',
  `dumpUsed` int(11) NOT NULL DEFAULT '0',
  `dumpContent` varchar(512) NOT NULL,
  `dumpNum` varchar(20) NOT NULL,
  `dumpMon` varchar(10) NOT NULL,
  `dumpYea` varchar(10) NOT NULL,
  `dumpCou` varchar(128) NOT NULL,
  `dumpcode` int(11) NOT NULL,
  `dumptype` varchar(255) NOT NULL DEFAULT '-',
  `dumpclass` varchar(255) NOT NULL DEFAULT '-',
  `dumplevel` varchar(255) NOT NULL DEFAULT '-',
  `dumpbank` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT '1',
  `sellerprc` varchar(11) NOT NULL DEFAULT '0',
  `pack` int(11) DEFAULT '0',
  `checkermsg` varchar(255) NOT NULL,
  PRIMARY KEY (`dumpId`),
  UNIQUE KEY `dumpContent` (`dumpContent`),
  UNIQUE KEY `dumpNum` (`dumpNum`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `faq` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(256) NOT NULL,
  `categoryIcon` varchar(256) NOT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `categoryName` (`categoryName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

INSERT INTO `faq` (`categoryId`, `categoryName`, `categoryIcon`) VALUES
(8, 'Deposit', 'fa fa-money'),
(7, 'Rules', 'fa fa-bullhorn'),
(12, 'Checker', 'fa fa-credit-card');

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `text` varchar(255) NOT NULL,
  `category` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

INSERT INTO `news` (`id`, `date`, `color`, `text`, `category`) VALUES
(1, '23.09.2014', '#555555', 'ADDED BASE [USA DUMPS]', 1),
(2, '24.09.2014', '#555', 'ADDED BASE [NO RUSSIAN DUMPS]', 1),
(3, '25.09.2014', '#555555', 'ADDED BASE [JACKPOS DB]', 1),
(4, '29.09.2014', '#427dd9', 'ADDED BASE [EUBASE[100%]] - 100% VALID', 1),
(5, '25.09.2014', '#555', 'ADDED BASE [USBASE01]', 2),
(6, '26.09.2014', '#555', 'ADDED BASE [USBASE02]', 2),
(7, '27.09.2014', '#509626', 'BEST EU CVV --> [EUBASE4]', 2),
(8, '28.09.2014', '#bf3535', 'SUPER BIG UPDATE [MIXDBCVV]', 2);

CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `approved` int(11) NOT NULL DEFAULT '0',
  `orderTotal` double NOT NULL DEFAULT '0',
  `orderDate` datetime NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `walletbalance` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `btcvalue` varchar(100) NOT NULL DEFAULT 'no',
  `btcreceived` varchar(100) NOT NULL,
  `txhash` varchar(255) NOT NULL,
  `confirmations` varchar(100) NOT NULL,
  `uorderid` varchar(255) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `packs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `categoryId` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '0',
  `level` varchar(255) NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '0',
  `code` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `comment1` varchar(255) NOT NULL,
  `comment2` varchar(255) NOT NULL,
  `Used` int(11) NOT NULL DEFAULT '0',
  `country` varchar(512) NOT NULL,
  `value` int(11) NOT NULL,
  `price` varchar(11) NOT NULL DEFAULT '0',
  `norefund` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '1',
  `sellerprc` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `questions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(256) NOT NULL,
  `answer` varchar(6256) NOT NULL,
  `categoryId` double NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

INSERT INTO `questions` (`Id`, `question`, `answer`, `categoryId`) VALUES
(10, 'How much time will be credited money in account?', 'Deposit process goes automatically. It usually takes ~10 minutes.\r\n<br>\r\n<font color="red">Wait for 4 block confirmations! Don''t ask support every 5 minutes.</font>', 8),
(9, 'Main Rules', '<font color="green"><b>√</b></font> <font color="black"> Price for CVV starts from <b>3$</b></font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Price for dumps starts from <b>10$</b></font><br>\r\n<font color="green"><b><b>√</b></b></font> <font color="black"> Fast automatic payment methods</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Frequent UPDATES</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Instant stuff delivery</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Replace lost/stolen/hold/card error</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Fully secure. No logging. No IP tracking</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Ticket support contacting</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Jabber supporting</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Selection of dumps with bin, country, type</font><br>\r\n<font color="green"><b>√</b></font> <font color="black"> Individual approach to each customer</font><br>\r\n<font color="red"><b><b>x</b></b></font> <font color="gray"> NO money back</font><br>\r\n<font color="red"><b>x</b></font> <font color="gray"> NO dumps with pin</font><br>\r\n<font color="red"><b>x</b></font> <font color="gray"> NO any free test</font>', 7),
(16, 'What payment methods are available?', 'Bitcoin and Perfect Money.\r\nDon''t ask about WU and Webmoney, use exchange services.', 8),
(17, 'Checker said "UNKNOWN"', 'It''s not a refunded way, we replace only DEAD cards.\r\nBut if you know that card not valid - ask support please.', 12),
(18, 'How much time to check?', '<b>60 minutes</b> for dumps and <b>10 minutes</b> for CC.', 12);

CREATE TABLE IF NOT EXISTS `salepack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `used` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `comment1` varchar(255) NOT NULL,
  `comment2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `sellerprc` varchar(11) NOT NULL DEFAULT '0',
  `refund` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

CREATE TABLE IF NOT EXISTS `settings` (
  `settingId` int(11) NOT NULL AUTO_INCREMENT,
  `settingName` varchar(256) NOT NULL,
  `settingInfo` varchar(256) NOT NULL,
  `settingValue` varchar(256) NOT NULL,
  PRIMARY KEY (`settingId`),
  UNIQUE KEY `settingName` (`settingName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

INSERT INTO `settings` (`settingId`, `settingName`, `settingInfo`, `settingValue`) VALUES
(1, 'SiteName', 'SiteName', 'CvvDump.com'),
(2, 'Buy&Check', 'Buy&Check', '0'),
(3, 'adminEmail', 'Admin email', 'admin@localhost.com'),
(4, 'homeUrl', 'Site home url', 'http://cvvdump.com/'),
(5, 'currency_code', 'Currency code', 'USD'),
(6, 'currency_symb', 'Currency symbol', '$'),
(7, 'merchant', 'PM ACCOUNT', 'U0004759'),
(8, 'storename', 'PM STORE NAME', 'BestShop'),
(9, 'securityword', 'ALTERNATE PM PASS strtoupper(md5($password)', '80F632EBFE5295A9F8933E360EB382DF'),
(10, 'themeadmin', 'Admin Template', 'theme_black_green.css'),
(11, 'themeusr', 'User Template', 'theme_navy.css'),
(12, 'CheckerPrice', 'Checker Price (0.1 - [dot!])', '0.3'),
(13, 'checktime', 'Time for Check(min)', '10'),
(14, 'blockchain_root', 'Blockchain Root', 'http://blockchain.info/'),
(15, 'blockchain_secret', 'Blockchain random Secret Key', 'RANDOM'),
(16, 'my_bitcoin_address', 'Bitcoin Address', '17ioSud7ha1B2Xjhu5oPPcGChWZY86nPLu'),
(17, 'mindeposit', 'Minimal Deposit', '10'),
(18, 'pmdeposit', 'Deposit PM', '1'),
(19, 'btcdeposit', 'Deposit BTC', '1'),
(20, 'Dump_Buy&Check', 'Dump Buy&Check', '0'),
(21, 'dumpchecktime', 'Dump check Time', '60'),
(22, 'saledump', 'Sale Dumps', '1'),
(23, 'salecc', 'Sale CC', '1'),
(24, 'dumpchecker', 'Dump Checker', 'dumpchecker.php'),
(25, 'CCchecker', 'CC Checker', 'checker.php'),
(26, 'packs', 'Sale Packs', '1'),
(27, 'logo', 'Logo[html]', 'CVV <i class="fa fa-credit-card"></i> DUMP'),
(28, 'salecheck', 'CC Checker', '1'),
(29, 'btcspeed', 'Bitcoin Speed', '1'),
(30, 'btconfirm', 'BTC Confirmations', '2'),
(31, 'bcguid', 'Blockchain GUID', '400000000-0000-4000-0000-00000000000'),
(32, 'bcmainpass', 'Blockchain Main Password', 'password'),
(33, 'UPMUSD', 'Unitaco PM USD', '1'),
(34, 'UWMZ', 'Unitaco WMZ', '1'),
(35, 'UPAYMERZ', 'Unitaco PAYMER Z', '1'),
(36, 'UMERCH', 'Unitaco MERCHANT', 'MERCH'),
(37, 'UPASS', 'Unitaco Password', 'PASSWORD');

CREATE TABLE IF NOT EXISTS `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_msg` datetime NOT NULL,
  `read_msg` int(11) NOT NULL,
  `msg` text NOT NULL,
  `msgfrom` int(11) NOT NULL,
  `read_msg_admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(128) NOT NULL,
  `typeColor` varchar(10) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `types` (`typeId`, `typeName`, `typeColor`) VALUES
(1, 'Admin', '#ff0000'),
(2, 'Member', '#000000'),
(3, 'Seller', '#42aaff');

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `jabber` varchar(256) NOT NULL,
  `typeId` int(11) NOT NULL DEFAULT '2',
  `credit` double NOT NULL DEFAULT '0',
  `paids` varchar(50) NOT NULL DEFAULT '0',
  `regDate` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

INSERT INTO `users` (`userId`, `username`, `password`, `jabber`, `typeId`, `credit`, `paids`, `regDate`) VALUES
(1, 'admin', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'p9i9n2@0nl1ne.at', 1, 145.5, '0', 1277164490);
