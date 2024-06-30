CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_classe VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome_personagem VARCHAR(255) NOT NULL,
foto VARCHAR(255) NOT NULL,
poderataque INT NOT NULL,
poderdefesa INT NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classeid BIGINT;

select * from tb_personagens;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

INSERT INTO tb_classes(nome_classe, descricao) 
VALUES ("Bárbaro", "Os Bárbaros são seres que rejeitam as regras e costumes da sociedade, adotando uma vida livre das leis e da ordem. Podem também estar ligado aos espíritos da selvageria dos animais.");
INSERT INTO tb_classes(nome_classe, descricao) 
VALUES ("Mago", "Os magos possuem um grimório, um livro onde ele anota as magias e seus requisitos. É de onde eles lêem, memorizam, e preparam as magias que eles irão utilizar durante o dia.");
INSERT INTO tb_classes(nome_classe, descricao) 
VALUES ("Feiticeiro", "Os feiticeiros possuem uma flexibilidade maior que as dos magos para lançar magias. Eles não precisam preparar ou memorizar suas magias, elas apenas saem. Mas em compensação, os feiticeiros costumam conhecer um número menor de magias.");
INSERT INTO tb_classes(nome_classe, descricao)  
VALUES ("Bruxo", "Os Bruxos são um conjurador de magias, em que seu poder é trazido por um pacto com uma entidade transcendental.");
INSERT INTO tb_classes(nome_classe, descricao)  
VALUES ("Clérigo", "Os clérigos são os grandes representantes dos deuses na terra, e podem ser deuses bondosos ou malignos.");

INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Beranard", "beranard-barbaro.jpg", 760, 310);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa)  
VALUES ("Rian", "rian-mago.jpg", 690, 887);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Zatana", "zatana-feiticero.jpg", 998, 761);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Alex", "alex-bruxo.jpg", 754, 569);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Morgana", "morgana-clerigo.jpg", 880, 367);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Ratrix", "ratrix-feiticero.jpg", 1200, 968);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Bart", "bruxo-feiticero.jpg", 1050, 955);
INSERT INTO tb_personagens(nome_personagem, foto, poderataque, poderdefesa) 
VALUES ("Catrina", "catrina-barbaro.jpg", 748, 337);

select * from tb_classes;
select * from tb_personagens;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;
UPDATE tb_personagens SET classeid = 3 WHERE id = 6;
UPDATE tb_personagens SET classeid = 3 WHERE id = 7;
UPDATE tb_personagens SET classeid = 1 WHERE id = 8;

SELECT * FROM tb_personagens WHERE (poderataque > 1000);

SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 500 AND 1000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT nome_personagem, foto, poderataque, poderdefesa, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT nome_personagem, foto, poderataque, poderdefesa, tb_classes.nome_classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id WHERE classeid = 4;



