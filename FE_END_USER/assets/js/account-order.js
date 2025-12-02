// =============================
//  MAPPING ENUM -> UI
// =============================
const orderStatusMap = {
    PENDING:     { text: "Đang xử lý",  class: "processing" },
    CONFIRMED:   { text: "Đã xác nhận", class: "confirmed" },
    SHIPPED:     { text: "Đang giao",   class: "shipped" },
    CANCELLED:   { text: "Đã hủy",      class: "cancelled" },
    COMPLETED:   { text: "Hoàn thành",  class: "delivered" }
};

const paymentMethodMap = {
    CASH: "Thanh toán tiền mặt",
    BANK: "Chuyển khoản ngân hàng"
};

const paymentStatusMap = {
    PENDING: "Chưa thanh toán",
    PAID: "Đã thanh toán"
};

// =============================
//  HELPER FUNCTION
// =============================
function formatMoney(value) {
    return value.toLocaleString("vi-VN") + "đ";
}

function formatFullDate(date) {
    const d = new Date(date);
    const options = {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false,
    };
    return d.toLocaleString('vi-VN', options).replace(',', '');
}

// =============================
//  GLOBAL VARIABLE
// =============================
let allOrders = []; // lưu toàn bộ đơn hàng fetch về

// =============================
//  FETCH VÀ RENDER ĐƠN HÀNG
// =============================
function loadMyOrders() {
    const token = localStorage.getItem("token");
    if (!token) {
        console.warn("Không tìm thấy token. Vui lòng đăng nhập.");
        return;
    }

    fetch("http://localhost:8080/tech-store/api/orders/my-orders", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${token}`
        }
    })
    .then(res => res.json())
    .then(data => {
        if (!data.result || data.result.length === 0) {
            document.querySelector(".orders-grid").innerHTML =
                `<p class="text-center mt-4">Bạn chưa có đơn hàng nào.</p>`;
            allOrders = [];
        } else {
            allOrders = data.result;
            renderOrders(allOrders);
        }

        // Cập nhật badge số lượng
        updateOrderBadge(allOrders.length);
    })
    .catch(err => {
        console.error("Error loading orders:", err);
    });
}

// =============================
//  RENDER HTML ĐƠN HÀNG
// =============================
function renderOrders(orders) {
    const container = document.querySelector(".orders-grid");

    if (!orders || orders.length === 0) {
        container.innerHTML = `<p class="text-center mt-4">Không có đơn hàng nào.</p>`;
        updateOrderBadge(0);
        return;
    }

    container.innerHTML = orders.map((order, index) => {
        const status = orderStatusMap[order.orderStatus];

        // Hiển thị tất cả ảnh sản phẩm
        const imagesHtml = order.orderItems.map(item => 
            `<img src="${item.productImageUrl}" alt="Product" loading="lazy">`
        ).join("");

        return `
            <div class="order-card" data-aos="fade-up" data-aos-delay="${100 * index}" data-status="${order.orderStatus}">
                <div class="order-header">
                    <div class="order-id">
                        <span class="label">Mã đơn hàng:</span>
                        <span class="value">#${order.orderCode}</span>
                    </div>
                    <div class="order-date">${formatFullDate(order.createdAt)}</div>
                </div>

                <div class="order-content">
                    <div class="product-grid">
                        ${imagesHtml}
                    </div>

                    <div class="order-info">
                        <div class="info-row">
                            <span>Trạng thái</span>
                            <span class="status ${status.class}">${status.text}</span>
                        </div>
                        <div class="info-row">
                            <span>Tổng tiền</span>
                            <span class="price">${formatMoney(order.totalAmount)}</span>
                        </div>
                    </div>
                </div>

                <div class="order-footer">
                    <button type="button" class="btn-details" data-bs-toggle="collapse" data-bs-target="#details${index}">
                        Chi tiết đơn hàng
                    </button>
                </div>

                <div class="collapse order-details" id="details${index}">
                    <div class="details-content">

                        <!-- THANH TOÁN -->
                        <div class="detail-section">
                            <h5>Thanh toán</h5>
                            <div class="info-grid">
                                <div class="info-item">
                                    <span class="label">Phương thức thanh toán</span>
                                    <span class="value">${paymentMethodMap[order.payment.paymentMethod]}</span>
                                </div>
                                <div class="info-item">
                                    <span class="label">Trạng thái thanh toán</span>
                                    <span class="value">${paymentStatusMap[order.payment.paymentStatus]}</span>
                                </div>
                            </div>
                        </div>

                        <!-- SẢN PHẨM -->
                        <div class="detail-section">
                            <h5>Sản phẩm</h5>
                            <div class="order-items">
                                ${order.orderItems.map(item => `
                                    <div class="item">
                                        <img src="${item.productImageUrl}" alt="Product" loading="lazy">

                                        <div class="item-info">
                                            <h6>${item.productName}</h6>
                                            <div class="item-meta">
                                                <span class="color">Màu: ${item.color}</span>
                                                <span class="quantity">Số lượng: ${item.quantity}</span>
                                                <span class="subprice">Đơn giá: ${formatMoney(item.price)}</span>
                                            </div>
                                        </div>

                                        <div class="item-price">${formatMoney(item.subTotal)}</div>

                                        ${order.orderStatus === "COMPLETED" ? 
                                            `<button type="button" class="btn-review" data-product-id="${item.productId}">Đánh giá</button>` : ''}
                                    </div>
                                `).join("")}
                            </div>
                        </div>

                        <!-- GIÁ -->
                        <div class="detail-section">
                            <h5>Chi tiết giá</h5>
                            <div class="price-breakdown">
                                <div class="price-row">
                                    <span>Tổng tiền sản phẩm</span>
                                    <span>${formatMoney(order.totalAmount)}</span>
                                </div>
                                <div class="price-row">
                                    <span>Phí vận chuyển</span>
                                    <span>Miễn phí</span>
                                </div>
                                <div class="price-row total">
                                    <span>Thành tiền</span>
                                    <span>${formatMoney(order.totalAmount)}</span>
                                </div>
                            </div>
                        </div>

                        <!-- ĐỊA CHỈ -->
                        <div class="detail-section">
                            <h5>Địa chỉ nhận hàng</h5>
                            <div class="address-info">
                                <p class="mb-2">Người nhận: ${order.recipientName}</p>
                                <p class="mb-2">SĐT: ${order.recipientPhone}</p>
                                <p>Địa chỉ: ${order.city}, ${order.district}, ${order.ward}, ${order.detailAddress}</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        `;
    }).join("");

    // Cập nhật badge số lượng sau khi render
    updateOrderBadge(orders.length);
}

// =============================
//  CẬP NHẬT BADGE SỐ ĐƠN HÀNG
// =============================
function updateOrderBadge(count) {
    const badge = document.querySelector(".nav-link.active .badge");
    if (badge) {
        badge.textContent = count;
    }
}

// =============================
//  FILTER CLIENT-SIDE
// =============================
function filterOrders(status) {
    if (status === "ALL") {
        renderOrders(allOrders);
    } else {
        const filtered = allOrders.filter(order => order.orderStatus === status);
        renderOrders(filtered);
    }
}

// =============================
//  RUN
// =============================
document.addEventListener("DOMContentLoaded", () => {
    loadMyOrders();

    // Gắn sự kiện dropdown filter
    document.querySelectorAll(".dropdown-item").forEach(item => {
        item.addEventListener("click", e => {
            e.preventDefault();
            const status = item.getAttribute("data-status");
            filterOrders(status);

            // Cập nhật text hiển thị trên nút
            const btn = document.querySelector(".filter-btn span");
            btn.textContent = item.textContent;
        });
    });
});
