create database FirstLvl;

use FirstLvl;

CREATE TABLE Contents (
	Content_id int IDENTITY(1,1),
	Meth_inst varchar(255) NOT NULL,
	Tasks_count int,
	PRIMARY KEY(Content_id)
);

CREATE TABLE Blocks (
	Block_id int IDENTITY(1,1),
	Block_name varchar(255) NOT NULL,
	PRIMARY KEY(Block_id)
);

CREATE TABLE BlockContents (
	BlockCont_id int IDENTITY(1,1),
	Content_id int FOREIGN KEY REFERENCES Contents(Content_id) NOT NULL,
	Block_id int FOREIGN KEY REFERENCES Blocks(Block_id),
	PRIMARY KEY(BlockCont_id)
);

CREATE TABLE Course (
	Course_id int IDENTITY(1,1),
	Name_course varchar(255) NOT NULL,
	Language varchar(255) NOT NULL,
	PRIMARY KEY(Course_id)
);

CREATE TABLE BlockOfCourse (
	BlockCourse_id int IDENTITY(1,1),
	Block_id int FOREIGN KEY REFERENCES Blocks(Block_id) NOT NULL,
	Course_id int FOREIGN KEY REFERENCES Course(Course_id) NOT NULL,
	PRIMARY KEY(BlockCourse_id)
);

CREATE TABLE StatusStud(
    Status_id int IDENTITY(1,1),
	Status varchar(255) NOT NULL,
	PRIMARY KEY(Status_id)
);

CREATE TABLE Users(
    User_id int IDENTITY(1,1),
	Name varchar(255) NOT NULL,
	Login varchar(255) NOT NULL,
	Password varchar(8) NOT NULL,
	Course_id int FOREIGN KEY REFERENCES Course(Course_id) NOT NULL,
	Status_id int FOREIGN KEY REFERENCES StatusStud(Status_id),
	PRIMARY KEY(User_id)
);

CREATE TABLE AttestContents(
    AttContents_id int IDENTITY(1,1),
	User_id int FOREIGN KEY REFERENCES Users(User_id),
	Content_id  int FOREIGN KEY REFERENCES Contents(Content_id),
	MarkOfContent int,
	PRIMARY KEY(AttContents_id)
);

CREATE TABLE AttestBlock (
	AttBlock_id int IDENTITY(1,1),
	User_id int FOREIGN KEY REFERENCES Users(User_id) NOT NULL,
	Block_id int FOREIGN KEY REFERENCES Blocks(Block_id) NOT NULL,
	MarkOfBlock int,
	PRIMARY KEY(AttBlock_id)
);

CREATE TABLE Log(
    Log_id int IDENTITY(1,1),
	User_id int FOREIGN KEY REFERENCES Users(User_id) NOT NULL,
	LastLogDate datetime2 NOT NULL,
	PRIMARY KEY(Log_id)
);

insert into Contents(Meth_inst, Tasks_count) 
values('Ввод данных', '3');
insert into Contents(Meth_inst, Tasks_count) 
values('Вывод данных', '3');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование оператора if', '2');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование оператора else', '2');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование оператора if...else', '4');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование оператора bool', '3');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование цикла while', '5');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование цикла do...while', '6');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование цикла for', '4');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование цикла foreach', '9');
insert into Contents(Meth_inst, Tasks_count) 
values('Использование вложенных циклов', '11');
insert into Contents(Meth_inst, Tasks_count) 
values('Заполенение массива', '2');
insert into Contents(Meth_inst, Tasks_count) 
values('Сортировка массива разными методами', '4');
insert into Contents(Meth_inst, Tasks_count) 
values('Написание программы с исползованием изученного материала', '1');

select * from Contents;

insert into Blocks(Block_name) 
values('Ввод-вывод информации');
insert into Blocks(Block_name) 
values('Условные операторы');
insert into Blocks(Block_name) 
values('Логические операторы');
insert into Blocks(Block_name) 
values('Циклы');
insert into Blocks(Block_name) 
values('Действия с массивом');
insert into Blocks(Block_name) 
values('Итог');

select * from Contents;
select * from Blocks;

insert into BlockContents(Block_id, Content_id) 
values(1, 1);
insert into BlockContents(Block_id, Content_id) 
values(1, 2);
insert into BlockContents(Block_id, Content_id) 
values(2, 3);
insert into BlockContents(Block_id, Content_id) 
values(2, 4);
insert into BlockContents(Block_id, Content_id) 
values(2, 5);
insert into BlockContents(Block_id, Content_id) 
values(3, 6);
insert into BlockContents(Block_id, Content_id) 
values(4, 7);
insert into BlockContents(Block_id, Content_id) 
values(4, 8);
insert into BlockContents(Block_id, Content_id) 
values(4, 9);
insert into BlockContents(Block_id, Content_id) 
values(4, 10);
insert into BlockContents(Block_id, Content_id) 
values(4, 11);
insert into BlockContents(Block_id, Content_id) 
values(5, 12);
insert into BlockContents(Block_id, Content_id) 
values(5, 13);
insert into BlockContents(Block_id, Content_id) 
values(6, 14);

select * from BlockContents;

insert into Course(Name_course, Language) 
values('Pyton. Базовый курс', 'Pyton');
insert into Course(Name_course, Language) 
values('JavaScript. Базовый курс', 'JavaScript');
insert into Course(Name_course, Language) 
values('C++. Базовый курс', 'C++');
insert into Course(Name_course, Language) 
values('C#. Базовый курс', 'C#');
insert into Course(Name_course, Language) 
values('Kotlin. Базовый курс', 'Kotlin');

select * from Course;

