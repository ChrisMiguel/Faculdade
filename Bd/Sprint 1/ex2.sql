Use sprint1;
Create Table musica(
idmusica Int Primary Key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

Desc musica;
Insert Into musica Values
('1', 'Lua', 'Costa Gold', 'Rap');

Select * From musica;
Insert Into musica Values 
('2', 'The Cypher Deffect 2','Costa Gold', 'Rap'),
('3', 'Sommelier', 'Sidoka','Trap'),
('4', 'Lugar ao Sol','Charlie Brown Jr', 'Música regional Brasileira'),
('5', 'Só os loucos sabem', 'Charlei Brown Jr','Musica Regional Brasileira'),
('6', 'Tropa do mais novo', 'Henry Doka','Trap'),
('7', 'Golf Gti', 'Tiagod','Trap/Rap');

Select * From musica;
Alter Table musica add column curtidas varchar(40);
Desc musica;
 
 UPDATE musica SET curtidas = '2m'
	WHERE idmusica IN (1); 
    Select * From musica;
    
    UPDATE musica SET curtidas = '7.2m'
	WHERE idmusica IN (2); 
    
    UPDATE musica SET curtidas = '5b'
	WHERE idmusica IN (3);
    
    UPDATE musica SET curtidas = '10b'
	WHERE idmusica IN (4);
    
    UPDATE musica SET curtidas = '20b'
	WHERE idmusica IN (5); 
    
    UPDATE musica SET curtidas = '1m'
	WHERE idmusica IN (6); 
    
    UPDATE musica SET curtidas = '4m'
	WHERE idmusica IN (7); 
    
    Select * From musica;
    
    Alter Table musica modify column curtidas varchar(80);
    
     UPDATE musica SET curtidas = '10m'
	WHERE idmusica IN (1);
    
     UPDATE musica SET curtidas = '11m'
	WHERE idmusica IN (2, 3); 
    
     UPDATE musica SET titulo = 'Para com isso'
	WHERE idmusica IN (5); 
    
    Delete From musica
Where idmusica = 4;
Select * From musica Where genero <> 'funk';
Select * From musica Where curtidas >= '20'; 

Desc musica;
Truncate Table musica;
Select * From musica;
