CREATE DATABASE IF NOT EXISTS `alx_book_store`;


CREATE TABLE `authors`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `author_name` VARCHAR(215),
    PRIMARY KEY (`id`)
);


CREATE TABLE `books`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `title` VARCHAR(130),
    `author_id` INT UNSIGNED,
    `price` DOUBLE,
    `publication_date` DATE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`author_id`) REFERENCES `authors`(`id`)
);

CREATE TABLE `customers`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `customer_name` VARCHAR(215),
    `email` VARCHAR(215),
    `address` TEXT,
    PRIMARY KEY (`id`)
);

CREATE TABLE `orders`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `customer_id` INT UNSIGNED,
    `order_date` DATE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`)
);

CREATE TABLE `order_details`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `order_id` INT UNSIGNED,
    `book_id`  INT UNSIGNED,
    `quantity` DOUBLE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`order_id`) REFERENCES `order_id`(`id`),
    FOREIGN KEY (`book_id`) REFERENCES `books`(`id`)
);