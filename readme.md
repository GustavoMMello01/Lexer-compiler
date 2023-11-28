# Compilador 🚀

Este projeto é um compilador  desenvolvido para processar uma linguagem de programação original, baseada em python mas com algumas particularidades que serão abordadas no decorrer desse readme. O compilador é composto por duas partes principais: o analisador léxico (lexer) e o analisador sintático (parser).


- Bruno Cesar de Almeida Ribeiro - RA: 210570
- Gustavo Moreira de Mello - RA: 180525
- Kaetano Cesar Apolinario Rodrigues - RA: 190157
- Leonardo José Ferreira Corrêa - RA: 210726
- Rafael de Proença Rossi - RA: 171012


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

# 📖 Explicação do Parser
Após a etapa de análise léxica, o **parser (ou analisador sintático)** entra em ação. O objetivo do **parser** é analisar a sequência de tokens gerada pelo lexer, verificando se a estrutura do código segue as regras gramaticais da linguagem. Em outras palavras, o **parser** verifica se o código faz sentido do ponto de vista sintático.

## 🛠️ Classe Parser

A classe Parser é o núcleo da análise sintática. Ela utiliza os tokens gerados pelo lexer para construir uma estrutura lógica, que pode ser uma árvore de análise sintática ou outra forma de representação intermediária. O parser verifica a ordem e a estrutura dos tokens para garantir que o código está correto sintaticamente.

## ⚙️ Principais Métodos do Parser

- __init__: Inicializa o parser com os tokens.
- **proximo**: Avança para o próximo token na lista.
- **erro**: Exibe uma mensagem de erro se algo estiver errado sintaticamente.
- **use**: Confirma se o token atual corresponde ao esperado e avança para o próximo.
- **start**: Inicia a análise do código, processando as definições de funções e o bloco principal.
- **main_program**: Processa o bloco principal do programa (main).
- **parse_function_definition**: Analisa a definição de uma função.
- **parse_parameters**: Processa os parâmetros de uma função.
- **instructions**: Analisa uma sequência de instruções.
- **instruction**: Processa uma única instrução.
- **declare_or_assign_variable**: Lida com a declaração e atribuição de variáveis.
- **function_call**: Analisa a chamada de uma função.
- **statement**: Processa uma instrução individual (atribuição, estrutura de controle, etc).
- **parse_return**, **parse_while**, **parse_for**, **parse_print**: Analisam as respectivas instruções de retorno, laços de repetição e impressão.
- **control_structure**: Analisa as estruturas de controle como if, elif e else.
- **expr**, **arith_expr**, **term**, **factor**, **expr_t**, **expr_e_line**, **expr_t_line**, **expr_f**: Métodos que processam expressões aritméticas e lógicas.
- **peek**: Visualiza o próximo token sem consumi-lo.

Esses métodos trabalham em conjunto para analisar a estrutura do código-fonte. Eles verificam a correta utilização de variáveis, operadores, estruturas de controle e outras construções da linguagem, formando a base para a geração de um código intermediário ou para a próxima etapa da compilação.

# 🔄 Sequência de Execução do Compilador

O processo de compilação no nosso compilador começa com a classe Parser, especificamente com o método start. 

**1️. Início com o Método start**

O método **start** é o ponto de partida. Aqui, o parser começa a processar os tokens recebidos do lexer.

```python	
def start(self):
    print("IR: ", self.ir)
    # Processa todas as definições de função
    while self.token_atual.tipo == T_FUNC:
        self.parse_function_definition()

    # Procura pelo token 'main'
    if self.token_atual.tipo != T_MAIN:
        raise Exception("Erro de sintaxe. Esperado: 'main'.")

    # Processa o bloco main
    self.main_program()
    # Insere os includes no início do IR
    self.ir.insert(0, "#include <stdio.h>")
    self.ir.insert(0, "#include <math.h>")
```	

**2. Análise de Funções e Bloco Principal**

O método start primeiro procura por definições de funções (T_FUNC) e as processa. Após processar todas as funções, busca pelo bloco principal (main).

