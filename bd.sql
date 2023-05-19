use accesos_juego;
CREATE TABLE if not exists usuarios
(
    id       integer AUTO_INCREMENT,
    nombre   VARCHAR(50),
    password VARCHAR(50),
    CONSTRAINT pk_usuarios PRIMARY KEY (id)
);
CREATE TABLE if not exists accesos
(
    id          integer AUTO_INCREMENT,
    usuario     integer,
    hora_acceso integer,
    hora_fin    integer,
    resultado   integer,
    CONSTRAINT pk_usuarios FOREIGN KEY (usuario) REFERENCES usuarios (id),
    CONSTRAINT pk_accesos PRIMARY KEY (id)
);

insert into usuarios (nombre, password) values ('jugador1', 'password_jugador1');
insert into usuarios (nombre, password) values ('jugador2', 'password_jugador2');
insert into usuarios (nombre, password) values ('jugador3', 'password_jugador3');
insert into usuarios (nombre, password) values ('jugador4', 'password_jugador4');
insert into usuarios (nombre, password) values ('jugador5', 'password_jugador5');

