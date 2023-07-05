Create database sprint3;
use sprint3;

Create table Aluno(
raAluno Int PRIMARY KEY ,
nome varchar(45),
email varchar(60),
fkGrupo Int,
constraint fkgrupoal foreign key(fkGrupo)
references Grupo(idGrupo)
); 

Create table professor(
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(45),
disciplina varchar(30)
)AUTO_INCREMENT = 10000; 

Create table grupo( 
idGrupo INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(45),
descricao varchar(30)
);

Create table apresentacao(
idApresent INT, 
data_inicio DATE,
data_final DATE,
nota INT,
fkProf INT,
constraint fkProfAluno foreign key (fkProf)
	references professor(idProfessor),
constraint pkcomposta primary key(idApresent, fkProf)
);


select * from grupo;
select * from professor;
select * from Aluno;
select * from apresentacao;	

insert into grupo values 
(null, 'Pescaria', 'Pescar com mais eficiência'),-- 1
(null, 'Comida Japonesa', 'Segurança das comidas'), -- 2
(null, 'Perfect Place', 'Rotas para venda de comida');-- 3

insert into professor values 
(null, 'Fernanda', 'Banco de dados'),
(null, 'Rafael', 'Arq. Comp,'),
(null, 'Gyulia', 'Ti');

insert into aluno values 
(013, 'Marina Pereira', 'marina.pereira@sptech.school', 1),
(014, 'Michele Santos', 'michele.santos@sptech.school', 2),
(015, 'Rita di Caprio', 'rita@sptech.school', 3);

insert into apresentacao values 
(1, '2022-01-23', '2022-01-25', 7, 10000),
(2, '2022-01-27', '2022-01-29', 9, 10001),
(3, '2022-01-25', '2022-01-30', 10, 10002);

Select * from aluno join grupo on idGrupo = fkGrupo;

Select * from aluno join grupo on idGrupo = fkGrupo
Where raAluno = 13;

-- Média das notas
Select avg(nota) from apresentacao;

-- Maior nota;
 Select max(nota) from apresentacao;
 
-- Menor nota;
 Select min(nota) from apresentacao;

-- Soma das notas
Select sum(nota) from apresentacao;

Select * from grupo join professor on idProfessor = fkProf;