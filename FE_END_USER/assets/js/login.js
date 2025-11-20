document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginForm");
  const alertContainer = document.getElementById("alertContainer");
  const toggleBtn = document.querySelector(".password-toggle");
  const passwordInput = document.getElementById("password");
  const loginBtn = document.querySelector(".auth-btn.primary-btn");

  //Toggle hiển thị mật khẩu
  toggleBtn.addEventListener("click", function () {
    const icon = this.querySelector("i");
    if (passwordInput.type === "password") {
      passwordInput.type = "text";
      icon.classList.replace("bi-eye", "bi-eye-slash");
    } else {
      passwordInput.type = "password";
      icon.classList.replace("bi-eye-slash", "bi-eye");
    }
  });

  //Xử lý đăng nhập
  loginForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value.trim();
    const password = passwordInput.value.trim();

    alertContainer.innerHTML = "";

    //Disable nút trong khi gửi
    loginBtn.disabled = true;
    loginBtn.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>Đang đăng nhập...`;

    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/auth/login",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ username, password }),
        }
      );

      const result = await response.json();

      if (result.code === 1000) {
        const token = result.result?.token;
        localStorage.setItem("token", token);

        showAlert("Đăng nhập thành công! Đang chuyển hướng...", "success");
        setTimeout(() => (window.location.href = "index.html"), 500);
      } else {
        showAlert(result.message, "danger");
      }
    } catch (error) {
      console.error(error);
      showAlert("Không thể kết nối đến máy chủ!", "warning");
    } finally {
      loginBtn.disabled = false;
      loginBtn.innerHTML = `Đăng nhập <i class="bi bi-arrow-right"></i>`;
    }
  });

  function showAlert(message, type) {
    alertContainer.innerHTML = `
      <div class="alert alert-${type} fade show py-2 small mb-3" role="alert">${message}</div>
    `;

    setTimeout(() => {
      const alert = alertContainer.querySelector(".alert");
      if (alert) {
        alert.classList.remove("show");
        alert.classList.add("fade");
        setTimeout(() => alert.remove(), 150);
      }
    }, 1000);
  }
});
