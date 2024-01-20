#INCLUDE 'TOTVS.ch'
#INCLUDE 'Protheus.ch'

/* {Protheus.doc} t-report4
Primeiro exemplo de relat�rio personalizado
utilizando a classe TReport -

@author Rafaela Mumbach Buenos
@since  09/01/2024
*/

User Function t-report4() //inicializa o processo de impress�o do relat�rio
    Local oObjeto := nil 
    
    If Pergunte ("ZY601EST", .T.) //perguntas personalizadas e configuradas
		oObjeto := ReportDef()
		oObjeto:PrintDialog()

	Else
		MsgInfo("Cancelado pelo operador.", "ZY601EST")
	Endif


Return

Static Function ReportDef() //define o conte�do do relat�rio
	Local oReport    := nil
	Local cTitulo    := "Lista de Produtos Cadastrados"
	Local cPerg      := "ZY601EST"
	Local cTexto     := ""
	Local oCabecalho := nil
	Local oItens     := nil

	oReport := TReport():New("ZY601EST", cTitulo, cPerg, {|oReport| ReportPrint(oReport)}, cTexto)
	oReport:SetPortrait()
	oReport:lParamPage := .F.

	oCabecalho := TRSection():New( oReport /*oParent*/, "SECTION - PRODUTOS ZEYANA" /*cTitle*/, /*uTable*/, /*aOrder*/, /*lLoadCells*/, /*lLoadOrder*/, /*uTotalText*/, .F. /*lTotalInLine*/, .T. /*lHeaderPage*/,;
		.T. /*lHeaderBreak*/, /*lPageBreak*/, /*lLineBreak*/, /*nLeftMargin*/, .T. /*lLineStyle*/, /*nColSpace*/, .T. /*lAutoSize*/, /*cCharSeparator*/, /*nLinesBefore*/, /*nCols*/, /*nClrBack*/,;
     /*nCRLFore*/, /*nPercentage*/ )

	TRCell():New(oCabecalho, "ANO",	        "" /*cAlias*/,  "Ano Calend�rio/Base",     /*Picture*/,  160 /*nSize*/,  .T. /*lPixel*/, {|| DTOC(DDATABASE)} /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , .T. /*lBold*/ )
	TRCell():New(oCabecalho, "EMPRESA",     "" /*cAlias*/,  "Empresa",                 /*Picture*/,  100 /*nSize*/,  .T. /*lPixel*/, {|| "ZEYANA"       } /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , .T. /*lBold*/ )




	oItens := TRSection():New( oReport /*oParent*/, "PRODUTOS" /*cTitle*/, /*uTable*/, /*aOrder*/, /*lLoadCells*/, /*lLoadOrder*/, /*uTotalText*/, .F. /*lTotalInLine*/, .T. /*lHeaderPage*/,;
		.T. /*lHeaderBreak*/, /*lPageBreak*/, /*lLineBreak*/, /*nLeftMargin*/, .T. /*lLineStyle*/, /*nColSpace*/, .T. /*lAutoSize*/, /*cCharSeparator*/, /*nLinesBefore*/, /*nCols*/, /*nClrBack*/,;
     /*nCRLFore*/, /*nPercentage*/ )

	TRCell():New(oItens, "CODIGO",	   "" /*cAlias*/,  "C�digo",     /*Picture*/,  15 /*nSize*/,  .T. /*lPixel*/, /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , /*lBold*/ )
	TRCell():New(oItens, "DESC",       "" /*cAlias*/,  "Descri��o",  /*Picture*/,  50 /*nSize*/,  .T. /*lPixel*/, /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , /*lBold*/ )


Return oReport

Static Function ReportPrint(oReport)  //respons�vel por imprimir o relat�rio linha por linha e se��o por se��o
	Local oCabecalho := oReport:Section(1)
	Local oItens := oReport:Section(2)

	oCabecalho:Init(.T.)
	oCabecalho:PrintLine()
	oCabecalho:Finish()

	//SELECT B1_DESC, CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,3)+1),CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,3)+1)+1) FROM SB1010 WHERE D_E_L_E_T_ = '' AND B1_COD='PA.DE.00335'


	BeginSQL Alias "TMPSB1"
        SELECT SB1.B1_COD, SB1.B1_DESC
        FROM %Table:SB1% SB1
        WHERE SB1.B1_FILIAL = %xFilial:SB1%
        AND SB1.B1_MSBLQL <> '1' 
        AND SB1.B1_COD BETWEEN %Exp:MV_PAR01% AND %Exp:MV_PAR02%
        AND SB1.%NotDel%
	EndSQL

	While !( TMPSB1->(EOF()) )

		oItens:Cell("CODIGO"):SetValue(TMPSB1->B1_COD)
		oItens:Cell("DESC"):SetValue(TMPSB1->B1_DESC)

        TMPSB1->(DBSkip())
	End


Return