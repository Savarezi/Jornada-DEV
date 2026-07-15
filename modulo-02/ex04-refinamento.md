# Exercício 04 — Refinamento Sucessivo

## Enunciado

Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

> "Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar."

---

# Resolução

## Nível 1 — Visão Geral

1. Registrar os itens da compra.
2. Calcular o subtotal.
3. Aplicar desconto, se o cliente possuir cartão fidelidade.
4. Mostrar o valor total da compra.

---

## Nível 2 — Detalhamento

### 1. Registrar os itens da compra

- Ler cada item informado pelo operador.
- Registrar o nome, a quantidade e o preço de cada produto.
- Repetir o processo até que todos os itens sejam cadastrados.

### 2. Calcular o subtotal

- Somar o valor de todos os produtos registrados.
- Armazenar o resultado na variável **Subtotal**.

### 3. Aplicar desconto

- Verificar se o cliente possui cartão fidelidade.
- Se possuir, calcular 5% de desconto sobre o subtotal.
- Calcular o valor total após o desconto.
- Caso contrário, manter o subtotal como valor total.

### 4. Mostrar o valor total

- Exibir o subtotal.
- Informar o valor do desconto (quando houver).
- Exibir o valor final da compra.

---

## Conclusão

O refinamento sucessivo consiste em dividir um problema complexo em etapas menores e mais detalhadas. Essa técnica facilita a compreensão da lógica, reduz erros durante o desenvolvimento e torna a implementação mais organizada.