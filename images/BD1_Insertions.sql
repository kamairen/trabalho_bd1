/*TABLE JOGADOR*/
INSERT INTO Jogador(Email,Senha,Nome_completo,Foto,Data_Nascimento,Sexo,Latitude_atual,Longitude_atual) VALUES
('Kaiofabiogs@hotmail.com','eeS7EiSoghai','Kaio Fabio Barbosa Rodrigues','C:\Servidor\BoraJogar\Usuarios\Fotos\img1.png','1987-02-10','M','-20.307040','-40.322571'),
('Maiky@hotmail.com','Bo6lah1aiqu','Maiky Pereira Pinto','C:\Servidor\BoraJogar\Usuarios\Fotos\img2.png','1979-01-21','M','-20.299312','-40.310898'),
('BiancaHs@Hotmail.com','lollypop','Bianca Souza Vieira','C:\Servidor\BoraJogar\Usuarios\Fotos\img3.png','1980-01-20','F','-20.361124','-40.358276'),
('André55@gmail.com','delicinha22','André Felipe Souza','C:\Servidor\BoraJogar\Usuarios\Fotos\img4.png','1972-03-05','M','-20.233610','-40.307465'),
('RonaldoPinto@gmail.com','255022','Ronaldo Fenomeno','C:\Servidor\BoraJogar\Usuarios\Fotos\img5.png','2007-08-30','M','-20.279991','-40.433121'),
('MoisesSamari@hotmail.com','familiaunida','Moises Samariano Texeira','C:\Servidor\BoraJogar\Usuarios\Fotos\img6.png','1970-11-09','M','-20.214281','-40.249100'),
('HilarioSeibel@live.com','prfseibel','Hilario Seibel','C:\Servidor\BoraJogar\Usuarios\Fotos\img7.png','1985-06-18','M','-20.423554','-40.474319'),
('KatianePereira@hotmail.com','renanpereira','Katiane Pinto Pereira','C:\Servidor\BoraJogar\Usuarios\Fotos\img8.png','2006-12-04','F','-20.305108','-40.403595'),
('GabrielaRodrigues@hotmail.com','25005','Gabriela Rodrigues Cunha','C:\Servidor\BoraJogar\Usuarios\Fotos\img9.png','1991-09-25','F','-20.290296','-40.565643'),
('RenataLopes@hotmail.com','codff','Renata Lopes Houst','C:\Servidor\BoraJogar\Usuarios\Fotos\img10.png','1999-04-06','F','-20.652382','-40.542297'),
('Maikysuel588@hotmail.com','26120','Maikysuel Geronimo Monteiro','C:\Servidor\BoraJogar\Usuarios\Fotos\img11.png','1979-07-06','M','-20.096239','-40.325317'),
('JoaoPinto@hotmail.com','sougay','Joao Pinto Souza','C:\Servidor\BoraJogar\Usuarios\Fotos\img12.png','1976-06-07','M','-20.147818','-41.009216'),
('PedroMatriz@hotmail.com','25meuc','Pedro Mantins Matriz','C:\Servidor\BoraJogar\Usuarios\Fotos\img13.png','1991-05-04','M','-19.912998','-40.347290'),
('Juliano55@hotmail.com','299sfk','Juliano Moura Matos','C:\Servidor\BoraJogar\Usuarios\Fotos\img14.png','1987-02-20','M','-20.123803','-40.545044'),
('GiulianoMartins@hotmail.com','loupan','Giuliano Mart Marx','C:\Servidor\BoraJogar\Usuarios\Fotos\img15.png','1999-12-29','M','48.264913','-325.107422'),
('StefannyBarcellos@gmail.com','tigresa','Stefanny Barcellos','C:\Servidor\BoraJogar\Usuarios\Fotos\img16.png','1987-11-22','F','-41.943149','-186.943359'),
('StephenMarcos@gmail.com','87porco','Stephen Marcos Lucas','C:\Servidor\BoraJogar\Usuarios\Fotos\img17.png','2003-09-06','F','-72.030747','-458.415527'),
('AurelioDicionario@gmail.com','11peixeboi','Aurelio Pereirera','C:\Servidor\BoraJogar\Usuarios\Fotos\img18.png','1971-12-26','M','63.680377','-155.390625'),
('Wikipedia@gmail.com','28123','Wikipedia','C:\Servidor\BoraJogar\Usuarios\Fotos\img19.png','1976-01-16','M','-71.791114','-428.115234'),
('matheuscomelia@gmail.com','pratinha','Matheus Comelio','C:\Servidor\BoraJogar\Usuarios\Fotos\img20.png','2007-10-20','M','-12.178965','-432.773438'),
('nandomoura@gmail.com','barbudoburro','Nando Moura','C:\Servidor\BoraJogar\Usuarios\Fotos\img21.png','1971-04-09','M','36.675028','-580.407715');

INSERT INTO Modalidade(nome) VALUES
('Futebol'),
('Voley'),
('Basquete'),
('Handebol');

