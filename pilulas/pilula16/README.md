# 💊 Pílula #16 — Mágica: uma tela de cadastro completa em 3 linhas

Hoje vamos ver um dos grandes superpoderes do Protheus:

criar um cadastro completo com poucas linhas.

🪄

---

## O que é um CRUD?

CRUD significa:

- **Create** → incluir
- **Read** → consultar
- **Update** → alterar
- **Delete** → excluir

Praticamente todo sistema é formado por vários CRUDs.

Exemplos:

- clientes
- produtos
- pedidos
- contatos

---

## O jeito tradicional

Em outras linguagens, criar um CRUD exige:

- tela
- botões
- validações
- conexão com banco
- gravação de dados

Isso pode gerar centenas de linhas.

---

## O jeito Protheus 😮

No Protheus:

```advpl
dbSelectArea("SZ1")
dbSetOrder(1)
AxCadastro("SZ1", "Contatos")
```

Só isso.

Três linhas.

---

## O que o AxCadastro cria?

Automaticamente:

- listagem de registros
- botão incluir
- botão alterar
- botão excluir
- botão visualizar
- tela de formulário
- pesquisa
- validações

Tudo pronto.

---

## Como isso funciona?

Porque o Protheus usa o Dicionário de Dados.

Ele já sabe:

- campos
- tipos
- tamanhos
- títulos
- regras

Tudo definido no SX3.

Ou seja:

você configura uma vez.

O sistema monta o resto.

🔗

---

## Por que isso importa?

Isso acelera absurdamente o desenvolvimento.

Em vez de perder tempo construindo CRUD básico, o dev foca no que realmente importa:

as regras de negócio.

É isso que faz o ADVPL ser tão produtivo.

---

## Spoiler 💡

Existe também:

```advpl
mBrowse()
```

Uma versão mais avançada e customizável.

Com ela é possível:

- colorir linhas
- criar filtros
- destacar vencimentos
- personalizar listagens

Mas isso vem depois.