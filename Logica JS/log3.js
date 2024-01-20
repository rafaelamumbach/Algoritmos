let listaCores = [];

for (let i = 1; i <= 3; i++) {
  let corEscolhida = prompt("Digite a cor " + i + ":");
  listaCores.push(corEscolhida); //pegue a cor digitada e coloque na lista de cores
}

document.getElementById("listaCores2").innerHTML = listaCores;
alert("Sua lista de cores final: " + "" + listaCores);

let numberList = document.getElementById("numberList");

for (let i = 1; i <= 10; i++) {
  let listItem = document.createElement("li");
  listItem.textContent = "Item " + i;
  numberList.appendChild(listItem);
}
