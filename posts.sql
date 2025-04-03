CREATE TABLE posts (
    id_post SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL, --FK
    conteudo_post TEXT NOT NULL,
    anexo VARCHAR(255), 
    data_publicacao DATE,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

INSERT INTO posts (id_usuario, conteudo_post, anexo, data_publicacao) VALUES
(2, 'Lorem ipsum dolor sit amet.', 'https://avatars.githubusercontent.com', '2023-06-14'),
(2, 'Lorem ipsum dolor sit amet.', 'https://avatars.githubusercontent.com', '2024-12-30'),
(1, 'Lorem ipsum dolor sit amet.', 'https://avatars.githubusercontent.com', '2025-04-11'),
(2, 'Lorem ipsum dolor sit amet.', 'https://avatars.githubusercontent.com', '2025-07-23'),
(1, 'Lorem ipsum dolor sit amet.', 'https://avatars.githubusercontent.com', '2023-01-01');