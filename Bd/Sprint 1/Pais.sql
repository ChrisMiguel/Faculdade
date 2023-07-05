use sprint2;
Create table atleta(
idAtleta Int Primary Key auto_increment, 
nome varchar(40),
modalidade varchar (40),
qtdMedalha Int 
);

Insert Into atleta values 
('1', 'Yuri Alberto', 'Futebol', '10');
Select * From atleta;

Insert Into atleta values 
('2', 'Roger Guedes', 'Futebol', '23'),
('3', 'Fábio Santos', 'Futebol', '46'),
('4', 'Adesanya', 'MMA', '19'),
('5', 'Michael Jordan', 'Basquete', '50'),
('6', 'César Cielo', 'Natação', '120');

Select * From atleta;

Create table país(
idPais Int Primary Key auto_increment,
nome varchar(30),
capital varchar(40)
);

Insert Into país values
('1', 'Brasil', 'SP');
Select * From país;

Insert Into país values 
('2', 'México', 'Cidade do México'), 
('3', 'África do Sul', 'Cidade do Cabo'), 
('4', 'Oceania', 'Austrália');
Select * From país;



