--QUESTÃO 1)
create DATABASE filmedb;
create table sala (
    numero_sala int,
    descricao varchar(100) not null,
    capacidade int not null default 100 check(capacidade < 300),
    primary key (numero_sala)    
);
create table diretor (
    cod_diretor int,
    nome varchar(255) not null,
    primary key (cod_diretor)
);
create table filme (
    cod_filme int,
    nome varchar(150) not null,
    ano_lancamento int not null,
    categoria varchar(50)not null,
    cod_diretor int,
    primary key(cod_filme),
    foreign key(cod_diretor) references diretor(cod_diretor)
    );
    
create table salafilme (
    numero_sala int,
    cod_filme int,
    data date not null,
    horario int not null,
    primary key (numero_sala,cod_filme),
    foreign key (numero_sala) references sala(numero_sala),
    foreign key(cod_filme) references filme(cod_filme)
);
create table premio (
    cod_premio int,
    nome varchar(255) not null,
    ano int not null,
    cod_filme int,
    primary key(cod_premio),
    foreign key (cod_filme) references filme(cod_filme)
);


--Questão 2)
insert into sala (numero_sala, descricao, capacidade) values 
(1, 'Sala 1', 150),
(2, 'Sala 2', 200),
(3, 'Sala 3', 100),
(4, 'Sala 4', 250),
(5, 'Sala 5', 120);
insert into diretor (cod_diretor, nome) values 
(1, 'Steven Spielberg'),
(2, 'Christopher Nolan'),
(3, 'Martin Scorsese'),
(4, 'Quentin Tarantino'),
(5, 'James Cameron');
insert into filme (cod_filme, nome, ano_lancamento, categoria, cod_diretor) values
(1, 'Jurassic Park', 1993, 'Aventura', 1),
(2, 'Interestelar', 2014, 'Ficção científica', 2),
(3, 'O lobo de WallStreet', 2013, 'Drama', 3),
(4, 'Pulp Fiction', 1994, 'Crime', 4),
(5, 'Avatar', 2009, 'Aventura', 5);
insert into salafilme (numero_sala, cod_filme, data, horario) values
(1, 1, '2024-06-20', 1400),
(2, 2, '2024-06-21', 1600),
(3, 3, '2024-06-22', 1800),
(4, 4, '2024-06-23', 2000),
(5, 5, '2024-06-24', 2200);
INSERT INTO premio (cod_premio, nome, ano, cod_filme) VALUES 
(1, 'Oscar', 1994, 1),
(2, 'Globo de ouro', 2015, 2),
(3, 'Melhor filme do ano', 2014, 3),
(4, 'Melhor filme de Crime do Ano', 1994, 4),
(5, 'Filme com maior Bilheteria', 2010, 5);



--Questão 3)
update sala
set capacidade = 242
where numero_sala = 3;


--Questão 4)
update salafilme
set numero_sala = 5
where data = (
    select min(data)
    from salafilme
) and horario = (
    select min(horario)
    from salafilme
   where data = (
        select min(data)
        from salafilme
    )
);


-- Questão 5)
alter table salafilme
add constraint checa_data CHECK (data >= CURRENT_DATE),
ADD CONSTRAINT checa_horario CHECK (horario >= 0 AND horario <= 2359);




-- Questão 6)
create table ator(
    cod_ator int,
    nome varchar(100) not null,
    sobrenome VARCHAR(100) not null,
    nome_artistico VARCHAR(100) not null,
    primary key (cod_ator)
);
create table filme_ator (
    cod_filme int,
    cod_ator int,
    primary key (cod_filme, cod_ator),
    foreign key (cod_filme) references filme(cod_filme),
    foreign key (cod_ator) references ator(cod_ator)
    );
   
   
   
   
-- Questão 7)
create table filme_a as
select * from filme
where nome like 'F%' OR (ano_lancamento between 2000 and 2010);



-- Questão 8)
update salafilme
set cod_filme = 2, data = '2024-06-20', horario = 1500
where numero_sala in (1, 2);



--Questão 9)
delete from filme_a
where cod_filme not in (
    select distinct cod_filme
    from salafilme
    where data >= current_date
);


--Questão 10
drop table if exists filme;
drop table if exists ator;
drop table if exists salafilme;
drop table if exists diretor;
drop table if exists premio;
drop database if exists filmedb;
