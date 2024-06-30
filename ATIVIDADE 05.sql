
CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
corredor VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
descricao VARCHAR(255),
garantia VARCHAR(255),
preco DECIMAL NOT NULL,
marca VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

select * from tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, corredor) 
VALUES ("Tijolos", "Corredor 1");
INSERT INTO tb_categorias(tipo, corredor) 
VALUES ("Cimento", "Corredor 2");
INSERT INTO tb_categorias(tipo, corredor) 
VALUES ("Vidro", "Corredor 3");
INSERT INTO tb_categorias(tipo, corredor) 
VALUES ("Madeira", "Corredor 4");
INSERT INTO tb_categorias(tipo, corredor)    
VALUES ("Gesso", "Corredor 5");

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Tijolos comuns", "Feitos de argila e cozidos a altas temperaturas para torná-los resistentes à água e ao fogo.", "1.75", "3 meses", "Areião ABC");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Tijolos refratários", "São feitos de materiais especiais que suportam altas temperaturas e são usados em fornos e chaminés.", "4.93", "3 meses", "Gabriella");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Tijolos de vidros", "Feitos de vidro triturado e são usados principalmente em aplicações decorativas.", "20.49", "6 meses", "Grupo Tomino");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Cimento Portland", "É o tipo mais comum visto nos canteiros de obras e é usado em uma ampla variedade de aplicações de construção. Ele é feito de materiais como calcário, alumina, sílica, gesso e outros aditivos.", "35.15", "6 meses", "Cimento Votoran");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Vidro temperado", "Esse tipo de vidro passa por um processo de tratamento térmico para torná-lo mais resistente à quebra, sendo ótima solução para janelas e portas.", "250", "3 meses", "Amazon Temper");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Madeira maciça", "É resultado de de uma única peça de madeira, sendo a opção mais resistente em comparação com outros tipos de madeira.", "111.99", "6 meses", "Finestra");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Gesso acartonado", "É a mistura de gesso com papelão ou outro material similar, sendo muito utilizado em aplicações de drywall.", "35.00", "3 meses", "Hidrofugada GYPFOR AQUA");
INSERT INTO tb_produtos(nome_produto, descricao, preco, garantia, marca) 
VALUES ("Gesso em pó", "Esse tipo é vendido em pó para ser misturado com água antes da aplicação, tornando o material fácil de ser utilizado e acessível. Ideal para fazer acabamentos e detalhes decorativos.", "33.90", "3 meses", "Menegotti");

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 8;

select * from tb_categorias;
select * from tb_produtos;

SELECT * FROM tb_produtos WHERE (preco > 100);

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT nome_produto, descricao, preco, garantia, marca, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome_produto, descricao, preco, garantia, marca, tb_categorias.tipo, tb_categorias.corredor
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id WHERE categoriaid = 1;




