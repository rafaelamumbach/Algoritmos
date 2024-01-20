let n;
let i;
let cont1 = 0;
let cont2 = 0;
let cont3 = 0;
let cont4 = 0;
let outputElement = document.getElementById('output');

outputElement.innerHTML += "Informe 15 valores inteiros: <br>";

for (i=0; i< 15; i++){
    n = prompt("Informe os valores: ");

    if (n > 0 && n <= 25){
        cont1++;
    }

    if (n > 25 && n <= 50){
        cont2++;
    }

    if (n > 50 && n <= 75){
        cont3++;
    }

    if (n > 75 && n <= 100){
        cont4++;
    }
}


outputElement.innerHTML += "Foram informados "+cont1+" valores no intervalo [0,25]<br>";
outputElement.innerHTML += "Foram informados "+cont2+" valores no intervalo de [25,50]<br>";
outputElement.innerHTML += "Foram informados "+cont3+" valores no intervalo [50,75]\<br>";
outputElement.innerHTML += "Foram informados "+cont4+" valores no intervalo de [75,100]<br>";