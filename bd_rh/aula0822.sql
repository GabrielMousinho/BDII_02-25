
Create database bd_rh_0201;

use bd_rh_0201;

create table tb_funcionario (matricula int not null primary key,
							 funcionario char(50),
							 dt_nascimento date,
							 cd_setor int,
							 cd_cargo int,
							 salario money);

create table tb_cargo (cd_cargo int not null primary key,
					   cargo char(20));

create table tb_setor (cd_setor int not null primary key,
					   setor char(20));

alter table tb_funcionario add constraint fk_setor foreign key (cd_setor) references tb_setor (cd_setor);

alter table tb_funcionario add constraint fk_cargo foreign key (cd_cargo) references tb_cargo (cd_cargo);

INSERT INTO tb_setor(cd_setor, setor) VALUES
(1,'enfermaria'),
(2, 'administracao'),
(3, 'informatica'),
(4, 'engenharia'),
(5, 'juridico'),
(6, 'logistica'),
(7, 'presidencia');

INSERT INTO tb_cargo(cd_cargo, cargo) VALUES
(1, 'enfermeiro'),
(2, 'administrador'),
(3, 'analista'),
(4, 'engenheiro'),
(5, 'advogado'),
(6, 'gerente'),
(7, 'executivo');

INSERT INTO tb_funcionario (matricula, funcionario, dt_nascimento, cd_setor, cd_cargo, salario) VALUES
(1, 'Ana Clara', '1977-07-05', 5, 1, 3000.00),
(2, 'Patricia Azevedo', '1944-07-04', 1, 1, 4000.00),
(3, 'Jose Maria', '1971-05-10', 3, 1, 6000.00),
(4, 'Sonia Abrantes', '1979-05-29', 4, 1, 7000.00),
(5, 'Maria Fernanda', '1965-01-22', 2, 2, 18000.00),
(6, 'Jose Alberto', '1955-01-13', 2, 2, 15000.00);
