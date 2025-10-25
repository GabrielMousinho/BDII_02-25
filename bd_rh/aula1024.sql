USE bd_rh_0201;

START TRANSACTION;
SELECT * FROM tb_funcionario;
UPDATE tb_funcionario SET salario = salario * 1.1;
SELECT * FROM tb_funcionario;

COMMIT;

ROLLBACK;

SELECT * FROM tb_funcionario;

SELECT funcionario, cd_setor FROM tb_funcionario GROUP BY funcionario, cd_setor ORDER BY cd_setor ASC;

SELECT S.setor Seção, COUNT(F.matricula) Qtdd FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor GROUP BY S.setor;

/* 1- Listar os funcionários que estão abaixo da media salarial*/
SELECT AVG(salario) Salário_médio FROM tb_funcionario;
SELECT * FROM tb_funcionario WHERE salario <= (SELECT AVG(salario) Salário_médio FROM tb_funcionario);

/* 2- Listar o total de funcionários por cargo*/
SELECT C.cargo Cargo, COUNT(F.matricula) Qtdd FROM tb_funcionario F INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo GROUP BY C.cargo;

/* 3- Listar os funcionários, cargo com salário acima da media*/
SELECT F.funcionario Funcionário, C.cargo Cargo FROM tb_funcionario F INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo WHERE salario >= (SELECT AVG(salario) Salário_médio FROM tb_funcionario);

/* 4- Atualiza em 30% a mais o salário dos funcionários e desfazer a atualização*/
START TRANSACTION;

SELECT * FROM tb_funcionario;
UPDATE tb_funcionario SET salario = salario * 1.3;
SELECT * FROM tb_funcionario;

ROLLBACK;

SELECT * FROM tb_funcionario;

/* 5- Excluir todos os funcionários e desfazer a atualização*/
START TRANSACTION;

SELECT * FROM tb_funcionario;
DELETE FROM tb_funcionario;
SELECT * FROM tb_funcionario;

ROLLBACK;