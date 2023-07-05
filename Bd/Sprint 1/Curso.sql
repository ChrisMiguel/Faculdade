Use sprint1;
Create Table curso (
idcurso Int Primary Key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(50)
);
Describe curso;
Select idcurso, nome, sigla, coordenador From curso; 
Insert Into curso Values
('1', 'Sistema da Informação', 'SIS', 'Alexandre Souza');
Select * From curso; 
Insert Into curso Values 
('2', 'Ciências da Computação', 'CCO', 'Fernando Silva'),
('3', 'Análise de Sistemas', 'ADS', 'Natasha Barreto');
Select * From curso;
Select coordenador From curso; 
Select * From curso Where sigla = 'SIS';
Select * From curso Order By nome;
Select * From curso Order By coordenador Desc;
Select * From curso Where nome Like 'S%';
Select * From curso Where nome Like '%O';
Select * From curso Where nome Like '_N%';
Select * From curso Where nome Like '%A_';
Drop table curso;