FUNCTION Main()

   LOCAL cJogador
   LOCAL cCPU
   LOCAL cResultado
   LOCAL cContinuar := "S"

   DO WHILE Upper( cContinuar ) == "S"

      CLS

      QOut( "============================" )
      QOut( "           JOKENPO" )
      QOut( "============================" )
      QOut( "P - Pedra" )
      QOut( "A - Papel" )
      QOut( "T - Tesoura" )
      QOut( "" )

      // Lê e valida a jogada do jogador.
      cJogador := ValidarJogada()

      // Sorteia a jogada da CPU.
      cCPU := SortearJogadaCPU()

      // Define o vencedor da rodada.
      cResultado := DefinirVencedor( cJogador, cCPU )

      QOut( "" )
      QOut( "Sua jogada: " + cJogador )
      QOut( "CPU: " + cCPU )
      QOut( "" )
      QOut( cResultado )

      QOut( "" )
      QOut( "Deseja jogar novamente? (S/N)" )

      cContinuar := Space( 1 )

      @ Row() + 1, 0 GET cContinuar PICTURE "!"

      READ

      cContinuar := Upper( AllTrim( cContinuar ) )

   ENDDO

   QOut( "" )
   QOut( "Jogo encerrado!" )

RETURN NIL


// Lê uma jogada válida do jogador.
FUNCTION ValidarJogada()

   LOCAL cJogada

   DO WHILE .T.

      QOut( "Digite P para Pedra, A para Papel ou T para Tesoura:" )

      cJogada := Space( 1 )

      @ Row() + 1, 0 GET cJogada PICTURE "!"

      READ

      cJogada := Upper( AllTrim( cJogada ) )

      IF cJogada $ "PAT"
         EXIT
      ENDIF

      QOut( "Jogada inválida!" )
      QOut( "" )

   ENDDO

RETURN cJogada


// Sorteia uma jogada aleatória para a CPU.
FUNCTION SortearJogadaCPU()

   LOCAL nNumero

   nNumero := HB_RandomInt( 1, 3 )

RETURN SubStr( "PAT", nNumero, 1 )


// Compara as jogadas e define o vencedor.
FUNCTION DefinirVencedor( cJogador, cCPU )

   IF cJogador == cCPU

      RETURN "Empate!"

   ELSEIF ( cJogador == "P" .AND. cCPU == "T" ) .OR. ;
          ( cJogador == "A" .AND. cCPU == "P" ) .OR. ;
          ( cJogador == "T" .AND. cCPU == "A" )

      RETURN "Você venceu!"

   ENDIF

RETURN "A CPU venceu!"