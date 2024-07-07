create database rhdb;
create table departamento(
dnumero int4 not null,
dnome varchar (300),
cpf_gerente varchar(20),
primary key (dnumero)
);
create table dep_localizacao(
dnumero int4 not null,
dlocal varchar(400) not null,
primary key (dnumero,dlocal),
foreign key (dnumero) references departamento(dnumero)
);
