-- Nombre total de salariés
SELECT COUNT(*) AS total_salaries FROM salarie;

-- Salariés par service
SELECT s.nom_service, COUNT(sa.id_salarie) AS total
FROM salarie sa
JOIN service s ON sa.id_service = s.id_service
GROUP BY s.nom_service;

-- Salaire moyen
SELECT AVG(salaire) AS salaire_moyen FROM salarie;