INSERT INTO Time(Latitude,Longitude,Data_fundacao,Nome_time,Logo,Id_Capitao) VALUES
('-23.097418','-43.219780','2019-08-15','BayerDeMaýke','C:\Servidor\BoraJogar\Times\Fotos\img1.png',21),
('-15.048253','-47.173129','2019-09-16','ChuMaýke','C:\Servidor\BoraJogar\Times\Fotos\img2.png',15),
('-20.511606','-40.887842','2019-01-20','Florentinos','C:\Servidor\BoraJogar\Times\Fotos\img3.png',12),
('-21.127739','-40.854897','2019-12-25','Spartanos','C:\Servidor\BoraJogar\Times\Fotos\img4.png',11),
('-18.783792','-39.921198','2019-05-08','Os 300','C:\Servidor\BoraJogar\Times\Fotos\img5.png',5),
('-20.268478','-40.506726','2019-06-18','Os maozinhas','C:\Servidor\BoraJogar\Times\Fotos\img5.png',2),
('-19.566098','-40.298006','2019-04-25','20Matar70Correr','C:\Servidor\BoraJogar\Times\Fotos\img5.png',4);

INSERT INTO Partida(Latitude,Longitude,Data_Partida,Id_Modalidade,Hora_agendamento,Qtd_jog_partida,Endereco,Id_Time) VALUES
('-23.097418','-43.219780','2020-07-22',1,'15:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2020-11-10',1,'19:00:00',5,'Praça Dos namorados',5),
('-23.097418','-43.219780','2020-10-03',1,'12:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2020-09-03',1,'20:00:00',5,'Praça Dos namorados',5),
('-23.097418','-43.219780','2019-07-12',1,'21:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2019-06-30',1,'20:00:00',5,'Praça Dos namorados',5),
('-23.097418','-43.219780','2019-11-27',1,'18:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2019-09-26',1,'22:00:00',5,'Praça Dos namorados',5),
('-23.097418','-43.219780','2019-01-04',1,'13:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2020-09-06',1,'8:00:00',5,'Praça Dos namorados',5),
('-23.097418','-43.219780','2020-11-13',1,'22:00:00',5,'Rua Beira Mar',1),
('-18.783792','-39.921198','2020-10-01',1,'10:00:00',5,'Praça Dos namorados',5),
('-20.511606','-40.887842','2019-12-18',1,'19:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-04-24',1,'18:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2020-09-15',1,'17:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-09-13',1,'13:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-03-27',1,'12:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2020-06-28',1,'21:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-03-28',1,'22:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-04-22',1,'12:00:00',5,'Praça do Barça',3),
('-20.511606','-40.887842','2019-05-17',1,'14:00:00',5,'Praça do Barça',3),
('-20.268478','-40.506726','2020-06-05',2,'14:00:00',6,'Praça Ricardinho',6),
('-20.268478','-40.506726','2019-06-14',2,'17:00:00',6,'Praça Ricardinho',6),
('-20.268478','-40.506726','2019-04-21',2,'18:00:00',6,'Praça Ricardinho',6),
('-20.268478','-40.506726','2019-02-01',2,'15:00:00',6,'Praça Ricardinho',6),
('-20.268478','-40.506726','2019-10-24',2,'12:00:00',6,'Praça Ricardinho',6),
('-21.127739','-40.854897','2019-06-10',3,'18:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2020-09-01',3,'15:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2020-03-02',3,'12:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2019-11-08',3,'14:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2019-02-07',3,'16:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2019-06-11',3,'22:00:00',5,'Praça ZéMaria',4),
('-21.127739','-40.854897','2019-10-12',3,'21:00:00',5,'Praça ZéMaria',4);

INSERT INTO Registro(placar,Id_Partida,Id_Time) VALUES
(2,1,1),
(0,1,2),

(2,2,5),
(2,2,3),

(3,3,1),
(5,3,2),

(1,4,5),
(2,4,4),

(4,5,1),
(2,5,2),

(8,6,5),
(1,6,6),

(8,7,1),
(6,7,7),

(2,8,5),
(0,8,2),

(2,9,1),
(2,9,3),

(3,10,5),
(5,10,2),

(1,11,1),
(2,11,4),

(4,12,5),
(2,12,5),

(6,13,3),
(1,13,6),

(2,14,3),
(1,14,4),

(3,15,3),
(5,15,2),

(1,16,3),
(2,16,7),

(2,17,3),
(3,17,5),

(4,18,3),
(6,18,2),

(7,19,3),
(2,19,1),

(2,20,3),
(9,20,7),

(1,21,3),
(10,21,4),

(1,22,6),
(0,22,2),

(2,23,6),
(5,23,3),

(5,24,6),
(2,24,5),

(2,25,6),
(7,25,1),

(16,26,6),
(2,26,2),

(4,27,4),
(1,27,3),

(2,28,4),
(1,28,2),

(5,29,4),
(3,29,6),

(6,30,4),
(2,30,7),

(3,31,4),
(6,31,5),

(1,32,4),
(2,32,1),

(5,33,4),
(6,33,2),

;

INSERT INTO Jogador_Time(Id_jogador,Id_Time) VALUES
(1,2),
(2,3),
(3,1),
(4,2),
(2,2),
(10,2),
(12,3),
(14,1),
(15,5),
(21,6),
(17,1),
(19,4),
(11,2),
(14,4),
(13,4),
(17,5),
(21,1),
(1,3),
(1,4),
(1,5),
(1,2),
(5,1),
(6,5),
(8,1),
(9,6),
(20,5),
(14,3),
(19,6),
(5,5),
(12,1),
(13,5);

INSERT INTO Chat(Id_partida) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32);
