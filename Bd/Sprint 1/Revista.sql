Use sprint1;
Create table revista(
idrevista Int Primary Key Auto_increment,
nome varchar(40),
categoria varchar(30)
);
Insert Into revista (nome) Values 
('A notícia'), 
('recreio'),
('Olha lá'),
('Veja isso');
Desc revista;
Select * From revista;
Insert Into revista (nome) Values 
('Olha a hora'),
('Vem vem'),
('Folha da fofoquinha');
Desc revista;
Select * From revista;
Alter Table revista Modify Column categoria varchar(40);
Desc revista;  
Alter Table revista Add Column peridiocidade varchar(50);
Alter Table revista Drop Column peridiocidade;
Drop Database sprint1;