insert into BlockOfCourse(Course_id, Block_id)
values(1, 1);
insert into BlockOfCourse(Course_id, Block_id)
values(1, 2);
insert into BlockOfCourse(Course_id, Block_id)
values(1, 3);
insert into BlockOfCourse(Course_id, Block_id)
values(1, 4);
insert into BlockOfCourse(Course_id, Block_id)
values(1, 5);
insert into BlockOfCourse(Course_id, Block_id)
values(1, 6);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 1);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 2);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 3);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 4);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 5);
insert into BlockOfCourse(Course_id, Block_id)
values(2, 6);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 1);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 2);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 3);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 4);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 5);
insert into BlockOfCourse(Course_id, Block_id)
values(3, 6);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 1);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 2);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 3);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 4);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 5);
insert into BlockOfCourse(Course_id, Block_id)
values(4, 6);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 1);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 2);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 3);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 4);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 5);
insert into BlockOfCourse(Course_id, Block_id)
values(5, 6);

select * from BlockOfCourse;

insert into StatusStud(Status)
values('Прошёл');
insert into StatusStud(Status)
values('Частично пройшёл/В процессе');
insert into StatusStud(Status)
values('Результат неудовлетворительный');

select * from StatusStud;

insert into Users(Name, Login, Password, Course_id, Status_id)
values('Андрей', 'Ansy', '123456', 2, 2);
insert into Users(Name, Login, Password, Course_id, Status_id)
values('Марк', 'Markysha24', 'qwerty', 1, 2);
insert into Users(Name, Login, Password, Course_id, Status_id)
values('Валерия', 'Kotik', '135790', 5, 1);
insert into Users(Name, Login, Password, Course_id, Status_id)
values('Виктория', 'Vikusya', '246810', 4, 3);
insert into Users(Name, Login, Password, Course_id, Status_id)
values('Марина', 'Marina32', 'qetuop', 1, 1);
insert into Users(Name, Login, Password, Course_id, Status_id)
values('Денис', 'Zipka', 'asdfgh', 3, 2);

select * from Users;

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 1, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 3, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 4, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 5, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 6, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 7, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 8, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 9, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 10, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 11, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 12, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 13, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(1, 14, 0);

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 1, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 3, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 4, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 5, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 6, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 7, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 8, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 9, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 10, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 11, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 12, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 13, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(2, 14, 0);

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 1, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 3, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 4, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 5, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 6, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 7, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 8, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 9, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 10, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 11, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 12, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 13, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(3, 14, 5);

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 1, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 3, 2);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 4, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 5, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 6, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 7, 3);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 8, 2);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 9, 2);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 10, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 11, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 12, 2);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 13, 2);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(4, 14, 2);

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 1, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 3, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 4, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 5, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 6, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 7, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 8, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 9, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 10, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 11, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 12, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 13, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(5, 14, 4);

insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 1, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 2, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 3, 4);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 4, 5);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 5, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 6, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 7, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 8, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 9, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 10, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 11, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 12, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 13, 0);
insert into AttestContents(User_id, Content_id, MarkOfContent)
values(6, 14, 0);

select * from AttestContents;

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(1, 6, 0);

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(2, 6, 0);

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(3, 6, 0);

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(4, 6, 0);

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(5, 6, 0);

insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 1, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 2, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 3, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 4, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 5, 0);
insert into AttestBlock(User_id, Block_id, MarkOfBlock)
values(6, 6, 0);

select * from AttestBlock;

insert into Log(User_id, LastLogDate)
values(1, '2022-12-21 12:39:35');
insert into Log(User_id, LastLogDate)
values(2, '2022-11-18 09:24:59');
insert into Log(User_id, LastLogDate)
values(3, '2022-08-03 16:03:12');
insert into Log(User_id, LastLogDate)
values(4, '2022-10-19 22:15:49');
insert into Log(User_id, LastLogDate)
values(5, '2021-12-28 20:47:47');
insert into Log(User_id, LastLogDate)
values(6, '2022-12-25 10:53:03');

select * from AttestContents;
select * from BlockContents;
select * from AttestBlock;


select distinct Name, Block_name from Users, AttestBlock,Blocks
where MarkOfBlock = 5
and Blocks.Block_id = AttestBlock.Block_id
and Users.User_id = AttestBlock.User_id;

select Login, LastLogDate from Users, Log 
where Users.User_id = Log.User_id
and LastLogDate > '2022-11-30 23:59:59';

select distinct Name, Meth_inst from Users, AttestContents, Contents
where Users.User_id = AttestContents.User_id
and AttestContents.Content_id = Contents.Content_id
and MarkOfContent <= 3;

select distinct Name, Login, Status from Users, StatusStud
where Users.Status_id = StatusStud.Status_id
and StatusStud.Status_id = 1;

select distinct Name, Name_course from Users, Course, AttestBlock, BlockOfCourse
where Users.User_id = AttestBlock.User_id
and BlockOfCourse.Block_id = AttestBlock.Block_id
and BlockOfCourse.Course_id = Course.Course_id
and Users.Course_id = Course.Course_id
and AttestBlock.MarkOfBlock = 3
and AttestBlock.Block_id = 4;

select Name, Name_course, LastLogDate from Users, Course, Log
where Users.Course_id = Course.Course_id
and Users.User_id = Log.User_id
and Log.LastLogDate > '2022-11-01';

select distinct Meth_inst, Block_name, Name_course from Contents, Blocks, BlockContents, Course, BlockOfCourse, AttestBlock, Users
where Contents.Content_id = BlockContents.Content_id
and Blocks.Block_id = BlockContents.Block_id
and BlockOfCourse.Block_id = Blocks.Block_id
and AttestBlock.Block_id = Blocks.Block_id
and Course.Course_id = BlockOfCourse.Course_id
and Users.User_id = AttestBlock.User_id
and Blocks.Block_id <= 3
and AttestBlock.MarkOfBlock < 3;