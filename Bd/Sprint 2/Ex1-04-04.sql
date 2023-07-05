create database pet;
use pet;

create table petshop(
idpet int primary Key,
tipo varchar(45),
nome varchar(45),
raça varchar(45),
dtNasc date,
fkcliente int,
constraint fkcliente foreign key (fkcliente)
references clientes (idCliente)
)auto_increment = 100; 

create table clientes(
idCliente int primary key auto_increment,
nome varchar(45),
tel_fixo char(10),
tel_cell char(11),
endereço varchar(45)
);

Select * from petshop;
Insert into petshop values 
(1 , 'Cachorro', 'Anarye', 'Golden', '2010-04-10', 1),
(2 , 'Gato', 'Marye', 'Siamês', '2018-09-21', 2),
(3 , 'Cachorro', 'Mila', 'Pincher', '1996-05-12', 3);

select * from clientes;

Insert into clientes values
(Null, 'Marcos Ramos', '18802989', '989010988', 'Rua Agostinho Gomes 109'), 
(Null, 'Felipe Ramos', '18801789', '989010965', 'Rua Lobo Novo 873'), 
(Null, 'Fernanda Alves', '12341789', '987710988', 'Rua Quinta Sinfonia 213'); 

Alter table clientes modify column nome varchar(50);

Select * From petshop Where tipo = 'Cachorro';

Select nome, dtNasc from petshop;

Select * From petshop Order By Nome Asc;

Select * From clientes Order By endereço Desc;

Select * From petshop Where nome like 'F%';

Select * From clientes Where nome = 'Ramos';

Update clientes Set tel_cell = '98903016789'
	Where idCliente = '1';
    
    Select * From clientes;

SELECT * FROM clientes JOIN petshop
	ON idCliente = fkcliente;

SELECT * FROM clientes JOIN petshop
	ON idCliente = fkcliente
Where idCliente = '1';

DELETE FROM petshop
	WHERE idpet = 2;
    
    Select * from petshop;
    
    Drop table clientes, petshop;
    