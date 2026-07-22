FUNCTION Main()

   LOCAL nSoma := 0
   LOCAL nI

   FOR nI := 1 TO 1000
      nSoma := nSoma + nI
   NEXT

   ? "Resultado:", nSoma

RETURN NIL