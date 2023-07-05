-- Aula 10 - 11/04
-- Correção de exercícios e uma leve revisão

CREATE DATABASE exTreinadorNadador;

USE exTreinadorNadador;

CREATE TABLE treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkExperiente int,
constraint fkTreinadorExperiente foreign key (fkExperiente)
	references treinador(idTreinador)
);

ALTER TABLE treinador auto_increment = 10;

INSERT INTO treinador VALUES
	(null, 'PitBull', 'pitbull@sptech.school', null);
    
INSERT INTO treinador VALUES
	(null, 'Pinscher', 'pinscher@sptech.school', 10),
	(null, 'Vira Lata', 'vira@sptech.school', 10),
	(null, 'Poodle', 'poodle@sptech.school', 11);
    
SELECT * FROM treinador;

SELECT novato.nome as novato,
experiente.nome as experiente
FROM treinador as novato JOIN treinador as experiente
ON novato.fkExperiente = experiente.idTreinador;

SELECT *
FROM treinador as novato JOIN treinador as experiente
ON novato.fkExperiente = experiente.idTreinador;

CREATE TABLE nadador (
idNadador int primary key auto_increment,
nome varchar(45),
dtNasc date,
fkTreinador int,
constraint fkTreinadorNadador foreign key (fkTreinador)
	references treinador(idTreinador)
);

ALTER TABLE nadador auto_increment = 100;

INSERT INTO nadador VALUES
	(null, 'Siamês', '2002-01-01', 11),
	(null, 'Persa', '2004-01-01', 12),
	(null, 'Vira lata', '2007-01-01', 12);
    
SELECT * FROM nadador;

SELECT * FROM treinador JOIN nadador
	ON fkTreinador = idTreinador;
    
SELECT novato.nome as novato,
experiente.nome as experiente,
nadador.nome as nadador
FROM treinador as novato JOIN treinador as experiente
ON novato.fkExperiente = experiente.idTreinador
JOIN nadador
ON novato.idTreinador = nadador.fkTreinador;

-- entidade fraca
CREATE TABLE convidado (
idConvidado int,
nome varchar(45),
fkQuemConvidou int,
constraint fkConvidadoNadador foreign key (fkQuemConvidou)
	references nadador(idNadador),
constraint pkComposta primary key (idConvidado, fkQuemConvidou)
);

SELECT * FROM nadador;

INSERT INTO convidado VALUES
	(1, 'Piriquito', 100),
	(2, 'Piriquita', 100),
	(1, 'Papagaio', 101);
    
SELECT * FROM convidado;

SELECT convidado.nome as convidado,
nadador.nome as nadador
FROM nadador JOIN convidado
ON fkQuemConvidou = idNadador;

SELECT novato.nome as novato,
experiente.nome as experiente,
nadador.nome as nadador,
convidado.nome as convidado
FROM treinador as novato JOIN treinador as experiente
ON novato.fkExperiente = experiente.idTreinador
JOIN nadador ON novato.idTreinador = nadador.fkTreinador
JOIN convidado ON nadador.idNadador = convidado.fkQuemConvidou;