let firstName = prompt("Digite seu primeiro nome: ");
let saudacao = "Olá";
document.getElementById("greeting").innerHTML =
  saudacao + " " + firstName + "!";

let friends = ["Eduardo", "Gabriel", "Mariana", "Rodrigo"];

console.log(friends);

friends[1] = "Fran"; //replace
friends[4] = "Gab"; //add item
friends[5] = 1;

console.log(friends);
console.log(friends[1]);
