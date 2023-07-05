Use sprint1;
Create Table professor (
Idprofessor Int Primary Key,
nome varchar(50),
especialidade varchar(40),
dtnasc date
);
Describe professor;
Select idprofessor, nome, especialidade, dtnasc From professor;
Insert Into professor Values
('1', 'Daiane Silva', 'Banco de Dados', '1971-11-20');
Select * From professor;
Insert Into professor Values
('2', 'Tamires Miguel', 'Algoritmo', '1990-05-01'),
('3', 'Fernando Souza', 'Algoritmo', '1975-11-30'),
('4', 'Miguel Lima', 'Ti', '1995-02-14'),
('5', 'Lisa de Pharia', 'Socioemocional', '1983-04-26'),
('6', 'Luiz Felipe', 'Pi', '1977-09-10'),
('7', 'Amanda Carboni', 'Arquitetura Computacional', '1998-01-31');
Select * From professor;
Select especialidade From professor; 
Select * From professor Where especialidade  = 'Algoritmo';
Select * From professor Order By nome;
Select * From professor Order By dtnasc Desc;
Select * From professor Where nome Like '%L';
Select * From professor Where nome Like '_E%';
Select * From professor Where nome Like '%I_';
Drop Table professor;  
