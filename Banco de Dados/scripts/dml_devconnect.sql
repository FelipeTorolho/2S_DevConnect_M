--DML

USE db_devconnect;

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url) 
VALUES ('Felipe torolho', 'Torolho', 'f@gmail.com', 'f@1234', 'www.escudodosaopaulo.com');

INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url) 
VALUES ('Rafael torolho', 'Torolhoo', 'r@gmail.com', 'r@1234', 'www.camisadosaopaulo.com');

SELECT * FROM tb_usuario;


INSERT INTO tb_publicacao (descricao, imagem_url, data_publicacao, id_usuario)
VALUES ('fim de mais uma partida', 'www.fotodomorumbi.com', '2023/09/23', 1);

SELECT * FROM tb_publicacao;


INSERT INTO tb_curtida (id_usuario, Id_publicacao) VALUES 
(1, 1),
(1, 1);

SELECT * FROM tb_curtida;


INSERT INTO tb_comentario (texto, data_comentario, id_usuario, id_publicacao) VALUES
('nossa o time jogou muito bem hoje', '2025/06/12', 1, 1),
('hoje tivemos um bom desempenho', '2023/08/22', 1, 1);

SELECT * FROM tb_comentario;


INSERT INTO tb_seguidor (id_seguidor, id_seguindo) VALUES
(1, 8),
(2, 9);

SELECT * FROM tb_seguidor;