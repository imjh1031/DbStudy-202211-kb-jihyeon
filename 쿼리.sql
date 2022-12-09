-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- db_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `db_study`;
CREATE DATABASE IF NOT EXISTS `db_study` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study`;

-- 테이블 db_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `order_stock` int NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 db_study.order_mst:~5 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`id`, `product_id`, `order_stock`, `username`) VALUES
	(1, 1, 3, '1'),
	(2, 2, 1, '1'),
	(3, 1, 2, '2'),
	(4, 2, 4, '2'),
	(5, 2, 1, '3');

-- 테이블 db_study.product_mst 구조 내보내기
DROP TABLE IF EXISTS `product_mst`;
CREATE TABLE IF NOT EXISTS `product_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_price` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 db_study.product_mst:~10 rows (대략적) 내보내기
DELETE FROM `product_mst`;
INSERT INTO `product_mst` (`id`, `product_name`, `product_price`) VALUES
	(1, '스타벅스 블랙 텀블러', 25000),
	(2, '스타벅스 화이트 텀블러', 30000),
	(3, '스타벅스 핑크 텀블러', 20000),
	(4, '스타벅스 블루 텀블러', 20000),
	(5, '스타벅스 핑크  머그컵', 15000),
	(6, '스타벅스 화이트  머그컵', 20000),
	(7, '스타벅스 블루 머그컵', 25000),
	(8, '스타벅스 핑크핑크  머그컵', 15000),
	(9, '스타벅스 화이트화이트  머그컵', 20000),
	(10, '스타벅스 블루블루 머그컵', 25000);

-- 테이블 db_study.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `student_year` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 db_study.student_mst:~0 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `name`, `student_year`, `score`) VALUES
	(1, '임지현', 1, 80),
	(2, '신경수', 2, 90),
	(3, '고희주', 3, 75),
	(4, '문승주', 1, 85),
	(5, '장건녕', 2, 95),
	(6, '박수현', 3, 90),
	(7, '황석민', 1, 80),
	(8, '박준현', 2, 85),
	(9, '이승아', 3, 90),
	(10, '김수현', 1, 75),
	(11, 'NULL', 1, 100);

-- 테이블 db_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='\r\n';

-- 테이블 데이터 db_study.user_mst:~3 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`, `password`) VALUES
	(1, 'aaa', '1111'),
	(2, 'bbb', '2222'),
	(3, 'ccc', '3333');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

UPDATE
	student_mst SET score = 80 WHERE NAME = '박준현';
	
/*
2학년인 학생 중에 80 ~ 90 사이인
학생들의 점수를 100으로 바꿔라
*/

UPDATE
	student_mst
SET
	score = 100
WHERE
	student_year = 2
	and score BETWEEN 80 AND 90;
	
/*-----------------------------------------------------------------*/

DELETE
FROM
	student_mst
WHERE
	score < 80;
