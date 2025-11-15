USE bd_rh_0201;

/*Ex 1) Criar uma função - fc_ex_01 para listar o ano da pessoa mais velha 
        Lista matrícula, funcionário, fc_ex_01, ano, dt_nascimento tb_funcionario*/
  
DELIMITER $$
CREATE FUNCTION fc_ex_01()
RETURNS YEAR
DETERMINISTIC
BEGIN
	DECLARE mais_velho YEAR;
    SELECT MIN(YEAR(dt_nascimento)) INTO mais_velho FROM tb_funcionario;
    RETURN(mais_velho);
END$$
DELIMITER ;

SELECT matricula, funcionario, fc_ex_01() AS Ano, dt_nascimento FROM tb_funcionario;

/*Ex 2) Criar uma função - fc_ex_02 para listar setor com mais funcionários 
        Lista cd_setor, setor, fc_ex_02 tb_funcionario*/
        
DELIMITER $$
CREATE FUNCTION fc_ex_02()
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE qtdd_func INT;
    SELECT COUNT(matricula) INTO qtdd_func FROM tb_funcionario;
    RETURN(qtdd_func);
END$$
DELIMITER ;

SELECT fc_ex_02() AS qtdd_func;
  
/*Ex 3) Criar uma função - fc_ex_03 para listar maior salário 
        Lista matricula, funcionario, fc_ex_03, salario tb_funcionario*/

DELIMITER $$
CREATE FUNCTION fc_ex_03()
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
	DECLARE maior_salario DECIMAL(12,2);
    SELECT MAX(salario) INTO maior_salario FROM tb_funcionario;
    RETURN(maior_salario);
END$$
DELIMITER ;

SELECT matricula, funcionario, fc_ex_03() AS Maior_Salario, salario FROM tb_funcionario;
