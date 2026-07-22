FUNCTION Main()   // Função principal do programa. É por onde a execução começa.

/*
LOCAL   -> Variável visível apenas dentro da função onde foi criada.
PRIVATE -> Variável visível na função atual e nas funções chamadas por ela.
PUBLIC  -> Variável global, pode ser acessada por qualquer função do programa.
STATIC  -> Variável que mantém seu valor entre chamadas da função.
*/

    PUBLIC nNumero := 50   // Cria uma variável pública chamada nNumero e atribui o valor 50.

    Operacoes()            // Chama a função Operacoes().
    Soma()                 // Após retornar de Operacoes(), chama novamente a função Soma().

RETURN NIL                 // Finaliza a função Main.


//---------------------------------------------------------

FUNCTION Operacoes()        // Início da função Operacoes.

    PRIVATE nNumero := 10   // Cria uma variável PRIVATE.
                            // Ela "esconde" a variável PUBLIC enquanto esta função
                            // e as funções chamadas por ela estiverem em execução.

    Soma()                  // Chama a função Soma().
                            // Como existe uma variável PRIVATE, será exibido o valor 10.

    Substrai()              // Chama a função Substrai().
                            // Também utilizará o valor da variável PRIVATE.

RETURN NIL                  // Finaliza a função Operacoes.


//---------------------------------------------------------

FUNCTION Soma()             // Início da função Soma.

    // LOCAL nNumero := 20
    // Se esta linha fosse descomentada, seria criada uma variável LOCAL.
    // Ela teria prioridade sobre a PRIVATE e a PUBLIC.

    QOut(nNumero)           // Exibe o valor da variável nNumero.
                            // Procura primeiro LOCAL, depois PRIVATE e por último PUBLIC.

    QOut("Função Soma")     // Exibe o texto "Função Soma".

RETURN NIL                  // Finaliza a função Soma.


//---------------------------------------------------------

FUNCTION Substrai()         // Início da função Substrai.

    // LOCAL nNumero := 30
    // Se esta linha fosse descomentada, o valor exibido seria 30.

    QOut(nNumero)           // Exibe o valor encontrado para nNumero.

    QOut("Função Substrai") // Exibe o texto "Função Substrai".

RETURN NIL                  // Finaliza a função Substrai.