use fpd;

create table Usuario(
idUser INTEGER(10)NOT NULL AUTO_INCREMENT,
email VARCHAR(30),
pswd VARCHAR(20),
nombre VARCHAR(30),
apellido VARCHAR(30),
colegio VARCHAR(30),
PRIMARY key (idUser)
)

create Table Experiencia(
idExp INTEGER(10)NOT NULL AUTO_INCREMENT,
nombreExp VARCHAR(30),
curso INTEGER(5),
asignatura VARCHAR(30),
tema VARCHAR(30),
descripcion VARCHAR(100),
idUser INTEGER(10),
PRIMARY key (idExp),
FOREIGN key (idUser) REFERENCES Usuario (idUser))

create Table Comentario(
idCom INTEGER(10)NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(50),
UserLocal INTEGER(10),
UserExt INTEGER,
PRIMARY key (idCom),
FOREIGN key (UserLocal) REFERENCES Usuario (idUser),
FOREIGN key (UserExt) REFERENCES Usuario (idUser))



create Table Calificacion(

idCal INTEGER(10)NOT NULL AUTO_INCREMENT,
calificacion INTEGER(2),
UserLocal INTEGER(10),
UserExt INTEGER(10),
PRIMARY key (idCal),
FOREIGN key (UserLocal) REFERENCES Usuario (idUser),
FOREIGN key (UserExt) REFERENCES Usuario (idUser))

