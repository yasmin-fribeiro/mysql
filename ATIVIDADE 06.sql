
CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
area VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_curso VARCHAR(255),
descricao VARCHAR(455),
duracao VARCHAR(255),
mensalidade DECIMAL NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_cursos ADD categoriaid BIGINT;

select * from tb_cursos;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, area) 
VALUES ("Tecnólogo", "Exatas");
INSERT INTO tb_categorias(tipo, area) 
VALUES ("Tecnólogo", "Humanas");
INSERT INTO tb_categorias(tipo, area) 
VALUES ("Bacharelado", "Biológicas");
INSERT INTO tb_categorias(tipo, area) 
VALUES ("Bacharelado", "Humanas");
INSERT INTO tb_categorias(tipo, area)    
VALUES ("Bacharelado", "Exatas");

ALTER TABLE tb_cursos MODIFY mensalidade DECIMAL(6,2);

INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Análise e Desenvolvimento de Sistemas", "O curso de Tecnologia em Análise e Desenvolvimento de Sistemas é uma graduação de nível tecnológico que torna o estudante apto a projetar, testar, implantar e gerenciar sistemas e recursos que envolvem Hardware e Software.", "2,5 anos", "169");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Gestão de RH", "O profissional de Gestão de Recursos Humanos atua no planejamento e gerenciamento dos subsistemas de gestão de pessoas, tais como: recrutamento, seleção, cargos, salários, treinamento, desenvolvimento, avaliação de desempenho, benefícios, gestão de carreiras.", "2 anos", "199");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Enfermagem", "O curso de enfermagem é uma graduação da área da saúde que aborda práticas de assistência ao paciente em diferentes contextos. Durante a formação, os alunos aprendem sobre anatomia, fisiologia, farmacologia, microbiologia, patologia, epidemiologia, entre outras áreas.", "5 anos", "900");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Engenharia de Software", "O curso de Engenharia de Software está focado na parte lógica, em linguagens de programação (JavaScript e Python, por exemplo) e no desenvolvimento de softwares e sistemas complexos.", "4 anos", "740");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Administração", "O curso de Administração fornece subsídios para que o profissional consiga gerenciar negócios de todos os tipos, possibilitando uma visão sistêmica dos processos organizacionais.", "4 anos", "500");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Farmácia", "O curso de Farmácia prepara você para atuar em diversas áreas dos setores público ou privado, como drogaria, farmácia de manipulação e homeopática, hospital, indústria farmacêutica e cosmética, laboratório de análises clínicas, toxicologia clínica e forense, radiofarmácia, logística e outras.", "4 anos", "882");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade) 
VALUES ("Odontologia", "O curso de Odontologia prepara o egresso para ser um profissional dedicado ao estudo e tratamento dos dentes, capacitando-o para que possa atuar com a projeção e instalação próteses, realização de cirurgias e tratamento de doenças da gengiva, bochecha e língua.", "5 anos", "1600");
INSERT INTO tb_cursos(nome_curso, descricao, duracao, mensalidade)  
VALUES ("Economia", "O curso de Ciências Econômicas abrange uma variedade de disciplinas relacionadas à economia. Ele fornece aos estudantes conhecimentos básicos sobre a organização econômica, a análise econômica, as finanças, os mercados, a economia internacional, a política fiscal, a macroeconomia e o desenvolvimento econômico.", "4 anos", "499");

UPDATE tb_cursos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_cursos SET categoriaid = 2 WHERE id = 2;
UPDATE tb_cursos SET categoriaid = 3 WHERE id = 3;
UPDATE tb_cursos SET categoriaid = 5 WHERE id = 4;
UPDATE tb_cursos SET categoriaid = 4 WHERE id = 5;
UPDATE tb_cursos SET categoriaid = 3 WHERE id = 6;
UPDATE tb_cursos SET categoriaid = 3 WHERE id = 7;
UPDATE tb_cursos SET categoriaid = 4 WHERE id = 8;

select * from tb_categorias;
select * from tb_cursos;

SELECT * FROM tb_cursos WHERE (mensalidade > 500);

SELECT * FROM tb_cursos WHERE mensalidade BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%j%";

SELECT nome_curso, descricao, duracao, mensalidade, tb_categorias.tipo
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT nome_curso, descricao, duracao, mensalidade, tb_categorias.tipo, tb_categorias.area
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id WHERE categoriaid = 4;




