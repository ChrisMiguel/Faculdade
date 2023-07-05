create database Campanha;
use Campanha;

create table organizador(
idorganizador int primary key auto_increment,
nome varchar(45),
rua varchar(50),
bairro varchar(50),
email varchar(60),
fkexperiente int,
constraint fkexperienteorg foreign key (fkexperiente)
references organizador(idorganizador)
)auto_increment=30;

create table campanha(
idcampanha int primary key auto_increment,
categoria varchar(45),
instituição varchar(50),
dtdoacao DATE,
fkorganizador int,
constraint fkorgcampanha FOREIGN KEY(fkorganizador) references organizador(idorganizador)
)auto_increment=500;

select * from campanha;

Insert into organizador values 
(null, 'José Ribeiro', 'Rua General Alfredo', 'Tiradentes', 'jose@sptech.school', null),
(null, 'Tiago Leifert', 'Rua dos Ingleses', 'Paraíso', 'tiago@sptech.school', 30),
(null, 'Ana Maria Braga', 'Rua flores ', 'Vila das flores', 'ana@sptech.school', 30);


Insert into campanha values 
(null, 'alimento', 'Casa Maria das flores', '2023-10-07', 30),
(null, 'Máscaras de proteção', 'Tecluva', '2023-11-19', 30),
(null, 'Produtos higiênicos', 'higitec', '2023-12-11', 31),
(null, 'Produtos higiênicos', 'higibab', '2023-08-11', 32);

select * from campanha;
select * from organizador;

select * from organizador join campanha on fkorganizador = idorganizador;

select * from organizador join campanha on  fkorganizador = idorganizador
where organizador.nome = 'José Ribeiro';

select * from organizador as organizadorNovato join organizador
as organizadorExperiente on organizadorNovato.fkexperiente = organizadorExperiente.idorganizador;

select * from organizador as organizadorNovato join organizador
as organizadorExperiente on organizadorNovato.fkexperiente = organizadorExperiente.idorganizador
where organizadorExperiente.nome = 'Tiago Leifert';

select * from organizador as organizadorNovato join campanha on fkorganizador = idorganizador join
organizador as organizadorExperiente on organizadorNovato.fkexperiente = organizadorExperiente.idorganizador;


