let N = parseInt(prompt("-- Digite um valor N inteiro --"));

for (let i = 0; i < N; i++) {
  let valor = parseInt(prompt(`Digite o ${i + 1}º valor:`));

  if (valor % 2 === 0) {
    console.log("-> É um número par.");
  } else {
    console.log("-> É um número ímpar.");
  }
}

console.log("Programa encerrado.");