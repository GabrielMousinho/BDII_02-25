USE bd_rh_0201;

SELECT * FROM tb_cargo;
SELECT * FROM tb_funcionario;
SELECT * FROM tb_setor;


/* Exercício 1 - Lista matrícula, funcionário e setor*/
CREATE VIEW view_rh_mfst1 AS SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, S.setor FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor;

SELECT * FROM view_rh_mfst1;

/* Exercício 2 - Lista matrícula, funcionário, salario e cargo com salário acima de R$5.000,00*/
CREATE VIEW view_rh_mfsc5kt1 AS SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, F.salario AS Salário, C.cargo FROM tb_funcionario F INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo WHERE salario > 5000;

SELECT * FROM view_rh_mfsc5kt1;

/* Exercício 3 - Lista matrícula, funcionário, salario e setor com salário abaixo de R$4.000,00*/
CREATE VIEW view_rh_mfss4k AS SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, F.salario AS Salário, S.setor FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor WHERE salario < 4000;

SELECT * FROM view_rh_mfss4k;

/* Exercício 4 - Lista matrícula, funcionário, salario, setor e cargo*/
CREATE VIEW view_rh_mfssc AS SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, F.salario AS Salário, S.setor AS Setor, C.cargo AS Cargo FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo;

SELECT * FROM view_rh_mfssc;

/* Exercício 5 - Lista matrícula, funcionário, salario e setor com salário abaixo de R$4.000,00*/
CREATE VIEW view_rh_mfss4k AS SELECT F.matricula AS Matrícula, F.funcionario AS Funcionário, F.salario AS Salário, S.setor FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor WHERE salario < 4000;

SELECT * FROM view_rh_mfss4k;
