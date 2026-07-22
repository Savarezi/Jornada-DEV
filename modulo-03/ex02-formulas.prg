
/*#define PI
ACCEPT
Val()
^ (potência)
Sqrt() (raiz quadrada)
Str() para exibir com duas casas decimais*/

//===================================================================

#include "hbmath.ch"

#define PI 3.14159

FUNCTION Main()

   LOCAL cEntrada := ""

   LOCAL nRaio := 0
   LOCAL nArea := 0

   LOCAL nCatetoA := 0
   LOCAL nCatetoB := 0
   LOCAL nHipotenusa := 0

   LOCAL nPeso := 0
   LOCAL nAltura := 0
   LOCAL nIMC := 0

   QOut("=== Exercício 02 - Fórmulas Matemáticas ===")
   QOut("")

   // Área do círculo
   ACCEPT "Informe o raio do círculo: " TO cEntrada
   nRaio := Val(cEntrada)

   nArea := PI * (nRaio ^ 2)

   QOut("Área do círculo: " + Str(nArea,10,2))
   QOut("")

   // Hipotenusa
   ACCEPT "Informe o primeiro cateto: " TO cEntrada
   nCatetoA := Val(cEntrada)

   ACCEPT "Informe o segundo cateto: " TO cEntrada
   nCatetoB := Val(cEntrada)

   nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

   QOut("Hipotenusa: " + Str(nHipotenusa,10,2))
   QOut("")

   // IMC
   ACCEPT "Informe o peso (kg): " TO cEntrada
   nPeso := Val(cEntrada)

   ACCEPT "Informe a altura (m): " TO cEntrada
   nAltura := Val(cEntrada)

   nIMC := nPeso / (nAltura ^ 2)

   QOut("IMC: " + Str(nIMC,10,2))

RETURN NIL