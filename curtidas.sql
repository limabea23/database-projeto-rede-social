CREATE TABLE curtidas (
    id_curtida SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL, --FK
    id_post INT, --FK
    id_comentario INT, --FK
    quantidade_curtidas INT NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_post FOREIGN KEY (id_post) REFERENCES posts(id_post),
    CONSTRAINT fk_comentarios FOREIGN KEY (id_comentario) REFERENCES comentarios(id_comentario)
);

INSERT INTO curtidas (id_usuario, id_post, id_comentario, quantidade_curtidas) VALUES 
(1, 4, 2, 1),
(2, NULL, 1, 1);