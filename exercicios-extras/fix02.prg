
/*Anatomia do pseudocódigo
 Início
 Leia A
 Leia B
 Resultado <- A + B
Escreva Resultado
Fim */


// Definindo a função que realiza a tarefa
FUNCTION SomarValores(a, b)
    LOCAL resultado

    resultado := a + b  // Processamento: soma os valores recebidos
    RETURN resultado    // Retorna o resultado para quem chamou a função

// Exemplo de uso:
PROCEDURE Main
    LOCAL soma := SomarValores(10, 5) // Chama a função passando os valores
    QQOUT( soma                            // Sai­da: exibe o 15 na tela
RETURN