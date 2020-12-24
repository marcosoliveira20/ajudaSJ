INSERT INTO `usuario` (nome, email, cidade, estado, ra, adm, senha, foto) values
								("Zézinho", "zezinho@aluno.saojudas.br","São Paulo","São Paulo", "719178",  0, "1234", "icone-usuario.png");
INSERT INTO `usuario` (nome, email, cidade, estado, ra, adm, senha, foto) values
								("Huginho", "huginho@aluno.saojudas.br", "São Paulo","São Paulo", "885756", 1, "1234", "icone-usuario.png");

INSERT INTO `usuario` (nome, email, cidade, estado, ra, adm, senha, foto) values
								("Luizinho", "luizinho@aluno.saojudas.br", "São Paulo","São Paulo", "895756", 1, "1234", "icone-usuario.png");

INSERT INTO `materia` (nome, descricao) values ("calculo", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("programação orientada a objetos", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("geometria analitica e algebra ainear", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("banco de dados", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("matematica", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("física", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("java", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("português", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("python", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("desenvolvimento web", "Lorem ipsulum");
INSERT INTO `materia` (nome, descricao) values ("redação", "Lorem ipsulum");
INSERT INTO `usuario_materias` (usuario_id, materias_id) values (1,2);
INSERT INTO `usuario_materias` (usuario_id, materias_id) values (1,3);
INSERT INTO `usuario_materias` (usuario_id, materias_id) values (1,5);

INSERT INTO `usuario_materias` (usuario_id, materias_id) values (2,2);
INSERT INTO `usuario_materias` (usuario_id, materias_id) values (2,6);
INSERT INTO `usuario_materias` (usuario_id, materias_id) values (2,4);
