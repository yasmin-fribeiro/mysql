CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sala VARCHAR(255) NOT NULL,
datanascimento DATE,
identidadegenero VARCHAR(255) NOT NULL,
media DECIMAL NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_estudantes MODIFY media DECIMAL(6,1);

INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Amanda","8B", "2010-09-04", "Mulher Cisgênero", 8.5);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Rosa","9A", "2011-08-16", "Não binário", 9.0);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Rodrigo","7C", "2012-07-17", "Pessoa transgênera", 6.7);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Rafael","6B", "2013-06-25", "Homem Cisgênero", 7.4);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Luiza","5C", "2014-09-05", "Não binário", 10.0);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Gabriel","9B", "2011-01-19", "Homem Cisgênero", 8.8);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Joana","4A", "2014-03-21", "Pessoa transgênera", 9.3);
INSERT INTO tb_estudantes(nome, sala, datanascimento, identidadegenero, media) 
VALUES ("Aline","3A", "2015-04-27", "Mulher Cisgênero", 5.2);

SELECT * FROM tb_estudantes WHERE (media > 7);

SELECT * FROM tb_estudantes WHERE (media < 7);

UPDATE tb_estudantes SET media = 9.8 WHERE id = 1;

SELECT * FROM tb_estudantes;
