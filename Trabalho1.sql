---QUESTÃO 1)
---Letra a)
create database sportdb;
---Letra b)
create table status_usuario(
	status_id int4 not null,
	descricao varchar(255) not null,
	primary key (status_id)
);
create table tipo_locavel (
	tipo_locavel_id serial4 not null,
	descricao varchar(255),
	primary key (tipo_locavel_id)
);
create table usuario (
	usuario_id varchar(40) not null,
	senha varchar(100) not null,
	data_ultimo_acesso timestamp,
	data_insercao timestamp,
	data_edicao timestamp,
	data_delecao timestamp,
	status_id int4,
	primary key (usuario_id),
	foreign key (status_id) references status_usuario(status_id)
);

create table endereco (
	endereco_id bigserial not null,
	logradouro varchar(10) not null,
	endereco varchar(255),
	numero int4,
	cep int4,
	bairro varchar(100),
	cidade varchar(100),
	estado bpchar(2),
	pais varchar(40),
	primary key (endereco_id)
);

create table cliente (
	cliente_id bigserial not null,
	nome varchar(255) not null,
	sobrenome varchar(255) not null,
	documento varchar(30) not null,
	tipo_documento int4,
	endereco_id int8,
	usuario_id varchar(40),
	primary key (cliente_id),
	foreign key (endereco_id) references endereco(endereco_id),
	foreign key (usuario_id) references usuario(usuario_id)
);
create table centro_desportivo(
	centro_desportivo_id bigserial not null,
	nome varchar(255),
	endereco_id int8,
	primary key(centro_desportivo_id),
	foreign key (endereco_id) references endereco(endereco_id)
);

create table locavel(
	centro_desportivo_id int8 not null,
	tipo_locavel_id int4 not null,
	valor numeric,
	termos varchar,
	primary key(centro_desportivo_id,tipo_locavel_id),
	foreign key (centro_desportivo_id) references centro_desportivo(centro_desportivo_id),
	foreign key (tipo_locavel_id) references tipo_locavel(tipo_locavel_id)
);
create table agenda(
	cliente_id int8 not null,
	centro_desportivo_id int8 not null,
	tipo_locavel_id int4 not null,
	data_agendamento timestamp not null,
	primary key(cliente_id,centro_desportivo_id,tipo_locavel_id,data_agendamento),
	foreign key (tipo_locavel_id) references tipo_locavel(tipo_locavel_id),
	foreign key (centro_desportivo_id) references centro_desportivo(centro_desportivo_id),
	foreign key (cliente_id) references cliente(cliente_id)
	);

--QUESTÃO 2)
insert into status_usuario (status_id, descricao)values (1,'ativo');
insert into status_usuario (status_id, descricao) values (2,'inativo');


insert into tipo_locavel (tipo_locavel_id, descricao)values (1,'Quadra futebol de salão');
insert into tipo_locavel (tipo_locavel_id, descricao)values (2,'Quadra de tenis');
insert into tipo_locavel (tipo_locavel_id, descricao)values (3,'Quadra de beach tenis');
insert into tipo_locavel (tipo_locavel_id, descricao)values (4,'Quadra de padel');
insert into tipo_locavel (tipo_locavel_id, descricao)values (5,'Quadra de futebol 7');
insert into tipo_locavel (tipo_locavel_id, descricao)values (6,'Quadra de futebol de campo');
insert into tipo_locavel (tipo_locavel_id, descricao)values (7,'Quadra de squash');


insert into usuario (usuario_id,senha,data_ultimo_acesso,data_insercao,data_edicao,data_delecao,status_id) values ('helena.rodrigues@gmail.com','lab123',null,'09/06/2024 18:56',null,null,1);
insert into usuario (usuario_id,senha,data_ultimo_acesso,data_insercao,data_edicao,data_delecao,status_id) values ('ines.oliveira@gmail.com','amf123',null,'09/06/2024 18:59',null,null,1);


