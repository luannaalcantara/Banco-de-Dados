CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT, 
    tipo VARCHAR(50) NOT NULL, 
    descricao VARCHAR(255), 
    PRIMARY KEY (id) 
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (tipo, descricao) VALUES ("Fogo", "Pokémons com habilidades de fogo");
INSERT INTO tb_classes (tipo, descricao) VALUES ("Água", "Pokémons aquáticos");
INSERT INTO tb_classes (tipo, descricao) VALUES ("Planta", "Pokémons da natureza");
INSERT INTO tb_classes (tipo, descricao) VALUES ("Elétrico", "Pokémons com ataques elétricos");
INSERT INTO tb_classes (tipo, descricao) VALUES ("Psíquico", "Pokémons com poderes mentais");


CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL, 
    nivel INT, 
    poder_ataque INT, 
    poder_defesa INT, 
    classe_id BIGINT, 
    PRIMARY KEY (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Charmander", 10, 2200, 1500, 1);  -- fg
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Squirtle", 8, 1800, 2000, 2);  -- ag
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Bulbasaur", 9, 1900, 1700, 3);   -- plan
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Pikachu", 12, 2500, 1200, 4);    -- elet
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Abra", 7, 2100, 1000, 5);      -- psiq
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Charizard", 15, 3000, 2000, 1);  -- fg
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Raichu", 14, 2700, 1400, 4);  -- elet
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES ("Oddish", 6, 1200, 1300, 3);      -- plan

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT nome, nivel, poder_ataque, poder_defesa, tipo FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, nivel, tipo FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.tipo = "Fogo";


