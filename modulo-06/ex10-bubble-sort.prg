FUNCTION Main()

   LOCAL aVetor := { 64, 25, 12, 22, 11, 90, 34, 7, 56, 3 }
   LOCAL aOrdenado
   LOCAL nI

   // Envia o array para a função que realiza a ordenação.
   aOrdenado := BubbleSort( aVetor )

   QOut( "===== BUBBLE SORT =====" )
   QOut( "" )
   QOut( "Números em ordem crescente:" )

   // Exibe o array já ordenado.
   FOR nI := 1 TO Len( aOrdenado )

      QOut( LTrim( Str( aOrdenado[ nI ] ) ) )

   NEXT

RETURN NIL


// Ordena o array usando o algoritmo Bubble Sort.
FUNCTION BubbleSort( aVetor )

   LOCAL nI
   LOCAL nJ
   LOCAL nTemp

   // Compara os elementos vizinhos várias vezes.
   FOR nI := 1 TO Len( aVetor ) - 1

      FOR nJ := 1 TO Len( aVetor ) - nI

         // Se o elemento atual for maior que o próximo,
         // troca os dois de posição.
         IF aVetor[ nJ ] > aVetor[ nJ + 1 ]

            nTemp := aVetor[ nJ ]

            aVetor[ nJ ] := aVetor[ nJ + 1 ]

            aVetor[ nJ + 1 ] := nTemp

         ENDIF

      NEXT

   NEXT

RETURN aVetor