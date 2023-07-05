Create database tabelas;
use tabelas;

create table TBA(
idA INT PRIMARY KEY auto_increment,
campo_A VARCHAR(45),
fkA2 INT,
CONSTRAINT fkAsolo FOREIGN KEY(fkA2)
REFERENCES TBA(idA)
);

create table TBB(
idB INT PRIMARY KEY auto_increment,
campo_B VARCHAR(45),
fkA INT,
CONSTRAINT fkparaA FOREIGN KEY(fkA)
REFERENCES TBA(idA)
);


create table TBC(
idC INT,
campo_C VARCHAR(45),
fkB INT,
CONSTRAINT fkparaB FOREIGN KEY(fkB)
REFERENCES TBB(idB),
constraint pkComposta primary key (idC, fkB)
);


create table TBD(
fkB int,
fkE int,
idD INT ,
CONSTRAINT fkparaE FOREIGN KEY(fkE)
REFERENCES TBD(idD),
constraint pkComposta primary key (idD, fkB, fkE)
);

create table TBE(
idE INT PRIMARY KEY auto_increment,
campo_E VARCHAR(45),
fkE INT,
CONSTRAINT fkparaE2 FOREIGN KEY(fkE)
REFERENCES TBE(idE)
);

select * from Tbe join Tbd on fkE = idE;