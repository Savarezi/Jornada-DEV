FUNCTION Main()

   LOCAL aDias := {;
      "Domingo",;
      "Segunda-feira",;
      "Terça-feira",;
      "Quarta-feira",;
      "Quinta-feira",;
      "Sexta-feira",;
      "Sábado";
   }

   LOCAL nDia := 0

   // Repete até o usuário informar um número válido.
   DO WHILE nDia < 1 .OR. nDia > 7

      QOut( "Digite um número de 1 a 7:" )

      nDia := 0

      @ Row() + 1, 0 GET nDia PICTURE "9"

      READ

      IF nDia < 1 .OR. nDia > 7
         QOut( "" )
         QOut( "Número inválido! Digite um valor entre 1 e 7." )
         QOut( "" )
      ENDIF

   ENDDO

   // O índice do array começa em 1.
   QOut( "" )
   QOut( "Dia escolhido: " + aDias[ nDia ] )

RETURN NIL