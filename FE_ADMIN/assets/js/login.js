// document.addEventListener("DOMContentLoaded", function () {
//   const loginForm = document.getElementById("loginForm");
//   const alertContainer = document.getElementById("alertContainer");
//   const passwordInput = document.getElementById("password");
//   const loginBtn = document.getElementById("loginBtn");

//   //Xử lý đăng nhập
//   loginForm.addEventListener("submit", async function (e) {
//     e.preventDefault();

//     const username = document.getElementById("username").value.trim();
//     const password = passwordInput.value.trim();

//     alertContainer.innerHTML = "";

//     //Disable nút trong khi gửi
//     loginBtn.disabled = true;
//     loginBtn.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>Đang đăng nhập...`;

//     try {
//       const response = await fetch(
//         "http://localhost:8080/tech-store/api/auth/login",
//         {
//           method: "POST",
//           headers: { "Content-Type": "application/json" },
//           body: JSON.stringify({ username, password }),
//         }
//       );

//       const result = await response.json();

//       if (result.code === 1000) {
//         const token = result.result?.token;
//         localStorage.setItem("token", token);

//         showAlert("Đăng nhập thành công! Đang chuyển hướng...", "success");
//         setTimeout(() => (window.location.href = "index.html"), 500);
//       } else {
//         showAlert(result.message, "danger");
//       }
//     } catch (error) {
//       console.error(error);
//       showAlert("Không thể kết nối đến máy chủ!", "warning");
//     } finally {
//       loginBtn.disabled = false;
//       loginBtn.innerHTML = `Đăng nhập <i class="bi bi-arrow-right"></i>`;
//     }
//   });

//   function showAlert(message, type) {
//     alertContainer.innerHTML = `
//       <div class="alert alert-${type} fade show py-2 small mb-3" role="alert">${message}</div>
//     `;

//     setTimeout(() => {
//       const alert = alertContainer.querySelector(".alert");
//       if (alert) {
//         alert.classList.remove("show");
//         alert.classList.add("fade");
//         setTimeout(() => alert.remove(), 150);
//       }
//     }, 1000);
//   }
// });


function parseJwt(token) {
  try {
    const payloadBase64 = token.split('.')[1];
    const payloadJson = atob(payloadBase64); // decode base64
    return JSON.parse(payloadJson);
  } catch (e) {
    return null;
  }
}

document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginForm");
  const alertContainer = document.getElementById("alertContainer");
  const passwordInput = document.getElementById("password");
  const loginBtn = document.getElementById("loginBtn");

  loginForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value.trim();
    const password = passwordInput.value.trim();

    alertContainer.innerHTML = "";

    loginBtn.disabled = true;
    loginBtn.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>Đang đăng nhập...`;

    try {
      const response = await fetch("http://localhost:8080/tech-store/api/auth/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ username, password }),
      });

      const result = await response.json();

      if (result.code === 1000) {
        const token = result.result?.token;
        const decoded = parseJwt(token);

        const roles = decoded?.scope ? decoded.scope.split(" ") : [];
        if (!roles.includes("ADMIN")) {
          showAlert("Chỉ ADMIN mới được phép đăng nhập!", "danger");
        } else {
          localStorage.setItem("token", token);
          showAlert("Đăng nhập thành công! Đang chuyển hướng...", "success");
          setTimeout(() => (window.location.href = "index.html"), 500);
        }
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
