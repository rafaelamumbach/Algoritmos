#INCLUDE "TOTVS.ch"
 
/*  {Protheus.doc} t-report3
Terceiro desenvolvimento teste de relat�rio 
usando a classe TReport
 
@author         Rafaela Mumbach Buenos
@since          01/12/2023

*/

User Function RELAT003()
	//Local oObjeto := nil 
 
 	If Pergunte("ZY602EST", .T.)
 		oBjeto := ReportDef()
 		oBjeto:PrintDialog()
 
 	Else
 		MsgInfo("Cancelado pelo operador.", "RELAT003")
 	Endif
 
Return 


Static Function ReportDef()
 	Local oReport   := nil
 	Local cTitulo   := "Lista de Produtos Cadastrados"
 	Local cPerg     := "ZY602EST"
 	Local cTexto    := ""
 	//Local oCabecalho := nil
 	//Local oItens     := nil
 
 	oReport := TReport():New("RELAT003", cTitulo, cPerg, {|oReport| ReportPrint(oReport)}, cTexto)
 	oReport:SetPortrait()
 	oReport:lParamPage := .F.

// 	oCabecalho := TRSection():New( oReport /*oParent*/, "SECTION - PRODUTOS ZEYANA" /*cTitle*/, /*uTable*/, /*aOrder*/, /*lLoadCells*/, /*lLoadOrder*/, /*uTotalText*/, .F. /// *lTotalInLine*/, .T. /*lHeaderPage*/,;
// 		.T. /*lHeaderBreak*/, /*lPageBreak*/, /*lLineBreak*/, /*nLeftMargin*/, .T. /*lLineStyle*/, /*nColSpace*/, .T. /*lAutoSize*/, /*cCharSeparator*/, /*nLinesBefore*/, /// *nCols*/, /*nClrBack*/,;
//      /*nCRLFore*/, /*nPercentage*/ )
// 	TRCell():New(oCabecalho, "ANO",	        "" /*cAlias*/,  "Ano Calend�rio/Base",     /*Picture*/,  160 /*nSize*/,  .T. /*lPixel*/, {|| DTOC(DDATABASE)} /*bBlock*/, /// *cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , .T. /*lBold*/ )
// 	TRCell():New(oCabecalho, "EMPRESA",     "" /*cAlias*/,  "Empresa",                 /*Picture*/,  100 /*nSize*/,  .T. /*lPixel*/, {|| "ZEYANA"       } /*bBlock*/, /// *cAlign*/ , .T. /*lLineBreak*/ , /*cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , .T. /*lBold*/ )
// 	oItens := TRSection():New( oReport /*oParent*/, "PRODUTOS" /*cTitle*/, /*uTable*/, /*aOrder*/, /*lLoadCells*/, /*lLoadOrder*/, /*uTotalText*/, .F. /*lTotalInLine*/, .T. /// *lHeaderPage*/,;
// 		.T. /*lHeaderBreak*/, /*lPageBreak*/, /*lLineBreak*/, /*nLeftMargin*/, .T. /*lLineStyle*/, /*nColSpace*/, .T. /*lAutoSize*/, /*cCharSeparator*/, /*nLinesBefore*/, /// *nCols*/, /*nClrBack*/,;
//      /*nCRLFore*/, /*nPercentage*/ )
// 
// 	TRCell():New(oItens, "CODIGO",	   "" /*cAlias*/,  "C�digo",     /*Picture*/,  15 /*nSize*/,  .T. /*lPixel*/, /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /// *cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , /*lBold*/ )
// 	TRCell():New(oItens, "DESC",       "" /*cAlias*/,  "Descri��o",  /*Picture*/,  50 /*nSize*/,  .T. /*lPixel*/, /*bBlock*/, /*cAlign*/ , .T. /*lLineBreak*/ , /// *cHeaderAlign*/ , /*lCellBreak*/ , /*nColSpace*/ , /*lAutoSize*/ , /*nClrBack*/ , /*nCRLFore*/ , /*lBold*/ )
 
 
 Return oReport
 
 
 Static Function ReportPrint(oReport)
 	Local oCabecalho := oReport:Section(1)
 	Local oItens := oReport:Section(2)
 
 	oCabecalho:Init(.T.)
 	oCabecalho:PrintLine()
 	oCabecalho:Finish()
 
 	//SELECT B1_DESC, CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,3)+1),CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,CHARINDEX(' ',B1_DESC,3)+1)+1) FROM SB1010 WHERE // D_E_L_E_T_ = '' AND B1_COD='PA.DE.00335'
 
 
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