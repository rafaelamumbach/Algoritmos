calculateButton.addEventListener("click", function () {
  let num1 = Number(userNum1.value);
  let num2 = Number(userNum2.value);
  let op = operator.value;
  let result;

  switch (op) {
    case "+":
      result = num1 + num2;
      break;

    case "-":
      result = num1 - num2;
      break;

    case "*":
      result = num1 * num2;
      break;

    case "/":
      result = num1 / num2;
      break;
    default:
      result = "Operação inválida";
  }

  resultDiv.innerHTML = "O resultado é " + result;
});
