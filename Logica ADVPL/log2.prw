#INCLUDE 'TOTVS.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} LOGICA02

Exercicio logica de programacao com ADVPL
@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

User Function EhAnoBissexto() //verificar se um ano eh bissexto

    Local aPergs  := {}
    Local aResps := {}
    Local nAno    := 0

    aAdd (aPergs, {1, "Informe o ano", 0, "@E 9999",,,,50,.T.})

    While .T.

        If Parambox (aPergs, "Validar ano bissexto", @aResps)
            nAno := aResps[1]
            If EhAnoBissexto (@nAno)
                Alert ("O ano"+cValToChar(nAno)+"eh bissexto")
            Else 
                Alert ("O ano"+cValToChar(nAno)+"nao eh bissexto")
            EndIf
        EndIf

        If ! MsgYesNo("Deseja executar outra validacao de ano bissexto?")
            Exit
        EndIf
    ENdDo

Return


Static Function EhAnoBissexto(nAno)

    Local lRet   := .T.

    If nAno % 4 != 0
        lRet := .F.
    EndIf

    If lRet .And. nAno % 100 == 0
        If nAno % 400 != 0
            lRet := .F.
        EndIf
    EndIf

Return lRet