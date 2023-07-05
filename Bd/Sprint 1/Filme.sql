Use sprint1;
Create Table Filme (
idfilme Int Primary Key, 
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);
Describe filme; 
Select idfilme, titulo, genero, diretor From filme;
Select * From filme;
Insert Into filme Values
('1', 'Maligno', 'Terror', 'James Wan');
Select * From filme; 
Insert Into filme Values 
('2', 'Invocação do mal', 'Terror', 'James Wan'), 
('3', 'Batman', 'Ação', 'Matt Reeves'),
('4', 'Até o último homem', 'Guerra', 'Mel Gibson'),
('5', 'Halloween', 'Terror', 'David Gordon Green'),
('6', 'Toy Story 4', 'Animação', 'Josh Cooley'),
('7', 'Carros', 'Animação', 'John Lasseter');
Select * From filme; 

Select titulo, diretor From filme;
Select * From filme Where genero = 'terror';
Select * From filme Where diretor = 'James Wan';
Select * From filme Order By titulo;
Select * From filme Order By diretor Desc;
Select * From filme Where titulo Like 'C%'; 
Select * From filme Where titulo Like '%N'; 
Select * From filme Where titulo Like '_T%'; 
Select * From filme Where titulo Like '%E_'; 
Drop Table filme;


