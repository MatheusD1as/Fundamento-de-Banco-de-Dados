insert into departamento (dnome, dnumero, cpf_gerente)
values 
('Pesquisa', 5, '33344555587'),
('Administração', 4, '98765432168'),
('Matriz', 1, '88866555576');

insert into funcionario (cpf, fnome, datanasc, endereco, dnumero)
values 
('12345678966', 'Silva, João B.', '1965-01-09', 'Rua das Flores, 751, São Paulo, SP', 5),
('33344555587', 'Wong, Fernando T.', '1955-08-12', 'Rua da Lapa, 34, São Paulo, SP', 5),
('99988777767', 'Zelaya, Alice J.', '1968-01-19', 'Rua Souza Lima, 35, Curitiba, PR', 4),
('98765432168', 'Souza, Jennifer S.', '1941-06-20', 'Av. Arthur de Lima, 54, Santo André, SP', 4),
('66688444476', 'Lima, Ronaldo K.', '1962-09-15', 'Rua Rebouças, 65, Piracicaba, SP', 5),
('45345345376', 'Leite, Joice A.', '1972-07-31', 'Av. Lucas Obes, 74, São Paulo, SP', 5),
('98798798733', 'Pereira, André V.', '1969-03-29', 'Rua Timbira, 35, São Paulo, SP', 4),
('88866555576', 'Brito, Jorge E.', '1937-11-10', 'Rua do Horto, 35, São Paulo, SP', 1);

insert into dep_localizacao (dnumero, dlocal)
values 
(1, 'São Paulo'),
(4, 'Mauá'),
(5, 'Santo André'),
(5, 'Itu'),
(5, 'São Paulo');

insert into projeto (projnumero, projnome, projlocal, dnumero)
values 
(1, 'Construção Gasoduto Cubatão Ipiranga', 'Santo André', 5),
(2, 'Construção Prédio Conservatório Maestro Cardim', 'Itu', 5),
(3, 'Construção Viaduto Paulo Afonso', 'São Paulo', 5),
(10, 'Reforma Escola Henrique Dias', 'Mauá', 4),
(20, 'Implantação laboratório de cyber segurança', 'São Paulo', 1),
(30, 'Criação data center', 'Mauá', 4);

insert into projeto_alocacao (cpf, projnumero, horas)
values 
('12345678966', 1, 32.5),
('12345678966', 2, 7.5),
('66688444476', 3, 40.0),
('45345345376', 1, 20.0),
('45345345376', 2, 20.0),
('33344555587', 2, 10.0),
('33344555587', 3, 10.0),
('33344555587', 10, 10.0),
('33344555587', 20, 10.0),
('99988777767', 30, 30.0),
('99988777767', 10, 10.0),
('98798798733', 10, 35.0),
('98798798733', 30, 5.0),
('98765432168', 30, 20.0),
('98765432168', 20, 15.0),
('88866555576', 20, NULL);
