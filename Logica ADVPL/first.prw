#Include 'Protheus.ch'

//------------------------------------------------------------------
/*
{Protheus.doc} Teste001
Primeiro teste de funcao no Protheus
@author         Rafaela Mumbach Buenos
@since          27/10/2023
*/
//------------------------------------------------------------------

User Function Teste001(nNumEnv)

    Local nNumero    := 5
    Default nNumEnv  := 0
    If nNumEnv > nNumero
        Alert ("Numero maior.")
    Else 
        Alert ("Numero eh menor ou igual.")
    EndIf 
    
Return 