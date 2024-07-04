create database restaurante_saypi;
use restaurante_saypi;
CREATE TABLE Prato (
	idprato int auto_increment primary key,
	pratonome VARCHAR(50),
    categoriaprato VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco FLOAT NOT NULL
);
CREATE TABLE Bebidas(
	idbebida int auto_increment primary key,
	nomebebida varchar(15)
);
CREATE TABLE Clientes(
	idcliente int auto_increment primary key,
    clientenome varchar (30),
    numcliente varchar (10),
    idade int
);
CREATE TABLE Pedido(
	idpedido int auto_increment primary key,
	mesanum int,
    idprato int,
	idbebida int,
	idcliente int,
	FOREIGN KEY (idprato) REFERENCES Prato(idprato),
	FOREIGN KEY (idbebida) REFERENCES Bebidas(idbebida),
	FOREIGN KEY (idcliente) REFERENCES Clientes(idcliente)
);
show tables;
describe Bebidas;
describe Prato;
describe Clientes;
describe Pedido;

insert into Prato(idprato, pratonome, categoriaprato, ingredientes, preco)
values (01, 'Lasanha à bolonhesa', 'Itália', 'Molho de tomate, carne moída, massa de lasanha', 25),
	   (02, 'Yakissoba', 'Japão', 'Macarrão para yakissoba, legumes, carne bovina e frango', 28),
       (03, 'Feijoada', 'Brasil', 'Feijão preto, carne suína, arroz, couve e farofa', 35),
       (04, 'Estrogonofe de Frango', 'Rússia', 'Arroz, estrogonofe e batata palha', 27);
       
       


    
