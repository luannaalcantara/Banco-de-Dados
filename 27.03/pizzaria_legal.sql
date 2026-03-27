CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL, 
    tamanho VARCHAR(50), 
    PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome, tamanho) VALUES ("Salgada", "Grande");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Salgada", "Média");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Doce", "Grande");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Doce", "Broto");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Vegetariana", "Grande");

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL, 
    ingredientes VARCHAR(255), 
    borda_recheada BOOLEAN, 
    categoria_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Mussarela", 40.00, "Queijo, molho de tomate , azeitona e manjericão", TRUE, 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Calabresa", 50.00, "Calabresa, cebola e azeitona ", FALSE, 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Margherita", 55.00, "Tomate, queijo, azeitona e manjericão", TRUE, 2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Frango com Catupiry", 60.00, "Frango, catupiry e azeitona", TRUE, 2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Nutella", 70.00, "Creme de Avelã", FALSE, 3);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Morango com Chocolate", 80.00, "Morango e chocolate", TRUE, 3);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Romeu e Julieta", 45.00, "Mussarela e goiabada cremosa", FALSE, 4);
INSERT INTO tb_pizzas (nome, preco, ingredientes, borda_recheada, categoria_id) VALUES ("Vegetariana Especial", 65.00, "Legumes variados e azeitona", TRUE, 5);

SELECT * FROM tb_pizzas; 
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria, tb_categorias.tamanho FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Doce";

-- bonus, elemento a mais que foi solicitado 

SELECT * FROM tb_pizzas ORDER BY preco DESC LIMIT 3; -- ordenar os 3 mais caros 