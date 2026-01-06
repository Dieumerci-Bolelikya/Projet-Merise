-- Liste des salariés
SELECT * FROM salarie;

-- Nombre de salariés par service
SELECT s.nom_service, COUNT(*) AS total
FROM salarie sa
JOIN service s ON sa.id_service = s.id_service
GROUP BY s.nom_service;

-- Salaire moyen
SELECT AVG(salaire) AS salaire_moyen FROM salarie;
