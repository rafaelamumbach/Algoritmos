let valorConta = 0;
let gorjeta = 0;
let valorTotal = 0;

valorConta = parseFloat(prompt("Digite o valor da conta: "));
gorjeta = parseFloat(prompt("Digite o valor da gorjeta (em porcentagem): "));

gorjeta = (valorConta * gorjeta) / 100;
valorTotal = valorConta + gorjeta;

valorTotal += valorConta;
valorTotal = valorTotal + (valorConta * gorjeta) / 100;
// igual ao método anterior, mais fácil e melhor de compreender.

console.log("O valor total da conta + gorjeta é de $" + valorTotal.toFixed(1));
