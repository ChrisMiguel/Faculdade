-- Aula 6 - Modelagem de Dados
-- Configuração de chave estrangeira
-- Nosso primeiro JOIN

CREATE DATABASE sprint2;

USE sprint2;

CREATE TABLE empresa (
idEmpresa INT primary key auto_increment,
nome varchar(45),
responsavel varchar(45)
)auto_increment = 100;

CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(45),
email varchar(45),
fkEmpresa int,
constraint fkEmp foreign key (fkEmpresa)
	references empresa(idEmpresa)
);

INSERT INTO empresa VALUES 
	(null, 'C6Bank', 'Andressa'),
	(null, 'Safra', 'Joana');
SELECT * FROM empresa;
    
INSERT INTO aluno VALUES
	('01231888', 'Arrascaeta', 'arrasca@flamengo.com', 100), 
	('01231777', 'Cassio', 'cassio@corinthians.com', 101), 
	('01231666', 'Pedro', 'pedro@flamengo.com', 100);
    
SELECT * FROM aluno;

-- JOIN = JUNÇÃO
-- NOSSO PRIMEIRO JOIN
SELECT * 
	FROM aluno JOIN empresa
    ON idEmpresa = fkEmpresa;
    
SELECT
aluno.nome,
empresa.nome,
empresa.responsavel
FROM aluno JOIN empresa
	ON aluno.fkEmpresa = empresa.idEmpresa;
    
SELECT 
a.nome,
e.nome
FROM aluno AS a JOIN empresa AS e
ON a.fkEmpresa = e.idEmpresa;

SELECT 
a.nome AS 'Nome do Aluno',
e.nome AS 'Nome da Empresa'
FROM aluno AS a JOIN empresa AS e
ON a.fkEmpresa = e.idEmpresa;

SELECT 
a.nome AS 'Nome do Aluno',
e.nome AS 'Nome da Empresa'
FROM aluno AS a JOIN empresa AS e
ON a.fkEmpresa = e.idEmpresa
	WHERE e.nome = 'C6Bank';
    
-- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA PELO ALTER TABLE
-- ALTER TABLE aluno ADD COLUMN fkEmpresa INT,
	-- ADD CONSTRAINT fkEmp FOREIGN KEY (fkEmpresa)
		-- REFERENCES empresa(idEmpresa);


