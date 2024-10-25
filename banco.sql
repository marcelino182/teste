--criar o banco de dados
CREATE DATABASE todolist;
USE todolist;
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255) NOT NULL
);

--criar um usuario especifico para a aplicação
CREATE USER 'todolist'@'localhost' IDENTIFIED BY 'todolistpass';

--ajustar a permissoes do usuario no banco de dados todolist
GRANT ALL PRIVILEGES ON todolist.* TO 'todolist'@'%';

--atualizar as permissões
FLUSH PRIVILEGES;