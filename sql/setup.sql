CREATE DATABASE dwii_db;
CREATE USER 'dwii_user'@'localhost' IDENTIFIED BY 'dwii2026';
GRANT ALL PRIVILEGES ON dwii_db.* TO 'dwii_user'@'localhost';
FLUSH PRIVILEGES;

USE dwii_db;

CREATE TABLE projetos (
    id            INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(120) NOT NULL,
    descricao     TEXT NOT NULL,
    tecnologias   VARCHAR(200) NOT NULL,
    link_github   VARCHAR(300) NULL DEFAULT NULL,
    ano           YEAR NOT NULL,
    status        ENUM('rascunho','publicado','arquivado') NOT NULL DEFAULT 'rascunho',
    criado_em     DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em DATETIME NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE tecnologias (
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome        VARCHAR(100) NOT NULL,
    categoria   VARCHAR(50) NOT NULL,
    descricao   TEXT,
    ano_criacao INT,
    status      ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
    criado_em   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SHOW TABLES;