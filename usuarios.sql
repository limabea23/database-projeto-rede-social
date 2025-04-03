CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    foto_capa VARCHAR(255),
    foto_perfil VARCHAR(255),
    nome VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    tipo_conta VARCHAR(50) CHECK (tipo_conta IN ('Empresa', 'Pessoal')), 
    email VARCHAR(150) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    biografia TEXT,
    especializacoes TEXT,
    senha VARCHAR(255) NOT NULL
);

INSERTS TESTES
INSERT INTO usuarios (nome, username, email, senha, tipo_conta, foto_perfil, foto_capa, descricao, especializacoes) VALUES 
('Anna Beatriz Leme Alves', 'wxleme', 'anna.kakapo@gmail.com', 'Euam0g4b7el', 'Pessoal', 'https://avatars.githubusercontent.com', 'https://avatars.githubusercontent.com', 'oii, sou a leme e amo e respeito meu irmao gabriel. love obx', 'Back-end, SQL e Mobile'),
('Anna Beatriz Valentim', 'anna.valen', 'anna.valentim@gmail.com', 'lucas3annag3m30s', 'Pessoal', 'https://avatars.githubusercontent.com', 'https://avatars.githubusercontent.com', '#JCV ❤️✝️', 'Front-end e Javascript');