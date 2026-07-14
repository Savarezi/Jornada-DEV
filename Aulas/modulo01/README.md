# 📘 Aula 01 — Configuração do Ambiente

## 🎯 Objetivo

Configurar o ambiente de desenvolvimento e validar que tudo está funcionando corretamente.

---

## 📂 Arquivos

| Arquivo | Descrição |
|---------|-----------|
| `teste.prg` | Primeiro programa utilizado para validar o ambiente. |
| `apresentacao.prg` | Programa utilizado como exercício de fixação. |

---

## 💻 Código

```advpl
FUNCTION Main()

    QOut("Ambiente funcionando! Pronto para a Aula 1.")

RETURN NIL
```

---

## ▶️ Como executar

### Opção 1 — Executando com `hbrun`

```bash
hbrun teste.prg
```

### Opção 2 — Compilando com `hbmk2`

Compile:

```bash
hbmk2 teste.prg
```

Execute:

```bash
./teste
```

---

## ✍️ Exercício de Fixação

Crie um programa chamado **`apresentacao.prg`** que exiba uma ficha de apresentação com as seguintes informações:

- Nome
- Cidade
- Curso: Harbour/ADVPL

Exemplo de saída:

```text
===========================
   FICHA DE APRESENTAÇÃO
===========================

Nome   : Patricia Oliveira
Cidade : São Paulo
Curso  : Harbour/ADVPL

===========================
```

Execute o exercício com:

```bash
hbrun apresentacao.prg
```

---

## 📚 Conceitos aprendidos

- Configuração do ambiente Harbour
- Estrutura básica de um programa
- `FUNCTION Main()`
- `QOut()`
- `RETURN NIL`
- Compilação com `hbmk2`
- Execução rápida com `hbrun`
- Organização de arquivos `.prg`