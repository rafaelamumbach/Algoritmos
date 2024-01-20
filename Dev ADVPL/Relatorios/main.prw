#INCLUDE 'PROTHEUS.ch'
#INCLUDE 'PARMTYPE.ch'

/* {Protheus.doc} ZY101TST
Exemplo de relat�rio em formato HTML utilizando ADVPL

@author Rafaela Mumbach Buenos
@since  09/01/2024

*/

User Function ZY101TST() //tela que gera o arquivo html

	If MsgYesNo("Deseja imprimir o Relat�rio HTML?")

		Processa({||MntQry() 	},,"Processando...") //fun��o Processa executa a fun��o MntQry em segundo plano ou de modo ass�ncrono
		MsAguarde({||GeraHTML() },,"O arquivo HTML est� sendo gerado... ") //o mesmo acontece com a fun��o MsAguarde e, agora, GeraHTML

	Else
		Alert("<b>Cancelado pelo usu�rio.</b>")
		Return Nil
	EndIf

Return


Static Function MntQry() //fun��o est�tica que monta a pesquisa em SQL


	Local cQuery := " "

	cQuery +=  " SELECT B1_FILIAL AS FILIAL, B1_COD AS CODIGO, "
	cQuery += " B1_DESC AS DESCRICAO, B1_TIPO AS TIPO, "
	cQuery += " B1_GRUPO AS GRUPO, B1_POSIPI AS IPI FROM SB1990 WHERE D_E_L_E_T_ = '' "

	cQuery := ChangeQuery(cQuery)
	DbUseArea(.T., "TOPCONN", TCGENQRY(,,cQuery), 'HT1', .F., .T.)

Return Nil


Static Function GeraHTML() //fun��o para gerar o HTML

	Local cHtml := ""
	Local cFile := "U:\Codigos\RELATORIOS HTML\index.htm"
	Local dData := Date() //armazenando a data atual que gera no relat�rio

	nH := fCreate(cFile)
	If nH == -1
		MsgStop("Falha ao criar o arquivo HTML "+ Str(Ferror()))
		Return
	EndIf

	//conex�o com o HTML
	cHtml += '<html xmlns="http://www.w3.org/1999/xhtml">'
	// ?
	cHtml += '<head>'
	cHtml += '<meta charset="iso-8859-1">'
	cHtml += '<title>Relat�rio de produtos</title>'
	//cHtml += "<link rel='stylesheet' href='style.css' />" //link de refer�ncia css
	cHtml += "</head>"

	cHtml += "<body>"
	cHtml += "<div id='cabec'>"
	cHtml += "   <center>"
	cHtml += "<table width='331' id='table-b' summary='Produtos'>"

	cHtml += "<tr>"
	cHtml += " <td width='252' scope='row'><font face='arial'><b>Parametros:</b></font><br />"
	cHtml += " <font face='arial'>Data de atualiza��o: "+ DToC(dData) +" </font><br /> <font face='arial'></font></td>"

	cHtml += " </tr>"
	cHtml += "</table></center>"

	cHtml += "<p align=center><font face='Lucida Sans Unicode' size='6'><u>Relat�rio exemplo</u></font></p>"
	cHtml += "  <center>"
	cHtml += "<table width='1000' id='table-b' summary='Produtos'>"
	cHtml += "<tr align='center'>"
	cHtml += "<th width='72' scope='row'>Filial</th>"
	cHtml += "<th width='100' scope='row'>Codigo</th>"
	cHtml += "<th width='200'>Descri��o</th>"
	cHtml += "<th width='72'>Tipo</th>"
	cHtml += "<th width='72'>Grupo</th>"
	cHtml += "<th width='100'>Ipi</th>"
	cHtml += "</tr>"

	FWrite(nH,cHtml)
	cHtml := ""

	While HT1->(!EOF())

		cHtml += "<tr><td>"+ HT1->(FILIAL) + "</td>"
		cHtml += "<td>"+HT1->(CODIGO)+"</td>"
		cHtml += "<td>"+HT1->(DESCRICAO)+"</td>"
		cHtml += "<td>"+HT1->(TIPO)+"</td>"
		cHtml += "<td>"+HT1->(GRUPO)+"</td>"
		cHtml += "<td>"+HT1->(IPI)+"</td></tr>"

		FWrite(nH,cHtml)
		cHtml := ""
		HT1->(dbSkip())

	EndDO

	FClose(nH)

	MsgInfo("Arquivo gerado com sucesso!!")

	//nRet := ShellExecute("open",cFile,"","C:\teste_html\Index.htm",1)
	//abrindo o arquivo

Return nRet
