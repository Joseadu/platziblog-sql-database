/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;


CREATE OR REPLACE VIEW `posts_from_2024` AS select `posts`.`id` AS `id`,`posts`.`title` AS `title`,`posts`.`post_date` AS `post_date`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`user_id` AS `user_id`,`posts`.`category_id` AS `category_id` from `posts` where (year(`posts`.`post_date`) > 2024) order by `posts`.`post_date`;