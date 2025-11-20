document.addEventListener("DOMContentLoaded", async function () {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  const urlParams = new URLSearchParams(window.location.search);
  const orderId = urlParams.get("orderId");
  if (!orderId) {
    alert("Không tìm thấy đơn hàng!");
    return;
  }

  // Fetch order
  async function fetchOrder() {
    try {
      const response = await fetch(
        `http://localhost:8080/tech-store/api/orders/${orderId}`,
        {
          method: "GET",
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
        }
      );
      if (!response.ok) throw new Error("Không thể lấy dữ liệu đơn hàng");
      return await response.json();
    } catch (error) {
      console.error("Lỗi fetchOrder:", error);
      return null;
    }
  }

  const data = await fetchOrder();
  if (!data) return;
  const order = data.result;

  // --- Cập nhật mã đơn & ngày tạo ---
  const orderIdEl = document.querySelector(".order-id h4");
  const orderDateEl = document.querySelector(".order-id .order-date");
  orderIdEl.textContent = `Mã đơn: #${order.orderCode}`;
  orderDateEl.textContent = new Date(order.createdAt).toLocaleString("vi-VN");

  // --- Cập nhật stepper ---
  const stepperEls = document.querySelectorAll(".order-progress .stepper-item");
  const statusMap = {
    PENDING: 1,
    CONFIRMED: 2,
    SHIPPED: 3,
    COMPLETED: 4,
  };
  const currentStep = statusMap[order.orderStatus] || 1;
  stepperEls.forEach((el, index) => {
    el.classList.remove("completed", "current");
    if (index + 1 < currentStep) el.classList.add("completed");
    else if (index + 1 === currentStep) el.classList.add("current");
  });

  // --- Cập nhật tóm tắt tiền ---
  document.querySelector(".total-order").textContent = `${order.totalAmount.toLocaleString("vi-VN")}đ`;
  document.querySelector(".final-amount").textContent = `${order.totalAmount.toLocaleString("vi-VN")}đ`;

  // --- Cập nhật thông tin giao hàng ---
  const addressEl = document.querySelector("address");
  addressEl.innerHTML = `
    ${order.recipientName}<br>
    ${order.city}<br>
    ${order.district}<br>
    ${order.ward}<br>
    ${order.detailAddress}
  `;
  const contactEl = document.querySelector(".contact-info p");
  contactEl.innerHTML = `<i class="bi bi-telephone"></i>${order.recipientPhone}`;

  // --- Cập nhật phương thức thanh toán & QR code ---
  const paymentCard = document.querySelector(".payment-details-card");

  if (order.payment.paymentMethod === "BANK") {
    paymentCard.querySelector(".card-body").innerHTML = `
      <div class="payment-method">
        <div class="payment-details">
          <div class="card-type payment-method">Chuyển khoản ngân hàng</div>
        </div>
      </div>
      <div class="qr-container d-flex justify-content-center">
        <img src="https://img.vietqr.io/image/MB-90015042004-print.png?amount=${order.totalAmount}&addInfo=${order.orderCode}&accountName=PHAM VIET LONG" alt="QR" class="qr-code-img" style="max-height: 600px;">
      </div>
      <span>Đơn hàng sẽ được xác nhận sau ít phút khi bạn hoàn tất thanh toán.</span>
    `;
  } else if (order.payment.paymentMethod === "CASH") {
    paymentCard.querySelector(".card-body").innerHTML = `
      <div class="payment-method">
        <div class="payment-details">
          <div class="card-type payment-method">Thanh toán khi nhận hàng</div>
        </div>
      </div>
    `;
  }

  // --- Cập nhật danh sách sản phẩm ---
  const productsCard = document.querySelector(".order-items-details-card");
  const productsBody = productsCard.querySelector(".card-body");
  productsBody.innerHTML = ""; // Xóa sản phẩm mặc định

  order.orderItems.forEach((item) => {
    const productHTML = `
      <div class="item">
        <div class="item-image">
          <img src="${item.productImageUrl}" alt="${item.productName}" loading="lazy">
        </div>
        <div class="item-details">
          <h4>${item.productName}</h4>
          <div class="item-meta">
            <span>Color: ${item.color}</span>
          </div>
          <div class="item-price">
            <span class="quantity">${item.quantity} ×</span>
            <span class="price">${item.price.toLocaleString("vi-VN")}đ</span>
          </div>
        </div>
      </div>
    `;
    productsBody.insertAdjacentHTML("beforeend", productHTML);
  });
});
