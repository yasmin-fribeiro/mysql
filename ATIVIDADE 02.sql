CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ingredientes VARCHAR(255) NOT NULL,
preco DECIMAL NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

select * from tb_pizzas;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Salgada", "Grande");
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Doce", "Média");
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Salgada", "Pequena");
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Doce", "Pequena");
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ("Salgada", "Média");

INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Mussarela", "mussarela, manjericão, orégano", 48, "A mussarela ele é o destaque dessa receita que deve ser apreciada quente, para que o queijo esteja com a textura mais cremosa e o sabor intenso.");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Marguerita", "molho de tomate, manjericão, mussarela", 50, "Além de ser um prato clássico, a marguerita é uma pizza carregada de história: depois da visita da rainha Margarida de Sabóia à região de Nápoles, a pizza foi batizada com o seu nome e a monarca teve grande influência na popularização do sabor.");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Portuguesa", "ovos, cebola, azeitona, ervilha, queijo, presunto", 56, "O nome desse sabor de pizza é uma homenagem aos imigrantes portugueses que chegaram ao Brasil e passaram a usar ingredientes típicos da nossa culinária para criar uma massa saborosa, bem recheada e que é uma das queridinhas do país!");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Pepperoni", "molho de tomate, pepperoni, mussarela", 51, "Inspirada nos salames italianos, os americanos criaram a pizza de pepperoni, que hoje é um dos sabores mais aclamados no mundo quando o assunto é pizza!");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Alho-poró com bacon", "molho de tomate, alho poró, bacon, mussarela", 43, "Outra mistura de ingredientes que gera uma explosão de sabores, a pizza de alho-poró está cada vez mais presente no cardápio de pizzarias diversas pelo país!");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Morango com chocolate", "morango, chocolate", 55, "Não tem erro! Tradicional e muito saborosa, essa dupla sempre está entre as mais pedidas. Chocolate faz o maior sucesso em todas as ocasiões. Misturado com o azedinho do morango, essa combinação fica ainda melhor.");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Banofe", "banana, doce de leite", 48, "É também um sabor bem brasileiro e com um toque especial, é ótima para quem adora uma sobremesa consistente.");
INSERT INTO tb_pizzas(nome, ingredientes, preco, descricao) 
VALUES ("Romeu e Julieta", "queijo branco, goiabada", 49, "Tradicionalmente brasileira, essa mistura de sabores oferece a suculência do queijo combinada com o sabor inconfundível de uma goiabada bem caprichada.");

UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 4 WHERE id = 8;

select * from tb_categorias;
select * from tb_pizzas;

SELECT * FROM tb_pizzas WHERE (preco > 45);

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, ingredientes, preco, descricao, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nome, ingredientes, preco, descricao, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id WHERE categoriaid = 2;



