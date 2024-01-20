#INCLUDE 'TOTVS.ch'

//------------------------------------------------------------------
/*
{Protheus.doc} Pessoa
Estudo de Programa��o Orientada a Objetos em ADVPL
- Classe para definicao de pessoa
@author         Rafaela Mumbach Buenos
@since          30/10/2023
*/
//------------------------------------------------------------------

Class Pessoa      //objeto

    Data cNomePessoa    //atributos do objeto
    Data dDtdoNascimento
    Data nSaldoConta

    Method New(cNome, dData, nSaldoIni) Constructor //parametros minimos para criacao da classe
    Method PagarConta(nValor)

EndClass

Method New(cNome, dData, nSaldoIni) Class Pessoa //metodo da classe

    ::cNomePessoa     := cNome  //acesso de atributo atraves do double point; atributo recebe valor do cNome
    ::dDtdoNascimento := dData //atributo cNome recebe o valor que est� vindo por par�metro
    ::nSaldoConta     := nSaldoIni

Return self 


Method PagarConta(nValor) Class Pessoa

    If ::nSaldoConta >= nValor
        ::nSaldoConta -= nValor
        Alert("Conta paga com sucesso!")
    Else 
        Alert("Saldo insuficiente. Voc� tem R$" + cValToChar(::nSaldoConta) + " e o valor a pagar � de: R$" + cValToChar(nValor))
    EndIf 

Return