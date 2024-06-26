CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_celulares(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cor VARCHAR(255) NOT NULL,
datafabricacao DATE,
marca VARCHAR(255) NOT NULL,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Iphone 11","azul", "2019-09-04", "Apple", 1994.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Iphone 15","vermelho", "2023-08-16", "Apple", 4804.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Iphone 13","preto", "2021-07-17", "Apple", 3134.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Iphone 12","prata", "2020-06-25", "Apple", 2534.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Iphone 14","rosa", "2022-09-05", "Apple", 2534.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Galaxi S24","rosa", "2024-01-19", "Samsung", 8534.00);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Galaxi A25","creme", "2024-03-21", "Samsung", 1799.10);
INSERT INTO tb_celulares(nome, cor, datafabricacao, marca, preco) 
VALUES ("Galaxi S23","preto", "2023-04-27", "Samsung", 2934.00);

SELECT * FROM tb_celulares WHERE (preco > 3000.00);

SELECT * FROM tb_celulares WHERE (preco < 3000.00);

UPDATE tb_celulares SET preco = 1700 WHERE id = 1;

SELECT * FROM tb_celulares;
