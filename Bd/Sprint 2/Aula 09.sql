-- Aula 09 - 04/04
-- Tipos de Entidade e Relacionamentos

Create database planinho;
Use planinho;

Create table funcionario(
idFunc int primary Key auto_increment,
noem varchar(45),
salario decimal(10,2), constraint chkSalario
	check (salario >= 0),
    fkSuper int, 
    constraint fkFuncSuper foreign key (fkSuper)
    references funcionario(idFunc)
);

-- Cadastrando um supervisor 
insert Into funcionario values 
(null, 'Xororó', 1.99, null);

-- Cadastrar os supervisionados pelo xororó
Insert Into funcionario values 
(null, 'Sandy', 2.99, 1),
(null, 'Junior', 0.99, 1);

Select * from funcionario;

-- Exibir os funcionarios e seu respectivo supervisor (nome)
Select 
funcionario.noem as NomeFunc,
supervisor.noem as NomeSuper
From funcionario Join funcionario as supervisor
	On funcionario.fkSuper = supervisor.idFunc;

-- criando a entidade fraca 

Create table depdendte(
idDep int,
nome varchar(45),
parentesco varchar(45),
dtNasc date, 
fkFunc int, 
constraint fkFuncDep foreign key (fkFunc)
	references funcionario(idFunc),
constraint pkComposta primary key (idDep, fkFunc)
);

Insert into depdendte values
(1, 'Lucas', 'marido', '1984-01-01', 2),
(2, 'Theo', 'filho', '2007-01-01', 2),
(1, 'Noeli', 'esposa', '1957-01-01', 1);

Select * from depdendte;

Select * from funcionario Join depdendt
On idFunc = fkFunc;
 
 
 Select * from funcionario Right Join funcionario as supervisor 
 On funcionario.fkSuper = supervisor.idFunc
	Join depdendte
    On funcionario.idFunc = fkFunc;
    
Select 
    concat('O dependente', dep.nome, 'é', dep.parentesco,
    'do', funcionario.noem) as frase From funcionario
    Join depdendte as dep On idFunc = fkFunc;
    
    Select nome, 
    timestampdiff(Year, dtNasc, now()) as idade 
    From depdendte;