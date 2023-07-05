-- Exercício da venda;

CREATE DATABASE venda;
USE venda;

CREATE TABLE cliente(
idCliente Int PRIMARY KEY auto_increment,
nome VARCHAR(45),
email VARCHAR(60),
fkendereco INT,
constraint fkclientend FOREIGN KEY (fkendereco)
references endereco(idEnd)
);

CREATE TABLE endereco(
idEnd INT PRIMARY KEY auto_increment,
rua VARCHAR(40),
bairro VARCHAR(30),
cep CHAR(8)
);

CREATE TABLE venda(
idVenda INT PRIMARY KEY auto_increment,
total int,
dtVenda DATE,
fkproduto INT,
fkcliente INT,
constraint fkvendaprod FOREIGN KEY (fkproduto)
	references produto(idProduto),
constraint fkvendacliente FOREIGN KEY (fkcliente)
	references cliente(idCliente)
);

CREATE TABLE produto(
idProduto int,
nome VARCHAR(45),
descricao VARCHAR(45),
fkend INT,
constraint fkendprod FOREIGN KEY (fkend)
references endereco(idEnd),
constraint pkcomposta PRIMARY KEY(idProduto, fkend)
);
SELECT * FROM venda;
SELECT * FROM cliente;
SELECT * FROM endereco;
SELECT * FROM produto;

INSERT INTO venda VALUES 
(null, 1000, '2023-01-20', 1, 1),
(null, 3500, '2022-07-23', 2, 2),
(null, 7000, '2020-09-30', 3, 3);

INSERT INTO cliente VALUES 
(null, 'Marcos Rocha','marcos@sptech.school', 1), -- 1
(null, 'Fernando','fernandobrands@sptech.school', 2); -- 2

INSERT INTO cliente VALUES 
(null, 'Marcos Rocha','Comida', 1), 
(null, 'Fernando','Remédios', 2); 

SELECT * FROM venda join cliente 
on idCliente = fkcliente;

INSERT INTO cliente VALUES 
(null, 'Mariana','mariana@sptech.school', 1), 
(null, 'Luiz Aguiar','Luiz@sptech.school', 2), 
(null, 'João Pedro','joao.p@sptech.school', 2); 

INSERT INTO endereco VALUES 
(null, 'Pastor Mário','Paraíso', 02214000),
(null, 'Coronel Lima','Tucuruvi', 02190000), 
(null, 'Bastião do Leão','Itaquera', 02378000); 
 

SELECT * FROM cliente join endereco 
on idCliente = fkendereco;


SELECT * FROM cliente join endereco 
on idCliente = fkendereco
join venda on idVenda = fkproduto
join produto on idProduto = fkend;


-- A professor deu um alter table e adicionou uma coluna gênero e salário;

-- Uso do novo código 'count()';

-- select count(genero) from cliente;

-- insert into cliente (nome, genero) Values

-- ('Isabel', 'f');

-- Select count (*) from cliente - vai aparecer o salário a partir da Isabel;

-- Select count (salario) from cliente - vai aparecer o salário antes da Isabel;

-- Maior salário;

-- Select max (salario) from cliente; 

-- Menor salário;

-- Select min (salario) from cliente;

-- Select max (salario) as Maior, min(salario) as Menor from cliente;

-- Soma 
-- Select sum(salario) from cliente;
-- Select sum(salario)/ count(salario) from cliente;

-- Média
-- Select avg(salario) from cliente;

   -- Round
   -- select round(avg(salario),2) from cliente;
   
   -- distinct
   -- select sum(distinct salario) from cliente;
   -- select sum(salario) from cliente;
   
   -- Select sum(distinct salario), sum(salario) from cliente;
   
   -- Select round(avg(salario),1) from cliente; 
   -- Select round(avg(salario),2) from cliente;
   
   -- truncate 
   -- select truncate(avg(salario),1) from cliente;
   
   -- group by 
   -- select sum(salario) from cliente group by genero;