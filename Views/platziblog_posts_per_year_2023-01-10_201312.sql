/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;


CREATE OR REPLACE VIEW `posts_per_year` AS select year(`posts`.`post_date`) AS `post_year`,count(0) AS `post_quantity` from `posts` group by `post_year`;