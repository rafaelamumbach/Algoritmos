function changeColor() {
  let titleH1 = document.getElementById("changeH1");
  titleH1.style.color = "red";
}

function changeBackgroundColor() {
  let colors = ["red", "purple", "pink", "blue"];
  let randomColor = colors[Math.floor(Math.random() * colors.length)];

  document.body.style.backgroundColor = randomColor;
}
