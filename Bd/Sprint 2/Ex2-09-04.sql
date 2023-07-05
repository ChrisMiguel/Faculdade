use sprint2;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(45),
dtNascimento Date,
profissao varchar(45)
);

create table gasto(
idgasto int primary key auto_increment,
data date,
valor varchar(45),
descrição varchar(45),
fkpessoa int,
constraint fkpessoa foreign key (fkpessoa)
	references pessoa (idPessoa)
);

Select * from pessoa;

Insert into pessoa values 
(Null, 'José Cleber', '1998-04-03', 'Coach');

Insert Into pessoa values
(Null, 'Marijuana Silva', '1987-06-03', 'Tecnóloga da informação'),
(Null, 'Emily Jaupey', '1978-11-10', 'Professora de SIS'),
(Null, 'Rodrigo dos Santos Pereira', '2000-03-02', 'Médico');

Select * from gasto;

Insert Into gasto values 
(Null, '2022-11-20', 1.000000, 'FGTS', 1);

Insert Into gasto values 
(Null, '2023-05-12', 3.430, 'Aluguel apartamento', 2),
(Null, '2021-03-20', 15.000, 'Salário', 3),
(Null, '2023-06-25', 30.000, 'Salário', 4);

Select * from pessoa;
Select * from gasto;


SELECT * FROM pessoa JOIN gasto
	ON idPessoa = fkpessoa
Where profissao = 'Coach';

SELECT * FROM pessoa JOIN gasto
	ON idPessoa = fkpessoa;


SELECT * FROM pessoa JOIN gasto
	ON idPessoa = fkpessoa
Where profissao = 'Médico';

update gasto set valor = 120.990
Where idGasto = '1';

drop table gasto, pessoa;






