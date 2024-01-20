for (let i = 1; i <= 10; i++) {
  let listItem = document.createElement("li");
  listItem.textContent = "Item " + i;
  numberList.appendChild(listItem);
}

let frutas = ["Banana", "Abacate", "Kiwi", "Maçã", "Cherry", ":D"];
let numberList = document.getElementById("listadefrutas");

for (let i = 0; i < 6; i++) {
  let listItem = document.createElement("li");
  listItem.appendChild(document.createTextNode(frutas[i]));
  listItem.textContent = "Item " + i;
  numberList.appendChild(listItem);
}
