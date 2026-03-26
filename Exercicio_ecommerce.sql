CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Notebook", "Notebook Lenovo i5", 3500.00, 10);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Aspirador de Pó", "Aspirador portátil", 300.00, 15);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Teclado", "Teclado Mecânico", 400.00, 30);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Monitor", "Monitor 24 polegadas Led", 800.00, 20);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Smartphone Xiaomi Pocco x7 Pro", "Smartphone Android", 2200.00, 15);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Ring Light", "Iluminação para vídeos", 120.00, 40);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Cadeira Gamer", "Cadeira ergonômica", 1500.00, 5);
INSERT INTO tb_produtos (nome, descricao, preco, estoque) VALUES ("Webcam", "Webcam Full HD", 300.00, 25);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 450.00 WHERE id = 3;

