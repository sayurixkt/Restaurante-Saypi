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
       
 alter table Prato
 modify column preco FLOAT;

insert into Bebidas(idbebida, nomebebida)
values (01, "Suco de Laranja"),
(02, "Suco de Limão"),
(03, "Suco de Abacaxi"),
(04, "Suco de Açaí"),
(05, "Suco de Morango"),
(06, "Suco de Uva"),
(07, "Coca-Cola"),
(08, "Guaraná"),
(09, "Fanta Laranja"),
(10, "Fanta Uva"),
(11, "Fanta Maracujá"),
(12, "H20"),
(13, "Água sem gás"),
(14, "Água com gás");

insert into Clientes(idcliente, clientenome, numcliente, idade)
values (001, "Raquel Adriana Moreira", "938555253", 25),
(002, "Raul Erick Nathan Almeida", "982799846", 48),
(003, "Nathan Henry Duarte", "982705132", 37),
(004, "Pedro Luiz Ribeiro", "989628646", 27),
(005, "Victória da Luz", "983033756", 23),
(006, "Marcelo Iago Ryan Nunes", "987037516", 42),
(007, "Felipe Vinícius Brito", "981719026", 21),
(008, "Marcos Samuel da Silva", "999610318", 72),
(009, "Diogo José Batista", "994342436", 57),
(010, "Raul José César Rocha", "983693358", 46),
(011, "Cecília Bárbara Nascimento", "987746147", 60),
(012, "Bárbara Bruna da Mata", "988556219", 19),
(013, "Aurora Carolina Souza", "997120640", 18),
(014, "Priscila Esthre Galvão", "996520355", 38),
(015, "Adriana Gabrielly Silva", "982648842", 22);

update Prato
set categoriaprato = 'Massa'
where idprato = 01;

update Prato
set categoriaprato = 'Oriental'
where idprato = 02;

update Prato
set categoriaprato = 'Típica Brasileira'
where idprato = 03 or idprato = 04;

insert into Prato(idprato, pratonome, categoriaprato, ingredientes, preco)
values (05,"x-burguer com fritas", "Lanches", "pão, carne, queijo e batata frita", 35),
(06,"x-frango com fritas", "Lanches", "pão, filé de frango, queijo e batata frita", 33),
(07, "x-bacon com fritas", "Lanches", "pão, carne, bacon, queijo e batata frita", 36),
(08,"talharim ao molho 4 queijos", "Massa", "massa talharim e molho de mussarela, gorgonzola, parmesão e prato", 34),
(09,"gnocci ao molho rosé", "Massa", "gnocci feito com massa de batata e molho rosé", 45),
(10,"tonkatsu lámen", "Oriental", "macarrão fino, caldo de carne de porco e acompanhamentos", 48),
(11, "domburi de frango","Oriental","arroz japonês, legumes empanados e filé de frango com molho teriyaki", 40),
(12,"contra-filé", "Típica Brasileira", "arroz, feijão, salada, contra-filé e fritas", 22);

insert into Pedido(idpedido, mesanum, idprato, idbebida, idcliente)
values (111, 55, 04, 10, 010),
(112, 56, 02, 06, 005),
(113, 57, 01, 01, 007),
(114, 58, 03, 11, 015),
(115, 59, 04, 09, 003);

select * from Clientes
where idcliente = '014';

update Clientes
set clientenome = "Priscila Esther Galvão" 
where idcliente = '014';

       


    

       
       


    
