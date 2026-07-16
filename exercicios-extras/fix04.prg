// Define as variáveis como locais
LOCAL nA, nB
LOCAL cEntrada // Variável  para receber o valor do teclado

// 2. Ler com ACCEPT + converter com Val()
ACCEPT "Digite o primeiro numero: " TO cEntrada
nA := Val(cEntrada)

ACCEPT "Digite o segundo numero: " TO cEntrada
nB := Val(cEntrada)

// 3. Exibir soma, subtracao e produto com Str(..., 10, 2)
// O Str(valor, 10, 2) formata o numero com 10 espacos totais e 2 casas decimais
QOut("Soma: " + Str(nA + nB, 10, 2))
QOut("Subtracao: " + Str(nA - nB, 10, 2))
QOut("Produto: " + Str(nA * nB, 10, 2))

// 4. Proteger a divisao com IF nB <> 0
IF nB <> 0
    QOut("Divisao: " + Str(nA / nB, 10, 2))
ELSE
    QOut("Erro: Divisao por zero nao permitida.")
ENDIF

RETURN