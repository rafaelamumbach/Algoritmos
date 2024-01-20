#INCLUDE 'TOTVS.ch'
//------------------------------------------------------------------
/*
{Protheus.doc} t-report1

Primeiro relatorio teste do Protheus em TReport sem arquivo SX1
com Embedded SQL

@author         Rafaela Mumbach Buenos
@since          07/11/2023
*/
//------------------------------------------------------------------

User Function t-report1()

    Local oReport
    Local cAlias  := getNextAlias()  //cAlias: tabela principal da query

    oReport := RptStruct(cAlias)
    oReport:printDialog()

    //NECESSARIO: CHAMADA DA STATIC FUNCTION ---- ja salvo e compilado.


Return


//Static Function RPrint(oReport, cAlias)
//
//    Local oSessao := oReport:Section()
//
//    oSessao():BeginQuery()
//
//        BeginSQL Alias cAlias
//
//            SELECT
//            B1_FILIAL FILIAL, B1_COD CODIGO, B1_DESC DESCRICAO, B1_TIPO TIPO, B1_ATIVO ATIVO
//                FROM %Table:SB1% SB1
//                    WHERE B1_FILIAL = '01' AND B1_MSBLQL <> '1' AND D_E_L_E_T_ = ''
//                GROUP BY B1_FILIAL, B1_COD, B1_DESC, B1_TIPO, B1_ATIVO
//
//        EndSQL
//    oSessao():EndQuery()
//    oReport:SetMeter((cAlias)->(RecCount()))
//
//    oSessao:Print()
//
//Return



Static Function RptStruct(cAlias)

    Local cTitulo := "Produtos Ativos - Primeiro Relat�rio :)"
    Local cHelp   := "Permite imprimir relat�rio de produtos"
    Local oReport
    Local oSection

    oReport := TReport():New('TRP001',cTitulo, ,{|oReport|RPrint(oReport, cAlias)},cHelp)

    oSection := TRSection():New(oReport,"Produtos",{"SB1"})

    TRCell():New(oSection,"FILIAL","SB1","Filial")
    TRCell():New(oSection,"CODIGO","SB1","Codigo")
    TRCell():New(oSection,"DESCRICAO","SB1","Descricao")
    TRCell():New(oSection,"TIPO","SB1","Tipo")
    TRCell():New(oSection,"ATIVO","SB1","Ativo")


Return (oReport)