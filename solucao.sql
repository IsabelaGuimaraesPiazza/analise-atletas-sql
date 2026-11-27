SELECT t1.atleta, t1.modalidade, t1.carga_kg
FROM TREINOS_ACADEMIA t1
WHERE t1.carga_kg >(
  SELECT AVG(t2.carga_kg)
  FROM TREINOS_ACADEMIA t2
  WHERE t2.modalidade = t1.modalidade
  );
