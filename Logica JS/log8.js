function calculaNums(){
    let valores = 0;
    let soma = 0;
    let media = 0;
    let cont = 0;
    let outputElement = document.getElementById('output');

    outputElement.innerHTML += "Digite 15 valores inteiros: <br>";

    for (let i = 0; i < 15; i++){
        valores = parseInt(prompt("Valor: "+(i+1)));

        if (valores % 2 != 0){
            soma += valores;
            cont++;
            media = soma / cont ;
        }

        outputElement.innerHTML += "Número inserido: "+valores+"<br>";
    }

    outputElement.innerHTML += "A média dos valores ímpares digitados é: "+media.toFixed(2)+"<br>";
}

calculaNums()