CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(255) NOT NULL,
datanascimento DATE,
dataadmissao DATE,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cpf, datanascimento, dataadmissao, salario) 
VALUES ("yasmin",12345678999, "1994-09-04", "2020-02-04", 5694.00);
INSERT INTO tb_colaboradores(nome, cpf, datanascimento, dataadmissao, salario) 
VALUES ("ricardo",12345678888, "1995-08-16", "2021-05-10", 4334.00);
INSERT INTO tb_colaboradores(nome, cpf, datanascimento, dataadmissao, salario) 
VALUES ("joao",12345677777, "1999-07-11", "2021-07-17", 6214.00);
INSERT INTO tb_colaboradores(nome, cpf, datanascimento, dataadmissao, salario) 
VALUES ("amanda",12345666666, "1998-01-12", "2022-06-19", 7814.00);
INSERT INTO tb_colaboradores(nome, cpf, datanascimento, dataadmissao, salario) 
VALUES ("rafaela",12345678910, "1993-03-01", "2020-01-21", 3514.00);

SELECT * FROM tb_colaboradores WHERE (salario >= 5000.00);

SELECT * FROM tb_colaboradores WHERE (salario < 5000.00);

UPDATE tb_colaboradores SET salario = 5000 WHERE id = 1;

SELECT * FROM tb_colaboradores;
