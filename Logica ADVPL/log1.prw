#INCLUDE 'TOTVS.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} LOGICA1

Exercicio logica de programacao com ADVPL
@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------
User Function LOGICA01() //estruturas FOR e WHILE. printa nomes de 1 a 7

    Local nI      := 0   //pode comecar com 0 ou 1
    Local aNomes  := {}

    AAdd(aNomes, "Joao")
    AAdd(aNomes, "Jose")
    AAdd(aNomes, "Paulo")
    AAdd(aNomes, "Andre")
    AAdd(aNomes, "Mauricio")
    AAdd(aNomes, "Marcio")
    AAdd(aNomes, "Daniel")

    For nI := 1 To Len(aNomes) //para tal condicao; faca
        Alert(aNomes[nI])

        //If nI == 2
        //    Exit  //comando que para a estrutura obedecendo as regras impostas pelo nI
        //EndIf
    Next nI //nI eh incrementado ate chegar em 7 (qtd nomes); pode ser escrito somente "Next";
    

Return