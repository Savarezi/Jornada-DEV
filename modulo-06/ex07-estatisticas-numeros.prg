FUNCTION Main()

   LOCAL aVetor := {}
   LOCAL nNumero
   LOCAL nSoma := 0
   LOCAL nMedia
   LOCAL nI

   // Lê e armazena 10 números no array.
   FOR nI := 1 TO 10

      QOut( "Digite o " + LTrim( Str( nI ) ) + "º número:" )

      nNumero := 0

      @ Row() + 1, 0 GET nNumero

      READ

      AAdd( aVetor, nNumero )

      nSoma += nNumero

   NEXT

   // Ordena o array em ordem crescente.
   ASort( aVetor )

   // Calcula a média dos números.
   nMedia := nSoma / Len( aVetor )

   QOut( "" )
   QOut( "===== RESULTADO =====" )

   QOut( "Números em ordem crescente:" )

   FOR nI := 1 TO Len( aVetor )

      QOut( LTrim( Str( aVetor[ nI ] ) ) )

   NEXT

   QOut( "" )
   QOut( "Soma: " + LTrim( Str( nSoma ) ) )
   QOut( "Média: " + LTrim( Str( nMedia, 10, 2 ) ) )
   QOut( "Menor número: " + LTrim( Str( aVetor[ 1 ] ) ) )
   QOut( "Maior número: " + LTrim( Str( aVetor[ Len( aVetor ) ] ) ) )

RETURN NIL