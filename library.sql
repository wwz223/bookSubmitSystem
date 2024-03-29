/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 8.0.11 : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `library`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bid` varchar(50) NOT NULL,
  `bName` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL,
  `pubComp` varchar(20) NOT NULL,
  `pubDate` date NOT NULL,
  `bCount` int(11) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bid`,`bName`,`author`,`pubComp`,`pubDate`,`bCount`,`price`,`type`,`img`,`intro`) values ('ISBN001','社会学概论','彭华民','高等教育出版社','2006-08-01',405,30,'SHFZ','https://img1.doubanio.com/view/subject/l/public/s26583048.jpg','《社会学概论》作为社会学专业入门基础课教材，《社会学概论》秉承社会学研究人与社会关系的主旨，介绍了社会学的基本概念、基本理论、基本方法，突出社会学本土化研究的特色。在篇章结构上，《社会学概论》以理论发展与方法为绪论，以社会互动、社会结构与社会不平等、社会制度、社会变迁与发展为逻辑主线，通过五编十九章的内容，展示了社会学学科研究需要遵循的理论原则、社会学研究的方法和技术、社会学逻辑发展中的不同观点，以及社会学研究在中国改革开放中的发展。《社会学概论》配有网络课程，大大丰富了社会学教材的内容，对社会学教材做了广度和深度的延伸。《社会学概论》的内容体现了社会学知识点面结合的特点，每章后附有思考题和推'),('ISBN002','社会研究方法','艾尔·巴比','华夏出版社','2005-01-01',551,68,'SHFZ','https://img1.doubanio.com/view/subject/l/public/s1433168.jpg','《社会研究方法》是美国大学的通用社会学教材，同时它被译成多国文字，是一本具有世界声誉的经典之作二1975年本书初版已引起学术界广泛关注，现已出至第10版。\n\n本书讨论范围广泛，论述严密，从社会理论基本范式到学科报告撰写，从社会研究的基本概念到各种复杂技术方法，深入浅出，循序渐进，既适合专门研究人员，也是其他相关学科研究人员的必备参考书。\n\n本书包含大量图表和鲜活案例，同时吸纳社会研究的最新理论和方法，并附有详细的参考书目和丰富的网络链接，为师生教学和学者研究提供了极大便利。\n\n'),('ISBN003','社会心理学','[美]戴维·迈尔斯','人民邮电出版社','2006-01-01',504,68,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s1670932.jpg','《社会心理学》这本书被美国700多所大学或学院的心理系所采用，是这一领域的主导教材，已经成为评价其他教材的标准。\n\n这本书将基础研究与实践应用完美地结合在一起，以富有逻辑性的组织结构引领学生了解人们是如何思索、影响他人并与他人建立联系的。是人们了解自身、了解社会、了解自己与社会之间关系的最佳的指导性书籍。'),('ISBN004','社会工作概论','王思斌','高等教育出版社','2006-05-01',422,31,'SHFZ','https://img1.doubanio.com/view/subject/l/public/s1912217.jpg','《社会工作概论(第2版)》由王思斌主编，是普通高等教育“十五”国\n\n家级规划教材。基于社会工作理论和实践的最新成果，本书比较全面地介\n\n绍了社会工作的基本概念、哲学基础和伦理以及社会工作理论，阐述了社\n\n会工作与社会福利制度的关系，系统地介绍了个案工作、小组工作、社区\n\n工作、社会行政等社会工作的主要专业方法；结合中国实际和我国社会工\n\n作的最新进展，对社会工作的基本领域——儿童社会工作、青少年社会工\n\n作、老年社会工作、妇女社会工作，以及家庭社会工作、医务社会工作、\n\n残疾人社会工作、社区矫正、反贫困及民政工作的基本理论和工作方法做\n\n了分绍，对我国社会工作的经验进行了梳理和初步总结。书中还'),('ISBN005','社区概论','于显洋','人民大学出版社','2006-04-01',329,25,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s8820145.jpg','社区概论为社会学和社会工作专业本科必修课，是社会学和社会工作知识系统中的组成部分。本书从社区角度加深对社会的认识，有助于学生全面掌握和理解社区理论观点及社区实务工作方法，了解社区的基本构成要素，正确分析社区现象，制定有效的治理方案。全书共分十一章，主要培养学生如下能力：（1）综合分析与解决问题的能力，学会从多维角度看待社区现象，尤其是学会从空间角度进行观察；以及在此基础上，（2）能够制定一套改进社区状况的策略，采取有效行动来促进社区发展。'),('ISBN006','中国社会思想史','王处辉','中国人民大学出版社','2007-07-01',624,59,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s6053906.jpg','本书以时代与社会发展为逻辑线索，对从先秦至20世纪初中国历代思想家的社会思想做了系统介绍与评价，使学生或一般读者能系统地了解中国社会思想史产生与发展的总体线索。本书充分体现了作为社会学核心课教材的要求，重点突出了中国社会思想与西方社会思想的不同特点，并充分反映了本学科的最新研究成果。'),('ISBN007','古典西方社会学理论','[美]兰德尔·柯林斯','商务印书馆','2014-05-01',481,39,'SHFZ','https://img1.doubanio.com/view/subject/l/public/s27460867.jpg','本书的第六版曾于2006年以《发现社会之旅》的书名出过中译本。本书为同一译者根据最新版本修订的新译本。全书以人物为主线，勾画了二百多年来西方社会学思想与实践的发展历程，不仅阐述了各个经典传统的发展，还讨论了当代理论的各种发展方向。作者叙述人物生平，往往着墨不多而有传神之处。评述各派思想，多结合当时的社会背景及知识潮流，溯其源头，追其余脉，使对各种思想潮流的介绍既简洁又深入。使读者不仅能全面了解每一位思想家的思想，还能在宏观的历史背景下把握西方社会学思想的整体脉络。'),('ISBN008','后现代西方社会学理论','刘少杰','人民大学出版社','2002-01-01',390,22,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s27460410.jpg','本书揭示了现代社会学主张经验性和整体性研究的理论承诺与坚持实证和客观性追求的理论原则的矛盾，论述了从现代社会学到后现代社会学在知识基础、现实基础、思维方式和话语方式等方面的深刻变革及其存在的缺失。借鉴常人方法学、日常生活世界理论和其他当代正在流行的社会理论和社会学理论，提出从日常生活世界出发解决社会学理论承诺和理论原则的矛盾，实现社会学在新的历史条件下的新发展。\n\n'),('ISBN009','民俗与文学','刘燕萍','上海古籍出版社','2015-04-01',122,29,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s28072760.jpg','刘燕萍编著的《民俗与文学——古典小说戏曲中的鬼神》是一本论文集，从民俗与文学的跨界角度，以古典小说戏曲中的鬼神信仰为焦点，深入研究了文学文本中隐含的民俗信仰，探讨古典小说戏曲中所反映的，有关保护型女仙、葬丧文化和鬼王等信仰及民俗，推进了民俗与文学的跨学科研究。'),('ISBN010','文化与社会','[英]雷蒙·威廉斯','吉林出版集团有限责任公司','2011-12-01',352,36,'SHFZ','https://img3.doubanio.com/view/subject/l/public/s6944321.jpg','《文化与社会》是雷蒙•威廉斯的成名作，1958年首次出版后已多次再版并被译为多国文字，被誉为英国新左翼的开创性之作，文化研究领域的经典。\n\n作者以“工业”、“民主”、“阶级”、“艺术”、“文化”五个关键词为主题，选取了18世纪下半叶至20世纪中叶活跃于英国思想界、文学界的四十位著名作家和思想家，通过分析他们对工业革命以及文化问题的不同论述，梳理了文化观念的变迁，以及由此带来的社会政治和经济结构的变革，勾勒出影响20世纪文化思潮的重要传统。\n\n'),('ISBN011','世界历史上的蒙古征服','[美]梅天穆','后浪丨民主与建设出版社','2017-10-01',377,68,'SFHZ','https://5b0988e595225.cdn.sohucs.com/images/20171001/13dd3f8994f9425883d16b7939f27816.jpeg','本书是近年来蒙古帝国史研究领域中的重量级新作，作者在世界史与全球史的视野下，重点描绘了由成吉思汗推动的欧亚文化交流，以及蒙古各汗国陆续崩解后，一个新的欧亚世界的产生过程。在蒙古统治者的强制推动下，东西方之间开始了互相交流的过程，在“蒙古治世”之下孕育出了崭新的欧亚文化，从而在一定程度上使蒙古过去被视为毁灭文明世界的蛮族形象得到了修正。'),('ISBN012','人文科学概论','李维武','中国人民大学出版社','2007-07-01',524,30,'SFHZ','http://ec4.images-amazon.com/images/I/41aMLwLn4xL._SL500_AA300_.jpg','这本《人文科学概论》，是为“人文科学概论”课程所撰写的教材，同时也可以作为了解人文科学的自学读物。编者编写《人文科学概论》教材的目的，在于从总体上对人文科学作一个说明，使同学们能对人文科学有一个基本的了解。具体地说，就是通过环绕人文科学的主要问题，如人文科学的学科定位。'),('ISBN013','心理学','彭聃龄','北京师范大学出版社','2012-05-01',654,55,'SFHZ','https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3385767054,1822128705&fm=26&gp=0.jpg','这里包括适当补充和增加新的知识、删除某些相对陈旧的知识。例如，第二章在讲到小脑的功能时，补充了“近年来的一些研究表明，小脑在某些高级认知功能（如感觉分辨）中也有重要的作用。”在记忆一章中，对“记忆的SPI理论”重新做了解释。'),('ISBN014','中国通史','吕思勉','上海古籍出版社','2009-04-01',466,35,'SFHZ','https://i04picsos.sogoucdn.com/b3e9c0c65f16324d','本书是吕思勉先生史学论著之一，完成于1939年，分上、下两册。上册分门别类地叙述社会经济制度、政治制度和文化学术的发展情况，内容包括婚姻、族制、政体、阶级、财产、官制、选举、赋税、兵制、刑法、实业、货币、衣食、住行、教育、语文、学术、宗教等十八类；下册按历史顺序叙述了政治历史的变革。'),('ISBN015','社会学概论','彭华民、杨心恒','高等教育出版社','2006-08-01',405,30,'SFHZ','https://www.kfzimg.com/G00/M00/44/7E/oYYBAFbq_p-ADULXAAAq3fl8cSI285_n.jpg','在篇章结构上，《社会学概论》以理论发展与方法为绪论，以社会互动、社会结构与社会不平等、社会制度、社会变迁与发展为逻辑主线，通过五编十九章的内容，展示了社会学学科研究需要遵循的理论原则、社会学研究的方法和技术、社会学逻辑发展中的不同观点，以及社会学研究在中国改革开放中的发展'),('ISBN016','中国社会思想史','王处辉','中国人民大学出版社','2009-06-01',624,59.8,'SFHZ','https://img3.doubanio.com/view/subject/l/public/s8914854.jpg','本书以时代与社会发展为逻辑线索，对从先秦至20世纪初中国历代思想家的社会思想做了系统介绍与评价，使学生或一般读者能系统地了解中国社会思想史产生与发展的总体线索。本书充分体现了作为社会学核心课教材的要求，重点突出了中国社会思想与西方社会思想的不同特点，并充分反映了本学科的最新研究成果。'),('ISBN017','社会组织与社会治理','王名等著','社会科学文献出版社','2014-06-01',341,49,'SFHZ','https://img12.360buyimg.com/n1/jfs/t20143/18/192694981/50432/68388433/5b0246ddNb11176c8.jpg','国家和社会的治理现代化包括国家治理的现代化和社会治理的现代化。社会体制的改革及社会治理现代化，比国家治理体系将更加广泛、复杂和艰难，因而需要更加渐进乃至反复的过程，加之经济体制改革在总体上已经成功及其揭开和积累的大量社会问题，使得这一过程具有更为强烈的现实性和紧迫性，在一定意义上可以说，社会改革及社会治理的现代化，乃是继经济改革之后中国改革走向全面深化的第二个主战场。'),('ISBN018','政治学原理','王惠岩','高等教育出版社','2006-02-01',374,29.6,'SFHZ','http://img4.imgtn.bdimg.com/it/u=2533359854,13967642&fm=26&gp=0.jpg','全书以马克思主义基本原理为指导，对政治学的基本概念和理论体系作出准确和深入浅出的阐释；概念准确清晰，逻辑严谨，文字流畅；可作为高等学校政治学与行政学专业的教科书，也可供思想政治教育、法学等专业使用和社会读者阅读。'),('ISBN019','马克思主义哲学','somebody','高等教育出版社/人民出版社','2009-09-01',356,35.8,'SFHZ','https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3823408837,1924142809&fm=26&gp=0.jpg','全面、深入地阐释了辨证唯物主义和历史唯物主义的基本原理；阐述了马克思主义哲学中国化的最新理论成果“三个代表”重要思想的哲学基础。《马克思主义哲学原理(本科本)》的突出特点在于探索了一种新的哲学公共课教学体系。'),('ISBN020','宗教社会学','[德]马克斯·韦伯','广西师范大学出版社','2011-03-01',504,48,'SFHZ','https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=545327012,3419068025&fm=15&gp=0.jpg','宗教展现了人性的一个基本的和永久的面向，而宗教社会学则试图解释人们身边这一现实存在。宗教社会学中，韦伯的研究举足轻重，尤其在比较宗教社会学方面的学术水准，其奠基地位举世公认！'),('ISBN021','文化产业管理','徐浩然','中国人民大学出版社','2006-07-01',388,39,'SFHZ','https://www.reader8.cn/uploadfile/2017/0521/20170521095433559.jpg','本书摈弃文化产业分类研究的传统套路，从管理的角度，借助经济学的概念，全面阐释文化产业的政策管理、市场机制管理、环境管理、人力资源管理等内容，重点介绍了我国传媒产业、艺术产业、旅游产业和广告产业的政策情况，剖析了目前我国文化市场亟待解决的矛盾现象，并通过消费者行为分析，研究了文化消费的规律和特征。全书图文并茂，上百个图片及表格为这部学术著作增色不少。'),('ISBN022','数据结构','严蔚敏/吴伟民','清华大学出版社','2007-03-01',334,30,'IT','https://www.33lc.com/soft/UploadPic/2010-2/201021111203392817.jpg','本书的前半部分从抽象数据类型的角度讨论各种基本类型的数据结构及其应用；后半部分主要讨论查找和排序的各种实现方法及其综合分析比较。'),('ISBN023','操作系统','WILLIAMSTALLINGS','电子工业出版社','2001-06-01',612,55,'IT','http://image31.bookschina.com/2010/20100814/B4783759.jpg','系统地讲述了操作系统的基本概念、原理和方法，而且以当代最流行的操作系统——Windows7、UNIX和Linux为例，全面清楚地展现了当代操作系统的本质和特点。与《国外计算机科学教材系列•操作系统:精髓与设计原理(第7版)》配套的专用网站，为帮助教师和学生理解书中内容，提供了及时、生动的材料。'),('ISBN024','Java语言程序设计','（美）Y.DanielLiang','机械工业出版社','2011-06-01',604,75,'IT','https://i01picsos.sogoucdn.com/dc10d0c54f66ee65','本书是Java语言的经典教材，多年来畅销不衰。本书全面整合了Java6的特性，采用“基础优先，问题驱动”的教学方式，循序渐进地介绍了程序设计基础、解决问题的方法、面向对象程序设计、图形用户界面设计、异常处理、I/O和递归等内容。此外，本书还全面且深入地覆盖了一些高级主题，包括算法和数据结构、多线程、网络、国际化、高级GUI等内容。'),('ISBN025','软件工程','钱乐秋','清华大学出版社','2007-03-01',402,34.5,'IT','https://images.bookuu.com/book/C/00818/97873021981231547334-fm.jpg','本书从软件开发、维护和管理等方面，系统地介绍了软件工程的概念、原理、过程及主要方法，内容上覆盖了ACM和IEEE最新制定的CC2005中有关软件工程的主要知识点。本书在介绍软件工程的基本慨念和基本原理的基础上，重点介绍软件开发方法和技术，包括经典的和常用的方法'),('ISBN026','数据库系统管理','波斯特','机械工业','2006-08-01',348,48,'IT','https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=66a0e4a4820a19d8cb0383030bc1e5b6/503d269759ee3d6dffe43ade41166d224f4ade81.jpg','本书涵盖了构建数据库前的两个关键主题：数据库设计(规范化)和SQL(查询)。所有主要的数据库系统都涉及这两个主题。规范化说明了如何细致设计数据库以获得DBMS能力。SQL是一种标准查询语言，事实上用于应用程序开发的每一步。'),('ISBN027','人工智能','罗素','清华大学出版社','2013-11-01',918,128,'IT','http://pic174.nipic.com/file/20180727/27198749_113716611000_2.jpg','详细介绍了人工智能的基本概念、思想和算法，还描述了其各个研究方向最前沿的进展，同时收集整理了详实的历史文献与事件。'),('ISBN028','物联网导论','刘云浩','科学出版社','2010-12-01',366,45,'IT','https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=3f8dc576319b033b2c88fbdc2df551ee/38dbb6fd5266d016e283465a922bd40735fa352e.jpg','从物联网的感知识别层、网络构建层、管理服务层和综合应用层这4层分别进行阐述，深入浅出地为读者拨开萦绕于物联网这个概念的重重迷雾，引领求知者渐渐步入物联网世界，帮助探索者把握第三次IT科技浪潮的方向。物联网是一个基于互联网、传统电信网等信息承载体，让所有能够被独立寻址的普通物理对象实现互联互通的网络。它具有普通对象设备化、自治终端互联化和普适服务智能化3个重要特征。'),('ISBN029','移动应用程序设计','[美]TheresaNeil/There','人民邮电出版社','2013-01-01',206,49,'IT','https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=e71954af0455b3199cf985737b92e51b/55e736d12f2eb938d38a625cdb628535e4dd6fbc.jpg','这本简要的手册提供了70多种移动应用设计模式作为参考，包括了从当前iOS、Android、BlackBerry、WebOS、WindowsMobile以及Symbian平台中提取的超过400张的应用截图。'),('ISBN030','生物学概论','李堃宝','高等教育出版社','2011-06-01',210,45,'SMKX','https://p1.ssl.qhmsg.com/t01307f3426d5e97e0b.jpg','《普通高等教育\"十一五\"国家级规划教材:生物学概论》以生命现象与生命活动为主线，根据生命的主要结构层次，按照分子-细胞-代谢-个体-群体-生物圈的顺序，来介绍生物有机体的结构与功能、稳态、发育、遗传、适应、进化与生态等方面的基本概念与原理。《普通高等教育\"十一五\"国家级规划教材:生物学概论》共7篇26章，分别介绍了细胞和遗传、生物的结构与功能、生命活动的调节、生殖与发育、生物多样性、生命自然史以及生物与环境。为了提高教学适用性，《普通高等教育\"十一五\"国家级规划教材:生物学概论》特配数字课程，将彩图和拓展性知识放于其上，更凸显了生物学知识丰富的特点。\n\n本书可作为高等学校生物科学类、农林、医学'),('ISBN031','作物育种原理','杨光圣，员海燕','科学出版社','2009-08-01',240,35,'SMKX','http://img3m0.ddimg.cn/45/21/24025860-1_w_2.jpg','《作物育种原理》共20章，包括育种目标、种质资源、作物繁殖方式及其育种特点、传统作物育种理论与方法、生物技术育种理论与方法、抗逆性和品质等性状育种方法、区域试验与良种繁育、作物育种田间试验技术等。'),('ISBN032','数量遗传学导论','储明星','中国农业科技出版社','1905-06-22',120,80,'SMKX','https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=826cc361e9f81a4c2632ebcfef110764/a5c27d1ed21b0ef4958ae94bdfc451da81cb3e40.jpg','本书全面系统地介绍了数量遗传学的基本原理。全书由两大部分组成。第一部分包括1-5章，主要描述生物群体的遗传特性，被称为\"群体遗传学\";第二部分包括6-12章，主要描述生物数量性眷恋异并引入与度量的遗传特性有关的概念，被称为\"数量遗传学\"或\"统计遗传学\"。'),('ISBN033','现代分子生物学','朱玉贤','高等教育出版社','2013-12-01',215,48,'SMKX','https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=992d5b2cc9177f3e1034fb0b48f45cfa/d6ca7bcb0a46f21ff6ec97c9f6246b600d33ae54.jpg','《“十二五”普通高等教育本科规划教材：现代分子生物学（第4版）》分11章，分别对染色体结构、DNA的复制形式与特点、DNA的转座、遗传密码的破译、蛋白质的合成和运转、基因表达调控的原理、癌症与癌基因活化、免疫缺陷病毒（HIV）的分子机制等现代分子生物学基本问题做了全面系统的分析，其中第3、4两章回顾了从DNA到RNA以及从mRNA到蛋白质的生物信息流，第7、8两章分别叙述了参与原核、真核细胞基因表达调控的各种元件，探讨了DNA甲基化、蛋白质磷酸化、乙酰化修饰及各种不同环境因子对基因活性和功能的影响，第9、10两章集中讨论了疾病与人类健康、基因与发育等重要生命现象的分子生物学基础，第11章讨论了'),('ISBN034','微生物学教程','周德庆','高等教育出版社','2013-03-01',230,35,'SMKX','http://img3m4.ddimg.cn/96/21/25292814-1_l_3.jpg','全书内容设计既重视基本操作的全面训练，又突出了新进展、新重点，还注意对学生学习兴趣、综合能力、研究能力和创新能力的培养。内容涵盖显微镜技术，微生物形态观察，培养基配制，消毒与灭菌，生长繁殖的测定，菌种的分离、纯化、鉴定、保藏，遗传变异与育种，分子微生物学，病毒学与免疫学基本技术，以及与食品、发酵、环境、土壤和生物防治等有关的应用微生物学实验。此外，书后还附有珍稀和有较大参考价值的附录16个。与本书配套的数字课程网站中，载有实验相关的图像资料。'),('ISBN035','生物专业英语','周延清，陈晓春','科学出版社','2018-03-01',170,27,'SMKX','https://img12.360buyimg.com/n1/14517/ccd7500e-fa4f-419b-84ea-6d52df53c7a8.jpg','本书根据作者在普通生物学双语教学实践与科研中查阅、撰写生物学专业英语文章的经验体会编写而成，包括生物学专业知识与技术、科技英语翻译技巧和专业科技论文写作技巧三篇。第一篇涵盖生物学概论、植物学、动物学、微生物学、遗传学、细胞生物学、细胞工程与克隆、发酵工程、生物化学、酶工程、分子生物学、基因工程和转基因食品、基因组学、生物信息学、系统生物学和生态学方面的内容，分为16个单元。每个单元后附英汉对照词语和练习题，每隔两个单元有一次口语表达活动。第二篇包括科技英语行文常规、习惯表达法、翻译原则和实例。'),('ISBN036','生物统计学','张勤','高等教育出版社','2011-07-01',230,28,'SMKX','https://img14.360buyimg.com/n1/17842/392a0ba8-474c-4763-863a-14fe98626498.jpg','生物统计学是一门探讨如何从事生物学实验研究的设计、取样、分析、资料整理与推论的科学。本书内容主要包括资料的描述性统计分析、*变量与概率分布、统计推断概述、对单个和两个总体平均数的假设检验、方差分析、简单相关与回归、多元线性回归与相关、非线性回归、协方差分析、分类资料的假设检验、非参数检验、试验设计与抽样调查等。\n'),('ISBN037','进化生物学','沈银柱，黄占景','高等教育出版社','2003-01-01',280,35,'SMKX','https://p1.ssl.qhmsg.com/t011f5016a5e890fdf9.jpg','《全国高等学校\"十二五\"生命科学规划教材:进化生物学(第3版)》吸收了最近几年进化生物学关于地球上的生命起源、古生物学、分子古生物学、分子人类学、进化的分子基础和人类的起源与进化等诸多方面的最新研究成果，以及国外进化生物学的部分教材，将现代综合进化论与现代分子生物学的研究成果融为一体，从生物与环境、微观与宏观、表型进化与遗传系统进化的辩证统一关系出发，阐明生物界进化发展的机制、规律，以及如何运用这些规律更好地服务于人类社会。《全国高等学校\"十二五\"生命科学规划教材:进化生物学(第3版)》相对简要地介绍了达尔文的自然选择和人工选择的理论与实践，同时又突出了对达尔文学说的补充和发展。为扩大学生的专'),('ISBN038','发育生物学','张远强','人民出版社','2007-07-01',180,24,'SMKX','http://img3.youlu.net/pic/book/l/9787117087490057D5B6.jpg-l','2005年底，全国高等医药教材建设研究会与卫生部教材办公室根据国内医学教育与临床医学发展的需要，组织专家充分论证后，决定组织编写五年制临床医学生殖医学方向卫生部规划教材，《发育生物学》是该套系列教材之……'),('ISBN039','植物生理学','刘佃林','高等教育出版社','2009-06-01',210,33,'SMKX','https://p1.ssl.qhmsg.com/t01f6b00904b773e401.jpg','植物生理学是生命科学的基础科学之一。本书编者参考了国际上最近几年较通行的植物生理学教材的章节框架和内容，并尽可能在内容上反映国际上本学科的最新研究成果，以期使内容达到在基础性、包容性、通用性、先进性、参考性等方面的统一。全面阐述了植物生理学的基本概念、基础知识及本学科的前沿进展等，同时还注意将实验技术方法与理论内容有机结合。'),('ISBN040','古代汉语(上)','唐子恒','高等教育出版社','1905-06-12',200,15,'WXY','https://p1.ssl.qhmsg.com/t019f160ed678a11248.jpg','《古代汉语(上)》为广播电视大学中文类和非中文类(选学)使用的古代汉语教材。全书分上，下两册，共24讲。每讲由选文，知识通论、本篇选词综述，思考与练习四部分所组成。使感性知识上升到理性知识，再运用所学知识指导实践，以形成\"选文--知识--训练\"三位一体的格局。选文以散文为主，兼选少量诗词及个别赋体。选文大多是思想健康，语言典范的名篇。选文的编排基本上以时代先后为序，兼顾由浅入深的原则。开头两讲的选文，文字浅显，篇幅短小，思想又好，故置于卷首，以利于入门。为配合文体学习，在后面安排一篇《赤壁赋》。'),('ISBN041','汉语史稿','王力','中华书局','2004-01-01',160,27,'WXY','https://p1.ssl.qhmsg.com/t01afc693453df88969.jpg','汉语史稿，王力著，是作者当年在北京大学讲授\"汉语史\"一课时写的教材，也是我国研究汉语历史发展的第一本专著，后来一直是北京大学中文系汉语专业\"汉语史\"课的主要教材。全书分语音部分;语法发展部分;词汇发展部分。讲述汉语史对象、研究方法、语言的发展分成等。原书三册，今合为一册。王力，中国著名语言学家，字了一，曾就读于清华大学国学研究院，师从梁启超、王国维、赵元任，后留学法国获文学博士学位，归国后历任清华大学、西南联大等校教授。'),('ISBN042','中国现代文学三十年','钱理群等','北京大学出版社','1905-06-20',280,25,'WXY','https://p1.ssl.qhmsg.com/t019e9180cdeac03ad7.png','本编讲述了1917年到1927年间中国现代文学的发展历史，作者以专章的方式分别介绍了新文学发轫时期的思想根源，以及新思想传入时文学界所发生的种种变化和创作潮流，同时将文学的各种题材辟为专章，讲述了中国现代文学第一个十年里小说、散文和诗歌等文学题材如何接受西方文学思潮的影响而产生的变化。作者同时着重介绍了本时期对中国现代文学史具有奠基式的作用的作家及思想家鲁迅的创作的一部分。'),('ISBN043','中国现代小说史','夏志清','复旦大学出版社','2005-07-01',189,60,'WXY','https://p1.ssl.qhmsg.com/t01e497eb082173ca04.jpg','这是一部享誉海内外的学术名著，一部文学批评经典。作者夏志清教授是西方汉学界研究中国现代文学的先行者和权威。'),('ISBN044','山海经校注','袁珂校注','上海古籍出版社','1905-07-06',230,128,'WXY','https://p1.ssl.qhmsg.com/t0131d6e69ef4617068.jpg','本书为袁珂先生在系统研究《山海经》基础之上，经过校勘、考辨、注释，为读者与研究者提供的一部传统文化典籍经典之作。《山海经校注》自出版以来在海内外产生了广泛而深远的影响，并于1984年获四川省哲学社会科学科研一等奖，是研究中国上古图腾社会珍贵史料、领略古代神话传奇的必读著作。'),('ISBN045','中国现代文学史','孔范今','人民教育出版社','1905-06-29',140,68,'WXY','https://p1.ssl.qhmsg.com/t018d1e5f39643dc324.jpg','中国现代文学发端于五四运动时期，但以鸦片战争后的近代文学为其先导。现代文学是新民主主义革命时期现实土壤上的新的产物，同时又是旧民主主义革命时期文学的一个发展。恩格斯说法按照恩格斯的说法，意识形态领域内发生的种种新变革、新学说，“虽然它的根源深藏在经济的事实中”，却又往往以“先驱者传给它而它便由以出发的特定的思想资料作为前提”(注：恩格斯曾多次表示过这类意见。'),('ISBN046','诗集传','（宋）朱熹集传','上海古籍出版社','1905-06-29',220,56,'WXY','https://p1.ssl.qhmsg.com/t0111e0c226f3f557e8.jpg','《诗集传》苏辙的著作，收入《四库全书》。苏辙著《诗集传》二十卷。作者认为，《诗经》中《小序》反复繁重，决非出自一人之辞，怀疑其实际上是毛公之学，卫宏为所集录。故在书中，仅存其发端一言，以下余文则尽行删除，也即作者序中所言:独采其可者见于今《传》，其尤不可者皆明确注明其失在何处。'),('ISBN047','司马迁史记','司马迁','北方文艺出版社','1905-06-29',200,168,'WXY','https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=8ede8ce83dc79f3d8fe1e336829aaa2c/6a63f6246b600c33c0a717df1c4c510fd8f9a1cf.jpg','汉朝司马迁作的《史记》是中国两千年来最伟大的历史名著，其中有许多文学名篇。因为司马迁具有丰富的社会实践、比较进步的历史观点和高度的文学修养，所以他能够审择史料，创设体例，刻画人物，把先秦以来多方面的史实和他当代社会各阶层的形形色色，的动态如买地反映出来，写成这样一部完整丰富的\"通史\"。更因这部书有完密的体例，可以妥贴地安排多方面的史实，于是就被那些由汉朝到清朝的许多史学家所接受和取法，无形中便规定了他们写历史的范式。另一方面，又因这书的内容丰富灿烂，生动地塑造了各种类型的人物形象，反映了社会的复杂生活，于是又被后来历代的文学家奉为典范，在中国文学史上发生了莫大的影响。《史记》像一颗不落的星辰，'),('ISBN048','问题与方法：中国当代文学史研究讲稿','洪子诚','生活·读书·新知三联书店','1905-07-02',231,54,'WXY','https://p1.ssl.qhmsg.com/t014211f97c3bde1c27.jpg','《问题与方法:中国当代文学史研究讲稿》是\"三联讲坛\"文库的一种，由北京三联书店出版于2002年8月。书的前面，有出版社撰写的文库出版\"缘起\"，其中写道:对于孟子而言，\"得天下之英才而教育之\"乃人生乐事之一;对于学子来说，游学于高等学府，亲炙名师教泽，亦是人生善缘。'),('ISBN049','中国现当代文学研究导引','刘俊等','南京大学出版社','1905-06-28',130,42,'WXY','https://p1.ssl.qhmsg.com/t01840792ee3091a660.jpg','中国现当代文学作为一门独立的主干课程进入大学课堂是在1949年以后，它的昂然出现和蓬勃发展无疑与新中国执政者的意识形态密切相关--对现当代文学进行历史梳理和价值评判，既可以从文学的角度历史地证明无产阶级革命的正确性和合法性，同时也可为随之而来的思想运动、思想管理提供有效的借鉴和掌控的手段(历次政治运动每每以当代文学为突破口就充分说明了这一点)。现当代文学所具有的这种与现当代历史和现当代政治密切相关的特性，使中国现当代文学在1949年以后受到了前所未有的高度重视，并迅速成为大学课程中的主要构成'),('ISBN050','翻译理论与实践','马莉','北京大学出版社','2010-04-01',300,20,'WGY','https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=fab602bd7bcb0a4685228c3f53589119/b812c8fcc3cec3fd0a464732d688d43f87942779.jpg','《翻译理论与实践(涉外法律专业)》由五大模块组成：理论篇、技巧篇、基础实践篇、文体篇和法律实践篇。《翻译理论与实践(涉外法律专业)》通过理论阐述、范文示例、篇章分析和相关练习等途径，注重理论、技巧与实践三者的结合，通过大量英汉对比分析，旨在让学生通过本课程了解翻译的历史和主要的理论，掌握基本的翻译技巧，从而进行应用性的翻译实践。《翻译理论与实践(涉外法律专业)》可用作英汉翻译教材，也可供自学或爱好翻译者参考使用。'),('ISBN051','翻译概论','许钧','外语教学与研究出版社','2003-09-01',200,35.9,'WGY','https://m.douban.com/book/subject/3786893/','\n《翻译概论》为翻译硕士专业学位（MTI）专业必修课教材。全书共十章，围绕与翻译息息相关的九个核心问题展开，旨在引导学习者全面认识翻译、理解翻译，对翻译基本理论问题有所了解，加深对翻译职业性质的认识，从而树立正确的翻译观，提高翻译技能。'),('ISBN052','商务翻译','潘惠霞','对外经济贸易大学出版社','2010-09-01',100,22,'WGY','https://baike.sogou.com/m/v10307846.htm','《商务翻译(汉译英)》是专为商务英语本科专业课程体系中的汉译英、英译汉课程专门编写的教材。本教材旨在培养具有扎实的翻译基本功，能在国际环境中熟练从事商务翻译的英语人才。本教材适合于商务英语本科专业三年级学生使用。'),('ISBN053','现代大学英语','杨立民','外语教学与研究出版社','2002-08-01',200,33.9,'WGY','http://baike.sm.cn/item/b81edad6f997488d968b624a84ba3116.html?from=smsc&uc_param_str=dnntnwvepffrgibijbpr','本课程是英语专业一至四年级学生的一门必修课，旨在培养学生的基本英语技能，使其了解中西语言及文化之异同，并在打好坚实的英语语言基础上，培养他们的语言能力和交际能力，使学生在正确、自然而且灵活地掌握本阶段所学的语言的同时，能在恰当的场合随机应变地熟练使用所学语言。'),('ISBN054','简明语法教程','楼光庆','中央广播电视大学出版社','1996-10-01',200,20,'WGY','https://baike.sogou.com/m/v66604600.htm','《简明英语语法教程》根据中央广播电视大学英语专业教学大纲规定的教学目标，基本上采用了传统英语语法的体系，以实用为主，针对性强，使用范围广，旨在通过传授比较系统和完整的英语语法知识，使学生学会运用语法规则指导语言实践，提高实际运用英语的能力'),('ISBN055','语言学概论','王德春','上海外语教育出版社','2000-03-01',150,19,'WGY','https://m.douban.com/book/subject/1107198/','本书共分十六章，系统全面地阐述了语言及其发展、语言学及其发展、语音学、词义学、语法学等等语言学的基本理论。本书内容全面，讲解深入全面、通俗易懂，具有结构严谨、条理清晰、逻辑性强的特点，可作为语言学爱好者、语言学自学者和各种语文工作者的参考书。'),('ISBN056','跨文化交际概论','吴为善/严慧仙','外语教学与研究出版社','2009-04-01',200,30,'WGY','https://m.douban.com/book/subject/3742815/','《商务馆对外汉语专业本科系列教材:跨文化交际概论》力避与外语专业同类教材的重复，努力出新，突出对外汉语专业的特点，体现出学术性、实用性和原创性。在对跨文化交际的基本概念等进行界定后，全书从文化背景与跨文化交际、社会环境与跨文化交际、规范系统与文化过滤、跨文化语用对比分析、跨文化语篇对比分析、非言语行为差异与跨文化交际、性别差异和性别歧视与跨文化交际等角度进行阐述。'),('ISBN057','西方思想经典导读','孙有中','外语教学与研究出版社','2008-09-01',300,23.9,'WGY','https://baike.sogou.com/m/fullLemma?lid=70406996&fromTitle=%E8%A5%BF%E6%96%B9%E6%80%9D%E6%83%B3%E7%BB%8F%E5%85%B8%E5%AF%BC%E8%AF%BB','《西方思想经典》为系列教材之一。本书从古希腊罗马一直追溯到二十世纪，旨在使英语专业的本科生打下初步的西学基础，以便能够深入地了解西方文化，拓宽在西方文化、科学、哲学、美学等人文、社会、自然科学领域的知识，加深对欧美文化的了解，增加对欧美人文脉络的整体把握。通过英语表述西方和中华文化精髓，在更高层次上加强“听说读写译”英语语言基本功，提高跨文化交际能力。'),('ISBN058','英国文学简史','常耀信','南开大学出版社','2006-01-01',200,32,'WGY','https://m.douban.com/book/subject/1725612/','《英国文学简史:南开英美文学精品教材》为南开英美文学精品教材之一，为全英文读物，是英美文学研究专家常耀信先生为广大读者奉献的又一力作。可满足学生学习与考研、教师授课与科研，以及一般性大众阅读等多种需要；它不仅在章节中设置了详细讨论题目，而且在书后配有“注释与参考资料”，列出重点研究成果问世情况，方便查索，有助于构思研究课题。可供本科生了解英国文学发展概貌与基本知识；供研究生精细研读，并助其设计学期论文作业或硕、博士毕业论文题目：供教师提炼教案、讲义；为中青年学者提供深层学术探索参考课题。'),('ISBN059','美国文学简史','常耀信','南开大学出版社','1905-06-30',200,35,'WGY','https://baike.baidu.com/item/%E7%BE%8E%E5%9B%BD%E6%96%87%E5%AD%A6%E7%AE%80%E5%8F%B2/5813370','《美国文学简史》第一版自1990年问世以来，作为教育部选定的高校文科教材及美国文学研究的重要参考书，在国内广泛使用，畅销不衰。全书精述17世纪早期至当今时代的美国文学发展史，评价主要作家及其代表作品，解析引领时代风气或主导作家创作的重要文学思潮和流派等。'),('ISBN060','结构力学','刘世奎','清华大学出版社','2008-09-01',100,29.8,'JZGC','https://baike.baidu.com/item/%E7%BB%93%E6%9E%84%E5%8A%9B%E5%AD%A6/18800982','结构力学(StructuralMechanics)是固体力学的一个分支，它主要研究工程结构受力和传力的规律，以及如何进行结构优化的学科。结构力学研究的内容包括结构的组成规则，结构在各种效应（外力，温度效应，施工误差及支座变形等）作用下的响应，包括内力（轴力，剪力，弯矩，扭矩）的计算，位移（线位移，角位移）计算，以及结构在动力荷载作用下的动力响应（自振周期，振型）的计算等。结构力学通常有三种分析的方法：能量法，力法，位移法，由位移法衍生出的矩阵位移法后来发展出有限元法，成为利用计算机进行结构计算的理论基础。'),('ISBN061','理论力学','范钦珊','清华大学出版社','2014-01-09',200,32,'JZGC','https://baike.baidu.com/item/%E7%90%86%E8%AE%BA%E5%8A%9B%E5%AD%A6/15199084','理论力学是研究物体机械运动的基本规律的学科，力学的一个分支。它是一般力学各分支学科的基础。理论力学通常分为三个部分：静力学、运动学与动力学。静力学研究作用于物体上的力系的简化理论及力系平衡条件；运动学只从几何角度研究物体机械运动特性而不涉及物体的受力；动力学则研究物体机械运动与受力的关系。动力学是理论力学的核心内容。理论力学的研究方法是从一些由经验或实验归纳出的反映客观规律的基本公理或定律出发，经过数学演绎得出物体机械运动在一般情况下的规律及具体问题中的特征。理论力学中的物体主要指质点、刚体及刚体系，当物体的变形不能忽略时，则成为变形体力学（如材料力学、弹性力学等）的讨论对象。静力学与动力学是'),('ISBN062','材料力学','张耀、曹小平、王春芬、张文辰','清华大学出版社','2015-09-01',150,30,'JZGC','https://baike.baidu.com/item/%E6%9D%90%E6%96%99%E5%8A%9B%E5%AD%A6/18705355','材料力学（mechanicsofmaterials）是研究材料在各种外力作用下产生的应变、应力、强度、刚度、稳定和导致各种材料破坏的极限。一般是机械工程和土木工程以及相关专业的大学生必须修读的课程，学习材料力学一般要求学生先修高等数学和理论力学。材料力学与理论力学、结构力学并称三大力学。材料力学的研究对象主要是棒状材料，如杆、梁、轴等。对于桁架结构的问题在结构力学中讨论，板壳结构的问题在弹性力学中讨论。材料力学是固体力学的一个基础分支。它是研究结构构件和机械零件承载能力的基础学科。其基本任务是：将工程结构和机械中的简单构件简化为一维杆件，计算杆中的应力、变形并研究杆的稳定性，以保证结构能承受预'),('ISBN063','混凝土结构原理与设计','熊丹安 赵亮','武汉理工大学出版社','2010-07-01',160,22.5,'JZGC','https://baike.sogou.com/m/v74122890.htm','《混凝土结构原理》本教材根据全国高等学校建筑科学专业指导委员会审定的教学大纲要求编写，该书课程为浙江省省级精品课程,内容包括：钢筋混凝土结构组成材料的力学性能，结构设计的基本方法，受弯、受剪、受压、受拉、受扭及组合受力构件的截面设计原理和基本构造要求，裂缝和宽度验算方法，以及预应力混凝土的基本原理。除了传统的教学内容，教材中也加入了行业先进技术成果，如与混凝土结构相结合的新材料、混凝土结构耐久性等方面的知识。'),('ISBN064','钢结构原理设计','赵风华，齐永胜主编','重庆大学出版社','2010-06-01',300,30.5,'JZGC','https://baike.baidu.com/item/%E9%92%A2%E7%BB%93%E6%9E%84%E5%8E%9F%E7%90%86%E4%B8%8E%E8%AE%BE%E8%AE%A1/9428876','《钢结构原理》为应用型本科院校土木工程专业的专业课教材。全书共分7章，包括：绪论、钢结构的材料、轴心受力构件、受弯构件（梁）、拉弯构件和压弯构件、钢结构的焊缝连接、钢结构的紧固件连接。书中列举了较完整的计算例题，每章附有学习要点、思考题和习题，书末附有必要的表格和计算公式。'),('ISBN065','工程材料','朱张校、姚可夫、王昆林、吴运新','清华大学出版社','2013-01-14',100,36,'JZGC','https://baike.baidu.com/item/%E5%B7%A5%E7%A8%8B%E6%9D%90%E6%96%99%EF%BC%88%E7%AC%AC5%E7%89%88%EF%BC%89/12021386','用于机械、车辆、船舶、建筑、化工、能源、仪器仪表、航空航天等工程领域的材料。用来制造工程构件和机械零件，也包括一些用于制造工具的材料和具有特殊性能的材料。工程材料一般都将工程材料按化学成分分为金属材料、非金属材料、高分子材料和复合材料四大类。本书系统地介绍了机械工程常用的材料及其基础理论，从材料的共性上全面介绍了金属、陶瓷、高分子的结构特点，将各种材料的性能、制备、变形等进行了对比介绍，介绍了工程材料的破坏形式及其选用。全书共6章，内容包括工程材料的分类与性能要求、金属学基础、钢的热处理及表面改性、常用金属材料、其他工程材料、机械零件的选材。'),('ISBN066','房屋建筑学','聂洪达','北京大学','2007-02-01',110,36,'JZGC','https://m.douban.com/book/subject/2120628/','《房屋建筑学》是由聂洪达与郄恩田所著，北京大学出版社出版的书籍。该书系统介绍了民用与工业建筑设计原理与构造方法的相关内容。全书共分15章，包括概论、建筑平面设计、建筑剖面设计、建筑体型和立面设计、常用建筑结构概述、建筑防火与安全疏散、民用建筑构造概述、基础与地下室、墙体、楼地层及阳台、雨篷、屋顶、楼梯等垂直交通设施、门窗、变形缝、工业建筑设计概论，附录配有建筑设计施工常用的一些图纸的名称。为使学生能够综合运用所学的专业理论知识，解决实际工程问题，该书每章后附有思考题。部分章节后附有课程设计指导书与任务书。'),('ISBN067','建筑制图','罗敏雪','中国科学技术大学出版社\n','2008-09-01',200,28,'JZGC','https://baike.baidu.com/item/%E5%BB%BA%E7%AD%91%E5%88%B6%E5%9B%BE/19419315','建筑制图是为建筑设计服务的，因此，在建筑设计的不同阶段，要绘制不同内容的设计图。在建筑设计的方案设计阶段和初步设计阶段绘制初步设计图，在技术设计阶段绘制技术设计图，在施工图设计阶段绘制施工图。清代主持宫廷建筑设计的样式雷家族绘制的大量建筑图样，是中国古代建筑制图的珍品。'),('ISBN068','土力学','东南大学、浙江大学、湖南大学、苏州科技学','中国建筑工业出版社','2005-12-01',230,27,'JZGC','https://m.douban.com/book/subject/1738677/','《土力学》(第2版)共分为11章，主要内容为：土的组成，土的物理性质及分类，土的渗透性及渗流，土中应力，土的压缩性，地基变形，土的抗剪强度，土压力，地基承载力，土坡和地基的稳定性，土在动荷载作用下的特性。'),('ISBN069','建筑工程定额与预算','赵亮','华中科技大学出版社','2010-08-01',260,32,'JZGC','https://baike.baidu.com/item/%E5%BB%BA%E7%AD%91%E5%B7%A5%E7%A8%8B%E5%AE%9A%E9%A2%9D%E4%B8%8E%E9%A2%84%E7%AE%97/4163408','《建筑工程定额与预算》是按照建筑类高等职业技术教育有关专业的教学要求，以现行的《建筑工程定额》《建设工程工程量清单计价规范》（GB50500一2008）为依据，以工程实例为重点，以加强实践性和实用性为目标编写而成，重点介绍了建筑工程造价的基本知识、建筑工程定额编制与应用、一般土建施工图预算的编制、工程量清单与计价、建筑工程概算、决算及预算审查等内容。《建筑工程定额与预算》可以作为高职工程造价、工程管理等专业的教材或参考书，也可作为相关岗位培训和工程技术人员的教材或参考书。'),('ISBN070','体育教学论','毛振明','中国铁道出版社','2000-08-01',417,32.8,'TY','https://img3.doubanio.com/view/subject/l/public/s5724055.jpg','《体育教学论》的特色如下：一、初步构建了体育教学论的框架和内容。本教材为编写工作设定的第一个原则是“学科性原则”，编写组内部称为“扬弃一般教学论原则”，是针对过去体育教学论照搬一般教学论框架和内容，体育教学论缺乏体育性、缺乏实用性的缺陷，在框架上“为整体和清楚地描述和阐述体育教学现象服务”；在内容上要“阐述体育教育”而不是“阐述教育”，避免用一般教学论的叙述和编写体例来套体育教学论。\n\n二、努力构建具有结构性的“理论”\n\n本教材为编写工作设定的第二个原则是“理论性原则”，编写组内部称为“构建\'理论\'，摆脱\'说法\'的原则”，就是要从“结构”、“关系”、“与相关事物的类比”、“层次”、“轻重”等具'),('ISBN071','中国职业体育评述','鲍明晓','人民体育出版社','2010-03-01',232,30,'TY','https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268/sign=a987022e6d224f4a5799741531f69044/37d3d539b6003af321fba868352ac65c1038b670.jpg','《中国职业体育评述》是目前国内学术界唯一对改革开放30年我国新生职业体育改革与发展现状作系统梳理的著作。笔者深入我国的足球、篮球、排球、乒乓球四个项目的联赛进行系统调研，对当前我国职业体育发展的支撑和约束条件进行全面分析，并在此基础上提出了新时期我国职业体育发展的思路、原则、目标、路径和加快发展的对策建议。在编撰的体例上，《中国职业体育评述》没有采取传统的篇章结构，而是对大家普遍关注且争议颇多的36个中国职业体育焦点问题，以专题的形式，一一剖析、解读。其目的是删繁就简，提高全书的可读性。\n\n'),('ISBN072','体育社会学','卢元镇','高等教育出版社','2013-04-01',232,29.8,'TY','https://img3.doubanio.com/view/subject/l/public/s6293821.jpg','《体育社会学(第2版)》是高等学校体育教育专业基础理论课程教材。全书由绪论和20章组成。包括社会学概述，体育社会学研究方法,体育与社会结构、社会运行,体育人口,体育群体与体育社团,体育与文化、教育、科学技术和大众传播群媒介的关系,竞技体育,社会体育,体育改革的社会学分析,体育与宗教、民族,体育与妇女、老龄社会的关系,生活方式中的体育,社会现代化过程中的体育,以及体育社会问题等。全书结构完整,材料翔实,体例合理。《体育社会学(第2版)》可作为体育人文社会学硕士生,以及体育管理、体育新闻、社会体育、体育教育等本、专科专业的教科书,也可供广大体育教师和体育爱好者学习参考。'),('ISBN073','高校体育','孙克成','中国铁道出版社','2008-08-01',262,28,'TY','https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268/sign=4a80bf753a87e9504217f46a2839531b/b90e7bec54e736d1d3ae3cbe9b504fc2d46269c3.jpg','《高校体育》简介：体育是一门实践性很强的学科，更好地指导学生理论联系实际，不盲目运动，不鲁莽训练，是《高校体育》编写的主要目的。本教材向学生传授系统的体育理论知识，同时也传授运动技能，使学生学会科学锻炼身体的方法，养成良好的锻炼习惯。《高校体育》可作为高等学校的体育课教材，也可供高职、高专或中等职业技术学校师生选用。\n\n'),('ISBN074','体育与健康','李印东，农宝嘉，王玉琳','化学工业出版社','2003-08-01',208,24,'TY','https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268/sign=9fe26d8997dda144da096bb48ab6d009/a6efce1b9d16fdfa3c640f74b48f8c5494ee7b24.jpg','《全国高等学校公共体育课教材:体育与健康》讲述了大学生是未来祖国现代化建设的栋梁之才，担负着我国在21世纪伟大复兴的历史重任。只有体魄强健，才能精力充沛地从事学习和工作，也才能为国家作出更大的贡献，因此牢牢树立健康的意识，养成锻炼的习惯，形成良好的生活方式对袪病健体、增进健康和生活幸福等具有长远的重要影响。'),('ISBN075','运动生物化学','谢敏豪','人民体育出版社','2013-06-01',323,69,'TY','https://img3.doubanio.com/view/subject/l/public/s5991892.jpg','《运动生物化学》是生物化学的分支，体育科学学科之一，也是体育科学中应用基础性的学科。运动生物化学是应用物理学、化学和生物学的方法，从分子水平研究人体运动时机体的化学组成、化学变化、能量转变和运动能力的发展与变化，其相关的研究与实践的成果已被广泛应用于竞技体育与大众健身运动中。同时，运动生物化学已成为体育类许多本科专业的必修课。'),('ISBN076','体育保健学','姚鸿恩/国别','高等教育出版社','2006-07-01',430,34.4,'TY','https://img1.doubanio.com/view/subject/l/public/s5777589.jpg','《体育保健学》由国家教育部全国普通高等学校体育教学指导委员会顾问、华南师范大学博士生导师邓树勋教授审定。《体育保健学》选择了实用和前沿的教学内容，较全面地介绍了体育保健学的基本理论、基础知识，并突出了基本技能的培养。本书内容包括：健康概述，运动与环境，运动与营养，不同人群的体育卫生，运动性疲劳等。《体育保健学》除作为体育教育专业本科学生的指定教学用书外，还可以用作高等学校、中等学校体育教师、教练员、体育社会指导员和有关医务人员的业务进修参考用书。\n\n'),('ISBN077','体育科研方法','杨秀芹','北京体育大学出版社','2008-03-01',195,28,'TY','https://img1.doubanio.com/view/subject/l/public/s8456137.jpg','《体育科研方法》在总结前人成就的基础上，有重点地介绍了国内外体育科研理论与方法的最新成果，力求体现教材的先进性、新颖性和科学性、体现体育科研方法的前沿信息。具体内容包括体育科学研究概述、体育科学研究的功能特点与发展趋势、科学研究方法、分析资料的方法、SPSS在数据处理中的应用等。该书可供各大专院校作为教材使用，也可供从事相关工作的人员作为参考用书使用。\n\n'),('ISBN078','运动解剖学图谱','顾德明/缪进昌/丁誉声','人民体育出版社','2005-12-01',291,60,'TY','https://img1.doubanio.com/view/subject/l/public/s27240338.jpg','《运动解剖学图谱(第3版)》是一本拥有1000余幅彩图，配以简明文字说明的实用性图谱。全书中主要描述人体运动的执行体系（运动器官系统）的骨、骨连结《关节）和肌肉（骨骼肌）的形态结构和机能，以关节为中心结合体育动作描述关节的运动，并对运动关节的肌肉机能进行具体的分析，提出锻炼主要肌肉的手段和方法。在介绍骨、骨连结、骨骼肌的基础上，对上肢、下肢、头颈、躯干等部分的关节和骨骼肌的机能做了综合性概述，并对肌肉工作进行了分析。为了了解人体的整体性，对人体运动的管理、协调、保证体系（消化、呼吸、泌尿、循环、神经、感官、内分泌等器官系统）用彩图做了简明介绍。\n\n'),('ISBN079','运动生理学','王瑞元//苏全生','人民体育出版社','2012-02-01',587,65,'TY','https://img3.doubanio.com/view/subject/l/public/s23754556.jpg','《体育院校通用教材•运动生理学》内容简介：我国运动生理学的研究和教学有一定的传统。改革开放以来，随着一批中青年学科带头人及研究骨干的脱颖而出和迅速成长，运动生理学领域已经形成了一支富有朝气和团结进取的队伍，在几个主要的分支取得了一系列重要的教学和研究成果，并培养了一批新生力量。');

/*Table structure for table `tb` */

DROP TABLE IF EXISTS `tb`;

CREATE TABLE `tb` (
  `tbid` int(10) NOT NULL AUTO_INCREMENT,
  `bid` varchar(50) NOT NULL,
  `bName` varchar(50) NOT NULL,
  `loginName` varchar(50) NOT NULL,
  `bCount` int(10) NOT NULL,
  PRIMARY KEY (`tbid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `tb` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tName` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `loginName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键（昵称）',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` char(4) DEFAULT NULL COMMENT '性别:男 女)',
  `phoneNumber` varchar(50) DEFAULT NULL,
  `backImg` varchar(50) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`loginName`),
  UNIQUE KEY `PK__EASYBUY___C96109CC3A81B327` (`loginName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
