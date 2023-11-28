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


📜 Licença
MIT License

