FUNCTION Main()

   LOCAL aCarrinho := {}
   LOCAL cContinuar := "S"
   LOCAL nTotal

   // Adiciona produtos enquanto o usuário desejar.
   DO WHILE Upper( cContinuar ) == "S"

      AAdd( aCarrinho, CadastrarProduto() )

      QOut( "" )
      QOut( "Deseja adicionar outro produto? (S/N)" )

      cContinuar := Space( 1 )

      @ Row() + 1, 0 GET cContinuar PICTURE "!"

      READ

      cContinuar := Upper( AllTrim( cContinuar ) )

   ENDDO

   // Calcula e exibe o carrinho.
   nTotal := ExibirCarrinho( aCarrinho )

   QOut( "" )
   QOut( "Total da compra: R$ " + ;
      LTrim( Str( nTotal, 10, 2 ) ) )

RETURN NIL


// Lê os dados de um produto.
FUNCTION CadastrarProduto()

   LOCAL aProduto := {}
   LOCAL cNome
   LOCAL nPreco

   QOut( "" )
   QOut( "Digite o nome do produto:" )

   cNome := Space( 30 )

   @ Row() + 1, 0 GET cNome

   READ

   cNome := AllTrim( cNome )

   QOut( "Digite o preço:" )

   nPreco := 0

   @ Row() + 1, 0 GET nPreco PICTURE "999999.99"

   READ

   // Cada produto possui nome e preço.
   AAdd( aProduto, cNome )
   AAdd( aProduto, nPreco )

RETURN aProduto


// Lista os produtos e calcula o total.
FUNCTION ExibirCarrinho( aCarrinho )

   LOCAL nTotal := 0
   LOCAL nI

   QOut( "" )
   QOut( "===== CARRINHO DE COMPRAS =====" )

   FOR nI := 1 TO Len( aCarrinho )

      QOut( "" )
      QOut( "Produto: " + aCarrinho[ nI ][ 1 ] )
      QOut( "Preço: R$ " + ;
         LTrim( Str( aCarrinho[ nI ][ 2 ], 10, 2 ) ) )

      nTotal += aCarrinho[ nI ][ 2 ]

   NEXT

RETURN nTotal