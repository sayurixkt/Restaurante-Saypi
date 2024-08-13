CREATE DATABASE restaurante_saypi;
USE restaurante_saypi;

CREATE TABLE Prato (
	idprato INT AUTO_INCREMENT PRIMARY KEY,
	pratonome VARCHAR(50),
    categoriaprato VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE Bebidas(
	idbebida INT AUTO_INCREMENT PRIMARY KEY,
	nomebebida VARCHAR(15)
);

CREATE TABLE Clientes(
	idcliente INT AUTO_INCREMENT PRIMARY KEY,
    clientenome VARCHAR(30),
    numcliente VARCHAR(10),
    idade INT
);

CREATE TABLE Pedido(
	idpedido INT AUTO_INCREMENT PRIMARY KEY,
	mesanum INT,
    idprato INT,
	idbebida INT,
	idcliente INT,
	FOREIGN KEY (idprato) REFERENCES Prato(idprato),
	FOREIGN KEY (idbebida) REFERENCES Bebidas(idbebida),
	FOREIGN KEY (idcliente) REFERENCES Clientes(idcliente)
);

INSERT INTO Prato(idprato, pratonome, categoriaprato, ingredientes, preco)
VALUES (01, 'Lasanha à bolonhesa', 'Itália', 'Molho de tomate, carne moída, massa de lasanha', 25),
	   (02, 'Yakissoba', 'Japão', 'Macarrão para yakissoba, legumes, carne bovina e frango', 28),
       (03, 'Feijoada', 'Brasil', 'Feijão preto, carne suína, arroz, couve e farofa', 35),
       (04, 'Estrogonofe de Frango', 'Rússia', 'Arroz, estrogonofe e batata palha', 27);

ALTER TABLE Prato
MODIFY COLUMN preco FLOAT NOT NULL;

INSERT INTO Bebidas(idbebida, nomebebida)
VALUES (01, 'Suco de Laranja'),
       (02, 'Suco de Limão'),
       (03, 'Suco de Abacaxi'),
       (04, 'Suco de Açaí'),
       (05, 'Suco de Morango'),
       (06, 'Suco de Uva'),
       (07, 'Coca-Cola'),
       (08, 'Guaraná'),
       (09, 'Fanta Laranja'),
       (10, 'Fanta Uva'),
       (11, 'Fanta Maracujá'),
       (12, 'H20'),
       (13, 'Água sem gás'),
       (14, 'Água com gás');

INSERT INTO Clientes(idcliente, clientenome, numcliente, idade)
VALUES (001, 'Raquel Adriana Moreira', '938555253', 25),
       (002, 'Raul Erick Nathan Almeida', '982799846', 48),
       (003, 'Nathan Henry Duarte', '982705132', 37),
       (004, 'Pedro Luiz Ribeiro', '989628646', 27),
       (005, 'Victória da Luz', '983033756', 23),
       (006, 'Marcelo Iago Ryan Nunes', '987037516', 42),
       (007, 'Felipe Vinícius Brito', '981719026', 21),
       (008, 'Marcos Samuel da Silva', '999610318', 72),
       (009, 'Diogo José Batista', '994342436', 57),
       (010, 'Raul José César Rocha', '983693358', 46),
       (011, 'Cecília Bárbara Nascimento', '987746147', 60),
       (012, 'Bárbara Bruna da Mata', '988556219', 19),
       (013, 'Aurora Carolina Souza', '997120640', 18),
       (014, 'Priscila Esthre Galvão', '996520355', 38),
       (015, 'Adriana Gabrielly Silva', '982648842', 22);

UPDATE Prato
SET categoriaprato = 'Massa'
WHERE idprato = 01;

UPDATE Prato
SET categoriaprato = 'Oriental'
WHERE idprato = 02;

UPDATE Prato
SET categoriaprato = 'Típica Brasileira'
WHERE idprato = 03 OR idprato = 04;

INSERT INTO Prato(idprato, pratonome, categoriaprato, ingredientes, preco)
VALUES (05, 'X-Burguer com Fritas', 'Lanches', 'Pão, carne, queijo e batata frita', 35),
       (06, 'X-Frango com Fritas', 'Lanches', 'Pão, filé de frango, queijo e batata frita', 33),
       (07, 'X-Bacon com Fritas', 'Lanches', 'Pão, carne, bacon, queijo e batata frita', 36),
       (08, 'Talharim ao Molho 4 Queijos', 'Massa', 'Massa talharim e molho de mussarela, gorgonzola, parmesão e prato', 34),
       (09, 'Gnocci ao Molho Rosé', 'Massa', 'Gnocci feito com massa de batata e molho rosé', 45),
       (10, 'Tonkatsu Lámen', 'Oriental', 'Macarrão fino, caldo de carne de porco e acompanhamentos', 48),
       (11, 'Domburi de Frango', 'Oriental', 'Arroz japonês, legumes empanados e filé de frango com molho teriyaki', 40),
       (12, 'Contra-filé', 'Típica Brasileira', 'Arroz, feijão, salada, contra-filé e fritas', 22);

INSERT INTO Pedido(idpedido, mesanum, idprato, idbebida, idcliente)
VALUES (111, 55, 04, 10, 010),
       (112, 56, 02, 06, 005),
       (113, 57, 01, 01, 007),
       (114, 58, 03, 11, 015),
       (115, 59, 04, 09, 003);

SELECT * FROM Clientes
WHERE idcliente = '014';

UPDATE Clientes
SET clientenome = 'Priscila Esther Galvão'
WHERE idcliente = '014';
       
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE pedido DROP FOREIGN KEY pedido_ibfk_2;
ALTER TABLE pedido ADD CONSTRAINT pedido_ibfk_2 
FOREIGN KEY (idbebida) REFERENCES bebidas(idbebida)
ON DELETE CASCADE 
ON UPDATE CASCADE;

ALTER TABLE pedido DROP FOREIGN KEY pedido_ibfk_3;
ALTER TABLE pedido ADD CONSTRAINT pedido_ibfk_3 
FOREIGN KEY (idcliente) REFERENCES clientes(idcliente)
ON DELETE CASCADE 
ON UPDATE CASCADE;

UPDATE Bebidas
SET idbebida = CASE
    WHEN idbebida = '121' THEN '221'
    WHEN idbebida = '122' THEN '222'
    WHEN idbebida = '123' THEN '223'
    WHEN idbebida = '124' THEN '224'
    WHEN idbebida = '125' THEN '225'
    WHEN idbebida = '126' THEN '226'
    WHEN idbebida = '127' THEN '227'
    WHEN idbebida = '128' THEN '228'
    WHEN idbebida = '129' THEN '229'
    WHEN idbebida = '130' THEN '230'
    WHEN idbebida = '131' THEN '231'
    WHEN idbebida = '132' THEN '232'
    WHEN idbebida = '133' THEN '233'
    WHEN idbebida = '134' THEN '234'
END;

UPDATE Clientes
SET idcliente = CASE
    WHEN idcliente = '001' THEN '301'
	WHEN idcliente = '002' THEN '302'
	WHEN idcliente = '003' THEN '303'
	WHEN idcliente = '004' THEN '304'
	WHEN idcliente = '005' THEN '305'
	WHEN idcliente = '006' THEN '306'
	WHEN idcliente = '007' THEN '307'
	WHEN idcliente = '008' THEN '308'
	WHEN idcliente = '009' THEN '309'
	WHEN idcliente = '010' THEN '310'
	WHEN idcliente = '011' THEN '311'
	WHEN idcliente = '012' THEN '312'
	WHEN idcliente = '013' THEN '313'
	WHEN idcliente = '014' THEN '314'
	WHEN idcliente = '015' THEN '315'
END;

INSERT INTO Pedido(idpedido, mesanum, idprato, idbebida, idcliente)
VALUES (116, 62, 07, 225, 312),
       (117, 63, 09, 226, 310),
       (118, 61, 07, 228, 308),
       (119, 60, 12, 229, 305),
       (120, 63, 01, 230, 313),
       (121, 64, 03, 232, 307);
       
ALTER TABLE Prato
MODIFY COLUMN categoriaprato varchar(50) NOT NULL;

ALTER TABLE Prato
MODIFY COLUMN ingredientes varchar(255) NOT NULL;

ALTER TABLE Prato
MODIFY COLUMN pratonome varchar(50) NOT NULL;

ALTER TABLE Bebidas
MODIFY COLUMN nomebebida varchar(15) NOT NULL;

ALTER TABLE Clientes
MODIFY COLUMN clientenome varchar(30) NOT NULL;

ALTER TABLE Pedido
MODIFY COLUMN mesanum int NOT NULL;

ALTER TABLE Pedido
MODIFY COLUMN idprato int NOT NULL;

ALTER TABLE Pedido
MODIFY COLUMN idbebida int NOT NULL;

ALTER TABLE Pedido
MODIFY COLUMN idcliente int NOT NULL;

UPDATE Prato
SET pratonome = "X-burguer com fritas"
WHERE idprato = 5;

UPDATE Prato
SET pratonome = "X-frango com fritas"
WHERE idprato = 6;

UPDATE Prato
SET pratonome = "X-bacon com fritas"
WHERE idprato = 7;

UPDATE Prato
SET pratonome = "Talharim ao molho 4 queijos"
WHERE idprato = 8;

UPDATE Prato
SET pratonome = "Gnocci ao molho rosé"
WHERE idprato = 9;

UPDATE Prato
SET pratonome = "Tonkatsu lámen"
WHERE idprato = 10;

UPDATE Prato
SET pratonome = "Domburi de frango"
WHERE idprato = 11;

UPDATE Prato
SET pratonome = "Contra-filé"
WHERE idprato = 12;

SELECT * FROM Prato;
SELECT * FROM Bebidas;
SELECT * FROM Clientes;
SELECT * FROM Pedido;

DESCRIBE Bebidas;
DESCRIBE Prato;
DESCRIBE Clientes;
DESCRIBE Pedido;


