/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;


CREATE OR REPLACE VIEW `users_without_posts` AS select `users`.`id` AS `usid`,`users`.`password` AS `password`,`users`.`nickname` AS `nickname`,`users`.`email` AS `email`,`posts`.`id` AS `aspsid`,`posts`.`title` AS `title`,`posts`.`post_date` AS `post_date`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`user_id` AS `user_id`,`posts`.`category_id` AS `category_id` from (`users` left join `posts` on((`users`.`id` = `posts`.`user_id`))) where (`posts`.`user_id` is null);