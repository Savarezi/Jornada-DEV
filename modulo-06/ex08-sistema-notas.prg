FUNCTION Main()

   LOCAL aAlunos := {}
   LOCAL nQtdAlunos := 0
   LOCAL nI
   LOCAL nMedia

   // Define quantos alunos serão cadastrados.
   QOut( "Quantos alunos deseja cadastrar?" )

   @ Row() + 1, 0 GET nQtdAlunos PICTURE "999"

   READ

   // Cadastra os dados de cada aluno.
   FOR nI := 1 TO nQtdAlunos

      AAdd( aAlunos, CadastrarAluno() )

   NEXT

   // Exibe o resultado de cada aluno.
   QOut( "" )
   QOut( "===== RESULTADO =====" )

   FOR nI := 1 TO Len( aAlunos )

      nMedia := CalcularMedia( aAlunos[ nI ] )

      QOut( "" )
      QOut( "Aluno: " + aAlunos[ nI ][ 1 ] )
      QOut( "Média: " + LTrim( Str( nMedia, 5, 2 ) ) )

      IF nMedia >= 7

         QOut( "Situação: APROVADO" )

      ELSE

         QOut( "Situação: REPROVADO" )

      ENDIF

   NEXT

RETURN NIL


// Lê o nome e as quatro notas de um aluno.
FUNCTION CadastrarAluno()

   LOCAL aAluno := {}
   LOCAL cNome
   LOCAL nNota
   LOCAL nI

   QOut( "" )
   QOut( "Digite o nome do aluno:" )

   cNome := Space( 30 )

   @ Row() + 1, 0 GET cNome

   READ

   cNome := AllTrim( cNome )

   AAdd( aAluno, cNome )

   // Lê as quatro notas.
   FOR nI := 1 TO 4

      QOut( "Digite a nota " + LTrim( Str( nI ) ) + ":" )

      nNota := 0

      @ Row() + 1, 0 GET nNota PICTURE "99.99"

      READ

      AAdd( aAluno, nNota )

   NEXT

RETURN aAluno


// Calcula a média das quatro notas.
FUNCTION CalcularMedia( aAluno )

   LOCAL nSoma := 0
   LOCAL nI

   // As notas ficam nas posições 2, 3, 4 e 5.
   FOR nI := 2 TO 5

      nSoma += aAluno[ nI ]

   NEXT

RETURN nSoma / 4