```python
def parse_function_definition(self):
    self.use(T_FUNC)  # Consome o token 'func'

    func_name = self.token_atual.valor # Salva o nome da função
    self.use(T_ID)  
    self.use(T_PARA, "(")
    params = self.parse_parameters() # Processa os parâmetros da função
    self.use(T_PARA, ")")

    param_placeholders = {param: 'param_placeholder' for param in params} # Cria um placeholder para cada parâmetro, para ser usado na tabela de símbolos
    self.symbol_table.update(param_placeholders) # Adiciona os placeholders na tabela de símbolos

    self.use(T_BLOCK, "{")
    current_ir = self.ir  # Guarda o IR atual
    self.ir = []  # Reseta o IR para a função
    self.instructions() # Processa as instruções da função
    func_body_ir = self.ir # Guarda o IR da função que acabou de ser processado
    self.use(T_BLOCK, "}")

    # Gerar o código C para a função
    function_ir = [f"void {func_name}({', '.join(['float ' + p for p in params])}) {{"] + func_body_ir + ["}"] # Cria o cabeçalho da função e concatena com o IR da função
    self.ir = current_ir + function_ir  # Concatena com o IR global

    for param in params:
            del self.symbol_table[param] # Remove os parâmetros da tabela de símbolos
```


**3️. Processamento do Bloco Principal com main_program**

Uma vez encontrado o token main, o método main_program é chamado para processar o bloco principal do programa.

```python
def main_program(self):
    self.use(T_MAIN) # Confirma o token 'main'
    self.use(T_BLOCK, "{") # Confirma o token '{'

    self.ir.append("int main() {") # Insere o cabeçalho da função main no IR
    self.instructions() # Processa as instruções do bloco principal
    self.ir.append("}") # Insere o fechamento da função main no IR
    
    self.use(T_BLOCK, "}") # Confirma o token '}'
```

**4️. Análise de Instruções com instructions**

Dentro do main_program, o método instructions é chamado para processar cada instrução dentro do bloco principal.

```python
def instructions(self):
    # enquanto o token atual for uma instrução permitida (atribuição, estrutura de controle, etc)
    while self.token_atual.tipo in instrucoes_permitidas: 
        self.instruction() 
        # Verifica se o bloco terminou
        if self.token_atual.tipo == T_BLOCK and self.token_atual.valor == "}":
            break
```

**5️. Processamento Individual de Instruções com instruction**

O método instruction é responsável por identificar o tipo de instrução (declaração de variáveis, chamada de função, estruturas de controle, etc.) e processá-la.

```python
def instruction(self):
    if self.token_atual.tipo == T_VAR_TYPE:
        self.declare_or_assign_variable() # Processa declaração e atribuição de variáveis
    elif self.token_atual.tipo in controle_estrutura: # Verifica se é uma estrutura de controle (if, elif, else, while, for), pois nao tem ; no final ja que é um bloco de codigo e nao uma instrução
        self.control_structure()
    else:
        self.statement() # Processa uma instrução individual (atribuição, chamada de função, etc)
        self.statement()
        if self.token_atual.tipo != T_BLOCK:
            self.use(T_DELIMITER, ";") # Confirma o token ';'
```

# 🧩 Geração da Representação Intermediária (IR)


À medida que as instruções são processadas, uma representação intermediária (IR) do código é construída. Esta IR é uma versão simplificada do código original, geralmente em uma forma que é mais próxima da linguagem de máquina. 

Exemplos de representações intermediárias incluem árvores de análise sintática, código de três endereços, código de máquina, etc. No nosso compilador, a IR é uma lista de strings, onde cada string representa uma linha de código em C.

**1️. Declaração de Variáveis**

Quando o compilador encontra uma declaração de variável, ele gera um código de IR correspondente.

```python
    def declare_or_assign_variable(self):
        type = self.token_atual.valor # Salva o tipo da variável
        self.use(T_VAR_TYPE, "var") # Consome o token 'var'
        name = self.token_atual.valor # Salva o nome da variável
        self.use(T_ID) # Consome o token ID

        if name in self.symbol_table: # Verifica se a variável já foi declarada
            raise Exception(f"Erro semantico. Simbolo {name} foi declarado mais de uma vez.")

        if self.peek().tipo == T_OP and self.peek().valor == '=': # Verifica se é uma atribuição
            self.use(T_OP, '=')
            value, str_expr = self.expr() # Processa a expressão à direita da atribuição
            self.symbol_table[name] = value # Adiciona a variável na tabela de símbolos
            self.ir.append(f"float {name} = {str_expr};") # Adiciona a declaração no IR
        else:
            self.symbol_table[name] = None # Adiciona a variável na tabela de símbolos
            self.ir.append(f"float {name};") # Adiciona a declaração no IR
            self.use(T_DELIMITER, ";")
```

