Use sprint1;
Create Table Atleta (
idAtleta Int Primary Key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha Int 
);
Select * From Atleta;

Insert Into Atleta Values 
('1', 'Charles Do Bronx', 'MMA', '42');
Select * From Atleta;

Insert Into Atleta Values 
('2', 'Mcgregor', 'MMA', '21'),
('3', 'Chrisinho', 'Footbal Player', 45),
('4', 'Lucarelli', 'Voleyball Player', 5),
('5', 'Matheus Canudo', 'Professional Gamer', '4');
Select * From Atleta;

Update Atleta Set qtdMedalha = '40'
Where idAtleta In (1);
Select * From Atleta;

Update Atleta Set qtdMedalha = '20'
Where idAtleta In (2, 3);

Update Atleta Set nome = 'Vivian Silva'
Where idAtleta In (4);
 
 Select * From Atleta; 
 
 Alter Table Atleta Add column dtnasc Date;
 Desc Atleta;
Select * From Atleta;

UPDATE Atleta SET dtnasc = '2001-03-23'
	WHERE idAtleta IN (1); 

Select * From Atleta;

UPDATE Atleta SET dtnasc = '2004-05-13'
	WHERE idAtleta IN (2); 
    
UPDATE Atleta SET dtnasc = '2000-01-09'
	WHERE idAtleta IN (3); 
    
UPDATE Atleta SET dtnasc = '1998-09-29'
	WHERE idAtleta IN (4); 
  
UPDATE Atleta SET dtnasc = '1995-05-10'
	WHERE idAtleta IN (5);   
    Select * From Atleta;
    
Delete From Atleta
Where idAtleta = 5;

Delete From Atleta
Where idAtleta = 6;

Select * From Atleta;

Select * From Atleta Where nome <> 'Natação';
Select * From Atleta Where qtdMedalha >= 3;

Alter Table Atleta modify column modalidade varchar(60);
Desc Atleta;
Truncate Table Atleta;
Select * From Atleta;

