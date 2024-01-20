function retornaValue(){
    let valores = 0;
    let soma = 0;
    let outputElement = document.getElementById('output');

    outputElement.innerHTML += "Digite 15 valores inteiros: <br>";

    for (let i = 0; i < 15; i++){
        valores = parseInt(prompt("Valor: "+(i+1)));

        if (valores % 2 == 0){
            soma += valores;
        }
    }

    outputElement.innerHTML += "A soma dos valores pares digitados é: "+soma+"<br>";
}

retornaValue()