Exemplo de IR Gerado:

- Para var x; → float x;
- Para var y = 5; → float y = 5;

**2️. Estruturas de Controle**

Estruturas de controle como if, else, e loops são transformadas em sua forma de IR.

``` python
def control_structure(self):
        found_if = False  # Estado para verificar se um 'if' foi encontrado

        # Processa o if
        if self.token_atual.tipo == T_IF:
            found_if = True # Marca que um 'if' foi encontrado
            self.use(T_IF) # Consome o token 'if'
            self.use(T_PARA, "(") # Consome o token '('
            condition, condition_str = self.expr() # Processa a condição do if
            self.use(T_PARA, ")")  # Consome o token ')'
            self.use(T_BLOCK, "{") # Consome o token '{'
            self.ir.append(f"if ({condition_str}) {{") # Adiciona o if no IR
            self.instructions() # Processa as instruções dentro do if
            self.use(T_BLOCK, "}") # Consome o token '}'
            self.ir.append("}") # Adiciona o fechamento do if no IR

    # Processa elif e else de forma semelhante
```	

Exemplo de IR Gerado:

- Para if (x > 0) { ... } → if (x > 0) { ... }

**3. Laços de Repetição**

Laços como for e while são traduzidos para a sua representação de IR.

```python

def parse_for(self):
    self.use(T_FOR) # Consome o token 'for'
    self.use(T_PARA, "(") # Consome o token '('

    start_variable = self.token_atual.valor # Salva o nome da variável de início
    self.use(T_ID) # Consome o token ID
    
    # Verifica se é um loop crescente ou decrescente
    if self.token_atual.valor == '->': 
        direction = 'increment'
        self.use(T_ARROW_UP)
    elif self.token_atual.valor == '<-':
        direction = 'decrement'
        self.use(T_ARROW_DOWN)

    end_variable = self.token_atual.valor # Salva o nome da variável de fim
    self.use(T_ID) # Consome o token ID
    self.use(T_COMMA) 

    _, step_expression = self.expr()  # Retorna o valor da expressão e a string que representa a expressão

    self.use(T_PARA, ")")

    # Gera o código C para o loop for
    for_init = f"float {start_variable} = {start_variable};" # Inicializa a variável de início
    for_cond = f"{start_variable} {'<=' if direction == 'increment' else '>='} {end_variable};" # Verifica a condição de parada
    for_incr = f"{start_variable} {'+=' if direction == 'increment' else '-='} {step_expression}" # Incrementa ou decrementa a variável de início
    self.ir.append(f"for ({for_init} {for_cond} {for_incr}) {{") # Adiciona o loop for no IR

    self.use(T_BLOCK, "{")
    self.instructions() # Processa as instruções dentro do loop for
    self.use(T_BLOCK, "}")

    self.ir.append("}")

```	

Exemplo de IR Gerado:

- Para for ( a <- b , c ) { ... } → for (float a = a; a >= b; a -= c) { ... } 

- Para for ( a -> b , c ) { ... }  → for (float a = a; a <= b; a += c) { ... }


# 📚 Declaração de Funções e Geração de Código em C

As funções são declaradas antes do bloco principal (main). Essa abordagem é adotada para atender às especificidades da linguagem C, na qual é gerada a representação intermediária (IR).

## 🔍 Por que Declarar Funções Antes em C?

Em C, a ordem de declaração é importante. Se uma função é chamada antes de ser declarada ou definida, isso pode levar a erros de compilação. Portanto, para garantir que todas as funções estejam disponíveis para serem chamadas em qualquer parte do código, elas são declaradas no início.

```python	
def start(self):
    while self.token_atual.tipo == T_FUNC: # Processa todas as definições de função antes do bloco principal
        self.parse_function_definition()

    # Processamento do bloco main  
```

**O que acontece aqui:**

- O método **parse_function_definition** processa a definição de cada função encontrada, gerando o respectivo IR.
- Essa abordagem garante que todas as funções sejam processadas e declaradas antes do bloco main.
- Para permitir mais de uma função, o método **parse_function_definition** é chamado dentro de um loop while, que continua até que não haja mais funções para processar. 

## 🏗️ Estrutura do Código Gerado

O código C resultante terá uma estrutura onde as funções são definidas antes do bloco main. Isso assegura que o código seja compatível com as regras da linguagem C e possa ser compilado sem problemas.

