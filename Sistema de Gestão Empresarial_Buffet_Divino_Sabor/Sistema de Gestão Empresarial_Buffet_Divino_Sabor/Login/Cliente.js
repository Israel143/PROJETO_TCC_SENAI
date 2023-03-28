function showDiv(selectedOption) {
    var loginDiv = document.getElementById("loginCli");
    var cadastroDiv = document.getElementById("cadastroCli");

    if (selectedOption === "loginCli") {
        loginDiv.style.display = "block";
        cadastroDiv.style.display = "none";
    } else if (selectedOption === "cadastroCli") {
        loginDiv.style.display = "none";
        cadastroDiv.style.display = "block";
    }
}