# 💊 Pílula #11 — A preguiça produtiva: deixe o computador repetir

Existe uma frase muito conhecida no mundo da programação:

> "Um bom programador é um programador preguiçoso."

Mas calma — essa preguiça é da boa. 😏

## A preguiça produtiva

Imagine precisar somar os números de **1 até 1000**.

A forma mais básica seria escrever mil linhas de código.  
Mas o programador inteligente pensa:

> "Por que eu vou repetir isso manualmente se posso mandar o computador repetir?"

É exatamente para isso que existem os **loops** (laços de repetição).

```advpl
nSoma := 0

FOR nI := 1 TO 1000
   nSoma := nSoma + nI
NEXT
```

Com apenas quatro linhas, resolvemos algo que poderia virar mil.

O computador faz o trabalho repetitivo.  
O programador cria a lógica.

---

## Tipos de repetição

### FOR

Usado quando sabemos quantas vezes queremos repetir.

Exemplos:

- de 1 até 1000
- para cada aluno da turma
- para cada item da lista

---

### WHILE

Usado quando queremos repetir enquanto uma condição for verdadeira.

Exemplo:

- enquanto o usuário não digitar "sair"

---

## Cuidado com o loop infinito ⚠️

Um erro comum é esquecer de atualizar a condição.

```advpl
WHILE nI <= 5
   QOut(nI)
   // esqueceu de aumentar nI
ENDDO
```

Nesse caso:

- `nI` nunca muda
- a condição nunca fica falsa
- o loop nunca termina

Resultado: programa travado.

### Regra de ouro:

Todo loop precisa ter um fim garantido.

---

## Por que isso importa?

Repetição é o que dá escala aos programas.

O mesmo código pode processar:

- 10 registros
- 100 registros
- 10 milhões de registros

A lógica é a mesma.

É isso que faz sistemas grandes funcionarem em empresas.

---

## Curiosidade 💡

Em **1966**, os cientistas **Böhm** e **Jacopini** provaram que qualquer problema computável pode ser resolvido usando apenas três estruturas:

- **Sequência**
- **Decisão (IF)**
- **Repetição (Loop)**

Ou seja:

aprendendo essas três bases, você tem o fundamento teórico para construir qualquer sistema.