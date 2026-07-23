FUNCTION Main()

   LOCAL nA
   LOCAL nB
   LOCAL cOperacao
   LOCAL xResultado

   // A Main apenas organiza o fluxo da calculadora.
   nA := LerNumero( "Digite o primeiro número: " )
   nB := LerNumero( "Digite o segundo número: " )

   QOut( "" )
   QOut( "+  Soma" )
   QOut( "-  Subtração" )
   QOut( "*  Multiplicação" )
   QOut( "/  Divisão" )
   QOut( "^  Potência" )
   QOut( "R  Raiz quadrada do primeiro número" )
   QOut( "" )

   ACCEPT "Escolha a operação: " TO cOperacao

   xResultado := Calcular( nA, nB, cOperacao )

   MostrarResultado( xResultado )

RETURN NIL


// Lê um número informado pelo usuário e retorna o valor numérico correspondente.
FUNCTION LerNumero( cMensagem )

   LOCAL cValor

   ACCEPT cMensagem TO cValor

RETURN Val( cValor )


FUNCTION Calcular( nA, nB, cOperacao )

   DO CASE

      CASE cOperacao == "+"
         RETURN nA + nB

      CASE cOperacao == "-"
         RETURN nA - nB

      CASE cOperacao == "*"
         RETURN nA * nB

      CASE cOperacao == "/"

         IF nB == 0
            RETURN "ERRO: divisão por zero"
         ENDIF

         RETURN nA / nB

      CASE cOperacao == "^"
         RETURN nA ^ nB

      CASE Upper( cOperacao ) == "R"
         RETURN Sqrt( nA )

      OTHERWISE
         RETURN "ERRO: operação inválida"

   ENDCASE

RETURN NIL


// Exibe o resultado da operação ou uma mensagem de erro.
FUNCTION MostrarResultado( xResultado )

   QOut( "" )

   IF ValType( xResultado ) == "N"
      QOut( "Resultado: " + LTrim( Str( xResultado ) ) )
   ELSE
      QOut( xResultado )
   ENDIF

RETURN NIL