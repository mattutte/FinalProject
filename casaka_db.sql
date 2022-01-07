DROP DATABASE IF EXISTS casaka_db;
CREATE DATABASE  IF NOT EXISTS casaka_db;
USE casaka_db;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
   email VARCHAR(100) NOT NULL,
   passwd TEXT NOT NULL,
   fist_name VARCHAR(200) NOT NULL,
   last_name VARCHAR(200) NOT NULL,
   country VARCHAR(200) NOT NULL,
   face_pic TEXT NOT NULL,
   admin_category TINYINT(1),
   adult TINYINT(1),
   PRIMARY KEY (email)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS brands;
CREATE TABLE brands (
   id INT NOT NULL AUTO_INCREMENT,
   name_brand  VARCHAR(200) NOT NULL,
   country_origin VARCHAR(200),
   PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS products;
CREATE TABLE products (
   id INT NOT NULL AUTO_INCREMENT,
   category VARCHAR(200) NOT NULL,
   name_product VARCHAR(200) NOT NULL,
   brand INT NOT NULL,
   description_product TEXT NOT NULL,
   year_created INT,
   features_style VARCHAR(200) NOT NULL,
   features_gender VARCHAR(200) NOT NULL,
   features_use VARCHAR(200) NOT NULL,
   features_others TEXT,
   regular_price NUMERIC NOT NULL,
   special_price NUMERIC,
   rating_value NUMERIC,
   rating_num_comments INT,
   returnable TINYINT(1),
   delivery_time VARCHAR(200),
   color_available VARCHAR(200),
   size_available TEXT,
   q_available INT,
   image_full TEXT NOT NULL,
   image_fron TEXT,
   image_back TEXT,
   PRIMARY KEY (id),
   FOREIGN KEY (brand) REFERENCES brands (id)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS product_ratings;
CREATE TABLE product_ratings (
   id INT NOT NULL AUTO_INCREMENT,
   product_id INT NOT NULL,
   user_email_rating VARCHAR(100) NOT NULL,
   rating INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (product_id) REFERENCES products (id),
   FOREIGN KEY (user_email_rating) REFERENCES users (email)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS shopping_cart;
CREATE TABLE shopping_cart (
   id INT NOT NULL AUTO_INCREMENT,
   email_user VARCHAR(100) NOT NULL,
   q_products INT,
   total_price NUMERIC,
   PRIMARY KEY (id),
   FOREIGN KEY (email_user) REFERENCES users (email)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS shopping_cart_content;
CREATE TABLE shopping_cart_content (
   id  INT NOT NULL AUTO_INCREMENT,
   id_product INT NOT NULL,
   shopping_cart INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (id_product) REFERENCES products (id),
   FOREIGN KEY (shopping_cart) REFERENCES shopping_cart (id)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


/* LOCK TABLES users WRITE;*/

INSERT INTO users VALUES ("tomasheguy@gmail.com","$2a$10$P4Y.rnn8NQ9YXbz6DoxEN.SywATZpuSgf2XBx206Oo21SOSrYM8lu","Tomas","Heguy","Argentina","foto-1639325362742.jpeg",1,1), ("angeluisq96@gmail.com","$2a$10$P4Y.rnn8NQ9YXbz6DoxEN.SywATZpuSgf2XBx206Oo21SOSrYM8lu","Angel","Luis","Venezuela","foto-1639325362742.jpeg",1,1), ("ing.rainero@gmail.com","$2a$10$P4Y.rnn8NQ9YXbz6DoxEN.SywATZpuSgf2XBx206Oo21SOSrYM8lu","Matias","Rainero","Argentina","foto-1639325362742.jpeg",1,1), ("deniijang@gmail.com","$2a$10$P4Y.rnn8NQ9YXbz6DoxEN.SywATZpuSgf2XBx206Oo21SOSrYM8lu","Denis","Jang","Argentina","foto-1639325362742.jpeg",1,1),("hlbortoluzzi@gmail.com","$2a$10$P4Y.rnn8NQ9YXbz6DoxEN.SywATZpuSgf2XBx206Oo21SOSrYM8lu","Leandro","Bortoluzzi","Argentina","foto-1639325362742.jpeg",1,1);

