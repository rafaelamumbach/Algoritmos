#INCLUDE "PROTHEUS.ch"

/*
{Protheus.doc} JogoMod

Exercicio logica de programacao com ADVPL - Jogo de Adivinhacao
Versao Modularizada
@author         Rafaela Mumbach Buenos
@since          16/01/2024
*/

User Function ObterNivel()

    Local nNivel := 0

    MsgInfo("Clique em OK para escolher o nível de dificuldade :D", "Bem-vindo")
    nNivel := Val(FWInputBox("(1) FÁCIL    (2) MÉDIO     (3) DIFÍCIL", ""))

Return nNivel


User Function JogarJogo()

    Local nNivelEscolhido  := U_ObterNivel()
    Local nChute           := 0
    Local nContaTentativa       := 0
    Local nNumSecreto      := Randomize(1, 100)
    Local nMaxTentativas   := 0

    Do Case
        Case nNivelEscolhido == 1
            nMaxTentativas := 15
        
        Case nNivelEscolhido == 2
            nMaxTentativas := 10

        Case nNivelEscolhido == 3
            nMaxTentativas := 5

    EndCase

    Alert("Boa sorte!", "Adivinhe o número!")
    
    While nChute != nNumSecreto .AND. nContaTentativa < nMaxTentativas
        Alert("Tentativa "+AllTrim(Str(nContaTentativa+1))+" de "+AllTrim(Str(nMaxTentativas)))
        
        nChute := Val(FWInputBox("Sua tentativa: "))
        nContaTentativa++

        If nChute == nNumSecreto
            FWAlertSuccess("Você adivinhou o número secreto! Parabéns :D - <b> número " + cValToChar(nChute) + "</b><br>TENTATIVAS: " + cValToChar(nContaTentativa), "Fim de jogo.")
            Exit

        ElseIf nChute > nNumSecreto
            MsgStop("<b> Valor ALTO!</b>", "Tente novamente :D")

        Else 
            MsgStop("<b> Valor BAIXO!</b>", "Tente novamente :D")
        EndIf

    EndDo

    FWAlertSuccess("Você atingiu o limite de tentativas!", "Fim de jogo.")
    Alert("Segredo: o número secreto era "+AllTrim(Str(nNumSecreto))+"!")

Return


User Function Principal()

    Alert(" => Adivinhe o número entre 1 e 100! <=")
    U_JogarJogo()

Return 0