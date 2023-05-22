create table cafedra(
id int not null,
nazvanie varchar(40),
dekanat varchar(40),
primary key(id));
insert into cafedra(id, nazvanie, dekanat) values(1,'СиСС','Б.Ю. Миронов');
insert into cafedra(id, nazvanie, dekanat) values(2,'ИТ','М.Г. Городничев');
create table groups(
id int not null unique,
nazvanie varchar(40),
cafedra int not null,
primary key(id, cafedra),
foreign key(cafedra) references cafedra(id));
insert into groups(id, nazvanie, cafedra) values(1,'БCТ 2201',1);
insert into groups(id, nazvanie, cafedra) values(2,'БCТ 2202',1);
insert into groups(id, nazvanie, cafedra) values(3,'БИН 2210',2);
insert into groups(id, nazvanie, cafedra) values(4,'БИН 2211',2);
create table student(
id int not null,
name varchar(40),
pasport varchar(40),
groupa int not null,
primary key(id, groupa),
foreign key (groupa) references groups(id));
insert into student(id, name, pasport, groupa) values(1,'Ольга Хлопцева','3645271165',1);
insert into student(id, name, pasport, groupa) values(2,'Илья Колыбелкин','3746007264',1);
insert into student(id, name, pasport, groupa) values(3,'Михаил Лунгин','2847536645',1);
insert into student(id, name, pasport, groupa) values(4,'Андрей Сачивко','7653976143',1);
insert into student(id, name, pasport, groupa) values(5,'Антон Долгополов','6549376451',1);
insert into student(id, name, pasport, groupa) values(6,'Елизавета Березовская','0937463521',2);
insert into student(id, name, pasport, groupa) values(7,'Александр Глущенко','6281640572',2);
insert into student(id, name, pasport, groupa) values(8,'Влад Мишин','4506192851',2);
insert into student(id, name, pasport, groupa) values(9,'Виктория Андрюшенкова','1735495703',2);
insert into student(id, name, pasport, groupa) values(10,'Елена Заликова','6394514400',2);
insert into student(id, name, pasport, groupa) values(11,'Наталья Костина','1936472846',3);
insert into student(id, name, pasport, groupa) values(12,'Георгий Долин','3764528466',3);
insert into student(id, name, pasport, groupa) values(13,'Кирилл Кривский','4654376548',3);
insert into student(id, name, pasport, groupa) values(14,'Ирина Бондаренко','2276543846',3);
insert into student(id, name, pasport, groupa) values(15,'Александр Шереметьев','2736537784',3);
insert into student(id, name, pasport, groupa) values(16,'Дарья Кумачева','3746984756',4);
insert into student(id, name, pasport, groupa) values(17,'Максим Патанькин','3546270989',4);
insert into student(id, name, pasport, groupa) values(18,'Екатерина Соколова','4540087634',4);
insert into student(id, name, pasport, groupa) values(19,'Владимир Морозов','3540876287',4);
insert into student(id, name, pasport, groupa) values(20,'Никита Кочетков','4532764587',4);
select *
from student