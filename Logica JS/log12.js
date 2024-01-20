let outputElement = document.getElementById('output');

function analisaNumero (){
    let operacao = 0;

    alert("Calculadora Simples!");
    alert("Escolha uma das operações a seguir:");
    operacao = parseInt(prompt("1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n"));

    return operacao;
    
}

function principal(){
    while(1){
        let operacaoEscolhida = analisaNumero();
        let num1 = 0;
        let num2 = 0;
        let resultado = 0;
        let continuar;

        num1 = parseInt(prompt(("Digite o primeiro número: ")));
        num2 = parseInt(prompt(("Digite o segundo número: ")));

        switch (operacaoEscolhida) {
            case 1:
                resultado = num1 + num2;
                break;

            case 2:
                resultado = num1 - num2;
                break;

            case 3:
                resultado = num1 * num2;
                break;

            case 4:
                resultado = num1 / num2;
                break;
        }

        alert("Resultado: "+resultado+"");

        continuar = parseInt(prompt(("Deseja realizar outra operação? 1 - SIM 2 - NÃO")));
        
        if (continuar == 2) {
            outputElement.innerHTML += "Finalizando...";
            break;
        }
    }

    return;
}


principal()