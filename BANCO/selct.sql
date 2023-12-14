--- CONSULTAS DE ANALISE DE DADOS DO BANCO NETFLIX_SENAC


--- CONSULTA FIME CATEGORIA


SELECT 
FIL.titulo,
CAT.nome
FROM  filme FIL
LEFT JOIN filmecategoria FIC ON FIC.filme_id = FIL.id
LEFT JOIN categoria CAT ON CAT.id = FIC.categoria_id;


--- CONSULTA DE HISTÓRICO DE FILMES ASSISTIDOS

USU.nome,
FIL.titulo,
HIS.data_assistido
FROM historicoassistidos HIS
LEFT JOIN usuario USU ON HIS.usuario_id  = USU.id
LEFT JOIN filme FIL ON HIS.filme_id = FIL.id;

--- LISTA DE CLIENTES  "A" a "G"

SELECT *
FROM usuario USU 
WHERE USU.data_cadastro between '2023-01-01' AND '2023-06-30';


--- LISTA DE FILMES QUE TIVEREAM COMENTARIO DE GOSTEI 

SELECT 
FIL.titulo,
AVA.estrelas
FROM  filme FIL
LEFT JOIN avaliacao AVA ON AVA.filme_id = FIL.id
WHERE AVA.estrelas between 2 AND 4;