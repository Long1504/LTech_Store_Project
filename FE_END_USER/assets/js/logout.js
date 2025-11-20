document.addEventListener("DOMContentLoaded", function() {
  const logoutLink = document.querySelector(".logout-link");

  if (!logoutLink) return;

  logoutLink.addEventListener("click", async function(e) {
    e.preventDefault();

    const token = localStorage.getItem("token");
    if(!token) {
      window.location.href = "login.html";
      return;
    }

    try {
      const response = await fetch("http://localhost:8080/tech-store/api/auth/logout", {
        method: "POST",
        headers: {
          "Authorization": `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ token })
      });

      const result = await response.json();
      if(response.ok) {
        localStorage.removeItem("token");
        window.location.href = "login.html";
      } else {
        console.error("Logout thất bại:", result.message);
      }
    } catch(error) {
      console.error("Lỗi khi đăng xuất:", error);
    }
  });
});
