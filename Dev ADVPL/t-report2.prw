#INCLUDE 'TOTVS.ch'
#INCLUDE 'TOPCONN.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} t-report2

Primeiro relatorio teste usando arquivo de perguntas SX1
com concatenacao de strings na query

@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

User Function t-report2() //como uma funcao main :)

    Local oReport  := Nil 
    Local cPerg    := Padr("t-report2",10) //nao necessario, apenas p fins de estudo

    Pergunte(cPerg, .F.) //false ou true determinam se a pergunta ira aparecer ou nao determinadas pelo SX1

    oReport := RptStruct(cPerg)
    oReport:PrintDialog()

Return

//------------------------------------------------------------------
/*
{Protheus.doc} REPPrint

Funcao que contem query e impressao das sessoes do relatorio

@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

Static Function REPprint(oReport)

    Local oSection1 := oReport:Section(1)
    Local oSection2 := oReport:Section(2)
    Local cQuery    := ""
    Local cNumCod   := ""

    cQuery := "SELECT A1_COD"
    cQuery += "FROM SA1010 SA1"
    cQuery += "WHERE SA1.D_E_L_E_T_ = ''"
    cQuery += "B1_FILIAL = '01'"
    cQuery += "ORDER BY A1_FILIAL"
    cQuery := "" //apenas um exemplo de query simples. nao alimenta todos os campos necessarios.

    If Select("TEMP") <> 0
        DbSelectArea("TEMP") //nao necessario porque quando executa ja abre e fecha
        DbCloseArea()
    Endif 


    TCQUERY cQuery NEW ALIAS "TEMP"

        DbSelectArea("TEMP")
        TEMP->(cbGoTop())

        oReport:SetMeter(TEMP->(LastRec()))

    While !EOF() //sempre -> While !TEMP->EOF()
        If oReport:Cancel()
            Exit 
        Endif 

        //iniciando a primeira secao
        oSection1:Init()
        oReport:IncMeter()

        cNumCod := TEMP->A1_COD
        IncProc("Imprimindo Cliente "+Alltrim(TEMP->A1_COD))

        //imprimindo a primeira secao
        oSection1:Cell("A1_COD"):SetValue(TEMP->A1_COD)
        oSection1:Cell("A1_NOME"):SetValue(TEMP->A1_NOME)
        oSection1:Printline()


        //imprimindo a segunda secao
        oSection2:Init()
        //verifica se o codigo do cliente eh o mesmo, se sim, imprime os dados do pedido

        While TEMP->A1_COD == cNumCod
            oReport:IncMeter()

        //IncProc --> incrementa r�gua de progress�o (do Processa)?
            oSection2:Cell("C5_NUM"):SetValue(TEMP->C5_NUM)
            oSection2:Cell("B1_DESC"):SetValue(TEMP->B1_DESC)
            oSecetion2:PrintLine()

            TEMP->(dbSkip())
        EndDo

        oSection2:Finish()
        oReport:ThinLine()

        oSection1:Finish()

    EndDo
Return

//------------------------------------------------------------------
/*
{Protheus.doc} TRep001

Estruturacao do Relatorio, suas sessoes e caracteristicas visuais

@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

Static Function RptStruct(cNome)
    Local oReport   := Nil
    Local oSection1 := Nil
    Local oSection2 := Nil

    oReport := TReport():New(cNome,"Relat�rio de pedidos por clientes",cNome,{|oReport|REPPRINT(oReport)},"Descricao do Help")

    oReport:SetPortrait() //define a orientacao do rel. como retrato, mas pd ser definido nos parametros da SX1

    oSection1 := TRSection():New(oReport, "Clientes", {"SA1"}, NIL, .F.,.T.)
    TRCell():New(oSection1, "A1_COD" , "TEMP", "CODIGO", /**/, /**/, /**/, /**/) //rever par�metros
    TRCell():New(oSection1, "A1_NOME" , "TEMP", "NOME", /**/, /**/, /**/, /**/)

    oSection2 := TRSection():New(oReport, "Produtos", {"SB1"}, NIL,.F.,.T. )
    TRCell():New(oSection2, "C5_NUM" , "TEMP", "Pedido", /**/, /**/, /**/, /**/)
    TRCell():New(oSection2, "B1_DESC" , "TEMP", "Descri��o", /**/, /**/, /**/, /**/)

    oSection1:SetPageBreak(.F.)
Return 