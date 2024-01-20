function data() {
    var NumeroMes = 0;
    Hoje = new Date();
    Data = Hoje.getDate();
    Dia = Hoje.getDay();
    Mes = Hoje.getMonth();
    Ano = Hoje.getFullYear();

    if (Data < 10) {
        Data = "0" + Data;
    }

    if (Mes < 10) {
        Mes = "0" + Mes;
    }

    NumeroMes = new Array(12)
    NumeroMes[0] = 1;
    NumeroMes[1] = 2;
    NumeroMes[2] = 3;
    NumeroMes[3] = 4;
    NumeroMes[4] = 5;
    NumeroMes[5] = 6;
    NumeroMes[6] = 7;
    NumeroMes[7] = 8;
    NumeroMes[8] = 9;
    NumeroMes[9] = 10;
    NumeroMes[10] = 11;
    NumeroMes[11] = 12;

    
    var elementoEsquerda = document.querySelector('.left');
    elementoEsquerda.innerHTML = Data + "/" + "0" + NumeroMes[0] + "/" + Ano;

}

function Relogio() {
    var hora = new Date();
    var h = hora.getHours();
    var m = hora.getMinutes();
    var s = hora.getSeconds();

    m = checarHora(m);
    s = checarHora(s);
    h = checarHora(h);

    var horaAtual = document.querySelector('.right');
    horaAtual.innerHTML = h + ':' + m + ':' + s;
    t = setTimeout('Relogio()', 1000);
}

function checarHora(i) {
    if (i < 10) {
        i = '0' + i;
    }
    return i;
}

data();
Relogio();