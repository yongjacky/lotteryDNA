CREATE TABLE `sportstoto_4d_draw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `draw_no` varchar(50) NOT NULL,
  `draw_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sportstoto_4d_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sportstoto_4d_draw_id` bigint(20) NOT NULL,
  `draw_date` datetime NOT NULL,
  `4d_no` varchar(4) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `fk_sportstoto4dDetail_sportstoto_4d_draw_id` FOREIGN KEY (`sportstoto_4d_draw_id`) REFERENCES `sportstoto_4d_draw` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

