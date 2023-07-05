Create database sprint1;
Use sprint1;
Create Table atleta (
IdAtleta varchar(40),
nome varchar(40),
modalidade varchar(40),
qtdmedalha Int 
);
Insert Into atleta Values 
	('1', 'Cristiano Ronaldo', 'Football player', '33');
    Select * From atleta;
    
    Insert Into atleta Values 
		('2', 'Messi', 'Football player', '42'),
        ('3', 'Neymar', 'Football player', '7');
        Select * From atleta;
        Select * From atleta Order By qtdmedalha Desc;
        
        Select * From atleta Where nome Like 'S';
        Select * From atleta Where nome Like 'C%';
        Select * From atleta Where nome Like '%O';
        Select * From atleta Where nome Like '%R_';
        
        Drop Table atleta;
