function showDiv(selectedOption) {
    var funcionariosDiv = document.getElementById("funcionarios");
    var escalasDiv = document.getElementById("escalas");

  if (selectedOption === "funcionarios") {
    funcionariosDiv.style.display = "block";
    escalasDiv.style.display = "none";
  } else if (selectedOption === "escalas") {
    funcionariosDiv.style.display = "none";
    escalasDiv.style.display = "block";
  }
}