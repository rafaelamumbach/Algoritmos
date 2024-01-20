#INCLUDE 'TOTVS.ch'

/*
{Protheus.doc} Calculadora

Exercicio logica de programacao com ADVPL - Calculadora
Versao 2 - Repeticao While
@author         Rafaela Mumbach Buenos
@since          16/01/2024
*/

User Function AnalisaNum()
    Local nOperacao := 0

    MsgInfo("Clique em OK para escolher a operação desejada!", "Calculadora")
    nOperacao := Val(FWInputBox("1) ADI 2) SUBTR 3) MULT 4) DIV", ""))

Return nOperacao


User Function CalcOp()
    
    Do While .T.
        nModoEscolhido := U_RecebeNum()
        nNum1 := 0
        nNum2 := 0
        nResultado := 0

        nNum1 := Val(FWInputBox("Digite o primeiro número: "))
        nNum2 := Val(FWInputBox("Digite o segundo número: "))

        Do Case
            Case nModoEscolhido == 1
                nResultado := nNum1 + nNum2 

            Case nModoEscolhido == 2
                nResultado := nNum1 - nNum2 

            Case nModoEscolhido == 3
                nResultado := nNum1 * nNum2 

            Case nModoEscolhido == 4
                nResultado := nNum1 / nNum2
        EndCase

        Alert("Resultado: "+AllTrim(Str(nResultado))+"!")

        nContinuar := Val(FWInputBox("Deseja realizar outra operação? (1 para sim, 0 para não)", ""))

        If nContinuar == 0
            FWAlertSuccess("Finalizando operações...","Calculadora")
            Exit
        EndIf
    EndDo
Return