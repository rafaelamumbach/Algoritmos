#INCLUDE 'TOTVS.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} LOGICA3
Exercicios para treinar logica de programacao usando ADVPL
@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

User Function LOGICA3()

    Local nEleMesmo := 0
    Local nContaDiv := 0
    Local nI        := 0
    Local cResposta := ""
    Local cNumero   := "N�mero primo: "

    For nEleMesmo := 1 To 100
        nContaDiv := 0
        For nI =  1 To nEleMesmo
            If nEleMesmo % nI == 0
                nContaDiv++
            EndIf 
        Next nI

        If nContaDiv == 2
            cResposta += cNumero + cValToChar (nElemesmo) + CRLF //quebra de linha
        EndIf
    Next nEleMesmo

    Alert (cResposta)
Return