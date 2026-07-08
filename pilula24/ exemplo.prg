PROCEDURE Main()

    LOCAL nPreco := 250.00
    LOCAL nPercentualDesconto := 10
    LOCAL nDesconto := 0
    LOCAL nValorFinal := 0

    nDesconto := nPreco * nPercentualDesconto / 100
    nValorFinal := nPreco - nDesconto

    ? "Preço..........:", nPreco
    ? "Desconto.......:", nDesconto
    ? "Valor Final....:", nValorFinal

RETURN