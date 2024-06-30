
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
necessidade_receita VARCHAR(255),
com_ou_sem_perfume VARCHAR(255),
uso_adulto_ou_infantil VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
tipo_de_medicamento VARCHAR(255),
preco DECIMAL NOT NULL,
marca VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

select * from tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil) 
VALUES ("Higiene pessoal", "", "Perfumado", "Infantil");
INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil)  
VALUES ("Medicamento", "Com receita", "", "Adulto");
INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil)  
VALUES ("Medicamento", "Sem receita", "", "Adulto");
INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil)  
VALUES ("Higiene pessoal", "", "Sem perfume", "Infantil");
INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil) 
VALUES ("Medicamento", "Sem receita", "", "Infantil");
INSERT INTO tb_categorias(tipo, necessidade_receita, com_ou_sem_perfume, uso_adulto_ou_infantil)  
VALUES ("Higiene pessoal", "", "Perfumado", "Adulto");

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca) 
VALUES ("ASS", "De Referência", "23.69", "Hypera");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca)
VALUES ("Protetor Solar Facial Sun Oil Control", "", "99.90", "Eucerin");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca)
VALUES ("Shampoo Glycolic Gloss", "", "25.79", "Elseve");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca) 
VALUES ("Sabonete Glicerina Da Cabeça Aos Pés", "", "15.14", "Pampers");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca) 
VALUES ("Clonazepam","Genérico", "10.50", "Medley");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca)
VALUES ("Dorflex","De Referência", "7.83", "Sanofi");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca)
VALUES ("Vitamina C Cenevit", "", "22.90", "Legrand");
INSERT INTO tb_produtos(nome_produto, tipo_de_medicamento, preco, marca)
VALUES ("Desodorante Dove Roll On", "", "9.99", "Dove");

UPDATE tb_produtos SET categoriaid = 5 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 8;

select * from tb_categorias;
select * from tb_produtos;

SELECT * FROM tb_produtos WHERE (preco > 20);

SELECT * FROM tb_produtos WHERE preco BETWEEN 20 AND 30;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT nome_produto, tipo_de_medicamento, preco, marca, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome_produto, tipo_de_medicamento, preco, marca, tb_categorias.tipo, tb_categorias.necessidade_receita
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id WHERE categoriaid = 3;




