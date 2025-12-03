document.addEventListener("DOMContentLoaded", function () {
  const token = localStorage.getItem("token");

  const btnRegister = document.querySelector(".dropdown-footer .btn-primary");
  const btnLogin = document.querySelector(
    ".dropdown-footer .btn-outline-primary"
  );
  const logoutLink = document.querySelector(".logout-link");
  const cartBadge = document.querySelector(".header-action-btn .badge"); // badge hiển thị số lượng

  // Xử lý hiển thị nút
  if (token) {
    if (btnRegister) btnRegister.style.display = "none";
    if (btnLogin) btnLogin.style.display = "none";
    if (logoutLink) logoutLink.style.display = "block";
  } else {
    if (btnRegister) btnRegister.style.display = "block";
    if (btnLogin) btnLogin.style.display = "block";
    if (logoutLink) logoutLink.style.display = "none";

    // Người chưa đăng nhập -> giỏ hàng = 0
    if (cartBadge) cartBadge.textContent = "0";
    return;
  }

  // Nếu có token -> gọi API để lấy số lượng trong cart
  fetch("http://localhost:8080/tech-store/api/carts/cart-item-count", {
    method: "GET",
    headers: {
      Authorization: "Bearer " + token,
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .then((data) => {
      if (cartBadge) cartBadge.textContent = data.result ?? 0;
    })
    .catch((err) => {
      console.error("Lỗi khi lấy số lượng giỏ hàng:", err);
      if (cartBadge) cartBadge.textContent = "0";
    });
});

// Xử lý form tìm kiếm
const searchForm = document.querySelector(".search-form.desktop-search-form");
if (searchForm) {
  searchForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn submit mặc định
    const input = searchForm.querySelector("input[name='keyword']");
    if (!input) return;

    const keyword = input.value.trim();
    if (keyword === "") {
      return;
    }
    window.location.href = `product-search.html?keyword=${encodeURIComponent(keyword)}`;
  });
}
