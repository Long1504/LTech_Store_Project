document.getElementById("registerForm").addEventListener("submit", async function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value.trim();
    const firstname = document.getElementById("firstname").value.trim();
    const lastname = document.getElementById("lastname").value.trim();
    const dateOfBirth = document.getElementById("dob").value;
    const gender = document.getElementById("gender").value;
    const email = document.getElementById("email").value.trim();
    const phoneNumber = document.getElementById("phoneNumber").value.trim();
    const password = document.getElementById("password").value.trim();
    const confirmPassword = document.getElementById("confirmPassword").value.trim();

    const alertContainer = document.getElementById("alertContainer");
    alertContainer.innerHTML = "";

    if (password !== confirmPassword) {
      showAlert("Mật khẩu nhập lại không khớp!", "danger");
      return;
    }

    const userRequest = {
      username,
      firstname,
      lastname,
      dateOfBirth,
      gender,
      email,
      phoneNumber,
      password,
    };

    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/users/register",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(userRequest),
        }
      );

      const result = await response.json();

      if(result.code == 1000) {
        showAlert(result.message + ". Vui lòng đăng nhập để tiếp tục!", "success");

        document.getElementById("registerForm").reset();

        setTimeout(() => {
          window.location.href = "login.html";
        }, 500);
      } else {
        showAlert(result.message, "danger");
      }
    } catch(error) {
      console.error(error);
      showAlert("Không thể kết nối đến server!" + error, "warning");
    }
  });

function showAlert(message, type) {
  const alertContainer = document.getElementById("alertContainer");
  alertContainer.innerHTML = `<div class="alert alert-${type} fade show py-2 small mb-3" role="alert">${message}</div>`;

  setTimeout(() => {
    const alert = alertContainer.querySelector(".alert");
    if (alert) {
      alert.classList.remove("show");
      alert.classList.add("fade");
      setTimeout(() => alert.remove(), 150);
    }
  }, 1000);
}
