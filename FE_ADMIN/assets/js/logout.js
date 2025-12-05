document.addEventListener("DOMContentLoaded", function () {
    const logoutBtn = document.getElementById("btn-logout");

    if (logoutBtn) {
        logoutBtn.addEventListener("click", function (e) {
            e.preventDefault();
            localStorage.removeItem("token");
            window.location.href = "login.html";
        });
    }
});
