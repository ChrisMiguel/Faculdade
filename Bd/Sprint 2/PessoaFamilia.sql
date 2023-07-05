use sprint2;

Create table pessoa (
idpessoa int primary key auto_increment,
nome varchar(45),
cep Char(12),
fkfamilia int,
constraint fkfamiliapessoa foreign key(fkfamilia)
references pessoa(idpessoa)
);


Create table familia (
idfamilia int primary key,
sobrenome varchar(45)
);

Insert into familia values 
(1, 'Bellei'),
(2, 'Silvério');

select * from pessoa; 
insert into pessoa values 
(null, 'Lucas', '02214000',1),
(null, 'Rafael', '02214000',1),
(null, 'Rodney', '02214000',1),
(null, 'Raissa', '01422000',2),
(null, 'Cris', '01422000',2),
(null, 'Clinger', '01422000',2);

Select * from pessoa join familia 
on fkfamilia = idfamilia;

Create table usuario(
idusuario int primary key auto_increment,
nome varchar(45),
fkempresa int,
constraint fkempresausuario foreign key (fkempresa)
references empresa(idempresa)
);

create table empresa (
idempresa int ,
nome varchar(45),
cnpj char(20),
fkmatriz int,
constraint fkempresausu foreign key (fkmatriz)
references empresa(idempresa),
constraint pkComposta primary key (idempresa, fkmatriz)
);
