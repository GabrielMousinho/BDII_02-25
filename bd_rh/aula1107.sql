USE bd_rh_0201;

DELIMITER $$

CREATE PROCEDURE sp_lista3(in vmatricula int)
BEGIN
SELECT * FROM tb_funcionario WHERE matricula = vmatricula;
END$$

DELIMITER ;

CALL sp_lista3(4);

/*Exercícios*/
/*1) Criar uma stored procedure - sp_07A para listar (matrícula, funcionario, setor) de tb_funcionario e tb_setor*/

DELIMITER $$

CREATE PROCEDURE sp_07A()
BEGIN
SELECT F.matricula, F.funcionario, S.setor FROM tb_funcionario F INNER JOIN tb_setor S ON F.cd_setor = S.cd_setor;
END$$

DELIMITER ;

CALL sp_07A;

/*2) Criar uma stored procedure - sp_07B para Incluir novos funcionarios e depois listar*/

DELIMITER $$

CREATE PROCEDURE sp_07B(IN i_mat INT, i_func CHAR(50), i_dt_nasc DATE, i_cd_setor INT, i_cd_cargo INT, i_salario DECIMAL(12,2))
BEGIN
INSERT INTO tb_funcionario (matricula, funcionario, dt_nascimento, cd_setor, cd_cargo, salario) 
VALUES (i_mat, i_func, i_dt_nasc, i_cd_setor, i_cd_cargo, i_salario);
SELECT * FROM tb_funcionario;
END$$

DELIMITER ;

CALL sp_07B(7, 'Nicole Penelope', '2023-04-04', 1, 2, 1350.00);

/*3) Criar uma stored procedure - sp_07C para Alterar o nome do funcionario in - matrícula, novonome*/

DELIMITER $$

CREATE PROCEDURE sp_07C(IN mat INT, novo_nome_func CHAR(50))
BEGIN
UPDATE tb_funcionario SET funcionario = novo_nome_func WHERE matricula = mat; 
END$$

DELIMITER ;

CALL sp_07C(7, 'Nicole');

/*4) Criar uma stored procedure - sp_07D para Consulta de Agregação que mostre a quantidade de funcionario por cargo*/

DELIMITER $$

CREATE PROCEDURE sp_07D()
BEGIN
SELECT C.cargo Cargo, COUNT(F.matricula) Qtdd FROM tb_funcionario F INNER JOIN tb_cargo C ON F.cd_cargo = C.cd_cargo GROUP BY C.cargo;
END$$

DELIMITER ;

CALL sp_07D;