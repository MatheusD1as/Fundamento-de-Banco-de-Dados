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

create table projeto(
projnumero int4 not null,
projnome varchar(300),
projlocal varchar(300),
dnumero int4,
primary key (projnumero),
foreign key (dnumero) references departamento(dnumero)
);

create table funcionario(
cpf varchar(20)not null,
fnome varchar(300),
datanasc date,
endereco varchar(600),
dnumero int4,
primary key(cpf),
foreign key (dnumero) references departamento(dnumero)
);

create table projeto_alocacao(
cpf varchar(20) not null,
projnumero int4 null,
horas float8,
primary key(cpf,projnumero),
foreign key (cpf) references funcionario(cpf),
foreign key (projnumero) references projeto(projnumero)
);
