use bd_rh;

insert into tb_setor(cd_setor, setor) values
(1, 'Enfermaria'), (2, 'Administracao'), (3, 'Informatica'), 
(4, 'Engenharia'), (5, 'Juridico'), (6, 'Logistica'), (7, 'Presidencia');

insert into tb_cargo(cd_cargo, cargo) values
(1, 'Enfermeiro(a)'), (2, 'Administrador(a)'), (3, 'Analista'),
(4, 'Egenheiro(a)'), (5, 'Advogado(a)'), (6, 'Gerente'), (7, 'Executivo(a)');

insert into tb_funcionario(matricula, funcionario, dt_nascimento, cd_setor, cd_cargo, salario) values
(1, 'Ana Clara', '1997-07-05', 5, 1, 3000.00), (2, 'Patrícia Azevedo', '1944-07-04', 1, 1, 4000.00), (3, 'Jose Maria', '1971-05-10', 3, 1, 6000.00),
(4, 'Sonia Abrantes', '1979-05-29', 4, 1, 7000.00), (5, 'Valdir Reinaldo', '1960-09-22', 2, 2, 16000.00), (6, 'Jose Alberto', '1955-01-13', 2, 2, 15000.00);

/* 1) Listar a cd_setor = 2 na tabela tb_funcionario*/

select * from tb_funcionario WHERE cd_setor = 2;

/* 2) Listar 0 cd_cargo = 1 na tabela tb_funcionario*/

select * from tb_funcionario WHERE cd_cargo = 1;

/* 3) Excluir cd_cargo = 1 na tabela tb_cargo*/

delete from tb_cargo where cd_cargo = 1;

/* 4) Excluir cd_setor = 1 na tabela tb_setor*/

delete from tb_setor where cd_setor = 1;

/* 5) Alterar na tabela tb_funcionario matricula = 1 salario (6000)*/

update tb_funcionario set salario = 6000 where matricula = 1;

/* 6) Alterar - aumentar os salarios dos tb_funcionarios em 10%*/

update tb_funcionario set salario = salario * 1.1;

/* 7) Listar a tabela (tb_funcionario) salario > 5000*/

select * from tb_funcionario where salario > 5000;

/* 8) Listar a tabela (tb_funcionario) cd_cargo = 1*/

select * from tb_funcionario where cd_cargo = 1;
