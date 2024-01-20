#Include "Protheus.ch"
//Declaracao das variaveis publicas ou estaticas

//----------------------------------------------------
/*  {Protheus.doc} Ex001
Exemplo de funcao de USUARIO em ADVPL 
@author         Rafaela Mumbach Buenos
@since          26/10/2023
-- outras informacoes sobre a funcao, parametros etc
*/
//----------------------------------------------------


User Function Ex001(nNum1, nNum2, cTpOper, nResultado)    //passagem por parametro direta; sem uso do endereco de memoria

    Default nNum1          := 0 //defaults sao variaveis que evitam o uso incorreto da funcao por terceiros quando ha passagem por parametro
    Default nNum2          := 0
    Default cTpOper        := ""
    Default nResultado     := 0
    
    // CRTL + S -- CRTL + F9 : funcao compilada; estara SALVA no repositorio de objetos customizados
    // CRTL + F 10 : compila dois arquivos ou mais de uma vez
    // tem um escopo "global", pode ser invocada de qualquer lugar do RPO assim como qlqr outra User Function
    // uma user function tem que ser especifica, resolver apenas UM problema, ser curta e generica
    // cada user function deve ter seu proprio arquivo

Return 

//////////

//----------------------------------------------------
/*  {Protheus.doc} Ex001A
Exemplo de funcao ESTATICA em ADVPL 
@author         Rafaela Mumbach Buenos
@since          26/10/2023
*/
//----------------------------------------------------


Static Function Ex001A() //so pode ser invocada pelas outras funcoes que estao neste arquivo (funcao001-ex)


Return


/////////

User Function Ex002(nNumEnviado)

    Local nNumero := 5 
    Default nNumEnviado := 0


    If nNumEnviado > nNumero
        Alert("Numero maior")
    Else 
        Alert("Numero igual ou menor")
    EndIf

    Ex001A()

Return 