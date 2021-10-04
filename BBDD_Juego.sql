DROP DATABASE IF EXISTS BBDD_JUEGO;
CREATE DATABASE BBDD_JUEGO;

USE BBDD_JUEGO;

CREATE TABLE Jugador (
    NOMBRE VARCHAR(60),
    CONTRASEÑA VARCHAR(20),
    PRIMARY KEY (NOMBRE)
);

CREATE TABLE Partida (
    ID INTEGER,
    FyH VARCHAR(100),
    DURACION INTEGER,
    GANADOR VARCHAR(20),
    PRIMARY KEY (ID)
);

CREATE TABLE Puente (
    IDp INTEGER,
    IDj VARCHAR (60),
    PUNTUACION INTEGER,
    FOREIGN KEY (IDp) references Partida(ID),
    FOREIGN KEY (IDj) references Jugador(NOMBRE)
);

INSERT INTO Jugador VALUES ('Leo', 2411);
INSERT INTO Jugador VALUES ('Juan', 2510);
INSERT INTO Partida VALUES ('1','4 Octubre 12:10',5, 'Juan');
INSERT INTO Partida VALUES ('2','4 Octubre 12:20',5, 'Juan');
INSERT INTO Partida VALUES ('3','4 Octubre 12:30',5, 'Leo');
INSERT INTO Puente VALUES ('1','Juan',100);
INSERT INTO Puente VALUES ('2','Juan',100);
INSERT INTO Puente VALUES ('3','Juan',70);
INSERT INTO Puente VALUES ('1','Leo',70);
INSERT INTO Puente VALUES ('2','Leo',90);
INSERT INTO Puente VALUES ('3','Leo',100);

