create database sprint2;
use sprint2;
Create table país(  
idPais Int Primary Key auto_increment,
nome varchar(30),
capital varchar(40)
)auto_increment = 100;
desc país;

Create table atleta(
idAtleta Int Primary Key auto_increment, 
nome varchar(40),
modalidade varchar (40),
qtdMedalha Int,
fkPais Int,
constraint fkpais foreign key (fkPais)
	references país(idPais)
);

Insert Into país values
(null, 'Brasil', 'SP'); -- 1
Select * From país;

Insert Into país values 
(null, 'México', 'Cidade do México'), -- 2
(null, 'África do Sul', 'Cidade do Cabo'), -- 3 
(null, 'Oceania', 'Austrália'); -- 4
Select * From país;

desc atleta;
Insert Into atleta values 
('1', 'Yuri Alberto', 'Futebol', '10', 100);
Select * from atleta;

Insert Into atleta values 
('2', 'Roger Guedes', 'Futebol', '23', '100'),
('3', 'Fábio Santos', 'Futebol', '46', '100'),
('4', 'Alejandro Perez', 'MMA', '19', '101'),
('5', 'Luol Deng', 'Basquete', '50', '102'),
('6', 'César Cielo', 'Natação', '120', '100');
Select * From atleta;

SELECT * FROM atleta JOIN país
    ON idPais = fkpais;
SELECT
atleta.nome,
país.nome
FROM atleta JOIN país 
	ON atleta.fkPais = país.idpais;
    
    SELECT
atleta.nome,
país.nome
FROM atleta JOIN país 
	ON atleta.fkPais = país.idpais
Where capital = 'Sp';    

