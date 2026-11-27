# Análise de Performance de Atletas com Subqueries Correlacionadas (SQL)

Este projeto resolve um problema de análise de desempenho: identificar registros que se destacam acima da média do seu próprio grupo, sem misturar categorias diferentes na mesma base de cálculo.

# O Problema de Negócio
Na tabela de registros de treino (`TREINOS_ACADEMIA`), os atletas praticam modalidades distintas (como Agachamento e Supino), que possuem cargas médias naturalmente diferentes. Tirar uma média geral da tabela inteira distorceria a análise. O treinador precisa listar apenas os atletas que levantam acima da média específica da sua própria modalidade.

# Solução
Utilizei uma Subquery Correlacionada referenciando a mesma tabela sob dois aliases distintos (`t1` e `t2`):

* **Consulta Externa (`t1`)**: Percorre cada registro de atleta individualmente.
* **Subconsulta Interna (`t2`)**: Calcula a média de carga (`AVG`) filtrando dinamicamente apenas os registros que possuem a mesma modalidade da linha atual (`t2.modalidade = t1.modalidade`).
