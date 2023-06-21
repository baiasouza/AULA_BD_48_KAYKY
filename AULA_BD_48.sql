create database empresa_xpto;

drop database empresa_xpto;

use empresa_xpto;

create table funcionarios (
	id int auto_increment,
    nome varchar(60),
    sobrenome varchar(60),
    salario decimal(10,2),
    primary key (id)
);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines terminated by '\n'
ignore 1 lines 
(nome, sobrenome, salario) set id = null;

select * from funcionarios;

select * from funcionarios where salario <1200;

select nome, sobrenome from funcionarios order by salario limit 5;

select nome, sobrenome from funcionarios order by salario desc limit 5;

select * from  funcionarios where nome= 'Carlo' or nome= 'Gil';

select * from funcionarios where (nome= 'gil' or nome= 'carlo') and salario >15000;

select * from  funcionarios where sobrenome= 'Benn' or sobrenome= 'Ramet';

select * from  funcionarios where (sobrenome= 'Benn' or sobrenome= 'Ramet') and salario <5000;

select * from funcionarios where salario between 5000 and 10000;

select nome, sobrenome from funcionarios where salario between 2000 and 3000;

select sum(salario) as soma_salarios from funcionarios;

select avg(salario) as media_salarios from funcionarios;

select count(*) as total_funcionarios from funcionarios;

select max(salario) as maior_salario from funcionarios;

select min(salario) as menor_salario from funcionarios;

select count(*) as total from funcionarios where salario >15000;

select count(*) as total from funcionarios where salario between 1212 and 5000;

select count(*) as total from funcionarios where salario between 5001 and 10000;

select count(*) as total from funcionarios where salario between 10001 and 15000;


