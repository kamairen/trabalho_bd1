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
A ideia proposta do sistema por eles é de um serviço que, principalmente, encontre times próximos para que seja combinada uma partida, possam cadastrar suas equipes e verificar estatísticas dos times. O grupo também vê necessário a possibilidade de confirmação de presença na partida por cada jogador, busca por região, diferentes modalidades de esportes e ranking de equipes.
 
 
### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![Arquivo PDF do Protótipo Balsamiq](https://github.com/kamairen/trabalho_bd1/blob/master/BD1_Telas.pdf?raw=true "Bora Jogar?")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

> Os clientes precisam inicialmente dos seguintes relatórios:
* Relatório da preferência de modalidade dos usuarios;
* Relatório da atividade dos times por esporte;
* Relatório para análise da idade media dos times influencia no desempenho;
* Relatório da performance do time ao longo do tempo;
* Relatório da atividade de outros times em relação a outro.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:

Primeira versão da tabela.
        
![Tabela de dados de Bora Jogar?](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/Tabela_Geral.xlsx?raw=true "Tabela - Bora Jogar?")
  
### 5.MODELO CONCEITUAL<br>

Versão completa
![Imagem do Modelo Conceitual Completo](https://github.com/kamairen/trabalho_bd1/blob/master/images/BD1_Conceitual_Completo.png?raw=true "Modelo Conceitual")

Versão adaptada para o escopo do trabalho
![Imagem do Modelo Conceitual](https://github.com/kamairen/trabalho_bd1/blob/master/images/BD1_Conceitual.png?raw=true "Modelo Conceitual")
          
#### 5.1 Validação do Modelo Conceitual
    [Estour]: Alexandre Jastrow
    [PetsMe]: Matheus Scheneider

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

![Imagem do modelo lógico](https://github.com/kamairen/trabalho_bd1/blob/master/images/BD1_L%C3%B3gico.jpg?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
        
![Códigos do modelo físico](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/BD1_Fisico.sql?raw=true "Modelo físico")

        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

![Códigos dos Inserts](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/BD1_Insertions.sql?raw=true "Inserts")        


### 9	TABELAS, PRINCIPAIS CONSULTAS E RELATÓRIOS<br>
![Link para o colab do projeto](https://colab.research.google.com/drive/1RpfRdm2M1GlbCMt-lfwXSeBgvJtalwAD "Colab")

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL<br>

### 11 Backup completo do banco de dados postgres 

![Backup](https://github.com/kamairen/trabalho_bd1/blob/master/arquivos/BoraJogar.backup?raw=true "Backup")

#### Validação do Backup
    [Estour]: Carolina
    [AppDoacções]: Vinicius
