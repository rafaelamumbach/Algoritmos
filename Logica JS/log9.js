function multNumber(){
    let multiplicando = 0;
    let multiplicador = 0;
    let soma = 0;
    let cont = 0;
    let outputElement = document.getElementById('output');

    multiplicando = parseInt(prompt("Informe o multiplicando: "));
    multiplicador = parseInt(prompt("Informe o multiplicador: "));

    for(let i=0; i<multiplicador; i++){
        soma += multiplicando;
    }

    outputElement.innerHTML += "Resultado: "+soma+"";
}

multNumber()