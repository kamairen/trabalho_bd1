# TRABALHO 01:  Bora Jogar?
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Kaio: kaiofabiogs06@gmail.com<br>
Maiksuel: maiky.braga@gmail.com<br>
Renato: renatosalopes@gmail.com<br>
Wilian: willianirl639@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados "Bora Jogar?"
<br>e motivação da escolha realizada. <br>

> O motivo do desenvolvimento deste sistema é a dificuldade de encontrar times para realizar partidas amistosas de algum esporte em suas localidades, como não existe um sistema dedicado para tal lazer, fica difícil descobrir quem e onde quer jogar. Outro ponto é a facilitação para comunicação direta entre esses times, pois sua ausência dificulta a realização desses momentos de descontração.

 

### 3.MINI-MUNDO<br>

> Um grupo de amigos gosta de praticar esportes juntos. Porém nem sempre há um time adversário ou as vezes a quantidade mínima de jogadores não é o suficiente para um jogo acontecer. No caso do futebol, por exemplo, são 5 em cada time, totalizando um mínimo de 10 jogadores. Também já houveram situações em que, com a partida combinada, ao chegar no local o outro time não compareceu. Estas situações fazem com que os amigos se sintam frustrados ao tentar se divertir praticando esportes.
A ideia proposta do sistema por eles é de um serviço que, principalmente, encontre times próximos para que seja combinada uma partida, possam cadastrar suas equipes, verificar estatísticas do time e dos seus integrantes. O grupo também vê necessário a possibilidade de confirmação de presença na partida por cada jogador, busca por região, diferentes modalidades de esportes e ranking de equipes.
 
 
### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Arquivo PDF do Protótipo Balsamiq](https://github.com/kamairen/trabalho_bd1/blob/master/BD1_Telas.pdf?raw=true "Bora Jogar?")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

> Os clientes precisam inicialmente dos seguintes relatórios:
* Relatório que informe quais jogadores possuem mais de 40 anos;
* Relatório que informe qual a pontuação de cada time;
* Relatório com a quantidade de jogadores masculino e feminino de cada time;
* Relatório com o percentual de cada modalidade cadastrada no sistema;
* Relatório com a quantidade de partidas jogadas por cada time.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
        
![Tabela de dados de Bora Jogar?](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/Tabela_Geral.xlsx?raw=true "Tabela - Bora Jogar?")
  
### 5.MODELO CONCEITUAL<br>

![Imagem do Modelo Conceitual](https://github.com/kamairen/trabalho_bd1/blob/master/images/BD1_Conceitual.png?raw=true "Modelo Conceitual")


    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null e tuplas falsas
          
#### 5.1 Validação do Modelo Conceitual
    [Estour]: Alexandre Jastrow
    [Pets]: Matheus Scheneider

#### 5.2 Descrição dos dados 
    
    TIME: tabela que armazena as informações relativas ao time.
    DATA_FUNDACAO: campo que armazena a data em que cada time foi criado.
    NOME_TIME: campo que armazena o nome de cada time.
    LOGO: campo que armazena o endereço para a imagem do logo de cada time.
    LATITUDE: campo que armazena o número da latitude para cada time.
    LONGITUDE: campo que armazena o número da longitude para cada time.
    
    JOGADOR: tabela que armazena as informações relativas ao jogador.
    LATITUDE_ATUAL: campo que armazena o número da latitude de cada jogador.
    LONGITUDE_ATUAL: campo que armazena o número da longitude de cada jogador.
    EMAIL: campo que armazena o email de cada jogador.
    SENHA: campo que armazena a senha de cada jogador.
    NOME_COMPLETO: campo que armazena o nome completo de cada jogador.
    DATA_NASCIMENTO: campo que armazena a data de nascimento de cada jogador.
    FOTO: campo que armazena o endereço para a foto de cada jogador.
    SEXO: campo que armazena o dado referente ao sexo de cada jogador.
    
    PARTIDA: tabela que armazena as informações relativa a um jogo marcado.
    LATITUDE: campo que armazena o número da latitude para cada partida.
    LONGITUDE: campo que armazena o número da longitude para cada partida.
    DATA_PARTIDA: campo que  armazena a data em que cada partida foi marcada.
    HORA_AGENDAMENTO: campo que armazena a hora em que cada partida foi marcada.
    ENDERECO: campo que armazena o endereço do local de cada partida.
    QTD_JOGADOR_PARTIDA: campo que armazena o número mínimo de jogador para cada partida.
       
    MODALIDADE: tabela que armazena os tipos de esporte do sistema.
    NOME: campo que armazena o nome da modalidade.
    
    REGISTRO: tabela que armazena os dados referentes as partidas concretizadas.
    PLACAR_PROPONENTE: campo que armazena o número de pontos de cada partida do time desafiador.
    PLACAR_CONVIDADO: campo que armazena o número de pontos de cada partida do time desafiado.
    
    CHAT: tabela que armazena os dados referentes aos chats criados entre dois times de uma partida.
    
    MENSAGEM: tabela que armazena os dados referentes as mensagens entre dois times de uma partida.
    MENSAGEM: campo que armazena o dado referente a mensagem de cada jogador.
    DATA: campo que armazena a data e hora referente a cada mensagem.
    
#### 5.3 Principais fluxos de informação e principais tabelas do sistema     
    a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
    b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
    c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
    
    Os três fluxos de dados mais comuns serão:
    Time busca uma partida
    Time cria uma partida
    Partida emite um registro
    
    As cinco principais tabelas são:
    TIME
    JOGADOR
    PARTIDA
    REGISTRO
    MODALIDADE
    
    Sendo as que terão mais dados o sistema serão:
    TIME
    JOGADOR
    PARTIDA
    
### 6	MODELO LÓGICO<br>

![Imagem do modelo lógico](https://github.com/kamairen/trabalho_bd1/blob/master/images/BD1_Logico.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
        
![Códigos do modelo físico](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/BD1_Fisico.sql?raw=true "Modelo físico")
        
>## Marco de Entrega 01 em:<br>
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
        
![Códigos dos Inserts](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/BD1_Insertions.sql?raw=true "Inserts")        


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br> 

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>


#### 9.11 Relatórios e Gráficos 
    a)análises e resultados provenientes do banco de dados

>## Marco de Entrega 03 em:<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
#### a) Pontos Chave do MINI-MUNDO
#### b) 5 principais tabelas/fluxos do sistema
#### c) Perguntas que podem ser respondidads com o sistema proposto
#### d) Modelo Conceitual
#### e) Modelo Lógico
#### f) Relatórios e Gráficos mais importantes para o sistema (mínimo 5) 
#### --> Tempo de apresentação 10 minutos


### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

>## Marco de Entrega 04 em:<br>
