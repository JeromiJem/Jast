--1. Таблица employees

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Wayne Gonzales');

select * from employees;

--2. Таблица salary

create table salary (
	id serial primary key,
	month_salary integer not null
);

insert into salary (id, month_salary)
values (default, 2500);

select * from salary;

--3. Таблица employee_salary

create table employee_id (
	id serial primary key,
	employee_id integer not null unique,
	salary_id integer not null
);

insert into employee_id (id, employee_id, salary_id)
values (default, 81, 12);

select * from employee_id;

--4.Таблица roles

create table roles (
	id serial primary key,
	role_name integer not null unique
);

alter table roles
alter column role_name type varchar (30)
using role_name::varchar(30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from roles;

--5.Таблица roles_employee

create table roles_employee (
	id serial primary key,
	employee_id integer not null unique,
	role_id integer not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

select * from roles_employee;

insert into roles_employee (id, employee_id, role_id)
values (default, 25, 12)