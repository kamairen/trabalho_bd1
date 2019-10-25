/* BD1_Logico: */

CREATE TABLE Time (
    Latitude Float,
    Longitude Float,
    Data_fundacao Date,
    Nome_time Varchar(45),
    Logo VARCHAR(255),
    Id_Time SERIAL PRIMARY KEY,
    fk_Jogador_Id_jogador SERIAL
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
    fk_Time_Id_Time SERIAL,
    fk_Modalidade_id SERIAL
);

CREATE TABLE Registro (
    Id_registro SERIAL PRIMARY KEY,
    placar_proponente INT,
    placa_convidado INT,
    fk_Partida_Id_Partida SERIAL,
    fk_Time_Id_Time SERIAL
);

CREATE TABLE Chat (
    idChat INT PRIMARY KEY,
    fk_Partida_Id_Partida SERIAL
);

CREATE TABLE Mensagem (
    idMensagem INT PRIMARY KEY,
    Mensagem TEXT,
    Data TIMESTAMP,
    fk_Chat_idChat INT,
    fk_Jogador_Id_jogador SERIAL
);

CREATE TABLE Modalidade (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE Joga_em_um (
    fk_Jogador_Id_jogador SERIAL,
    fk_Time_Id_Time SERIAL
);
 
ALTER TABLE Time ADD CONSTRAINT FK_Time_2
    FOREIGN KEY (fk_Jogador_Id_jogador)
    REFERENCES Jogador (Id_jogador)
    ON DELETE RESTRICT;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_2
    FOREIGN KEY (fk_Time_Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE CASCADE;
 
ALTER TABLE Partida ADD CONSTRAINT FK_Partida_3
    FOREIGN KEY (fk_Modalidade_id)
    REFERENCES Modalidade (id)
    ON DELETE CASCADE;
 
ALTER TABLE Registro ADD CONSTRAINT FK_Registro_2
    FOREIGN KEY (fk_Partida_Id_Partida)
    REFERENCES Partida (Id_Partida)
    ON DELETE CASCADE;
 
ALTER TABLE Registro ADD CONSTRAINT FK_Registro_3
    FOREIGN KEY (fk_Time_Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE CASCADE;
 
ALTER TABLE Chat ADD CONSTRAINT FK_Chat_2
    FOREIGN KEY (fk_Partida_Id_Partida)
    REFERENCES Partida (Id_Partida)
    ON DELETE CASCADE;
 
ALTER TABLE Mensagem ADD CONSTRAINT FK_Mensagem_2
    FOREIGN KEY (fk_Chat_idChat)
    REFERENCES Chat (idChat)
    ON DELETE CASCADE;
 
ALTER TABLE Mensagem ADD CONSTRAINT FK_Mensagem_3
    FOREIGN KEY (fk_Jogador_Id_jogador)
    REFERENCES Jogador (Id_jogador)
    ON DELETE CASCADE;
 
ALTER TABLE Joga_em_um ADD CONSTRAINT FK_Joga_em_um_1
    FOREIGN KEY (fk_Jogador_Id_jogador)
    REFERENCES Jogador (Id_jogador)
    ON DELETE SET NULL;
 
ALTER TABLE Joga_em_um ADD CONSTRAINT FK_Joga_em_um_2
    FOREIGN KEY (fk_Time_Id_Time)
    REFERENCES Time (Id_Time)
    ON DELETE SET NULL;