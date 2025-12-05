document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("#profile-change-password form");

  form.addEventListener("submit", async function (e) {
    e.preventDefault();

    const currentPassword = document
      .getElementById("currentPassword")
      .value.trim();
    const newPassword = document.getElementById("newPassword").value.trim();
    const renewPassword = document.getElementById("renewPassword").value.trim();

    if (!currentPassword || !newPassword || !renewPassword) {
      alert("Vui lòng nhập đầy đủ thông tin.");
      return;
    }

    if (newPassword !== renewPassword) {
      alert("Mật khẩu mới nhập lại không trùng khớp!");
      return;
    }

    const token = localStorage.getItem("token");
    if (!token) {
      alert("Bạn chưa đăng nhập!");
      return;
    }

    const payload = {
      currentPassword: currentPassword,
      newPassword: newPassword,
    };

    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/users/password",
        {
          method: "PUT",
          headers: {
            "Content-Type": "application/json",
            Authorization: "Bearer " + token,
          },
          body: JSON.stringify(payload),
        }
      );

      const data = await response.json();

      if (response.ok && data.code === 1000) {
        alert("Đổi mật khẩu thành công! Vui lòng đăng nhập lại.");

        // Xóa token
        localStorage.removeItem("token");

        // Chuyển về trang login
        window.location.href = "/login.html"; // đổi theo đường dẫn thực tế của bạn
      } else {
        alert(data.message || "Đổi mật khẩu thất bại!");
      }
    } catch (error) {
      console.error("Lỗi khi đổi mật khẩu:", error);
      alert("Có lỗi xảy ra. Vui lòng thử lại sau.");
    }
  });
});
