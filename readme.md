# Compilador 🚀

Este projeto é um compilador  desenvolvido para processar uma linguagem de programação original, baseada em python mas com algumas particularidades que serão abordadas no decorrer desse readme. O compilador é composto por duas partes principais: o analisador léxico (lexer) e o analisador sintático (parser).

--- 

## 📝 Analisador Léxico (Lexer)

Descrição:

O analisador léxico é responsável por processar o código-fonte da linguagem e gerar uma sequência de tokens. Cada token representa um elemento sintático do código, como palavras-chave, identificadores, símbolos matemáticos e literais.

Funcionalidades
Tokenização: Converte o código-fonte em uma sequência de tokens.
Classificação de Tokens: Identifica o tipo de cada token (por exemplo, operadores, identificadores, números).

## 🧩 Analisador Sintático (Parser)

Descrição

O analisador sintático recebe a sequência de tokens do lexer e constrói uma árvore de análise sintática ou outra estrutura de dados representando a estrutura do programa. Ele verifica a correção sintática do código e identifica possíveis erros. No final, é gerado um código em C como saída, que pode ser diretamente compilado por um compilador de C padrão.

Funcionalidades

- Análise de Estruturas de Controle: Processa estruturas de controle da linguagem, como if-else, loops for e while, garantindo a correta conversão dessas estruturas para o código em C.
- Análise de Declarações e Atribuições: Lida com a declaração de variáveis e atribuições, transformando-as em declarações e operações equivalentes em C.
- Geração de Representação Intermediária (IR): Cria uma representação intermediária do código em C, pronta para ser compilada. 

## 📋 Pré-requisitos

- **Python**
- **GIT**
- **IDE (recomendado: Visual Studio Code)**

**🔍 observações**

- O compilador foi desenvolvido utilizando a versão 3.8.5 do python, porém, acredita-se que versões anteriores também sejam compatíveis.

- É possivel utilizar o compilador em plataformas web como google colab, porém é necessario se atentar aos codigos de entrada e saida de arquivos, pois o compilador foi desenvolvido para rodar em ambiente local.

## 🚀 Uso

**Clonando o Repositório**
- Abra o terminal.
- Clone o repositório do GitHub:
```bash
git clone https://github.com/GustavoMMello01/Lexer-compiler.git
```

- Entre no diretório clonado:
```bash
cd Lexer-compiler
```

**Configuração**

(Opcional) Abra o projeto no Visual Studio Code:

- Abra o VS Code.
- Selecione 'File' > 'Open Folder' e escolha o diretório clonado.

**💡 Dicas**

- O uso do Visual Studio Code é recomendado por causa dos arquivos de exemplo e configurações já existentes no repositório. 
- Para um ambiente mais interativo e sem necessidade de configuração local, o Google Colab pode ser uma alternativa, embora requeira o upload manual dos arquivos de código fonte.


# 🚀 Execução do compilador

**Abrindo o arquivo do compilador:**

- Primeiro, abra o arquivo *compilador.ipynb*, localizado na raiz do projeto. Este arquivo contém o código principal do compilador.
- O código será executado e o resultado será exibido no final da página.

**Escolhendo o arquivo de código fonte:**

- Para compilar um programa específico, você deve selecionar o arquivo de código fonte que deseja compilar. 
- Por padrão, o arquivo de código fonte está configurado como *'codigo.x'*.
- Se desejar compilar um arquivo diferente, altere a linha 
*arquivo = open('codigo.x','r')* para apontar para o seu arquivo de código fonte. Por exemplo, se seu arquivo se chama meu_programa.x, altere para *arquivo = open('meu_programa.x','r')*.
```python
# Abre o arquivo de código fonte e procure por: 
arquivo = open('codigo.x','r')
# Altere o nome do arquivo para compilar um programa diferente
arquivo = open('meu_programa.x','r')
```

**Executando o compilador:**

- O compilador é dividido em duas partes principais: o analisador léxico e o analisador sintático.
- Primeiro, o analisador léxico processa o código fonte e gera uma lista de tokens. Esta etapa é realizada no *loop for l in arquivo.readlines()*.
- Em seguida, o analisador sintático recebe esta lista de tokens e começa a análise sintática, criando a representação intermediária do código e eventualmente gerando o código em C.

**Verificando o resultado:**

- Após a execução, o código C gerado é salvo em um arquivo chamado *codigo.c*.
- Você pode abrir este arquivo para ver o código C resultante da compilação do seu programa.


# 📖 Explicação do Lexer
O lexer, também conhecido como analisador léxico, é a primeira fase do processo de compilação. Ele é responsável por converter o código-fonte em uma sequência de tokens. Cada token representa um elemento do código, como um identificador, uma palavra-chave, um operador, um valor numérico, etc.

🔍 Tipos de Tokens
No lexer do nosso compilador, definimos vários tipos de tokens, cada um representando diferentes elementos do código:

- T_KEYWORD: Representa palavras-chave.
- T_OP: Operadores como =, +, -, *, /, ^.
- T_FLOAT: Números de ponto flutuante.
- T_STRING: Strings literais.
- T_ID: Identificadores (nomes de variáveis ou funções).
- T_EOF: Fim do arquivo.
- T_DELIMITER: Delimitadores, como ponto e vírgula (;).
- T_BLOCK: Blocos de código, delimitados por chaves { e }.
- T_PARA: Parênteses ( e ).
- T_VAR_TYPE: Tipo de variável (por exemplo, var).
- T_IF, T_ELIF, T_ELSE: Estruturas de controle if, elif e else.
- T_OP_COMP: Operadores de comparação como ==, !=, <, >, <=, >=.
- T_PRINT: Palavra-chave para impressão.
- T_WHILE, T_FOR: Estruturas de loop while e for.
- T_ARROW_UP, T_ARROW_DOWN: Símbolos de seta para cima e para baixo, usados em loops for.
- T_COMMA: Vírgula.
- T_FUNC: Palavra-chave para definição de função.
- T_RETURN: Palavra-chave para retorno de função.
- T_MAIN: Palavra-chave para o método principal.

## 🏗️ Classe Token
A classe Token é usada para criar objetos token com um tipo e um valor. Cada token é uma instância desta classe, ajudando na verificação dos tokens durante a análise sintática.

## 📐 Funções de Análise Léxica
Funções específicas são usadas para reconhecer diferentes tipos de tokens:

- **afd_float**: Reconhece números de ponto flutuante.
- **afd_string**: Reconhece strings literais.
- **afd_identificador**: Reconhece identificadores (variáveis e nomes de funções).
- **afd_return**, **afd_print**, **afd_if**, **afd_elif**, **afd_else**, **afd_delimiter**,**afd_block**, **afd_var_type**, **afd_para**: Reconhecem palavras-chave e símbolos específicos.
- **afd_principal**: Função central que determina o tipo de um token com base em seu valor, chamando as funções acima conforme necessário.

Essas funções ajudam o lexer a categorizar cada parte do código-fonte em tokens, preparando-os para a próxima fase de compilação - a análise sintática.
