--a)
select cpf, fnome, datanasc
from funcionario;
--b)
select cpf, fnome, datanasc, dnumero
from funcionario
order by dnumero, fnome;
--c)
select f.cpf, f.fnome, f.datanasc, f.dnumero
from funcionario f
join departamento d on f.dnumero = d.dnumero
where d.dnome = 'Pesquisa';
--d)
select d.dnumero, d.dnome ,count(p.projnumero)
from departamento d
left join projeto p on d.dnumero = p.dnumero
group by d.dnumero, d.dnome
order by d.dnumero;
--e)
select p.projnumero, p.projnome, p.projlocal, f.fnome,a.horas
from projeto p
join projeto_alocacao a on p.projnumero = a.projnumero
join funcionario f on a.cpf = f.cpf
order by p.projnome asc, a.horas desc;
--f) 
select p.projnumero, p.projnome, sum(a.horas)
from projeto p
join projeto_alocacao a on p.projnumero = a.projnumero
group by p.projnumero, p.projnome
order by p.projnumero;
--g)
select p.projnumero, p.projnome, count(a.cpf)
from projeto p
join projeto_alocacao a on p.projnumero = a.projnumero
group by p.projnumero, p.projnome;

select max(contagem)
from (
    select count(*) as contagem
    from projeto_alocacao pa
    group by pa.projnumero
) as sub;

select p.projnumero, p.projnome, count(a.cpf) 
from projeto p
join projeto_alocacao a on p.projnumero = a.projnumero
group by p.projnumero, p.projnome
having count(a.cpf) = (
    select max(contagem)
    from (
        select count(*) as contagem
        from projeto_alocacao pa
        group by pa.projnumero
    ) as sub
);
--h)
select a.cpf, sum(a.horas) as horas
from projeto_alocacao a
group by a.cpf;
);
select max(t.total_horas)
from (
    select a.cpf, sum(a.horas) as total_horas
    from projeto_alocacao a
    group by a.cpf
) as t;

select p.projnumero, p.projnome, d.dnome, f.cpf, f.fnome, a.horas
from projeto p
join departamento d on p.dnumero = d.dnumero
join projeto_alocacao a on p.projnumero = a.projnumero
join funcionario f on a.cpf = f.cpf
where f.cpf in (
    select a.cpf
    from projeto_alocacao a
    group by a.cpf
    having sum(a.horas) = (
        select max(t.total_horas)
        from (
            select a.cpf, sum(a.horas) as total_horas
            from projeto_alocacao a
            group by a.cpf
        ) as t
    )
);

--i)
select f.cpf, f.fnome
from funcionario f
left join projeto_alocacao a on f.cpf = a.cpf
where a.cpf is null;
--j)
select f.cpf, f.fnome, d.dnome 
from funcionario f
join departamento d on f.dnumero = d.dnumero
order by f.fnome 
offset 2
limit 1;
--k)
select f.cpf, f.fnome, f.dnumero, df.dnome, p.projnumero, p.dnumero, dp.dnome 
from funcionario f
join departamento df on f.dnumero = df.dnumero
join projeto_alocacao a on f.cpf = a.cpf
join projeto p on a.projnumero = p.projnumero
join departamento dp on p.dnumero = dp.dnumero
where f.dnumero <> p.dnumero;
--l)
select p.projnome,d.dnome, avg(a.horas * 100) as media
from projeto p
join departamento d on p.dnumero = d.dnumero
join projeto_alocacao a on p.projnumero = a.projnumero
group by  p.projnome, d.dnome
order by media asc;
