-- Aula 10 11/04

use extreinadorNadador;

Create table treinador(
idtreinador int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkexperiente int, 
constraint fktreinadorexperiente foreign key (fkexperiente) 
references treinador (idtreinador)
);
alter table treinador auto_increment = 10;

Insert into treinador values 
(null, 'Pinsher', 'pinsher@sptech.school', null),
(null, 'Pitbull', 'pitbull@sptech.school', 10),
(null, 'Vira lata', 'viralata@sptech.school', 10),
(null, 'Poodle', 'poodle@sptech.school', 10);

Select * from treinador;

select novato.nome as novato,
experiente.nome as experiente
from treinador as novato join treinador as experiente
on novato.fkexperiente = experiente.idtreinador; 

Create table nadador (
idnadador int primary key auto_increment,
nome varchar(45),
dtnasc date,
fktreinador int,
constraint fktreinadornadador foreign key (fktreinador)
references treinador(idtreinador)
)auto_increment = 100;

insert into nadador values 
(null, 'Siamês','2002-01-01', 11),
(null, 'Persa','2004-01-01', 12),
(null, 'Vira Lata', '2007-01-01',12);

select * from nadador;

select * from treinador join nadador 
on fktreinador = idtreinador;

select novato.nome as novato, 
experiente.nome as experiente,
nadador.nome as nadador 
from treinador as novato join treinador as experiente 
on novato.fkexperiente = experiente.idtreinador 
join nadador on novato.idtreinador = nadador.fktreinador;

-- entidade fraca 
Create table convidado(
idconvidado int,
nome varchar(45),
fkquemconvidou int,
constraint fkconvidadonadador foreign key (fkquemconvidou)
references nadador(idnadador),
constraint pkcomposta primary key (idconvidado, fkquemconvidou)
);

Insert into convidado values 
(1, 'Piriquito', 100),
(2, 'Piriquita', 100),
(1, 'Papagaio', 101);
select * from convidado;

select convidado.nome as convidado,
nadador.nome as nadador 
from nadador join convidado 
on fkquemconvidou = idnadador;

Select novato.nome as novato, 
experiente.nome as experiente, 
nadador.nome as nadador,
convidado.nome as convidado
from treinador as novato join treinador as experiente 
on novato.fkexperiente = experiente.idtreinador 
join nadador on novato.idtreinador = nadador.fktreinador 
join convidado on nadador.idnadador = convidado.fkquemconvidou;
