USE bd_livro0201;

SELECT * FROM tb_editora;
SELECT * FROM tb_genero;
SELECT * FROM tb_livro;

SELECT * FROM tb_livro WHERE cd_editora IN (SELECT cd_editora FROM tb_editora WHERE cd_editora < 3);

SELECT AVG(preco) Preço_médio FROM tb_livro;

SELECT * FROM tb_livro WHERE preco >= (SELECT AVG(preco) Preço_médio FROM tb_livro);

SELECT AVG(preco) Preço_médio FROM tb_livro WHERE cd_editora = 1;