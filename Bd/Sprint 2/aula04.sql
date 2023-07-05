USE sptechsis;

show tables;

-- AULA 4 - 07/03
-- CONSTRAINT (RESTRIÇÃO OU CONFIGURAÇÃO DE UM CAMPO)
-- o QUE JÁ SABEMOS: PRIMARY KEY E NOT NULL

-- DEFAULT: VALOR PADRÃO
-- CHECK: CHECAGEM DE VALIDAÇÃO
-- UNIQUE: É UM CAMPO QUE NÃO PODE SE REPETIR

CREATE TABLE professor (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
genero CHAR(1), constraint chkGenero CHECK
	(genero IN ('F','M','N')),
dtCadastro DATETIME default current_timestamp, -- 'aaaa-mm-dd hh:mm:ss' 
statusProf TINYINT -- 0-255
);

INSERT INTO professor (nome, genero, statusProf) VALUES
	('Mônica', 'F', 0),
	('Cebolinha', 'M', 1),
	('Cascão', 'M', 1);
    
SELECT * FROM professor;

INSERT INTO professor (statusProf) VALUES
	(2);
    
UPDATE professor SET statusProf = 0, nome = 'Magali'
	WHERE id = 4;

ALTER TABLE professor ADD CONSTRAINT chkStatus CHECK
	(statusProf IN (0,1)); -- VERSÃO 5.7 ENUM(0, 1)
    
-- este comando dará erro devido check
INSERT INTO professor (statusProf) VALUES
	(2);
-- Error Code: 3819. Check constraint 'chkStatus' is violated.

-- adicionar a coluna cpf -- 123.456.789-00
ALTER TABLE professor ADD COLUMN cpf char(14) unique;
DESC professor;

UPDATE professor SET cpf = '123.456.789-00'
	WHERE id = 1;
SELECT * FROM professor;

-- usabilidade do unique
UPDATE professor SET cpf = '123.456.789-00'
	WHERE id = 2;
-- Error Code: 1062. Duplicate entry '123.456.789-00' for key 'professor.cpf'

UPDATE professor SET cpf = '123.654.789-99'
	WHERE id = 2;
SELECT * FROM professor;

ALTER TABLE professor auto_increment = 10000;

INSERT INTO professor (nome) VALUES
	('Franjinha');
    
-- bons estudos!