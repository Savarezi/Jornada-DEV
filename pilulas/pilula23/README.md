# 📚 Pílula #24 — Nomes que Importam: a arte de nomear bem

## 🎯 Objetivo

Demonstrar a importância de utilizar nomes claros e descritivos em variáveis, funções e constantes, tornando o código mais legível e fácil de manter.

---

## 💡 Por que os nomes importam?

Código é escrito para pessoas lerem e entenderem. Um bom nome reduz dúvidas, facilita a manutenção e evita erros.

### ❌ Exemplo ruim

```advpl
nX := nA * nB / 100
```

### ✅ Exemplo melhor

```advpl
nDesconto := nPreco * nPercentualDesconto / 100
```

O computador executa ambos da mesma forma, mas para quem lê o código existe uma enorme diferença.

---

## 📌 Boas práticas

- Utilize a notação húngara (`c`, `n`, `d`, `l`, `a`).
- Prefira nomes descritivos.
- Nomeie funções com verbo + substantivo.
- Evite abreviações difíceis de entender.
- Utilize constantes em letras maiúsculas.

---

## 📂 Arquivos

| Arquivo | Descrição |
|---------|-----------|
| `exemplo.prg` | Exemplo de cálculo utilizando nomes claros e descritivos. |

---

## ▶️ Como executar

Compile o arquivo:

```bash
hbmk2 exemplo.prg
```

Execute:

```bash
./exemplo
```

---

## 📖 Conceitos praticados

- Legibilidade
- Convenção de nomenclatura
- Boas práticas em xBase/ADVPL
- Manutenção de código
- Código limpo

---

> "Existem apenas duas coisas difíceis na Ciência da Computação: invalidar cache e dar nomes às coisas." — Phil Karlton