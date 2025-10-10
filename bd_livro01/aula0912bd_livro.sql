USE bd_livro_01;

INSERT INTO tb_editora VALUES
	(1, 'novatec'),
	(2, 'amazon'),
	(3, 'coopmed'),
	(4, 'livraria florence'),
	(5, 'blucher'),
	(6, 'Mundial'),
	(7, 'saraiva'),
	(8, 'Editora Forum'),
	(9, 'Dickens');

INSERT INTO tb_genero VALUES
	(1, 'Computacao'),
	(2, 'Medicina'),
	(3, 'Engenharia'),
	(4, 'Juridico'),
	(5, 'Arquitetura'),
	(6, 'Biologia'),
	(7, 'Mecatronica'),
	(8, 'Publicidade');

INSERT INTO tb_livro VALUES 
	(1, 'banco de dados', 1, 1, 300.00),
	(2, 'Engenharia de Software', 1, 1, 350.00),
	(3, 'Ortopedia', 3, 2, 310.00),
	(4, 'Cardiologia', 4, 2, 320.00),
	(5, 'Estrutura Predial', 5, 3, 200.00),
	(6, 'Estrutura Hidraulica', 6, 3, 300.00),
	(7, 'Direito Penal', 7, 4, 150.00),
	(8, 'Direito Civil', 8, 4, 200.00),
	(9, 'Cores', 7, 5, 200.00),
	(10, 'Paisagismo', 8, 5, 250.00),
	(11, 'Virus', 9, 6, 300.00),

	(12, 'Bacteria', 9, 6, 300.00);
