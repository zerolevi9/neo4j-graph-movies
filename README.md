# 🎬 CineGraph — Análise de Redes no Cinema com Neo4j

> Projeto DIO · Banco de Dados em Grafos com Neo4j
> Modelagem e análise de relacionamentos entre filmes, atores, diretores e gêneros usando grafos.


---

## 🎯 Contexto do Problema

Plataformas de streaming precisam recomendar filmes relevantes para cada usuário. O desafio está em conectar **filmes, atores, diretores e gêneros** de forma que seja possível:

- Encontrar atores que frequentemente trabalham juntos
- Identificar diretores com estilo semelhante por gênero
- Recomendar filmes por grau de proximidade com o gosto do usuário
- Descobrir "pontes" entre diferentes nichos do cinema

Bancos relacionais tradicionais exigem JOINs complexos e custosos para essas perguntas. Com grafos, as conexões **são** a estrutura de dados.

---

## 🗺️ Modelo do Grafo

### Nós (Labels)

| Label | Propriedades |
|---|---|
| `Movie` | `id`, `title`, `year`, `rating`, `votes` |
| `Person` | `id`, `name`, `born` |
| `Genre` | `name` |

### Relacionamentos

| Relacionamento | De → Para | Propriedades |
|---|---|---|
| `ACTED_IN` | Person → Movie | `role` |
| `DIRECTED` | Person → Movie | — |
| `IN_GENRE` | Movie → Genre | — |
| `REVIEWED` | Person → Movie | `score`, `summary` |
