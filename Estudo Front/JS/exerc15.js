let numberInput = document.getElementById("numberInput");
let checkButton = document.getElementById("checkButton");
let outputDiv = document.getElementById("output");

checkButton.addEventListener("click", function() {
  let number = Number(numberInput.value);

  if (number >= 1 && number <= 10) {
    outputDiv.innerHTML = "Número válido! XD";
  }
  
  else if (number < 1) {
    outputDiv.innerHTML = "Número muito baixo! >.<";
  }
  else if (number > 10) {
    outputDiv.innerHTML = "Número muito alto! :p";
  }
  else {
    outputDiv.innerHTML = "Algo deu errado! >:(";
  }

  numberInput.value = ""
});