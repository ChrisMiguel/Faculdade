-- MODELO RELACIONAL
-- TABELAS QUE SE RELACIONAM
-- TODA TABELA TEM UMA CHAVE PRIMÁRIA
-- TODO COMANDO TERMINA COM ;
-- TODO COMANDO É EM INGLÊS

-- CRIAR O BANCO DE DADOS (SCHEMA OU DATABASE)
CREATE DATABASE sptechSis;

-- UTILIZAR O BANCO DE DADOS
USE sptechSis;

-- CRIAR NOSSA PRIMEIRA TABELA
CREATE TABLE aluno (
-- nomeCampo tipagem restrição/constraint
ra char(8) primary key,
nome varchar(100),
bairro varchar(50)
);

-- DESCREVER A TABELA
DESCRIBE aluno;
DESC aluno;

-- EXIBIR OS DADOS DA TABELA
SELECT ra, nome, bairro FROM aluno;
SELECT * FROM aluno;

-- INSERIR DADOS NA TABELA
INSERT INTO aluno VALUES 
	('03231065', 'LUCAS', 'JARDIM SANTA RITA');

-- INSERIR MAIS DE UM ALUNO NO MESMO COMANDO
INSERT INTO aluno VALUES 
	('03231004', 'GABRIEL', 'MOEMA'),
    ('03231012', 'MARIA PAULA', 'JARDIM DONA SINHÁ'),
    ('03231043', 'FERNANDO', 'ERMELINO'),
    ('03231052', 'DAVI', 'CIDADE TIRADENTES');

-- EXIBIR APENAS O RA E O NOME DOS ALUNOS
SELECT ra, nome FROM aluno;
-- EXIBIR APENAS O NOME E O BAIRRO DOS ALUNOS
SELECT nome, bairro FROM aluno;
-- EXIBIR APENAS O RA DOS ALUNOS
SELECT ra FROM aluno;

-- ATUALIZAR O BAIRRO DA MARIA PAULA
SELECT * FROM aluno;
SELECT * FROM aluno WHERE nome = 'MARIA PAULA';
-- PODE REALIZAR O COMANDO UPDATE SEM WHERE?? NUNCA
UPDATE aluno SET bairro = 'SÃO CAETANO' WHERE ra = '03231012';

-- BONS ESTUDOS!

-- Aula 2 - 14/02
Use sptechsis;

-- Excluir a tabela aluno 
Drop Table aluno; 

-- ctrl enter na linha 14, 30, e 34

Select * From aluno;
-- Adicionar uma coluna na tabela aluno 
Alter Table aluno Add Column email varchar(80) Not Null;

Desc aluno;


-- Atualizar o email dos alunos 
Update aluno Set email = 'gabriel@sptech.school'
	Where ra = '03231004';

Update aluno Set email= 'mariapaula@sptech.school'
	Where ra = '03231012';
    
    Update aluno Set email = 'fernando@sptech.school'
	Where ra = '03231043';
    
Update aluno Set email = 'davi@sptech.school'
	Where ra = '03231052';
    
Update aluno Set email = 'lucas@sptech.school'
	Where ra = '03231065';
Select * From aluno;
-- Adicionar o campo data de nascimento 
Alter Table aluno Add Column dtnasc Date; 
Describe aluno;

Select * From aluno;

-- Estrutura da data 'AAAA-MM-DD'
Update aluno Set dtnasc = '2004-12-16'
	Where ra = '03231004';
    
    -- Inserir um novo aluno
    Insert into aluno (ra, email) Values
		('03231999', 'vivian@sptech.school');
        
-- Modificar uma coluna 
Describe aluno; 

Alter Table aluno Modify Column bairro varchar(75);

-- Renomear uma coluna 
Alter Table aluno Rename column nome to nomeCompleto;

-- alter table (add, drop, modify, rename)

-- Excluir um registro/Tuola da tabela
Delete From aluno Where ra = '03231999';
Delete From aluno Where ra = '03231998';

-- Selects marotos 
Select ra, nomeCompleto , bairro, email From aluno; 
Select * From aluno;

-- Exibir o aluno cujo nomeCompleto é Maria Paula 
Select * From aluno Where noemCompleto = 'Maria Paula'; 
Select * From Where nomeCompleto Like 'M%';

-- Exibir o NomeCompleto que comece com M 
Select * From aluno Where nomeCompleto Like '%A';

Select * From aluno; 
-- Exibir o NomeCompleto que contém espaço 
Select * From aluno Where NomeCompleto Like '% %';
Select * From aluno Where NomeCompleto Like 'G%el';

-- Exibir o NomeCompleto cujo a segunda letra é a 
Select * From aluno Where NomeCompleto Like '_A%';

-- Exibir o NomeCompleto cujo a penultima letra é D 
Select * From aluno Where NomeCompleto Like '%D_'; 

-- Exibir os dados dos alunos ordenados pelo NomeCompleto
Select * From aluno Order By NomeCompleto Asc;

-- Exibir os dadis dos alunos ordenados pelo NomeCompleto ordem decrescente
Select * From aluno Order By NomeCompleto Desc;

-- Criar a tabela empresa 
Create Table empresa (
id Int Primary Key auto_increment,
Nome varchar(100),
responsavel varchar(100)
);

Insert Into empresa (nome, responsavel) Values 
	('Stefanini', 'Pessoa1'),
    ('C6', 'Pessoa2'),
    ('Box Delivery', 'Pessoa3');
    
    Select * From empresa; 







