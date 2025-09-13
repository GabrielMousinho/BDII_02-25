create database bd_livro_01;

use bd_livro_01;

create table tb_genero (cd_genero int not null primary key, genero char(30));

create table tb_editora (cd_editora int not null primary key, editora char(30));

create table tb_livro (isbn int not null primary key, titulo char(50), cd_editora int, cd_genero int, preco money);