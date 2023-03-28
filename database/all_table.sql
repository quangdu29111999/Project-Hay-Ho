use haircare;

-- bảng về thương hiệu
CREATE TABLE IF NOT EXISTS `haircare`.`brand_haircare` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NULL,
  `slogan` varchar(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- contact của khách hàng
CREATE TABLE IF NOT EXISTS `haircare`.`contact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `phone_number` VARCHAR(45) NULL,
  `message` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thanh navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categories` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `categories_name_UNIQUE` (`categories` ASC) VISIBLE)
ENGINE = InnoDB;

-- tocpic in navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_topics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `topics` VARCHAR(255) NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_categories_id_posts_topics_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `FK_categories_id_posts_topics`
    FOREIGN KEY (`categories_id`)
    REFERENCES `haircare`.`posts_categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- title con
CREATE TABLE IF NOT EXISTS `haircare`.`posts_title` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titles` VARCHAR(200) NOT NULL,
  `posts_topics_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_topics_id_posts_title_idx` (`posts_topics_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_topics_id_posts_title`
    FOREIGN KEY (`posts_topics_id`)
    REFERENCES `haircare`.`posts_topics` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của các posts
CREATE TABLE IF NOT EXISTS `haircare`.`posts_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_images`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- nội dung của bài post
CREATE TABLE IF NOT EXISTS `haircare`.`posts_content` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` TEXT NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_description`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- các loại thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`equipments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `equipments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thông tin về thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` VARCHAR(45) NULL,
  `description` text not NULL,
  `equipments_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_id_equipments_detail_idx` (`equipments_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_id_equipments_detail`
    FOREIGN KEY (`equipments_id`)
    REFERENCES `haircare`.`equipments` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `equipments_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_detail_id_equipments_images_idx` (`equipments_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_detail_id_equipments_images`
    FOREIGN KEY (`equipments_detail_id`)
    REFERENCES `haircare`.`euquipments_detail` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- các sản phẩm tốt cho tóc
CREATE TABLE IF NOT EXISTS `haircare`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `products` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- chi tiết về các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` varchar(255) NULL,
  `description` text NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_id_products_detail_idx` (`products_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_id-products_detail`
    FOREIGN KEY (`products_id`)
    REFERENCES `haircare`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `products_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_detail_id_products_images_idx` (`products_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_detail_id_products_images`
    FOREIGN KEY (`products_detail_id`)
    REFERENCES `haircare`.`products_detail` (`id`)
    ON DELETE NO ACTION	
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

show tables;
use hairecare;
CREATE TABLE IF NOT EXISTS `haircare`.`accountAdmin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
drop table `haircare`.`accountAdmin`;

    
CREATE TABLE IF NOT EXISTS `haircare`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `status` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into `haircare`.`account` (username, password, email, status) 
values 
	('oriz1303', 'Nguyen123', 'oriz@gmail.com', 0),
	('quangdu', 'Quangdu123','quangdu@gmail.com', 1);
    
    
select * from `haircare`.`account`;
    

    
    





