DROP DATABASE IF EXISTS `BE-examen-P4`;

CREATE DATABASE IF NOT EXISTS `BE-examen-P4`;

USE `BE-examen-P4`;

DROP TABLE IF EXISTS Examen;

CREATE TABLE IF NOT EXISTS Examen
(
    Id                      INT UNSIGNED AUTO_INCREMENT NOT NULL,
    StudentId               VARCHAR(10) NOT NULL,
    Rijschool               VARCHAR(30) NOT NULL,
    stad                    VARCHAR(50) NOT NULL,
    rijbewijscategorie      VARCHAR(5) NOT NULL,
    Datum                   DATE NOT NULL,
    uitslag                 VARCHAR(8) NOT NULL,
    PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Examen (StudentId, Rijschool, stad, rijbewijscategorie, Datum, uitslag)
VALUES
    ('100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-01', 'Geslaagd'),
    ('123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd'),
    ('103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd'),
    ('106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt'),
    ('104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt'),
    ('100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd'),
    ('124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd');

DROP TABLE IF EXISTS ExamenPerExaminator;

CREATE TABLE IF NOT EXISTS ExamenPerExaminator
(
    Id                  INT UNSIGNED AUTO_INCREMENT NOT NULL,
    ExamenId            INT UNSIGNED NOT NULL,
    ExaminatorId        INT UNSIGNED NOT NULL,
    PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO ExamenPerExaminator (ExamenId, ExaminatorId)
VALUES
    (1, 3),
    (3, 3),
    (2, 2),
    (4, 1),
    (7, 3),
    (6, 2),
    (5, 4);

DROP TABLE IF EXISTS Examinator;

CREATE TABLE IF NOT EXISTS Examinator
(
    Id                  INT UNSIGNED AUTO_INCREMENT NOT NULL,
    Voornaam            VARCHAR(12) NOT NULL,
    Tussenvoegsel       VARCHAR(20),
    Achternaam          VARCHAR(20) NOT NULL,
    Mobiel              VARCHAR(20) NOT NULL,
    PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Examinator (Voornaam, Tussenvoegsel, Achternaam, Mobiel)
VALUES
    ('Manuel', 'van', 'Meekeren', '06-28493823'),
    ('Lissette', 'den', 'Dongen', '06-24383299'),
    ('Jurswailly', '', 'Luciano', '06-48293846'),
    ('Naswha', '', 'Salawi', '06-34291219');
