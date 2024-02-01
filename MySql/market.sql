CREATE DATABASE market;

CREATE TABLE clientes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
sobrenome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(15)
);

CREATE TABLE pedidos (
numero_pedido INT PRIMARY KEY AUTO_INCREMENT,
produto VARCHAR(100),
quantidade INT,
data_pedido DATE,
cliente_id INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

ALTER TABLE pedidos
CHANGE COLUMN numero_pedido id INT AUTO_INCREMENT;

SELECT pedidos.id FROM pedidos

-- Consultando pedidos com as informacoes do cliente:
SELECT pedidos.id, pedidos.produto, pedidos.quantidade, pedidos.data_pedido, clientes.nome, clientes.sobrenome, clientes.email
FROM pedidos JOIN clientes ON pedidos.cliente_id = clientes.id;


-- Inserir dados na tabela de clientes
INSERT INTO clientes (nome, sobrenome, email, telefone) VALUES ('João', 'Silva',
'joao@email.com', '123-456-7890');
INSERT INTO clientes (nome, sobrenome, email, telefone) VALUES ('Maria', 'Oliveira',
'maria@email.com', '987-654-3210');


-- Inserir dados na tabela de pedidos

INSERT INTO pedidos (produto, quantidade, data_pedido, cliente_id) VALUES ('Produto A', 3,
'2023-01-15', 1);
INSERT INTO pedidos (produto, quantidade, data_pedido, cliente_id) VALUES ('Produto B', 2,
'2023-01-18', 2);

DELETE FROM clientes WHERE id = 1;

SELECT * FROM clientes id;

-- Alterar o nome da coluna de "numero_pedido" para "id" na tabela de pedidos
ALTER TABLE pedidos
CHANGE COLUMN numero_pedido id INT AUTO_INCREMENT;

SELECT * FROM clientes id;

DELETE FROM clientes WHERE id = 1;

SELECT * FROM pedidos;

DELETE FROM pedidos WHERE id = 1;











