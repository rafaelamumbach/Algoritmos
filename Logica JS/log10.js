let checkButton = document.getElementById("check-button");
let ageInput = document.getElementById("age-input");

checkButton.addEventListener("click", function () {
  let age = ageInput.value;
  let message = age >= 18 ? "Você é um adulto hehe" : "Você não é um adulto ;(";
  alert(message);
  ageInput.value = "";
});
