let num1Input = document.getElementById("num1");
let num2Input = document.getElementById("num2");
let outputDiv = document.getElementById("output");

function showHigherNumber() {
  let num1 = Number(num1Input.value);
  let num2 = Number(num2Input.value);

  let higherNumber = (num1 > num2) ? num1 : num2;

  outputDiv.innerHTML = 'O número maior é ' + higherNumber
}