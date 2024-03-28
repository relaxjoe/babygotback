-- Use this file to create your database for the e-commerce project.

-- If the ecommerce_db database exists, drop it to start fresh
DROP DATABASE IF EXISTS ecommerce_db;

-- Create the ecommerce_db database
CREATE DATABASE ecommerce_db;

-- Make sure to use the newly created database
USE ecommerce_db;

-- You might want to create tables for your models here. For example:

-- Categories table
CREATE TABLE category (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Products table
CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Tags table
CREATE TABLE tag (
    id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(255),
    PRIMARY KEY (id)
);

-- ProductTags table (for many-to-many relationship between Products and Tags)
CREATE TABLE product_tag (
    id INT NOT NULL AUTO_INCREMENT,
    product_id INT,
    tag_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (tag_id) REFERENCES tag(id)
);
