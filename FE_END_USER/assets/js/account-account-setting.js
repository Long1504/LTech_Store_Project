document.addEventListener("DOMContentLoaded", async function () {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  // ================== LOAD THÔNG TIN NGƯỜI DÙNG ==================
  async function loadUserInfo() {
    try {
      const response = await fetch("http://localhost:8080/tech-store/api/users/myInfo", {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      });

      const result = await response.json();

      if (result.code === 1000) {
        const user = result.result;

        document.getElementById("fullname").textContent = `${user.lastname} ${user.firstname}`;
        document.getElementById("lastname").value = user.lastname;
        document.getElementById("firstname").value = user.firstname;
        document.getElementById("dob").value = user.dateOfBirth;

        const genderSelect = document.getElementById("gender");
        genderSelect.value = user.gender;

        document.getElementById("email").value = user.email;
        document.getElementById("phoneNumber").value = user.phoneNumber;
      } else {
        console.error(result.message);
        window.location.href = "login.html";
      }
    } catch (error) {
      console.error("Lỗi khi tải thông tin người dùng:", error);
      window.location.href = "login.html";
    }
  }

  await loadUserInfo();
});
