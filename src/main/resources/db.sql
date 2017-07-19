CREATE DATABASE  IF NOT EXISTS `Trygym`;
USE `Trygym`;
--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER');
INSERT INTO `role` VALUES (2,'ROLE_ADMIN');
INSERT INTO `role` VALUES (3,'ROLE_STAFF');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `address` VARCHAR(255) DEFAULT NULL,
  `nic` VARCHAR(255) DEFAULT NULL,
  `contact` VARCHAR(255) DEFAULT  NULL,
  `job` VARCHAR(255) DEFAULT NULL ,
  `height` VARCHAR(255) DEFAULT NULL ,
  `weight` VARCHAR(255) DEFAULT NULL,
  `health` VARCHAR(1000) DEFAULT NULL,
  `pack` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for `user_role`
--

LOCK TABLES `user_role` WRITE;
INSERT INTO `user_role` VALUES (4, 2);
INSERT INTO `user_role` VALUES (5, 3);
INSERT INTO `user_role` VALUES (6, 3);
INSERT INTO `user_role` VALUES (7, 3);
INSERT INTO `user_role` VALUES (4, 1);
INSERT INTO `user_role` VALUES (5, 1);
INSERT INTO `user_role` VALUES (6, 1);
INSERT INTO `user_role` VALUES (7, 1);
UNLOCK TABLES;

--
-- Table structure for table `role`
--

ALTER TABLE `user` ADD COLUMN `workout` varchar(45) NOT NULL;
ALTER TABLE `user` ADD COLUMN `duration` varchar(50)  NOT NULL ;