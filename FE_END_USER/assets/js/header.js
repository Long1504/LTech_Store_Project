document.addEventListener("DOMContentLoaded", function () {
  const token = localStorage.getItem("token");

  const btnRegister = document.querySelector(".dropdown-footer .btn-primary");
  const btnLogin = document.querySelector(".dropdown-footer .btn-outline-primary");
  const logoutLink = document.querySelector(".logout-link"); // nút logout có sẵn

  if(token) {
    // Người dùng đã đăng nhập
    if (btnRegister) btnRegister.style.display = "none";
    if (btnLogin) btnLogin.style.display = "none";
    if (logoutLink) logoutLink.style.display = "block"; // hiển thị logout
  } else {
    // Người dùng chưa đăng nhập
    if (btnRegister) btnRegister.style.display = "block";
    if (btnLogin) btnLogin.style.display = "block";
    if (logoutLink) logoutLink.style.display = "none";
  }
});
