var options = document.querySelectorAll('.nav-secondary-option');
options.forEach(function (option) {
    option.addEventListener('click', function () {
        options.forEach(function (o) {
            o.classList.remove('active');
        });
        this.classList.add('active');
    });
});