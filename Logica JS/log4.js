let n;
let i;
let cont = 0;
let outputElement = document.getElementById('output');

outputElement.innerHTML += "Informe 15 valores inteiros: <br>";

for (i=0; i< 15; i++){
    n = prompt("Informe os valores: ");

    if (n >= 10 && n <= 20){
        cont++;
    }
}

outputElement.innerHTML += "Foram informados "+cont+" valores no intervalo de 10 a 20.";