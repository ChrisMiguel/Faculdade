create database PraticaFuncionario;
use PraticaFuncionario;

create table setor(
idsetor int primary key auto_increment,
nome varchar(45),
n_andar char(2)
);


create table funcionario(
idfunc int primary key auto_increment,
nome varchar(45),
telefone char(11),
salário char(12)
);


create table acompanhante(
idacompanhante int auto_increment,
nome varchar(45),
relacionamento varchar(45),
dtNasc DATE,
fkfunc int,
constraint fkFunc_acom foreign key (fkfunc) 
	references funcionario(idfunc),
constraint pkComposta primary key (idacompanhante, fkfunc));
;

Select * From setor;
Insert into setor values
(null, 'Comida', 2),-- 1
(null, 'Empresas', 11),-- 2
(null, 'TI', 10),-- 3
(null, 'Relações', 20),-- 4
(null, 'Négócios', 21);-- 5

Select * From funcionario;

Insert into funcionario values
(null, 'Rezende Matos', '11989030288', '3400'),-- 1
(null, 'Maria Do Carmo', '11949040278', '5000'),-- 2 
(null, 'Ferreira de Andrade', '11989130388', '10000'),-- 3
(null, 'Yuri Linpski', '11989039099', '6000'),-- 4
(null, 'Carlos Alberto', '11989089260', '8700');-- 5

Select * From acompanhante;

Insert Into acompanhante values
(null, 'Cléber Machado', 'Amigo', '2000-04-03', 1),
(null, 'Lázaro Silva', 'Marido', '1980-10-12', 2),
(null, 'Luiz Gomes', 'Namorado', '1976-11-07', 3),
(null, 'João Almeida', 'Amigo', '1994-11-23', 4),
(null, 'Marina Cobalski', 'Esposa', '1997-12-26', 5);

SELECT * FROM funcionario JOIN setor
	ON idfunc = fkfunc;



