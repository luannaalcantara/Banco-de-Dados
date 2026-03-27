CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL, 
    descricao VARCHAR(255), 
    PRIMARY KEY (id) 
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome, descricao) VALUES ("Medicamentos", "Remédios em geral");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Cosméticos", "Produtos de beleza");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Higiene", "Cuidados pessoais");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Suplementos", "Vitaminas e proteínas");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Infantil", "Produtos para bebês");

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL, 
    preco DECIMAL(10,2) NOT NULL, 
    estoque INT,
    fabricante VARCHAR(100),
    categoria_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) 
    REFERENCES tb_categorias(id)
    );

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Paracetamol", 1.30 , 100, "Neo Quimica", 1);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Protetor Diario", 25.00, 50, "Kimberly-Clark Brasil", 3);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Creme Facial", 60.00, 30, "Nivea", 2);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Vitamina C", 45.00, 40, "Centrum", 4);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Fralda P", 70.00, 20, "Huggies", 5);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Protetor Solar 70 FPS", 80.00, 25, "La Roche", 2);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Sabonete em barra ", 5.00, 200, "Dove", 3);
INSERT INTO tb_produtos (nome, preco, estoque, fabricante, categoria_id) VALUES ("Colágeno Lavitan", 55.00, 35, "Neo Química", 4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT  tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome AS categoria FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Cosméticos";

-- bonus, elemento a mais que foi solicitado  
SELECT AVG(tb_produtos.preco) AS media_preco FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";  -- media de preço dos cosmeticos 
