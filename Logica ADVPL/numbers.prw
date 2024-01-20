#Include 'Protheus.ch'

//------------------------------------------------------------------
/*
{Protheus.doc} Numeros
Tipos de dados em ADVPL - exemplos
@author         Rafaela Mumbach Buenos
@since          30/10/2023
*/
//------------------------------------------------------------------

User Function Numeros()

    Local nNum1       := 0
    Local nNum2       := 0
    Local nNum3       := 0
    Local nNum4       := 0
    Local nRes        := 0
    Local cRes        := "" //str vazia


    // ---- SOMA ---- //
    nNum1  := 50
    nNum2  := 100
    nRes   := nNum1 + nNum2

    // ---- SUBTRACAO ---- //
    nNum1  := 100
    nNum2  := 50
    nRes   := nNum1 - nNum2

    // ---- DIVISAO ---- //
    nNum1  := 100
    nNum2  := 4
    nRes   := nNum1 / nNum2

    // ---- MULTIPLICACAO ---- //
    nNum1  := 8
    nNum2  := 9
    nRes   := nNum1 * nNum2

    // ---- EXPONENCIACAO ---- //
    nNum1  := 3
    nNum2  := 3
    nRes   := nNum1 ^ nNum2 // --> 3 elevado a 3 expoente: 3x3x3 = 27.

    // ---- RESTO DA DIVISAO ---- //
    nNum1  := 100
    nNum2  := 2
    nRes   := nNum1 % nNum2

    nNum1  := 13
    nNum2  := 2
    nRes   := nNum1 % nNum2

    // ---- PRIORIZACAO ---- //
    nNum1  := 50
    nNum2  := 100
    nNum3  := 3
    nNum4  := 4
    nRes   := nNum1 + nNum2 * nNum3 / nNum4
    nRes   := ((nNum1 + nNum2)) * nNum3 / nNum4 //priorizacao. parenteses internos --> externos

    // ---- EXATAMENTE IGUAL ---- //
    nNum1  := 50
    nNum2  := 100
    cRes   := If(nNum1 == nNum2, "Igual", "Diferente")

    //Exemplo de funcao util em ADVPL
    // ---- RANDOMIZACAO ENTRE NUM MIN E NUM MAX ---- //
    nNum1  := 50
    nNum2  := 50000
    nRes   := Randomize(nNum1, nNum2)

Return