/*         SQL_DDL               */
/*       Первая часть.           */
/*-------------------------------*/

/*  1. Создать таблицу employees 
  - id. serial,  primary key,
  - employee_name. Varchar(50), not null  */

create table employees(
id serial primary key,
employee_name varchar(50) not null);

select * from employees;

/*  2. Наполнить таблицу employee 70 строками  */

insert into employees (employee_name) values('Комзин Евдоким Аникитевич'), 
											('Алиев Глеб Натанович'), 
											('Янаева Ксения Наумовна'),
											('Ярустовская Лилия Константиновна'),
											('Повалий Яромир Львович'),
											('Федосеев Корнелий Валериевич'), 
											('Костин Болеслав Фёдорович'), 
											('Яворивский Эрик Данилович'),
											('Чернов Юлиан Максимович'),
											('Яворивский Эрик Данилович'),
											('Мухина Фаиза Егоровна'),
											('Зиновьева Уля Валентиновна'),
											('Сазонова Эжени Христофоровна'),
											('Григорьева Томила Онисимовна'),
											('Власова Илзе Олеговна'),
											('Гончар Роберт Михайлович'),
											('Кошелев Зуфар Фёдорович'),
											('Белов Цефас Максимович'),
											('Полищук Филипп Львович'),
											('Беспалова Надежда Львовна'),
											('Самсонова Инга Митрофановна'),
											('Худобяк Эрик Анатолиевич'),
											('Тягай Прохор Борисович'),
											('Зварыч Ждан Романович'),
											('Корнейчук Йозеф Андреевич'),
											('Городецкий Герман Леонидович'),
											('Пономарёв Устин Евгеньевич'),
											('Журавлёв Зенон Ярославович'),
											('Чикольба Роман Романович'),
											('Яковлев Ананий Анатолиевич'),
											('Орехов Евстахий Васильевич'),
											('Иванов Шамиль Эдуардович'),
											('Захаров Герман Сергеевич'),
											('Соколов Григорий Данилович'),
											('Евдокимов Альберт Викторович'),
											('Гурьев Орест Михайлович'),
											('Полищук Чарльз Дмитриевич'),
											('Лебедев Владислав Александрович'),
											('Михеев Гавриил Платонович'),
											('Овчаренко Григорий Валериевич'),
											('Ильин Аркадий Евгеньевич'),
											('Федоренко Шерлок Валериевич'),
											('Сазонова Вида Юлиановна'),
											('Дорофеева Божена Платоновна'),
											('Быкова Гелла Павловна'),
											('Гуляева Сильва Якуновна'),
											('Суханова Нора Тихоновна'),
											('Масловский Казбек Максимович'),
											('Воробьёва Фелиция Андреевна'),
											('Большакова Жасмин Эдуардовна'),
											('Волкова Беатриса Валентиновна'),
											('Цветкова Евгения Кирилловна'),
											('Ермакова Мия Мэлсовна'),
											('Калинина Милолика Адольфовна'),
											('Русаков Никита Эдуардович'),
											('Федотов Даниил Валериевич'),
											('Воробьёв Карим Григорьевич'),
											('Рымар Яромир Станиславович'),
											('Шевченко Сергей Львович'),
											('Уваров Фёдор Евгеньевич'),
											('Щукин Цезарь Владимирович'),
											('Субботин Донат Евгеньевич'),
											('Городецкий Карим Станиславович'),
											('Воронова Диана Иринеевна'),
											('Прохорова Ирина Валентиновна'),
											('Константинова Властилина Михайловна'),
											('Новикова Софья Дмитрьевна'),
											('Комарова Лайма Станиславовна'),
											('Ковалёва Жанна Федоровна'),
											('Петухова Земфира Геласьевна');

select * from employees;

/*  3. Создать таблицу salary 
    - id. Serial  primary key,
    - monthly_salary. Int, not null  */


create table salary(
id serial primary key,
monthly_salary int not null);

/*  4. Наполнить таблицу salary 15 строками  */

insert into salary (monthly_salary) values(1000), (1100), (1200), (1300),(1400),(1500), (1600), (1700),
										  (1800), (1900), (2000), (2100), (2200), 2300),(2400), (2500), 
										  (2000), (2100), (2200), (2300), (2400), (2500);
select * from salary;


/*  5. Создать таблицу employee_salary 
    - id. Serial  primary key,
    - employee_id. Int, not null, unique
    - salary_id. Int, not null  */

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

select * from employee_salary;

/*  6.Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */

insert into employee_salary (employee_id, salary_id) 
values(1,4),(2,7),(3,2),(4,5),(5,8),(6,9),(7,10),(8,11),(90,4),(80,2),
	  (11,5),(12,2),(13,7),(14,13),(15,16),(16,2),(17,11),(78,1),(79,4),(99,12),
	  (21,14),(22,5),(23,2),(24,8),(25,8),(26,9),(27,14),(28,1),(76,14),(75,2),
	  (31,4),(32,5),(33,7),(34,15),(35,8),(36,9),(37,10),(98,13),(84,3),(88,6);
										 
/*  7. Создать таблицу roles 
  - id. Serial  primary key,
  - role_name. int, not null, unique  */	 	 

create table roles(
id serial primary key,
role_name int unique not null);

select * from roles;

/*  8. Поменять тип столба role_name с int на varchar(30)  */

alter table roles alter column role_name type varchar(30);

/*  9. Наполнить таблицу roles 20 строками  */

insert into roles (role_name) 
values('Junior Python developer'), ('Middle Python developer'),('Senior Python developer'),('Junior Java developer'),('Middle Java developer'),
('Senior Java developer'),('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'),('Middle Manual QA engineer'),('Senior Manual QA engineer'),('Project Manager'),('Designer'),('HR'),('CEO'),
('Sales manager'),('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');

/*  10. Создать таблицу roles_employee 
  - id. Serial  primary key,
  - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
  - role_id. Int, not null (внешний ключ для таблицы roles, поле id)  */

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key(role_id) references roles(id));	

select * from roles_employee;

/*  11. Наполнить таблицу roles_employee 40 строками  */

insert into roles_employee(employee_id, role_id) values(1,1),(2,7),(3,3),(4,5),(5,4),(6,9),(7,8),(8,7),(9,10),(10,12),
	  (11,5),(12,2),(13,7),(14,13),(15,16),(16,15),(17,17),(18,18),(19,20),(20,19),
	  (21,14),(22,1),(23,12),(24,8),(25,18),(26,19),(27,14),(28,5),(29,15),(30,6),
	  (31,3),(32,5),(33,7),(34,8),(35,5),(36,11),(37,10),(38,19),(39,1),(40,11);										 