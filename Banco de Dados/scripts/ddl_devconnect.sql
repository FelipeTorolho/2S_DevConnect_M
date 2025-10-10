--DDL

CREATE DATABASE db_devconnect;

CREATE TABLE tb_usuario(
id		    	  INT		     IDENTITY(1, 1)		 PRIMARY KEY ,
nome_completo     NVARCHAR(255)  UNIQUE               NOT NULL,
nome_usuario      NVARCHAR(50)   UNIQUE               NOT NULL,
email             NVARCHAR(255)  UNIQUE               NOT NULL,
senha             NVARCHAR(50)                        NOT NULL,
foto_perfil_url   NVARCHAR(150)                       NULL
);

SELECT * FROM tb_usuario;


CREATE TABLE tb_publicacao(
 id		    	   INT		      IDENTITY(1, 1)	  PRIMARY KEY
,descricao         NVARCHAR(250)                      NOT NULL
,imagem_url        NVARCHAR(150)                      NOT NULL
,data_publicacao   DATE                               NOT NULL

,Id_usuario INT NOT NULL FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao;


CREATE TABLE tb_curtida(
 id		    	   INT		     IDENTITY(1, 1)		 PRIMARY KEY

,Id_usuario INT NOT NULL FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
,Id_publicacao INT NOT NULL FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_curtida;


CREATE TABLE tb_comentario(
 id		    	   INT		      IDENTITY(1, 1)		 PRIMARY KEY
,texto             NVARCHAR(250)                         NOT NULL
,data_comentario   DATE                                  NOT NULL

,Id_usuario INT NOT NULL FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
,Id_publicacao INT NOT NULL FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_comentario;


CREATE TABLE tb_seguidor (
id_usuario_seguidor INT    NOT NULL,
id_seguindo INT     NOT NULL,

PRIMARY KEY (id_usuario_seguidor, id_seguindo),
FOREIGN KEY  (id_usuario_seguidor) REFERENCES  tb_usuario(id),
FOREIGN KEY  (id_seguindo) REFERENCES tb_usuario(id)
	);
GO

SELECT * FROM tb_seguidor;