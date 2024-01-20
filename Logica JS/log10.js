let outputElement = document.getElementById('output');

function calculaFat(n){
    let fat;

    for(fat = 1; n > 1; n = n-1){
        fat = fat * n;
    }

    return fat;
}

function dtrNumero(){
    let n;
    let fatorial = 0;

    outputElement.innerHTML += "Cálculo de fatorial! <br>"
    n = parseInt(prompt("Informe um número: "));

    fatorial = calculaFat(n)
    //importante: passar "n" como argumento para o cálculo funcionar perfeitamente

    outputElement.innerHTML += "Fatorial de "+n+": "+fatorial.toFixed(2)+"";

}

dtrNumero()