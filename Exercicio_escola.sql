CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    cpf VARCHAR(11) NOT NULL,
    turma VARCHAR(50),
    nota DECIMAL(3,1),
    PRIMARY KEY (id)
);
SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Heloisa Oliveira", 15, "1A", 8.5, "12345678901");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Italo da Silva", 16, "1A", 6.0, "23456789012");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Maria Francisca", 15, "1B", 9.0, "34567890123");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Diego Alves", 17, "2A", 5.5, "45678901234");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Fernanda da Silva ", 16, "2B", 7.5, "56789012345");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Gabriela Costa", 15, "1C", 4.0, "67890123456");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Juliana Martins", 17, "3A", 8.0, "78901234567");
INSERT INTO tb_estudantes (nome, idade, turma, nota, cpf) VALUES ("Lucas Pereira", 16, "2C", 6.5, "89012345678");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.0 WHERE id = 6;

SELECT * FROM tb_estudantes;