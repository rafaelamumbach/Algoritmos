#INCLUDE "PROTHEUS.ch"

/*
{Protheus.doc} JogoAdivinha

Exercicio logica de programacao com ADVPL - Jogo de Adivinhacao
Versao 1
@author         Rafaela Mumbach Buenos
@since          27/11/2023
@last           15/01/2024
*/

User Function AdivNumSec()

    Local nChute          := 0
    Local nTentativas     := 0
    Local nI              := 0
    Local nNumCerto       := 0

    MsgInfo("Adivinhe o número! Clique em OK para escolher o nível de dificuldade :D","Bem-vindo")
    nNivel := Val(FWInputBox("(1) FÁCIL    (2) MÉDIO     (3) DIFÍCIL", ""))

    
    If nNivel == 1

        MsgAlert("Nível escolhido: FÁCIL"+CRLF+"Boa sorte!","Adivinhe o número!")
        MsgAlert("Escolha um número entre 1 e 100."+CRLF+"Você tem 15 tentativas.","Atenção")
        
        nNumCerto := Randomize(1,100)    

        While nChute != nNumCerto
        
            For nI := 1 To 15

                Alert("Tentativa "+AllTrim(Str(nI))+" de 15!")
                nChute := Val(FWInputBox("Sua tentativa: "))
                nTentativas++

                If nChute == nNumCerto
                FWAlertSuccess("Você adivinhou o número secreto! Parabéns :D - <b> número " + cValToChar(nChute) + "</b><br>TENTATIVAS: " + cValToChar(nTentativas),"Fim de jogo.")
                Exit

                ElseIf nChute > nNumCerto
                MsgStop("<b> Valor ALTO!</b>","Tente novamente :D")

                Else
                MsgStop("<b> Valor BAIXO!</b>","Tente novamente :D")

                EndIf

                If nTentativas == 15
                    FWAlertSuccess("Você atingiu o limite de 15 tentativas!","Fim de jogo.")
                    Alert("Segredo: o número secreto era "+AllTrim(Str(nNumCerto))+"!")
                
                Exit

                EndIf

            Next nI
            Exit

        EndDo

    ElseIf nNivel == 2

        MsgAlert("Nível escolhido: MÉDIO"+CRLF+"Boa sorte!","Adivinhe o número!")
        MsgAlert("Escolha um número entre 1-100."+CRLF+"Você tem 10 tentativas.","Atenção")

        nNumCerto := Randomize(1,100)
                
        While nChute != nNumCerto

            For nI := 1 To 10
        
                Alert("Tentativa "+AllTrim(Str(nI))+" de 10!")
                nChute := Val(FWInputBox("Sua tentativa: "))
                nTentativas++

                If nChute == nNumCerto
                FWAlertSuccess("Você adivinhou o número secreto! Parabéns :D - <b> número " + cValToChar(nChute) + "</b><br>TENTATIVAS: " + cValToChar(nTentativas),"Fim de jogo.")
                Exit

                ElseIf nChute > nNumCerto
                MsgStop("<b> Valor ALTO!</b>","Tente novamente :D")

                Else
                MsgStop("<b> Valor BAIXO!</b>","Tente novamente :D")

                EndIf

                If nTentativas == 10

                    FWAlertSuccess("Você atingiu o limite de 10 tentativas!","Fim de jogo.")
                    Alert("Segredo: o número secreto era "+AllTrim(Str(nNumCerto))+"!")
                    Exit

                EndIf

            Next nI
            Exit

        EndDo
            
    Else
        
        MsgAlert("Nível escolhido: DIFÍCIL"+CRLF+"Boa sorte!","Adivinhe o número!")
        MsgAlert("Escolha um número entre 1 e 100."+CRLF+"Você tem 5 tentativas.","Atenção")

        nNumCerto := Randomize(1,100)

        While nChute != nNumCerto

            For nI := 1 To 5
        
                Alert("Tentativa "+AllTrim(Str(nI))+" de 5!")
                nChute := Val(FWInputBox("Sua tentativa: "))
                nTentativas++

                If nChute == nNumCerto
                FWAlertSuccess("Você adivinhou o número secreto! Parabéns :D <b> -> <b> número " + cValToChar(nChute) + "</b><br>TENTATIVAS: " + cValToChar(nTentativas),"Fim de jogo.")
                Exit

                ElseIf nChute > nNumCerto
                MsgStop("<b> Valor ALTO!</b>","Tente novamente :)")
                
                Else
                MsgStop("<b> Valor BAIXO!</b>","Tente novamente :)")

                EndIf

                If nTentativas == 5

                    FWAlertSuccess("Você atingiu o limite de 5 tentativas!","Fim de jogo.")
                    Alert("Segredo: o número secreto era "+AllTrim(Str(nNumCerto))+"!")

                EndIf

            Next nI
            Exit

        EndDo

    EndIf

Return