CREATE DATABASE gestion_salaries;
USE gestion_salaries;

CREATE TABLE service (
    id_service INT AUTO_INCREMENT PRIMARY KEY,
    nom_service VARCHAR(100) NOT NULL
);

CREATE TABLE poste (
    id_poste INT AUTO_INCREMENT PRIMARY KEY,
    intitule_poste VARCHAR(100) NOT NULL
);

CREATE TABLE salarie (
    id_salarie INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    sexe ENUM('M','F'),
    date_naissance DATE,
    salaire DECIMAL(10,2),
    date_embauche DATE,
    id_service INT,
    id_poste INT,
    FOREIGN KEY (id_service) REFERENCES service(id_service),
    FOREIGN KEY (id_poste) REFERENCES poste(id_poste)
);
