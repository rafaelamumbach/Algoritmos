#INCLUDE 'TOTVS.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} LOGICA04

Exercicio logica de programacao com ADVPL
@author         Rafaela Mumbach Buenos
@since          08/11/2023
*/
//------------------------------------------------------------------

User Function Validacao()

    Local nAno       := 2032

    If nANo % 4 != 0
        Alert ("Nao eh ano bissexto")
    ElseIf nANo % 100 != 0
            Alert ("Eh ano bissexto :)")
        ElseIf nANo % 400 != 0
                Alert ("Nao eh ano bissexto")
            Elseif nAno % 400 = 0
                    Alert ("Eh ano bissexto :)")
    Endif

Return