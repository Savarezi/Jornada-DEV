FUNCTION Main()

   LOCAL cPalpite := ""
   LOCAL nPalpite := 0
   LOCAL nNumeroSecreto := 0
   LOCAL nTentativa := 0

   // Sorteia um número entre 1 e 100.
   nNumeroSecreto := HB_RandomInt(1, 100)

   QOut("===== JOGO: ADIVINHE O NÚMERO =====")
   QOut("Tente adivinhar um número entre 1 e 100.")
   QOut("Você tem 7 tentativas.")
   QOut("")

   // O FOR controla a quantidade máxima de tentativas.
   FOR nTentativa := 1 TO 7

      ACCEPT "Digite seu palpite: " TO cPalpite
      nPalpite := Val(cPalpite)

      IF nPalpite == nNumeroSecreto

         QOut("")
         QOut("Parabéns! Você acertou!")
         QOut("Tentativas utilizadas: " + LTrim(Str(nTentativa)))
         EXIT

      ELSEIF nPalpite < nNumeroSecreto

         QOut("O número secreto é MAIOR.")

      ELSE

         QOut("O número secreto é MENOR.")

      ENDIF

      QOut("Tentativa: " + LTrim(Str(nTentativa)) + " de 7")
      QOut("")

   NEXT

   // Se terminar o FOR sem acertar, mostra o número sorteado.
   IF nPalpite <> nNumeroSecreto

      QOut("")
      QOut("Suas tentativas acabaram!")
      QOut("Número secreto: " + LTrim(Str(nNumeroSecreto)))

   ENDIF

RETURN NIL