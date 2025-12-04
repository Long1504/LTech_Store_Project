document.addEventListener("DOMContentLoaded", async () => {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  const tbody = document.querySelector("#orders-table tbody");
  const filterSelect = document.querySelector("#filter-order-status");
  let orders = []; // lưu danh sách order hiện tại

  const orderStatuses = [
    { value: "PENDING", label: "Đang xử lý" },
    { value: "CONFIRMED", label: "Đã xác nhận" },
    { value: "SHIPPED", label: "Đã vận chuyển" },
    { value: "CANCELLED", label: "Đã hủy" },
    { value: "COMPLETED", label: "Đã hoàn thành" },
  ];

  const paymentStatuses = [
    { value: "PENDING", label: "Đang xử lý" },
    { value: "PAID", label: "Đã thanh toán" },
  ];

  function renderOrderStatusLabel(status) {
    const found = orderStatuses.find((s) => s.value === status);
    return found ? found.label : status;
  }

  function renderPaymentStatusLabel(status) {
    const found = paymentStatuses.find((s) => s.value === status);
    return found ? found.label : status;
  }

  async function loadOrders(statusFilter = "") {
    try {
      tbody.innerHTML = "";

      let url = statusFilter
        ? `http://localhost:8080/tech-store/api/orders/filter?orderStatus=${statusFilter}`
        : "http://localhost:8080/tech-store/api/orders";

      const res = await fetch(url, {
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      });

      if (res.status === 401) {
        localStorage.removeItem("token");
        window.location.href = "login.html";
        return;
      }

      if (!res.ok) throw new Error("Lỗi API");

      const data = await res.json();
      orders = data.result || [];

      if (!orders.length) {
        tbody.innerHTML = `<tr><td colspan="9" class="text-center">Chưa có đơn hàng</td></tr>`;
      } else {
        orders.forEach((order) => {
          const orderStatusOptions = orderStatuses
            .map(
              (s) =>
                `<option value="${s.value}" ${
                  s.value === order.orderStatus ? "selected" : ""
                }>${s.label}</option>`
            )
            .join("");

          const paymentStatusOptions = paymentStatuses
            .map(
              (s) =>
                `<option value="${s.value}" ${
                  s.value === order.payment.paymentStatus ? "selected" : ""
                }>${s.label}</option>`
            )
            .join("");

          const tr = document.createElement("tr");
          tr.dataset.orderId = order.orderId;
          tr.dataset.paymentId = order.payment.paymentId;

          tr.innerHTML = `
                        <td class="align-middle">${order.orderCode}</td>
                        <td class="align-middle">${new Date(
                          order.createdAt
                        ).toLocaleString()}</td>
                        <td class="align-middle">${order.totalAmount.toLocaleString(
                          "vi-VN"
                        )}đ</td>
                        <td class="align-middle">${order.recipientName}</td>
                        <td class="align-middle">${order.recipientPhone}</td>
                        <td class="align-middle">${
                          order.payment.paymentMethod === "CASH"
                            ? "TT khi nhận hàng"
                            : "Chuyển khoản NH"
                        }</td>
                        <td class="align-middle">
                          <select name="payment-status" class="payment-status-select">${paymentStatusOptions}</select>
                        </td>
                        <td class="align-middle">
                          <select name="order-status" class="order-status-select">${orderStatusOptions}</select>
                        </td>
                        <td class="align-middle text-center">
                          <button class="btn btn-outline-primary btn-sm view-detail-btn"><i class="bi bi-eye"></i></button>
                        </td>
                    `;
          tbody.appendChild(tr);
        });
      }
    } catch (err) {
      console.error(err);
      tbody.innerHTML = `<tr><td colspan="9" class="text-center">Không thể tải dữ liệu</td></tr>`;
    }
  }

  // Xem chi tiết đơn hàng
  tbody.addEventListener("click", (e) => {
    const btn = e.target.closest(".view-detail-btn");
    if (!btn) return;

    const tr = btn.closest("tr");
    const orderId = tr.dataset.orderId;
    const order = orders.find((o) => o.orderId == orderId);
    if (order) showOrderDetail(order);
  });

  function showOrderDetail(order) {
    const content = document.querySelector("#order-detail-content");
    content.innerHTML = `
          <p><span class="fw-semibold">Mã đơn hàng:</span> ${
            order.orderCode
          }</p>
          <p><span class="fw-semibold">Thời gian đặt:</span> ${new Date(
            order.createdAt
          ).toLocaleString()}</p>
          <p><span class="fw-semibold">Tổng tiền:</span> ${order.totalAmount.toLocaleString(
            "vi-VN"
          )}đ</p>
          <p><span class="fw-semibold">Người nhận:</span> ${
            order.recipientName
          }</p>
          <p><span class="fw-semibold">SĐT:</span> ${order.recipientPhone}</p>
          <p><span class="fw-semibold">Địa chỉ:</span> ${
            order.detailAddress
          }, ${order.ward}, ${order.district}, ${order.city}</p>
          <p><span class="fw-semibold">Ghi chú:</span> ${
            order.note || "Không"
          }</p>
          <p><span class="fw-semibold">Trạng thái thanh toán:</span> ${renderPaymentStatusLabel(
            order.payment.paymentStatus
          )} ${
      order.payment.paidAt
        ? "(" + new Date(order.payment.paidAt).toLocaleString() + ")"
        : ""
    }</p>
          <p><span class="fw-semibold">Trạng thái đơn hàng:</span> ${renderOrderStatusLabel(
            order.orderStatus
          )}</p>

          <p class="fw-semibold">Sản phẩm:</p>
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Ảnh</th>
                <th>Sản phẩm</th>
                <th>Màu</th>
                <th>SL</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
              </tr>
            </thead>
            <tbody>
              ${order.orderItems
                .map(
                  (item) => `
                <tr>
                  <td class="align-middle"><img src="${
                    item.productImageUrl
                  }" width="50"></td>
                  <td class="align-middle">${item.productName}</td>
                  <td class="align-middle">${item.color}</td>
                  <td class="align-middle text-center">${item.quantity}</td>
                  <td class="align-middle">${item.price.toLocaleString(
                    "vi-VN"
                  )}đ</td>
                  <td class="align-middle">${item.subTotal.toLocaleString(
                    "vi-VN"
                  )}đ</td>
                </tr>
              `
                )
                .join("")}
            </tbody>
          </table>
        `;
    new bootstrap.Modal(document.getElementById("orderDetailModal")).show();
  }

  // Cập nhật trạng thái thanh toán & đơn hàng
  tbody.addEventListener("change", async (e) => {
    const selectPayment = e.target.closest(".payment-status-select");
    const selectOrder = e.target.closest(".order-status-select");

    // Thanh toán
    if (selectPayment) {
      const tr = selectPayment.closest("tr");
      const paymentId = tr.dataset.paymentId;
      const newStatus = selectPayment.value;

      try {
        const res = await fetch(
          `http://localhost:8080/tech-store/api/payments/${paymentId}?paymentStatus=${newStatus}`,
          {
            method: "PUT",
            headers: {
              Authorization: `Bearer ${token}`,
              "Content-Type": "application/json",
            },
          }
        );
        if (!res.ok) throw new Error("Cập nhật trạng thái thanh toán thất bại");
        const data = await res.json();
        alert(
          `Trạng thái thanh toán đã cập nhật: ${data.result.paymentStatus}`
        );
      } catch (err) {
        console.error(err);
        alert("Không thể cập nhật trạng thái thanh toán!");
      }
    }

    // Đơn hàng
    if (selectOrder) {
      const tr = selectOrder.closest("tr");
      const orderId = tr.dataset.orderId;
      const newStatus = selectOrder.value;

      try {
        const res = await fetch(
          `http://localhost:8080/tech-store/api/orders/${orderId}?orderStatus=${newStatus}`,
          {
            method: "PUT",
            headers: {
              Authorization: `Bearer ${token}`,
              "Content-Type": "application/json",
            },
          }
        );
        if (!res.ok) throw new Error("Cập nhật trạng thái đơn hàng thất bại");
        alert("Trạng thái đơn hàng đã cập nhật!");
      } catch (err) {
        console.error(err);
        alert("Không thể cập nhật trạng thái đơn hàng!");
      }
    }
  });

  // Filter trạng thái đơn hàng
  filterSelect.addEventListener("change", () => {
    loadOrders(filterSelect.value);
  });

  // Load dữ liệu mặc định
  await loadOrders();
});
