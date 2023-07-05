create database alunoprojeto;
use alunoprojeto;

Create table aluno(
ra int primary key auto_increment,
nome varchar(45),
telefone char(11),
fkprojeto int,
constraint fkprojetoaluno foreign key (fkprojeto) references aluno(ra),
fkrepresentante int,
constraint fkrepresentantealuno foreign key (fkrepresentante) references aluno(ra)
);

Create table projeto(
nome varchar(45),
descrição varchar(45)
);

Create table acompanhante(
idacompanhante int,
Nome varchar(45),
relação varchar(45),
fkaluno int,
constraint fkacompanhantealuno foreign key (fkaluno) references aluno(ra),
constraint pkcomposta primary key (idacompanhante, fkaluno)
);

Select * from projeto;

Insert Into aluno values 
(1, 'Maria Rita', '11989010388', 1, 1);

Insert Into aluno values 

(2, 'Roberto Carlos', '11989010390', 2, 2);

Insert Into projeto values
('Perfect Place', 'restaurante alimentício');

Insert into acompanhante values
(1, 'João Ricardo', 'namorado', 1);

SELECT * FROM projeto JOIN aluno ON ra = fkprojeto;

SELECT * FROM acompanhante JOIN aluno ON ra = fkaluno;

Select * from aluno as alunonormal join aluno as alunorepresentante
on alunonormal.fkrepresentante = alunorepresentante.ra;

SELECT * FROM aluno join projeto
ON fkprojeto = ra
	WHERE projeto.nome = 'Perfect Place';

SELECT * FROM acompanhante JOIN aluno
ON  fkaluno = ra
JOIN projeto
ON fkprojeto = ra;
