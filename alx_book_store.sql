CREATE DATABASE IF NOT EXISTS alx_book_store;


CREATE TABLE Authors(
    `author_id` INT UNSIGNED AUTO_INCREMENT,
    `author_name` VARCHAR(215),
    PRIMARY KEY (`author_id`)
);


CREATE TABLE Books(
    `books_id` INT UNSIGNED AUTO_INCREMENT,
    `title` VARCHAR(130),
    `author_id` INT UNSIGNED,
    `price` DOUBLE,
    `publication_date` DATE,
    PRIMARY KEY (`books_id`),
    FOREIGN KEY (`author_id`) REFERENCES `authors`(`author_id`)
);

CREATE TABLE `customers`(
    `customer_id` INT UNSIGNED AUTO_INCREMENT,
    `customer_name` VARCHAR(215),
    `email` VARCHAR(215),
    `address` TEXT,
    PRIMARY KEY (`customer_id`)
);

CREATE TABLE `orders`(
    `orders_id` INT UNSIGNED AUTO_INCREMENT,
    `customer_id` INT UNSIGNED,
    `order_date` DATE,
    PRIMARY KEY (`orders_id`),
    FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`customer_id`)
);

CREATE TABLE `order_details`(
    `orderdetailid` INT UNSIGNED AUTO_INCREMENT,
    `order_id` INT UNSIGNED,
    `book_id`  INT UNSIGNED,
    `quantity` DOUBLE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`),
    FOREIGN KEY (`book_id`) REFERENCES `Books`(`book_id`)
);