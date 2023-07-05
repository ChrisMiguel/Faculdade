-- Aula 09 - 04/04
-- Tipos de Entidades e Relacionamentos

CREATE DATABASE planinho;

USE planinho;

CREATE TABLE funcionario (
idFunc int primary key auto_increment,
nome varchar(45),
salario decimal(10,2), constraint chkSalario
	check (salario >=0),
fkSuper int,
constraint fkFuncSuper foreign key (fkSuper)
	references funcionario(idFunc)
);

-- cadastrando um supervisor
INSERT INTO funcionario VALUES
	(null, 'Xororó', 1.99, null);
    
-- cadastrar os supervisionados pelo Xororó
INSERT INTO funcionario VALUES
	(null, 'Sandy', 2.99, 1),
	(null, 'Junior', 0.99, 1);
    
SELECT * FROM funcionario;

-- exibir os funcionários e seu respectivo supervisor (nome)
SELECT 
funcionario.nome as NomeFunc,
supervisor.nome as NomeSuper
FROM funcionario JOIN funcionario as supervisor 
	ON funcionario.fkSuper = supervisor.idFunc;

SELECT 
f.nome as NomeFunc,
s.nome as NomeSuper
FROM funcionario as f JOIN funcionario as s
	ON f.fkSuper = s.idFunc;
    
-- criando a entidade fraca
CREATE TABLE dependente (
idDep int,
nome varchar(45),
parentesco varchar(45),
dtNasc date,
fkFunc int,
constraint fkFuncDep foreign key (fkFunc) 
	references funcionario(idFunc),
constraint pkComposta primary key (idDep, fkFunc));

INSERT INTO dependente VALUES
	(1, 'Lucas','marido', '1984-01-01',2),
	(2, 'Theo','filho', '2007-01-01',2),
	(1, 'Noeli','esposa', '1957-01-01',1);
    
SELECT * FROM dependente;
SELECT idDep, fkFunc FROM dependente;

SELECT * FROM funcionario JOIN dependente
	ON idFunc = fkFunc;
    
SELECT * FROM 
	funcionario JOIN funcionario AS supervisor
		ON funcionario.fkSuper = supervisor.idFunc
			 JOIN dependente 
				ON funcionario.idFunc = fkFunc;
                
SELECT 
concat('O dependente ', dep.nome, ' é ', dep.parentesco, 
	' do ', func.nome) as frase FROM funcionario as func
		JOIN dependente as dep ON idFunc = fkFunc;
        
SELECT nome,
timestampdiff(YEAR, dtNasc, now()) as idade
FROM dependente;

SELECT nome,
timestampdiff(DAY, dtNasc, now()) as idade
FROM dependente;

SELECT nome,
date_format(dtNasc, '%d/%m/%y') as DataFormatada
FROM dependente;

SELECT nome,
date_format(dtNasc, '%d/%m/%Y') as DataFormatada
FROM dependente;


