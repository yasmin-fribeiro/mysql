
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255),
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
data_validade VARCHAR(255),
preco DECIMAL NOT NULL,
marca VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

select * from tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(nome_categoria, tipo) 
VALUES ("Carne", "Bovina");
INSERT INTO tb_categorias(nome_categoria, tipo) 
VALUES ("Carne", "Suína");
INSERT INTO tb_categorias(nome_categoria, tipo) 
VALUES ("Frios", "Suíno");
INSERT INTO tb_categorias(nome_categoria, tipo)  
VALUES ("Frios", "Bovino");
INSERT INTO tb_categorias(nome_categoria, tipo)   
VALUES ("Peixes", "Água salgada");
INSERT INTO tb_categorias(nome_categoria, tipo)  
VALUES ("Peixes", "Água doce");

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Contra filé", "2024-09-04", "52.69", "Friboi");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Alcatra", "2024-08-16", "63.60", "Marfrig");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Patinho", "2024-07-17", "45.90", "Marfrig");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Torresmo", "2024-08-16", "33.50", "Rudolph Snacks");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Presunto", "2024-06-25", "10.40", "Seara");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Mussarela", "2024-09-05", "15.75", "Sadia");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Tilápia", "2025-01-19", "23.20", "Copacol");
INSERT INTO tb_produtos(nome_produto, data_validade, preco, marca) 
VALUES ("Cação", "2025-03-21", "63.60", "Copacol");

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 8;

select * from tb_categorias;
select * from tb_produtos;

SELECT * FROM tb_produtos WHERE (preco > 50);

SELECT * FROM tb_produtos WHERE preco BETWEEN 30 AND 50;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT nome_produto, data_validade, preco, marca, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome_produto, data_validade, preco, marca, tb_categorias.tipo, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id WHERE categoriaid = 1;




