#INCLUDE 'Protheus.ch'

//------------------------------------------------------------------
/*
{Protheus.doc} ArquivosTXT
Manipulando arquivos TXT usando ADVPL
@author         Rafaela Mumbach Buenos
@since          01/11/2023
*/
//------------------------------------------------------------------

User Function ArquivosTXT()
    
    Local aPergs     := {}
    Local aResps     := {}
    Local cTitulo    := "Operar Arquivos TXT"
    Local cArquivo   := ""

    aAdd(aPergs, {6, "Informe o Arquivo:", "", "", "", "", 80, .F., "Arquivos .TXT | *.TXT", "", GETF_LOCALHARD+GETF_NETWORKDRIVE}) //procura no disco local ou rede de possivel acesso;

    If Parambox(aPergs, cTitulo, @aResps)
        cArquivo := allTrim(aResps[1]) //cArquivo recebe a resposta na posicao 1 do array de respostas;
        If File(cArquivo)
            xReadArq(cArquivo)
        Else 
            Help(,, 'Help',, "Caminho do arquivo a ser importado eh invalido.", 1, 0,,,,,.F.,{"Verifique se o arquivo correto esta na pasta."})
        Endif 
    Endif

Return

//------------------------------------------------------------------
/*
{Protheus.doc} xReadArq
Leitura do arquivo de dados
@author         Rafaela Mumbach Buenos
@since          01/11/2023
*/
//------------------------------------------------------------------

Static Function xReadArq(cArquivo)

    Local nHandle   := -1
    Local cLinha    := ""

    nHandle := FTFUse(cArquivo) //funcao p leitura de arquivos, chamadas de 'FT'. se ler, volta um numero > 0 por isso a inicializacao c/ -1;

    If nHandle > 0
    While ! FT_FEOF() .and. lRet

        cLinha := FT_FReadLn()
        FT_FSkip()

    EndDo
    Endif

Return