insert into endereco (endereco_id,logradouro,endereco,numero,cep,bairro,cidade,estado,pais) values (1 ,'Rua','Cambuci',10,09873940,'Centro','SãoLeopoldo','RS','Brasil');
insert into endereco (endereco_id,logradouro,endereco,numero,cep,bairro,cidade,estado,pais) values (2 ,'Rua','Groenlândia',1983,98745999,'Praia Grande','Torres','RS','Brasil');
insert into endereco (endereco_id,logradouro,endereco,numero,cep,bairro,cidade,estado,pais) values (3 ,'Rua','Val de Buia',1544,9874456,'Moinhos de Vento','Porto Alegre','RS','Brasil');

insert into cliente(cliente_id,nome,sobrenome,documento,tipo_documento,endereco_id,usuario_id) values (1,'Helena','Rodrigues','705.127.910-66',1,2,'helena.rodrigues@gmail.com');
insert into cliente(cliente_id,nome,sobrenome,documento,tipo_documento,endereco_id,usuario_id) values (2,'Inês','Oliveira','574.574.105-44',1,3,'ines.oliveira@gmail.com');

insert into centro_desportivo(centro_desportivo_id,nome,endereco_id) values(1,'Top das galáxias',1);
insert into centro_desportivo(centro_desportivo_id,nome,endereco_id) values(2,'Bola de ouro',2);
insert into centro_desportivo(centro_desportivo_id,nome,endereco_id) values(3,'Torres Beach Park',3);

insert into locavel(centro_desportivo_id,tipo_locavel_id,valor,termos) values(1,1,240,'maximo de 10 jogadores, valor pelo período de uma hora');
insert into locavel(centro_desportivo_id,tipo_locavel_id,valor,termos) values(2,2,120,'maximo de 2 jogadores, valor pelo período de uma hora');
insert into locavel(centro_desportivo_id,tipo_locavel_id,valor,termos) values(3,3,60,'sem limite de jogadores, valor pelo período de uma hora');

insert into agenda(cliente_id,centro_desportivo_id,tipo_locavel_id,data_agendamento) values(1, 1, 1, '2024-05-22 10:00:00'
);
insert into agenda(cliente_id,centro_desportivo_id,tipo_locavel_id,data_agendamento) values(2, 3, 3, '2024-05-21 14:00:00');

--QUESTÃO 3
--- A vantagem de ter o email como chave primária é que não é preciso se preocupar em criar uma váriavel própria para guardar nesse caso 
--o id do usuário nesse caso gerando menos trabalho a parte ruim é que não se tem controle de que essa chave primária sempre funcionará 
--no banco pois não se tem controle sobre podemos dar um exemplo de que se um dia o google decidi atualizar o seu email aonde possam 
--existir múltiplos gmails com mesmo nome, nesse caso seu banco de dados será comprometido com a decisão da google e terá que ser 
--atualizada sendo assim essa uma grande desvantagem


--QUESTÃO 4
ALTER TABLE usuario ADD COLUMN email varchar(40);

UPDATE usuario SET email = usuario_id;

ALTER TABLE cliente DROP CONSTRAINT cliente_usuario_id_fkey;

UPDATE usuario SET usuario_id = 1 WHERE email = 'helena.rodrigues@gmail.com';

UPDATE usuario SET usuario_id = 2 WHERE email = 'ines.oliveira@gmail.com';

UPDATE cliente SET usuario_id = 1 WHERE usuario_id = 'helena.rodrigues@gmail.com';

UPDATE cliente SET usuario_id = 2 WHERE usuario_id = 'ines.oliveira@gmail.com';

ALTER TABLE usuario ALTER COLUMN usuario_id TYPE bigint USING usuario_id::bigint;

CREATE SEQUENCE usuario_pk_sequence OWNED BY usuario.usuario_id;

select setval('usuario_pk_sequence', (select max(usuario_id) from usuario));

select setval('usuario_pk_sequence', (select max(usuario_id) from usuario));

alter table cliente alter column usuario_id type bigint using usuario_id::bigint

ALTER TABLE cliente ADD CONSTRAINT cliente_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id);

insert into usuario (usuario_id, email, senha, data_ultimo_acesso, data_insercao, data_edicao, data_delecao, status_id)
values (default, 'paulo.vargas@gmail.com','amf123', null, now(), null, null, 1);
select * from usuario;

