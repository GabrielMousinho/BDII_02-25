USE bd_livro0201;

SELECT * FROM tb_editora;
SELECT * FROM tb_genero;
SELECT * FROM tb_livro;

SELECT L.isbn AS ISBN, L.titulo AS Título, E.editora AS Editora, L.preco AS Preço FROM tb_livro L INNER JOIN tb_editora E ON L.cd_editora = E.cd_editora;

SELECT L.titulo AS Título, E.editora AS Editora, G.genero AS Gênero FROM tb_livro L INNER JOIN tb_editora E ON L.cd_editora = E.cd_editora INNER JOIN tb_genero G ON L.cd_genero = G.cd_genero;

/* Exercícios */

/* 1 Lista título, editora quando o preço maior que R$200,00 */

SELECT L.titulo AS Título, E.editora AS Editora, L.preco AS Preço FROM tb_livro L INNER JOIN tb_editora E ON L.cd_editora = E.cd_editora WHERE L.preco > 200.00;

/* 2 Lista título, genero quando o preço entre R$200,00 e R$300,00*/

SELECT L.titulo AS Título, G.genero AS Gênero, L.preco AS Preço FROM tb_livro L INNER JOIN tb_genero G ON L.cd_genero = G.cd_genero WHERE L.preco BETWEEN 200.00 AND 300.00;

/* 3 Lista título, editora e genero quando cd_editora 1, 2 e 3*/

SELECT L.titulo AS Título, E.editora AS Editora, G.genero AS Gênero FROM tb_livro L INNER JOIN tb_editora E ON L.cd_editora = E.cd_editora INNER JOIN tb_genero G ON L.cd_genero = G.cd_genero WHERE L.cd_editora IN (1,2,3);

/* 4 Lista título, editora e preço com mais 20% */

SELECT L.titulo AS Título, E.editora AS Editora, L.preco AS Preço, L.preco*1.2 AS Preço_Novo FROM tb_livro L INNER JOIN tb_editora E ON L.cd_editora = E.cd_editora;
