let randomNumber = Math.floor(Math.random() * 100);
let tries = 0;
console.log(randomNumber);

function checkGuess() {
  let guess = document.getElementById("guess").value;
  let message = document.getElementById("message");
  tries++;

  if (guess == randomNumber) {
    message.innerHTML =
      "Parabéns! Você adivinhou o número secreto em " + tries + " tentativas!";
  } else if (guess < randomNumber) {
    message.innerHTML = "Número muito baixo! Tente novamente.";
  } else {
    message.innerHTML = "Número muito alto! Tente novamente.";
  }
}
