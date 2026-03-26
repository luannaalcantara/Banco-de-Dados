CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE,
    PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES ("Maria Carolina da Silva", "Gerente", 5000.00, "2020-01-10");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES ("Gisele Souza", "Desenvolvedora", 3000.00, "2023-06-15");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES ("Carla Mendes", "Analista de RH", 2800.00, "2021-03-20");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES ("Rafael Lima", "Assistente", 1800.00, "2025-02-01");
INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES ("Fernanda Rocha", "Designer", 2500.00, "2023-09-05");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 4;