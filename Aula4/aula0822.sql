
Create database bd_rh;

use bd_rh;

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

select matricula from tb_funcionario;