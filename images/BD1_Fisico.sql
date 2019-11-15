/* BD1_Logico: */

CREATE TABLE Time (
    Latitude Float,
    Longitude Float,
    Data_fundacao Date,
    Nome_time Varchar(45),
    Logo VARCHAR(255),
    Id_Time SERIAL PRIMARY KEY,
    Id_Capitao SERIAL
);

CREATE TABLE Jogador (
    Email VARCHAR(45),
    Id_jogador SERIAL PRIMARY KEY,
    Senha VARCHAR(20),
    Nome_completo VARCHAR(45),
    Foto VARCHAR(255),
    Data_Nascimento DATE,
    Sexo CHAR(1),
    Latitude_atual FLOAT,
    Longitude_atual FLOAT
);

CREATE TABLE Partida (
    Id_Partida SERIAL PRIMARY KEY,
    Latitude Float,
    Longitude Float,
    Data_partida DATE,
    Hora_agendamento Time,
    Qtd_jog_partida INT,
    Endereco Varchar(255),
    Id_Time SERIAL,
    id_Modalidade SERIAL
);

CREATE TABLE Registro (
    Id_registro SERIAL PRIMARY KEY,
    placar INT,
    Id_Partida SERIAL,
    Id_Time SERIAL
);

CREATE TABLE Modalidade (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE Jogador_Time (
    Id_Jogador SERIAL,
    Id_Time SERIAL
);
 
ALTER TABLE Time ADD CONSTRAINT FK_Time_2
    FOREIGN KEY (Id_Capitao)
    REFERENCES Jogador (Id_jogador)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_2
    FOREIGN KEY (Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE CASCADE;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_3
    FOREIGN KEY (id_Modalidade)
    REFERENCES Modalidade (id)
    ON DELETE CASCADE;
 
ALTER TABLE Registro ADD CONSTRAINT FK_Registro_2
    FOREIGN KEY (Id_Partida)
    REFERENCES Partida (Id_Partida)
    ON DELETE CASCADE;
 
ALTER TABLE Registro ADD CONSTRAINT FK_Registro_3
    FOREIGN KEY (Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE CASCADE;
 
ALTER TABLE Jogador_Time ADD CONSTRAINT FK_Jogador_Time_1
    FOREIGN KEY (Id_Jogador)
    REFERENCES Jogador (Id_jogador)
    ON DELETE SET NULL;
 
ALTER TABLE Jogador_Time ADD CONSTRAINT FK_Jogador_Time_2
    FOREIGN KEY (Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE SET NULL;