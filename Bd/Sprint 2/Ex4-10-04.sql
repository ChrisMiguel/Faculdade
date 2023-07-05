create database Treinador;
use Treinador;
Create table nadador (
id_nad Int primary key auto_increment,
nome varchar(45),
estado_origem varchar(45),
dtNAsc DATE, 
fktrei int,
constraint fktreinad foreign key (fktrei)
references treinador(idtrei)
) auto_increment = 100;

Create Table treinador (
idtrei int primary key auto_increment,
nome varchar (45),
tel char(11),
email varchar(60),
fkexperiente int,
constraint fkexp foreign key (fkexperiente)
references treinador_experiente(idexp)
)auto_increment = 10;

Create table treinador_experiente(
idexp int primary key auto_increment,
nome varchar(45)
);

select * from treinador_experiente;

Insert into treinador values
(null, 'Rafael Oliveira', '11900823992', 'Rafa@Sptech.school'),
(null, 'Marta de Cássia', '11987010388', 'marta@sptech.school'),
(null, 'Felipe Marcos', '11907675477', 'felipe@sptech.school');

Insert into nadador values
(null, ' Oliveira', 'Brasil', '1990-09-01'),
(null, 'Rafaela', 'França', '2001-10-04'),
(null, ' Marcos', 'Europa', '1998-04-20');


Insert into treinador_experiente values
(null, ' Oliveira Ferreira'),
(null, 'Rafaela Hiago' ),
(null, ' Marcos Narcos');

Select * From nadador Join treinador
On id_nad = fktrei;

Select * From treinador Join treinador_experiente
On idtrei = fkexperiente;

-- Fiquei com muita dúvida nesse exercício professora