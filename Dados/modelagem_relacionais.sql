CREATE TABLE viagens.usuarios (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário');


CREATE TABLE viagens.destinos (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do destino',
    descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino');

CREATE TABLE viagens.reservas (
    id INT COMMENT 'Identificador único da reserva'
    id_usuario INT COMMENT 'Referência ao ID do usuário que fez a reserva',
    id_destino INT COMMENT 'Referência ao ID do destino da reserva',  
    data DATE COMMENT 'Data da reserva',
    status VARCHAR(255) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmada, pendente, cancelada, etc)');

INSERT TO viagens.usuarios (id, nome, email, data_nascimento, endereco) 
VALUES (1, 'Pâmela Apolinario', 'teste@teste.com', '1992-10-05', 'Av das Rosas, 100 - Bairro Alto Araraquara/SP');

INSERT TO viagens.destino (id, nome, descricao)
VALUES (1, 'Praia do Rosa', 'Linda Praia');

INSERT TO viagens.reservas (id, id_usuario, id_destino, status, data)
VALUES (1,1,1,'pendente', '2023-11-11');

INSERT TO viagens.usuarios (id, nome, email, data_nascimento, endereco) 
VALUES (1, 'João Silva', 'testeJOAO@exemple.com', '1990-05-15', 'Rua A, 123 Cidade X, Estado Y'),
       (2, 'Maria Santos', 'maria@exemple.com', '1985-08-22', 'Rua B, 456 Cidade Y, Estado Z'),
       (3, 'Pedro Souza', 'pedro@exemple.com', '1998-02-10', 'Avenida C, 789 Cidade X, Estado Y');

INSERT TO viagens.destino (id, nome, descricao)
VALUES (1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
       (2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
       (3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT TO viagens.reservas (id, id_usuario, id_destino, status, data)
VALUES (1,1,2,'confirmada', '2023-07-10'),
(2,2,1,'pendente', '2023-08-05'),
(3,3,3,'cancelada', '2023-09-20');


SELECT *
FROM viagens.usuarios;

SELECT *
FROM viagens.usuarios
WHERE id = 1 AND nome LIKE = '%Pâmela%' ;

UPDATE viagens.usuarios
SET id = 4
WHERE email = 'teste@teste.com';


DELETE FROM viagens.destino
WHERE nome = 'Praia do Rosa';

DROP TABLE {{tabela}} --- DELETA A TABELA


CREATE TABLE viagens.usuarios_nova (
    id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário');


INSERT INTO viagens.usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM viagens.usuarios;

DROP TABLE viagens.usuarios --- DELETA A TABELA


ALTER TABLE viagens.usuarios_nova RENAME viagens.usuarios

ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150);


-- CREATE TABELA {{TABELA}
-- (id PRIMARY KEY AUTOINCREMENT)}

ALTER TABLE viagens.usuarios 
MODIFY COLUMN id INT PRIMARY KEY;


-- CREATE TABLE {{TABELA}} (
--     id INT PRIMARY KEY,
--     chave_estrangeira INT, 
--     FOREIGN KEY (chave_estrangeira) REFERENCES {{outra tabela}} (id));

ALTER TABLE viagens.destino
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (ID);


ALTER TABLE viagens.reservas
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);


ALTER TABLE viagens.reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_usuario)
REFERENCES viagens.usuarios (id);

ALTER TABLE viagens.reservas
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (id_destino)
REFERENCES viagens.destinos (id);




INSERT INTO reserva (id_usuario, id_destinos, data)
VALUES (1,1, '2023-11-11');

ALTER TABLE viagens.reservas DROP CONSTRAINT fk_reservas_usuarios;


ALTER TABLE viagens.reservas
ADD CONSTRAINT fk_usuarios 
FOREIGN KEY (id_usuario)
REFERENCES viagens.usuarios (id)
ON DELETE CASCADE; ---- DELETA O USUARIO E TODAS AS RESERVAS QUE ESTÃO VINCULADAS A ELE.

ALTER TABLE viagens.usuarios
ADD rua VARCHAR (100),
ADD numero VARCHAR (10),
ADD cidade VARCHAR (50),
ADD estado VARCHAR(20);

UPDATE viagens.usuarios
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
    numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
    cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco,',', -1);

ALTER TABLE viagens.usuarios
DROP COLUMN endereco;

--- Criação de index
CREATE INDEX idx_nome ON usuarios (nome);