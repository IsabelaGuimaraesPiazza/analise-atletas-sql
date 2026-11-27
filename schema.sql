CREATE TABLE TREINOS_ACADEMIA (
    id_treino INT PRIMARY KEY,
    atleta VARCHAR(100),
    modalidade VARCHAR(50),
    carga_kg INT
);

INSERT INTO TREINOS_ACADEMIA VALUES (1, 'Isabela Piazza', 'Agachamento', 120); 
INSERT INTO TREINOS_ACADEMIA VALUES (2, 'Rodrigo Melo', 'Agachamento', 60);
INSERT INTO TREINOS_ACADEMIA VALUES (3, 'Beatriz Santos', 'Supino', 80); 
INSERT INTO TREINOS_ACADEMIA VALUES (4, 'Gabriel Almeida', 'Supino', 40);
