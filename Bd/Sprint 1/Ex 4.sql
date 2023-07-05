Use sprint1; 
Create Table filme(
idfilme Int Primary Key,
titulo varchar(50),
genero varchar(50),
diretor varchar(40)
);

Desc filme;

Insert Into filme Values 
('1', 'Batman', 'Ação', 'Matt Reeves'),
('2', 'Velozes e furiosos 5', 'Ação', 'Justin Lin'),
('3', 'A volta dos que não foram', 'Ação', 'Rafael Ramos'),
('4', 'Nosso lar', 'drama', 'Wagner de Assis'),
('5', '007 sem tempo para morrer', 'Ação', 'Cary Joji'),
('6', 'A culpa é das estrelas', 'romance', 'Josh Boone'),
('7', 'Carros', 'animação', 'John Lasseter');
Select * From filme;
alter table filme add column protagonista varchar(50);

UPDATE filme SET protagonista = 'Robert Pattison'
	WHERE idfilme IN (1); 
    Select * From filme;
    
    UPDATE filme SET protagonista = 'Vin Diesel'
	WHERE idfilme IN (2); 
    
    UPDATE filme SET protagonista = 'Desiree cher '
	WHERE idfilme IN (3); 
    
    UPDATE filme SET protagonista = 'André Luiz'
	WHERE idfilme IN (4); 
    
    UPDATE filme SET protagonista = 'James Bond'
	WHERE idfilme IN (5); 
    
    UPDATE filme SET protagonista = 'Shailene Woodley'
	WHERE idfilme IN (6); 
    
    UPDATE filme SET protagonista = 'Owen Wilson'
	WHERE idfilme IN (7); 
    
    Select * From filme;
	Alter table filme modify diretor varchar(150);
    
    Desc table filme;
    Desc filme;
    
    UPDATE filme SET diretor = 'Fernando Lázaro'
	WHERE idfilme IN (5); 
    
    UPDATE filme SET protagonista = 'Guedes Navarro'
	WHERE idfilme IN (2, 7); 
    
    UPDATE filme SET titulo = 'Toy story 2'
	WHERE idfilme IN (6); 
    
    Delete From filme 
    Where idfilme = 3;
    
    Select * From filme Where genero <> 'drama';
    Select * From filme Where genero = 'suspense';
    
    Desc filme;
    
    Truncate table filme;
    desc filme; 
    Select * From filme;
    
    
    

	