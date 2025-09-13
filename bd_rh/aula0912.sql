USE bd_rh;

/* Teoria dos conjuntos */

SELECT F.matricula, F.funcionario, C.cargo FROM tb_funcionario F INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo;

SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, S.setor AS Setor FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_cargo = S.cd_setor;

SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, C.cargo AS Cargo, S.setor AS Setor, F.salario AS Salário FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_cargo = S.cd_setor INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo;

/* Sem o uso de JOIN*/

SELECT F.matricula, F.funcionario, S.setor FROM tb_funcionario F, tb_setor S WHERE F.cd_cargo = S.cd_setor;

SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, C.cargo AS Cargo, S.setor AS Setor, F.salario AS Salário FROM tb_funcionario F, tb_setor S, tb_cargo C WHERE F.cd_cargo = S.cd_setor and F.cd_cargo = C.cd_cargo;

