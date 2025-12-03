document.addEventListener("DOMContentLoaded", async function () {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  // ================== LOAD THÔNG TIN NGƯỜI DÙNG ==================
  async function loadUserInfo() {
    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/users/my-info",
        {
          method: "GET",
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
        }
      );

      const result = await response.json();

      if (result.code === 1000) {
        const user = result.result;

        // Hiển thị fullname
        document.getElementById(
          "fullname"
        ).textContent = `${user.lastname} ${user.firstname}`;

        // Điền dữ liệu vào form thông tin cá nhân
        document.getElementById("lastname").value = user.lastname;
        document.getElementById("firstname").value = user.firstname;
        document.getElementById("dob").value = user.dateOfBirth;
        document.getElementById("gender").value = user.gender;
        document.getElementById("email").value = user.email;
        document.getElementById("phoneNumber").value = user.phoneNumber;
      } else {
        window.location.href = "login.html";
      }
    } catch (error) {
      console.error("Lỗi khi tải thông tin người dùng:", error);
      window.location.href = "login.html";
    }
  }

  await loadUserInfo();

  // ================== UPDATE THÔNG TIN ==================
  const infoForm = document.querySelector(
    ".settings-section:first-of-type .settings-form"
  );

  infoForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const updatedData = {
      lastname: document.getElementById("lastname").value.trim(),
      firstname: document.getElementById("firstname").value.trim(),
      dateOfBirth: document.getElementById("dob").value,
      gender: document.getElementById("gender").value,
      email: document.getElementById("email").value.trim(),
      phoneNumber: document.getElementById("phoneNumber").value.trim(),
    };

    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/users/my-info",
        {
          method: "PUT",
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify(updatedData),
        }
      );

      const result = await response.json();

      if (result.code === 1000) {
        alert("Cập nhật thông tin thành công!");
        await loadUserInfo(); // load lại dữ liệu mới, bao gồm fullname
      } else {
        alert("Lỗi: " + result.message);
      }
    } catch (error) {
      console.error("Lỗi khi cập nhật:", error);
      alert("Không thể kết nối máy chủ!");
    }
  });

  // ================== UPDATE MẬT KHẨU ==================
  const passwordForm = document.querySelector(
    ".settings-section[data-aos-delay='200'] .settings-form"
  );

  passwordForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const currentPassword = document
      .getElementById("currentPassword")
      .value.trim();
    const newPassword = document.getElementById("newPassword").value.trim();
    const confirmPassword = document
      .getElementById("confirmPassword")
      .value.trim();

    // Kiểm tra confirm password
    if (newPassword !== confirmPassword) {
      alert("Xác nhận mật khẩu không khớp!");
      return;
    }

    try {
      const response = await fetch(
        "http://localhost:8080/tech-store/api/users/password",
        {
          method: "PUT",
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            currentPassword: currentPassword,
            newPassword: newPassword,
          }),
        }
      );

      const result = await response.json();

      if (result.code === 1000) {
        alert("Cập nhật mật khẩu thành công! Vui lòng đăng nhập lại.");
        localStorage.removeItem("token"); // Xóa token
        window.location.href = "login.html"; // Chuyển về trang đăng nhập
      } else {
        alert("Lỗi: " + result.message);
      }
    } catch (error) {
      console.error("Lỗi khi cập nhật mật khẩu:", error);
      alert("Không thể kết nối server!");
    }
  });
});
