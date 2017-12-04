create schema if not exists aula10;

use aula10;

create or replace table aula10.aluno (
	id bigint primary key auto_increment,
	matricula int not null,
	nome varchar(150) not null,
	email varchar(200) not null,
	nota01 float8,
	nota02 float8
);

/* descri��o da tabela */
desc aluno;

/*
MariaDB [aula10]> desc aluno;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | bigint(20)   | NO   | PRI | NULL    | auto_increment |
| matricula | int(11)      | NO   |     | NULL    |                |
| nome      | varchar(150) | NO   |     | NULL    |                |
| email     | varchar(200) | NO   |     | NULL    |                |
| nota01    | double       | YES  |     | NULL    |                |
| nota02    | double       | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
6 rows in set (0.05 sec)
*/

/* insere dados na tabela */
insert into aluno values(null, 1234, "Anisio", 
"anisios2jorge@gmail.com", 5.6, 6.5);

/* lista todos os registros da tabela */
select * from aluno where nome like 'anisio';