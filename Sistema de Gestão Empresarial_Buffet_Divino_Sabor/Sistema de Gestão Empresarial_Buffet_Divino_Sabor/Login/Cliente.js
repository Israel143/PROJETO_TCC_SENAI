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

function showDivEmp(selectedOption) {
    var loginDiv = document.getElementById("loginEmp");
    var cadastroDiv = document.getElementById("cadastroEmp");

    if (selectedOption === "loginEmp") {
        loginDiv.style.display = "block";
        cadastroDiv.style.display = "none";
    } else if (selectedOption === "cadastroEmp") {
        loginDiv.style.display = "none";
        cadastroDiv.style.display = "block";
    }
}