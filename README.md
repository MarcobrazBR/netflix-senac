# netflix-senac

<h1> PROJETO NETFLIX-SENAC </h1>

O projeto tem como objetivo a criação de um banco de dados para estudo da linguagem SQL, para o curso de banco de dados do SENAC, ministrado pela professora Tereza Oliveira.
O exercício proposto, foi a a criação de um banco de dados que espelhasse a ideia do stream NETFLIX, seguindo três etapas

Etapa 1 - Modelo Entidade-Relacionamento (MER):
- Explicação sobre a estrutura do MER na Netflix, destacando as entidades principais.
- Descrição dos atributos relevantes para cada entidade (por exemplo, nome, e-mail)
- Ilustração visual do MER com exemplos de tabelas e relacionamentos.

Etapa 2 - Modelo de Entidade e Relacionamento (DER):
- Destaque para a adaptação do modelo DER à estrutura de dados mais específica da
Netflix.
- Explanação sobre como as relações são estabelecidas entre diferentes entidades.

Etapa 3 - Implementação de SQL na Netflix:
 Como as consultas SQL são utilizadas para recuperar informações cruciais do banco de
dados.
- Exemplos de consultas SQL comuns na Netflix;
- Simulação de consultas no SGDB de preferência do grupo;

Nossa logico foi contruir um projeto simples, mas robusto que contemplasse fatores como usuário, valores de conta, catalogo de filmes, classificações e histórico de filmes assistidos.
Em nossa visão, acreditamos que esta composição de tabela seja suficinente para demosntrar nosso conhecimento adquirifo no decorrer deste curso.

<h2>1 - ETAPA 1 - MODELO ENTIDADE-RELACIONAMENTO (MER)</h2>

<h3>TABELA: Usuário</h3>

<b>Atributos:</b>
<ul>
<li>id: int
<li>nome: string
<li>email: string
<li>senha: string
<li>data_cadastro: date
</ul>
<b>Relacionamentos:</b>
<ul>
Muitos para muitos com "Filme" (um usuário pode ter muitos filmes em sua lista de visualização, e um filme pode ser assistido por muitos usuários).
Um para muitos com "Avaliacao" (um usuário pode fazer muitas avaliações, mas uma avaliação pertence a um único usuário).
</ul>

<h3>TABELA: Filme</h3>

<b>Atributos:</b>
<ul>
<li>id: int
<li>titulo: string
<li>descricao: string
<li>duracao: int
<li>classificacao: string
<li>data_lancamento: date
</ul>

<b>Relacionamentos:</b>
<ul>
Muitos para muitos com "Usuario" (um filme pode ser assistido por muitos usuários, e um usuário pode ter muitos filmes em sua lista de visualização).
Um para muitos com "Avaliação" (um filme pode ter muitas avaliações, mas uma avaliação pertence a um único filme).
</ul>
<h3>TABELA: Avaliação</h3>

<b>Atributos:</b>
<ul>
<li>id: int
<li>estrelas: int
<li>comentário: string (opcional)
</ul>
<b>Relacionamentos:</b>
<ul>
Um para um com "Usuario" (uma avaliação pertence a um único usuário).
Um para um com "Filme" (uma avaliação pertence a um único filme).
</ul>

<h3>TABELA: Categoria</h3>

<b>Atributos:</b>
<ul>
<li>id: int
<li>nome: string
</ul>

<b>Relacionamentos:</b>
Muitos para muitos com "Filme" (um filme pode pertencer a várias categorias, e uma categoria pode ter vários filmes).

<h3>TABELA: Assinatura </h3>

<b>Atributos:</b>
</ul>
<li>id: int
<li>tipo: string (por exemplo, "Básico", "Padrão", "Premium")
<li>preco_mensal: dinheiro
<li>numero_dispositivos: int
</ul>

<b>Relacionamentos:</b>
Um para muitos com "Usuario" (uma assinatura pertence a um único usuário, mas um usuário pode ter muitas assinaturas ao longo do tempo).


<h3>TABELA:HistoricoAssistidos </h3>

<b>Atributos: </b>
<ul>
<li>id (int), </li>
<li>usuario_id (int, chave estrangeira referenciando Usuario), </li>
<li>filme_id (int, chave estrangeira referenciando Filme), </li>
<li>data_assistido (date)</li>
</ul>

<b>Relacionamentos:</b>
<ul>
"Usuario - HistoricoAssistidos"  - Um para muitos: Um usuário pode ter muitos registros no histórico, mas um registro no histórico pertence a um único usuário.
"Filme - HistoricoAssistidos" - Um para muitos: Um filme pode ter muitos registros no histórico, mas um registro no histórico pertence a um único filme.
</ul>


<h2>Etapa 2 - Modelo de Entidade e Relacionamento (DER):</h2>

Em nossa visão a estruturação de tabela irá se comportar conforme imágem abaixo

<<img src="Images/Modelo Logico.jpg" />