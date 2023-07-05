-- Aula 11 - Relacionamento n:n
-- Correção do exercício médico x paciente

Create database clinica;
Use clinica;

Create table medico (
idMedico INT PRIMARY KEY auto_increment,
nome varchar(45),
especialidade varchar(45)
);

Insert Into medico values 
(null, 'Gisele', 'ortopedista'),
(null, 'Thalison', 'pediatra');

Create table paciente (
idPaciente INT PRIMARY KEY auto_increment,
nome varchar(45),
genero char(1), constraint chkGenero check (genero in ('f', 'm'))
)auto_increment = 100;

Insert into paciente values 
(null, 'Bruna', 'f'),
(null, 'Ruan', 'm'),
(null, 'Yasmin', 'f');

-- Criar a tabela associativa 

Create table consulta (
idConsulta int, 
fkMEdico int,
fkPaciente int,
dtConsulta DATETIME DEFAULT current_timestamp,
constraint fkMedicoConsulta foreign key (fkMedico)
references medico(idMedico),
constraint fkPacienteConsulta foreign key (fkPaciente)
references paciente(idPaciente),
constraint pkComposta primary key (idConsulta, fkMedico, fkPaciente)
);

Insert Into consulta values
(1000, 1, 100, default),
(1001, 2, 101, default),
(1002, 1, 102, default);

Select * from paciente Join consulta 
on idPaciente = fkPaciente
	JOIN medico 
		ON idMedico = fkMedico 
		WHERE fkMedico = 1 and fkPaciente = 102;
        
-- Exercicio para praticar agora 
/* 
1 pacoente tem muitos endereços 
1 endereço é de muitos pacientes
*/

Create table endereco(
idEnd INT PRIMARY KEY auto_increment,
cep char(9),
cidade varchar(45),
estado char(2)
)auto_increment = 200;

Insert Into endereco values 
(null, '04253-000', 'São Paulo', 'SP'),
(null, '01414-905', 'São Paulo', 'SP');

Create table complemento (
idComp INT, 
fkPacEnd INT,
fkEnd INT, 
numeroEnd varchar(45),
complemento varchar(45),
constraint fkCompPac foreign key (fkPacEnd)
	references paciente(idPaciente),
constraint fkCompEnd foreign key (fkEnd)
	references endereco (idEnd),
constraint pkAssociativa PRIMARY KEY (idComp, fkEnd, fkPacEnd)
);

Insert Into complemento values 
(1, 100, 201, '595', '3° andar'),
(1, 101, 201, '595', '4° andar'),
(2, 101, 201, '1500', 'apto 11');

Select * from paciente Join complemento 
	ON idPaciente = fkPacEnd
		JOIN endereco ON idEnd = fkEnd; 