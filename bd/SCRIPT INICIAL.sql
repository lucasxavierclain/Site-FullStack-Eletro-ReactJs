create database fullstack;
use fullstack;
CREATE TABLE `fullstack`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `nomeImagem` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`idprodutos`));
  
CREATE TABLE `fullstack`.`pedidos` (
  `idpedidos` INT NOT NULL AUTO_INCREMENT,
  `nomeCliente` VARCHAR(70) NOT NULL,
  `endereco` VARCHAR(70) NOT NULL,
  `telefone` INT(11) NOT NULL,
  `nomeProduto` VARCHAR(45) NOT NULL,
  `valorUnitario` DOUBLE NOT NULL,
  `quantidade` DOUBLE NOT NULL,
  `valorTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`idpedidos`));
  
  INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Celular', 'Motorola V8', '1200', 'celular-motorola.jpg');

INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Celular', 'Samsung A23', '800', 'celular-samsung.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Celular', 'Iphone 11', '1100', 'celular-iphone.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Geladeira', 'Consul', '1000', 'geladeira-consul.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Geladeira', 'Eletroclux', '2000', 'geladeira-electrolux-2.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Geladeira', 'Eletroclux Inox', '3000', 'geladeira-electrolux.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('TV', 'LG', '1500', 'lg-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('TV', 'Philco', '1200', 'philco-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('TV', 'Samsung', '2000', 'samsung-tv.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Máquina de lavar', 'Consul', '1200', 'maquina-de-lavar-consul.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Microondas', 'Electrolux', '800', 'microondas-electrolux.jpg');
INSERT INTO `fullstack`.`produtos` (`nome`, `descricao`, `preco`, `nomeImagem`) VALUES ('Microondas', 'Ret', '900', 'microondas-ret.png');

ALTER TABLE `fullstack`.`pedidos` 
CHANGE COLUMN `valorUnitario` `valorUnitario` DECIMAL(8,2) NOT NULL ,
CHANGE COLUMN `quantidade` `quantidade` DECIMAL(8,2) NOT NULL ,
CHANGE COLUMN `valorTotal` `valorTotal` DECIMAL(8,2) NOT NULL ;

ALTER TABLE `fullstack`.`produtos` 
CHANGE COLUMN `preco` `preco` DECIMAL(8,2) NOT NULL ;

ALTER TABLE `fullstack`.`produtos` 
CHANGE COLUMN `nome` `categoria` VARCHAR(45) NOT NULL ;

UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/celular-motorola.jpg' WHERE (`idprodutos` = '1');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/celular-samsung.jpg' WHERE (`idprodutos` = '2');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/celular-iphone.jpg' WHERE (`idprodutos` = '3');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/geladeira-consul.jpg' WHERE (`idprodutos` = '4');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/geladeira-electrolux-2.jpg' WHERE (`idprodutos` = '5');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/geladeira-electrolux.jpg' WHERE (`idprodutos` = '6');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/lg-tv.jpg' WHERE (`idprodutos` = '7');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/philco-tv.jpg' WHERE (`idprodutos` = '8');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/samsung-tv.jpg' WHERE (`idprodutos` = '9');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/maquina-de-lavar-consul.jpg' WHERE (`idprodutos` = '10');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/microondas-electrolux.jpg' WHERE (`idprodutos` = '11');
UPDATE `fullstack`.`produtos` SET `nomeImagem` = '/imagens/microondas-ret.png' WHERE (`idprodutos` = '12');

ALTER SCHEMA `fullstack`  DEFAULT CHARACTER SET utf8 ;
ALTER TABLE `fullstack`.`produtos` 
CHARACTER SET = utf8 , ENGINE = InnoDB ;

UPDATE `fullstack`.`produtos` SET `categoria` = 'maquinaDeLavar' WHERE (`idprodutos` = '10');
UPDATE `fullstack`.`produtos` SET `categoria` = 'microondas' WHERE (`idprodutos` = '11');
UPDATE `fullstack`.`produtos` SET `categoria` = 'microondas' WHERE (`idprodutos` = '12');
UPDATE `fullstack`.`produtos` SET `categoria` = 'televisao' WHERE (`idprodutos` = '9');
UPDATE `fullstack`.`produtos` SET `categoria` = 'televisao' WHERE (`idprodutos` = '8');
UPDATE `fullstack`.`produtos` SET `categoria` = 'televisao' WHERE (`idprodutos` = '7');
UPDATE `fullstack`.`produtos` SET `categoria` = 'geladeira' WHERE (`idprodutos` = '6');
UPDATE `fullstack`.`produtos` SET `categoria` = 'geladeira' WHERE (`idprodutos` = '5');
UPDATE `fullstack`.`produtos` SET `categoria` = 'geladeira' WHERE (`idprodutos` = '4');
UPDATE `fullstack`.`produtos` SET `categoria` = 'celular' WHERE (`idprodutos` = '3');
UPDATE `fullstack`.`produtos` SET `categoria` = 'celular' WHERE (`idprodutos` = '2');
UPDATE `fullstack`.`produtos` SET `categoria` = 'celular' WHERE (`idprodutos` = '1');

ALTER TABLE `fullstack`.`produtos` 
ADD COLUMN `precoAnterior` DECIMAL(8,2) NULL AFTER `descricao`;

UPDATE `fullstack`.`produtos` SET `precoAnterior` = '2000' WHERE (`idprodutos` = '1');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '5000' WHERE (`idprodutos` = '2');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '1500' WHERE (`idprodutos` = '3');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '3000' WHERE (`idprodutos` = '4');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '4000' WHERE (`idprodutos` = '5');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '6000' WHERE (`idprodutos` = '6');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '4000' WHERE (`idprodutos` = '7');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '2000' WHERE (`idprodutos` = '8');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '3500' WHERE (`idprodutos` = '9');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '2500' WHERE (`idprodutos` = '10');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '2000' WHERE (`idprodutos` = '11');
UPDATE `fullstack`.`produtos` SET `precoAnterior` = '2000' WHERE (`idprodutos` = '12');

ALTER TABLE `fullstack`.`pedidos` 
CHARACTER SET = utf8 , COLLATE = utf8_bin , ENGINE = InnoDB ,
DROP COLUMN `valorTotal`,
DROP COLUMN `quantidade`,
DROP COLUMN `valorUnitario`,
DROP COLUMN `nomeProduto`,
DROP COLUMN `telefone`,
DROP COLUMN `endereco`,
ADD COLUMN `idade` INT NOT NULL AFTER `nomeCliente`,
ADD COLUMN `email` VARCHAR(100) NOT NULL AFTER `idade`,
ADD COLUMN `genero` VARCHAR(45) NOT NULL AFTER `email`,
ADD COLUMN `mensagem` VARCHAR(200) NOT NULL AFTER `genero`, RENAME TO  `fullstack`.`contato` ;

ALTER TABLE `fullstack`.`contato` 
CHANGE COLUMN `nomeCliente` `nome` VARCHAR(70) CHARACTER SET 'latin1' NOT NULL ;

CREATE TABLE `fullstack`.`dados` (
  `iddados` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `mensagem` VARCHAR(200) NULL,
  PRIMARY KEY (`iddados`));


select	categoria, descricao,preco,nomeImagem from produtos;