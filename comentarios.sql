CREATE TABLE comentarios (
    id_comentario SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL, --FK
    id_post INT NOT NULL, --FK
    conteudo_comentario TEXT NOT NULL,
    anexo VARCHAR(255), 
    data_publicacao DATE,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_post FOREIGN KEY (id_post) REFERENCES posts(id_post) 
);

INSERT INTO comentarios (id_usuario, id_post, conteudo_comentario, anexo, data_publicacao) VALUES
(1, 4, 'amei seu post. ajudou muito', NULL, '2025-07-23'),
(2, 4, 'muito obrigada!!!', NULL, '2025-07-23');