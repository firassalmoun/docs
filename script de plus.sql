INSERT INTO utilisateur (codePromo,email,idRole,nom,password,prenom,username) VALUES 
("DL123","mimi@gmail.com",1,"SOLEM","solem1234","gary","solem.gary"),
("DL123","dequis@gmail.com",1,"dequis","dequis1234","mathys","mathys.dequis"),
("CDI72","jude@gmail.com",1,"jude","jude1234","vivien","vivien.jude"),
("CDI72","bouzole@gmail.com",1,"bouzole","bouzole1234","marc","marc.bouzole"),

("DL123","peler@gmail.com",2,"peler","peler1234","mathieu","mathieu.peler"),
("DL123","george@gmail.com",2,"george","george1234","guy","guy.george"),
("CDI72","raquin@gmail.com",2,"raquin","raquin1234","braham","braham.raquin"),
("CDI72","peter@gmail.com",2,"peter","peter1234","collette","collette.peter");


CREATE TABLE ETAT(
	id_Etat int(3) AUTO_INCREMENT,
    libelle varchar(50) not null UNIQUE,
    PRIMARY KEY (id_Epreuve)
);

INSERT INTO `etat` (`id_Etat`, `libelle`) 
VALUES
(null,"en attente"),
(null,"en cours"),
(null,"terminé");

//supprimmer les donnees de epreuve

ALTER TABLE epreuve
MODIFY etat int(3);

ALTER TABLE epreuve
add FOREIGN KEY(etat)REFERENCES etat(id_Etat);

ALTER TABLE epreuve
ALTER etat  set DEFAULT 1;