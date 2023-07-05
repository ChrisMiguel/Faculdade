
create database Continuada2;

use  Continuada2;

-- Criação da tabela com recursividade direto no create table =)
-- Lembre-se de decompor o atributo(campo) 'endereço' é importante.
create table Hotel(
    idHotel int primary key auto_increment,
    nomeHotel varchar(45),
    CEP char(9),
    numero int,
    fkMatriz int, constraint ctFkMatriz foreign key Hotel(fkMatriz) references Hotel(idHotel)
);

-- Criação da FK (Chave Estrangeira) e sua recursividade pelo Alter Table.

-- alter table Hotel add column fkMatriz int;
-- alter table Hotel add constraint ctfkMatriz foreign key fkMatriz references Hotel(idHotel);

-- Criação da Quarto com a FK dentro do create.
create table Quarto(
    idQuarto int,
    nomeQuarto varchar(30),
    andar int,
    tipoQuarto varchar(10), constraint chkTipo check(tipoQuarto in ('Casal','Solteiro')),
    fkHotel int, constraint ctfkHotel foreign key Quarto(fkHotel) references Hotel(idHotel),
    primary key (idQuarto, fkHotel)
);

-- Criação da Chave estrangeira 
-- alter table add column fkHotel int;
-- alter table add constraint ctfkHotel foreign key fkHotel references Hotel(idHotel)

-- Inserindo registro com o maior valor, as Matrizes. E depois os de menor valor, as filiais.
insert into Hotel values
(null, 'SPTech', '01414-905', 595, null),
(null, 'JequitimarDoLucas', '04244-000', 2009, null),
(null, 'Consultoria', '01414-905', 595, 1),
(null, 'HotelADSB', '04298-999', 1322, 2);

-- Inserindo registros na tabela Quarto
insert into Quarto values
(1,'Mario Bros', 9,'solteiro', 1),
(1,'Mario Bros', 4,'solteiro',3),
(1,'Zelda', 3, 'Casal',2),
(2,'Dora Aventureira', 4, 'solteiro',2);

-- Mostrar as tabelas com join simples
select * from Hotel join Quarto 
    on idHotel = fkHotel;

-- Join com condição
select * from Hotel join Quarto 
    on idHotel = fkHotel
    where tipoQuarto = 'solteiro';
--  nome like '%A%';

-- Select Join com apelido
select Hotel.nomeHotel from Hotel join Quarto
    on idHotel = fkHotel;

-- Exibir a recursividade, lembrando que e fk é a de menor prioridade
select * from Hotel filial join Hotel matriz
    on matriz.idHotel = filial.fkMatriz;

-- Exibir as 3 tabelas
select * from Hotel filial 
	join Hotel matriz
    	on matriz.idHotel = filial.fkMatriz
	join Quarto Q
		on Q.fkHotel = filial.idHotel; 


-- Atualizando o campo quarto, lembrando de que a condição é as 2 chaves primarias.
-- Lembre-se que para deletar um Hotel precisa apagar os quartos.
update Quarto set andar = 9, tipoQuarto ='solteiro' 
    where idQuarto = 1 and fkHotel = 2;

-- Deletando um quarto 
delete from Quarto where idQuarto = 1 and fkHotel = 2;