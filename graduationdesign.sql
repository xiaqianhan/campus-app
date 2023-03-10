-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: graduationdesign
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ev_activety`
--

DROP TABLE IF EXISTS `ev_activety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_activety` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '活动名称',
  `sponsor` varchar(255) NOT NULL COMMENT '发起人',
  `place` varchar(255) NOT NULL COMMENT '活动地点',
  `start_time` varchar(255) NOT NULL COMMENT '活动开始时间',
  `stop_time` varchar(255) NOT NULL COMMENT '活动结束时间',
  `timers` varchar(255) NOT NULL DEFAULT '8：00—18：00' COMMENT '活动具体时间',
  `sponsor_username` varchar(255) NOT NULL COMMENT '发起人账户',
  `content` text NOT NULL COMMENT '活动具体内容',
  `num` int DEFAULT '0' COMMENT '活动参与人数',
  `number` varchar(255) NOT NULL COMMENT '活动编号',
  PRIMARY KEY (`id`),
  KEY `ev_activety_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='活动列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_activety`
--

LOCK TABLES `ev_activety` WRITE;
/*!40000 ALTER TABLE `ev_activety` DISABLE KEYS */;
INSERT INTO `ev_activety` VALUES (5,'草坪音乐节','梦想吉他社','图书馆前草坪','2023-02-11','2023-02-11','18:00——21:00','123456','作为青春的代言人，大学生总洋溢着年轻的活力，充满着狂热的激情，对新奇有趣的大型活动必定会踊跃参与。音乐自殷商以来就是被广为盛行的娱乐活动，其实最擅长于抒发情感，最能拨动人心弦的艺术形式，它借助声音这个媒介来真实地传达，表现和感受审美情感。重庆城市科技学院梦想吉他社举办这次大学生音乐节是能够让大学生们感受到音乐的魅力，丰富娱乐生活，借音乐抒发情感，用音乐对过去人生的总结与怀念。',0,'53231463'),(6,'大学生联谊晚会','大学生艺术团','操场','2023-02-14','2023-02-15','08:00——11:00','123456','大一新生刚步入大学生活的殿堂，对大学生活充满着激情但又很迷茫，为了让他们能更好的完成大学的学业并且让大学生活更有意义，特展开此次联谊活动。通过这次活动，启开大一同学大学生活的新篇章，使他们能够激情飞扬，目标明确的开始自己的新生活，谱写人生的新辉煌！',0,'92106265'),(8,'趣味运动会','人工智能与大数据学院团总支学生会','操场','2023-02-22','2023-02-22','14:00——18:00','123456','本次趣味运动会的宗旨在于增强各个部门]的凝聚力,展示出新时代大学生的蓬勃朝气\n和竞技热情。弘扬奥运精神,增加团队凝聚力,在这个充满活力与光明的时代,有挑战才\n有财富。本次的趣味运动会是丰富校社联各个成员的课余生活,给每一位学生展现自我的\n机会。在学习之余好好锻炼身体,注意各种才能的挖掘、培养与展示,同时增加同学之间、\n学院之间的交流、并促进友谊为美好的大学生活留下灿烂的一笔财富。\n',0,'78362322'),(12,'蓝桥杯预赛','人工智能与大数据学院','A3202','2023-02-21','2023-02-23','09:00——17:00','123456','程序设计大赛',0,'20919841');
/*!40000 ALTER TABLE `ev_activety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_deanmailbox`
--

DROP TABLE IF EXISTS `ev_deanmailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_deanmailbox` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` int NOT NULL COMMENT '会话编号',
  `username` varchar(255) NOT NULL COMMENT '用户账号',
  `nickname` varchar(255) NOT NULL COMMENT '用户昵称',
  `type` varchar(255) NOT NULL COMMENT '用户类型',
  `time` varchar(255) NOT NULL COMMENT '发送时间',
  `user_pic` text COMMENT '用户头像',
  `content` text NOT NULL COMMENT '邮箱发送信息内容',
  `isreply` int NOT NULL DEFAULT '0' COMMENT '是否回复此消息',
  PRIMARY KEY (`id`),
  KEY `ev_deanMailbox_id_IDX` (`id`,`tid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='院长邮箱模块';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_deanmailbox`
--

LOCK TABLES `ev_deanmailbox` WRITE;
/*!40000 ALTER TABLE `ev_deanmailbox` DISABLE KEYS */;
INSERT INTO `ev_deanmailbox` VALUES (1,14785236,'123456','无敌暴龙神','学生','2021-10-22 11:24:32',NULL,'阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴',1),(2,2249155,'1234','无敌暴龙神','1','2023-02-12 17:23:57',NULL,'食堂饭菜打得太少，吃不饱',1),(3,89716149,'1234','无敌暴龙神','1','2023-02-12 23:38:24',NULL,'校长，宿舍太挤了，换成四人寝吧',0);
/*!40000 ALTER TABLE `ev_deanmailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_forum`
--

DROP TABLE IF EXISTS `ev_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_forum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation` int NOT NULL COMMENT '话题编号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发布人账号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户昵称',
  `type` varchar(255) NOT NULL COMMENT '用户类型',
  `time` varchar(255) NOT NULL COMMENT '发布时间',
  `user_pic` text COMMENT '用户头像',
  `thumbsUp` int DEFAULT '0' COMMENT '点赞数量',
  `commentNum` int DEFAULT '0' COMMENT '评论数量',
  `forwardNum` int DEFAULT '0' COMMENT '转发量',
  `content` text NOT NULL COMMENT '会话内容',
  `fabulous` int NOT NULL DEFAULT '1' COMMENT '是否点赞，1为未点赞，0为点赞',
  `forward` int NOT NULL DEFAULT '1' COMMENT '是否转发，1为未转发，0为转发',
  PRIMARY KEY (`id`),
  KEY `forum_id_IDX` (`id`) USING BTREE,
  KEY `forum_conversation_IDX` (`conversation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='论坛列表数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_forum`
--

LOCK TABLES `ev_forum` WRITE;
/*!40000 ALTER TABLE `ev_forum` DISABLE KEYS */;
INSERT INTO `ev_forum` VALUES (1,87546325,'1234','无敌暴龙神','1','2021-10-22 11:24:32','1',132,2,16,'阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴',1,1),(3,1787280,'123456','二仙桥打野','3','2023-02-11 23:35:47','3',4,0,2,'七日不见，如隔一周。',1,1),(4,48745552,'123456','二仙桥打野','3','2023-02-12 16:44:33','3',4,0,2,'垃圾模拟器',1,1),(5,4816773,'123456','二仙桥打野','3','2023-02-15 11:57:58','3',2,0,1,'这里是实验数据',1,1);
/*!40000 ALTER TABLE `ev_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_forumdetailed`
--

DROP TABLE IF EXISTS `ev_forumdetailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_forumdetailed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation` int NOT NULL COMMENT '话题列表编号',
  `username` varchar(255) NOT NULL COMMENT '用户账号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户昵称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户类型',
  `time` varchar(255) NOT NULL COMMENT '发表时间',
  `user_pic` text COMMENT '用户头像',
  `content` text NOT NULL COMMENT '用户发表评论信息',
  PRIMARY KEY (`id`),
  KEY `ev_forumDetailed_id_IDX` (`id`,`conversation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_forumdetailed`
--

LOCK TABLES `ev_forumdetailed` WRITE;
/*!40000 ALTER TABLE `ev_forumdetailed` DISABLE KEYS */;
INSERT INTO `ev_forumdetailed` VALUES (1,87546325,'123456','二仙桥上单','3','2021-10-22 11:24:32','3','啊吧啊吧啊吧啊吧啊吧啊吧啊吧啊吧'),(2,87546325,'123456','二仙桥打野','3','2023-02-11 23:30:50','3','嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿'),(3,87546325,'123456','二仙桥打野','3','2023-02-11 23:31:41','3','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈'),(4,1787280,'123456','二仙桥打野','3','2023-02-11 23:37:11','3','说得好，如果你这句话没错的话 应该是对的。'),(5,1787280,'123456','二仙桥打野','3','2023-02-11 23:37:36','3','听君一席话如听一席话'),(6,1787280,'123456','二仙桥打野','3','2023-02-15 17:43:23','3','嘿嘿和'),(7,87546325,'123456','二仙桥打野','3','2023-02-17 14:40:00','3','11111111111'),(8,87546325,'123456','二仙桥打野','3','2023-02-20 11:28:49','3','哈哈哈');
/*!40000 ALTER TABLE `ev_forumdetailed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_myemail`
--

DROP TABLE IF EXISTS `ev_myemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_myemail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` int NOT NULL COMMENT '会话编号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发送时间',
  `user_pic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '用户头像',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱发送信息内容',
  `issend` int NOT NULL COMMENT '此消息为发送消息还是回复消息，1为发送，2为回复',
  PRIMARY KEY (`id`),
  KEY `ev_deanMailbox_id_IDX` (`id`,`tid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='我的邮箱模块';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_myemail`
--

LOCK TABLES `ev_myemail` WRITE;
/*!40000 ALTER TABLE `ev_myemail` DISABLE KEYS */;
INSERT INTO `ev_myemail` VALUES (2,14785236,'1234','无敌暴龙神','管理员','2023-02-12 23:11:32',NULL,'嘿嘿嘿',2);
/*!40000 ALTER TABLE `ev_myemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_notice`
--

DROP TABLE IF EXISTS `ev_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `timer` varchar(255) NOT NULL COMMENT '发表时间',
  `likes` int DEFAULT '0' COMMENT '点赞人数',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发布人员',
  `is_delect` int DEFAULT '0' COMMENT '是否删除',
  `type` int NOT NULL COMMENT '通知类型：1为紧急通知，2为学生评选，3为会议安排，4为工作动态，5为教师评选',
  PRIMARY KEY (`id`),
  KEY `ev_notice_id_IDX` (`id`,`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='讯息通知列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_notice`
--

LOCK TABLES `ev_notice` WRITE;
/*!40000 ALTER TABLE `ev_notice` DISABLE KEYS */;
INSERT INTO `ev_notice` VALUES (2,'优秀教师奖章评选通知','根据学院教学安排，阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴','2021-10-23',0,'院长',0,5),(3,'优秀学生奖章评选通知','根据学院教学安排，阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴','2022-10-23',0,'院长',0,2),(4,'关于学校爆破通知','根据教育局安排，由于校区老旧，于2023-10-23日进行爆破工作','2023-2-7',0,'院长',0,1);
/*!40000 ALTER TABLE `ev_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_participate_active`
--

DROP TABLE IF EXISTS `ev_participate_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_participate_active` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '活动添加用户名称',
  `activety_name` varchar(255) NOT NULL COMMENT '参加活动的活动名称',
  `timer` varchar(255) NOT NULL COMMENT '活动添加时间',
  `activety_number` int NOT NULL COMMENT '参加的活动编号',
  PRIMARY KEY (`id`),
  KEY `ev_participate_active_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='个人参与报名的活动列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_participate_active`
--

LOCK TABLES `ev_participate_active` WRITE;
/*!40000 ALTER TABLE `ev_participate_active` DISABLE KEYS */;
INSERT INTO `ev_participate_active` VALUES (4,'123456','草坪音乐节','18:00——21:00',53231463),(11,'123456','大学生联谊晚会','08:00——11:00',92106265),(13,'123456','趣味运动会','14:00——18:00',78362322),(17,'1234','趣味运动会','14:00——18:00',78362322);
/*!40000 ALTER TABLE `ev_participate_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ev_users`
--

DROP TABLE IF EXISTS `ev_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `type` int NOT NULL COMMENT '用户类型，1为学生，2为教师，3为校长',
  `user_pic` int DEFAULT '1' COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  KEY `ev_users_id_IDX` (`id`,`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_users`
--

LOCK TABLES `ev_users` WRITE;
/*!40000 ALTER TABLE `ev_users` DISABLE KEYS */;
INSERT INTO `ev_users` VALUES (3,'1234','1234567','无敌暴龙神',1,1,'123@qq.com'),(4,'12345','123',NULL,1,2,NULL),(5,'123456','1234567','二仙桥打野',3,3,'159@qq.com');
/*!40000 ALTER TABLE `ev_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huihuacunqu`
--

DROP TABLE IF EXISTS `huihuacunqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huihuacunqu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户账户',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `type` varchar(255) NOT NULL COMMENT '用户类型',
  `time` varchar(255) NOT NULL COMMENT '发布时间',
  `user_pic` text COMMENT '头像',
  `conversation` varchar(255) NOT NULL COMMENT '话题编号',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`),
  KEY `huihuacunqu_id_IDX` (`id`,`conversation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用来暂存会话相关信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huihuacunqu`
--

LOCK TABLES `huihuacunqu` WRITE;
/*!40000 ALTER TABLE `huihuacunqu` DISABLE KEYS */;
INSERT INTO `huihuacunqu` VALUES (1,'123456','二仙桥打野','3','2023-02-15 11:57:58','','4816773','这里是实验数据'),(2,'123456','二仙桥打野','管理员','2023-02-11 23:35:47','null','1787280','七日不见，如隔一周。'),(3,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(4,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(5,'123456','二仙桥打野','管理员','2023-02-11 23:35:47','null','1787280','七日不见，如隔一周。'),(6,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(7,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(8,'123456','二仙桥打野','管理员','2023-02-11 23:35:47','null','1787280','七日不见，如隔一周。'),(9,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(10,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(11,'123456','二仙桥打野','管理员','2023-02-11 23:35:47','null','1787280','七日不见，如隔一周。'),(12,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(13,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(14,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(15,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(16,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(17,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴'),(18,'无敌暴龙神','null','学生','2021-10-22 11:24:32','null','87546325','阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴');
/*!40000 ALTER TABLE `huihuacunqu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 21:53:40