Exemplo:
```c
void funcaoAuxiliar(float param) {
    // Corpo da função
}

int main() {
    // Chamadas de função e outras instruções
    funcaoAuxiliar(x);
}
```

## 🔑 Importância na Compilação

Esta organização do código é crucial para evitar erros de "função não declarada" durante a compilação do código C gerado. Garante que todas as funções sejam conhecidas pelo compilador C no momento em que são chamadas, seguindo a abordagem de "declaração antes do uso" da linguagem C.

# 📚 Tabela de Símbolos

A tabela de símbolos é uma estrutura de dados que armazena informações sobre os símbolos encontrados no código-fonte. Um símbolo pode ser uma variável, uma função, uma constante, etc. A tabela de símbolos é usada para verificar se um símbolo já foi declarado, se ele está sendo usado corretamente, etc.

## 🏗️ Estrutura da Tabela de Símbolos

A tabela de símbolos é implementada como um dicionário, onde cada símbolo é uma chave e o valor é o tipo do símbolo. Por exemplo, se a variável x for declarada, ela será adicionada à tabela de símbolos como:

```python
def __init__(self, tokens):
        self.tokens = tokens # Lista de tokens
        self.pos = -1 # Posição atual
        self.token_atual = None # Token atual
        self.symbol_table = {} # Tabela de símbolos
        self.ir = [] # Representação intermediária
        
        self.proximo() # Avança para o próximo token

def declare_or_assign_variable(self):
    name = self.token_atual.valor
    self.use(T_ID)

    # Verifica se a variável já foi declarada
    if name in self.symbol_table:
        raise Exception(f"Erro semântico. Símbolo '{name}' foi declarado mais de uma vez.")

    # Adiciona a variável à tabela de símbolos 
    self.symbol_table[name] = None 
```

No exemplo acima:

- **Inicialização**: A tabela de símbolos é inicializada no construtor da classe Parser.
- **Declaração de Variável**: Ao declarar uma variável, primeiro verifica-se se já existe na tabela. Se já existir, é lançada uma exceção para evitar redeclarações.
- **Armazenamento**: A variável é então adicionada à tabela de símbolos com um valor inicial (neste caso, None).

## 🔑 Importância na Compilação

A tabela de símbolos é usada para verificar se um símbolo já foi declarado, se ele está sendo usado corretamente, etc. Por exemplo, se uma variável é declarada mais de uma vez, um erro semântico é gerado. Da mesma forma, se uma variável é usada sem ser declarada, um erro semântico é gerado.

```python	
# Verifica se o símbolo já foi declarado
if name not in self.symbol_table:
    raise Exception(f"Erro semantico. Simbolo {name} nao foi declarado.") # Gera um erro semântico
```

# 📁 Pasta de Exemplos no Compilador

No repositório do compilador, existe uma pasta chamada **exemplos**, que contém diversos códigos de exemplo. Estes exemplos demonstram o uso de várias estruturas da linguagem.

## 🌟 Lista de Exemplos Disponíveis

**1. codigo_duas_funcoes.x:**

- Ilustra o uso de duas funções e a chamada de uma função dentro da outra.
- Exemplifica o uso de loops for e declaração de variáveis.

**2. codigo_for.x:**

- Demonstra a utilização de loops for com incremento e decremento.
- Mostra a declaração e a atribuição de variáveis.

**3. codigo_if_elif_else.x:**

- Exibe o uso de estruturas condicionais if, elif e else.
- Inclui a definição e a chamada de uma função.

**4. codigo_while.x:**

- Apresenta o uso do loop while com condições aninhadas.
- Usa condicionais if e elif dentro do loop.

**5. codigo2.x:**

- Mostra o uso de condicionais if, elif e else.
- Inclui funções com parâmetros e retorno de valores.

# 💡 Como Usar os Exemplos

Para testar os exemplos, o usuário pode simplesmente selecionar um dos arquivos da pasta exemplos e seguir os passos abaixo:

1. Abrir o Compilador: Inicie o arquivo compilador.ipynb no ambiente de sua escolha.
2. Selecionar o Arquivo de Exemplo: Altere a linha de código que abre o arquivo fonte para apontar para um dos exemplos. Por exemplo:

```python
arquivo = open('exemplos/codigo_duas_funcoes.x', 'r')
```

3. Executar o Compilador: Execute o compilador e verifique o código C gerado.
