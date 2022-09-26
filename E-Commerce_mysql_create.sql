CREATE TABLE `Cliente` (
	`id_cliente` int PRIMARY KEY NOT NULL AUTO_INCREMENT DEFAULT,
	`nome` varchar(45) NOT NULL,
	`identificação` varchar(45) NOT NULL,
	`endereço` varchar(45) NOT NULL,
	`tipo_pagamento` varchar(45) NOT NULL,
	
);

CREATE TABLE `Pedido` (
	`id_pedido` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`status_pedido` varchar(45) NOT NULL,
	`descrição` varchar(45) NOT NULL,
	
);

CREATE TABLE `Produto` (
	`id_produto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`categoria` varchar(45) NOT NULL,
	`descrição` varchar(45) NOT NULL,
	`valor` varchar(45) NOT NULL,
	
);

CREATE TABLE `Fornecedor` (
	`id_fornecedor` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`razão_social` varchar(45) NOT NULL,
	`cnpj` varchar(45) NOT NULL,
	
);

CREATE TABLE `Disponibilzando um produto` (
	`fornecedor_id_fornecedor` int NOT NULL,
	`produto_id_produto` int NOT NULL
);

CREATE TABLE `Relação Produto e Pedido` (
	`produto_id_produto` int NOT NULL,
	`pedido_id_pedido` int NOT NULL,
	`quantidade` varchar(45) NOT NULL
);

CREATE TABLE `Estoque` (
	`id_estoque` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`local` varchar(45) NOT NULL,
	`quantidade` varchar(45),
	
);

CREATE TABLE `Produto no estoque` (
	`produto_id_produto` int NOT NULL,
	`estoque_id_estoque` int NOT NULL
);

CREATE TABLE `Entrega` (
	`id_entrega` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`cod_rastreio` varchar(45) NOT NULL,
	`valor_frete` varchar(45),
	`pedido_id_pedido` int NOT NULL,
	
);

CREATE TABLE `Tipo de Cliente` (
	`id_tipo de cliente`PRIMARY KEY int NOT NULL AUTO_INCREMENT,
	`cliente_id_cliente` int NOT NULL,
	`cpf` varchar(45),
	`cnpj` varchar(45),
	
);

CREATE TABLE `Pagamento` (
	`id_pagamento` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`pedido_id_pedido` int NOT NULL,
	`produto_id_produto` int NOT NULL,
	
);

CREATE TABLE `Forma de Pagamento` (
	`id_formapgto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`cliente_id_cliente` int NOT NULL,
	`cartão de crédito` int,
	`boleto` varchar(255),
	`pix` varchar(255),
	`cartão de débito` varchar(255),
	
);

ALTER TABLE `Disponibilzando um produto` ADD CONSTRAINT `Disponibilzando um produto_fk0` FOREIGN KEY (`fornecedor_id_fornecedor`) REFERENCES `Fornecedor`(`id_fornecedor`);

ALTER TABLE `Disponibilzando um produto` ADD CONSTRAINT `Disponibilzando um produto_fk1` FOREIGN KEY (`produto_id_produto`) REFERENCES `Produto`(`id_produto`);

ALTER TABLE `Relação Produto e Pedido` ADD CONSTRAINT `Relação Produto e Pedido_fk0` FOREIGN KEY (`produto_id_produto`) REFERENCES `Produto`(`id_produto`);

ALTER TABLE `Relação Produto e Pedido` ADD CONSTRAINT `Relação Produto e Pedido_fk1` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `Pedido`(`id_pedido`);

ALTER TABLE `Produto no estoque` ADD CONSTRAINT `Produto no estoque_fk0` FOREIGN KEY (`produto_id_produto`) REFERENCES `Produto`(`id_produto`);

ALTER TABLE `Produto no estoque` ADD CONSTRAINT `Produto no estoque_fk1` FOREIGN KEY (`estoque_id_estoque`) REFERENCES `Estoque`(`id_estoque`);

ALTER TABLE `Entrega` ADD CONSTRAINT `Entrega_fk0` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `Pedido`(`id_pedido`);

ALTER TABLE `Tipo de Cliente` ADD CONSTRAINT `Tipo de Cliente_fk0` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `Cliente`(`id_cliente`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk0` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `Pedido`(`id_pedido`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk1` FOREIGN KEY (`produto_id_produto`) REFERENCES `Produto`(`id_produto`);

ALTER TABLE `Forma de Pagamento` ADD CONSTRAINT `Forma de Pagamento_fk0` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `Cliente`(`id_cliente`);

SELECT * FROM `Produto`;

SELECT * FROM `Tipo de Cliente` WHERE `id_tipo de cliente` AND `cnpj`;

UPDATE `Produto` SET valor = 200,00 WHERE `valor` <= 190,00;

SELECT `nome`, `endereco` FROM `Cliente` ORDER BY `nome` DESC;

SELECT `nome`, UPPER(`NOME`) FROM `Cliente`;

SELECT `valor`, COUNT(10) AS VIP FROM `Produto` GROUP BY `` HAVING COUNT(10) > 350,00;


SELECT * FROM `Pagamento_Produto`
INNER JOIN `Produto` ON `Produto`.id_produto` = `Pagamento.id_pagamento`
INNER JOIN `Pagamento` ON  = `Pagamento`.id_pagamento;











