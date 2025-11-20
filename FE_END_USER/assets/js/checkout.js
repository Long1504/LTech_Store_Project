document.addEventListener("DOMContentLoaded", async function () {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  let cartTotal = 0; // Tổng tiền hiện tại (cập nhật sau giảm giá)
  let cartItems = []; // Chi tiết giỏ hàng
  let appliedDiscountCode = null;

  // -----------------------
  // Lấy giỏ hàng
  // -----------------------
  async function fetchCart() {
    try {
      const response = await fetch("http://localhost:8080/tech-store/api/carts", {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      });
      return await response.json();
    } catch (error) {
      console.error("Lỗi fetchCart:", error);
      return null;
    }
  }

  async function renderCart() {
    const result = await fetchCart();
    if (!result || result.code !== 1000) return;

    const cart = result.result;
    cartTotal = cart.total; // khởi tạo tổng tiền
    cartItems = cart.cartItems;

    const container = document.querySelector(".order-items");
    if (!container) return;

    container.innerHTML = "";
    let itemCount = 0;

    cart.cartItems.forEach((cartItem) => {
      const html = `
        <div class="order-item" data-id="${cartItem.cartItemId}">
          <span class="d-none">${cartItem.productVariantId}</span>
          <div class="order-item-image">
            <img src="${cartItem.productImageUrl}" alt="${cartItem.productName}" class="img-fluid">
          </div>
          <div class="order-item-details">
            <h4>${cartItem.productName}</h4>
            <p class="order-item-variant">Màu: ${cartItem.color}</p>
            <div class="order-item-price">
              <span class="quantity">${cartItem.quantity} ×</span>
              <span class="price">${cartItem.promotionalPrice.toLocaleString()}đ</span>
            </div>
          </div>
        </div>
      `;
      container.insertAdjacentHTML("beforeend", html);
      itemCount += cartItem.quantity;
    });

    const totalCartEl = document.querySelector(".total-cart");
    if (totalCartEl) totalCartEl.textContent = cart.total.toLocaleString() + "đ";

    const totalProductEl = document.querySelector(".total-product");
    if (totalProductEl) totalProductEl.textContent = cart.total.toLocaleString() + "đ";

    const itemCountEl = document.querySelector(".item-count");
    if (itemCountEl) itemCountEl.textContent = itemCount + " sản phẩm";

    document.querySelector(".btn-price").textContent = cart.total.toLocaleString() + "đ";
  }

  // -----------------------
  // Lấy địa chỉ mặc định
  // -----------------------
  async function fetchDefaultAddress() {
    try {
      const response = await fetch("http://localhost:8080/tech-store/api/addresses/default", {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json"
        }
      });
      const result = await response.json();
      if (result.code === 1000 && result.result) return result.result;
      return null;
    } catch (error) {
      console.error("Lỗi fetchDefaultAddress:", error);
      return null;
    }
  }

  function fillAddressForm(address) {
    if (!address) return;

    const fields = {
      recipientName: address.recipientName,
      recipientPhone: address.recipientPhone,
      city: address.city,
      district: address.district,
      ward: address.ward,
      detailAddress: address.detailAddress
    };

    Object.keys(fields).forEach(id => {
      const el = document.querySelector("#" + id);
      if (el) {
        el.value = fields[id] || "";
      }
    });
  }

  // -----------------------
  // Áp mã giảm giá
  // -----------------------
  document.querySelector(".apply-discount-btn")?.addEventListener("click", async () => {
    const code = document.querySelector(".discount-input")?.value.trim();
    if (!code) {
      alert("Vui lòng nhập mã giảm giá!");
      return;
    }

    try {
      const response = await fetch("http://localhost:8080/tech-store/api/discounts/apply", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          discountCode: code,
          cartTotal: cartTotal
        })
      });
      const result = await response.json();
      console.log("Áp mã response:", result);

      if (result.code !== 1000) {
        alert(result.message || "Mã giảm giá không hợp lệ!");
        return;
      }

      appliedDiscountCode = code;

      const data = result.result;

      // Hiển thị giảm giá và tổng tiền mới
      const discountEl = document.querySelector(".total-discount");
      if (discountEl) discountEl.textContent = "- " + data.discountAmount.toLocaleString() + "đ";

      const totalEl = document.querySelector(".total-cart");
      if (totalEl) totalEl.textContent = data.finalAmount.toLocaleString() + "đ";

      document.querySelector(".btn-price").textContent = data.finalAmount.toLocaleString() + "đ";

      // **Cập nhật cartTotal bằng tổng tiền sau giảm**
      cartTotal = data.finalAmount;

      alert(result.message);

    } catch (error) {
      console.error(error);
      alert("Có lỗi xảy ra khi áp mã!");
    }
  });

  // -----------------------
  // Submit đơn hàng
  // -----------------------
  document.querySelector(".place-order-btn")?.addEventListener("click", async () => {
    const recipientName = document.querySelector("#recipientName")?.value.trim();
    const recipientPhone = document.querySelector("#recipientPhone")?.value.trim();
    const city = document.querySelector("#city")?.value.trim();
    const district = document.querySelector("#district")?.value.trim();
    const ward = document.querySelector("#ward")?.value.trim();
    const detailAddress = document.querySelector("#detailAddress")?.value.trim();
    const note = document.querySelector("#note")?.value.trim() || "";

    if (!recipientName || !recipientPhone || !city || !detailAddress) {
      alert("Vui lòng điền đầy đủ thông tin người nhận và địa chỉ!");
      return;
    }

    const selectedPayment = document.querySelector('input[name="payment-method"]:checked')?.id;
    let paymentMethod = "";

    if (selectedPayment === "bank-transfer") {
      paymentMethod = "BANK";
    } else if (selectedPayment === "cod") {
      paymentMethod = "CASH";
    } else {
      alert("Vui lòng chọn phương thức thanh toán!");
      return;
    }

    const orderPayload = {
      totalAmount: cartTotal, // luôn dùng tổng tiền cuối cùng
      note: note,
      recipientName,
      recipientPhone,
      city,
      district,
      ward,
      detailAddress,
      orderItems: cartItems.map((item) => ({
        productVariantId: item.productVariantId,
        quantity: item.quantity,
        price: item.promotionalPrice,
      })),
      paymentMethod: paymentMethod,
      discountCode: appliedDiscountCode
    };

    console.log("Payload đặt hàng:", orderPayload);

    try {
      const response = await fetch("http://localhost:8080/tech-store/api/orders", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify(orderPayload)
      });

      const result = await response.json();
      console.log("Tạo đơn hàng response:", result);

      if (result.code !== 1000) {
        alert(result.message || "Tạo đơn hàng thất bại!");
        return;
      }

      const order = result.result;
      alert(`Tạo đơn hàng thành công!\nMã đơn hàng: ${order.orderCode}\nTổng tiền: ${order.totalAmount.toLocaleString()}đ`);

      window.location.href = `order-confirmation.html?orderId=${order.orderId}`;

    } catch (error) {
      console.error("Lỗi khi tạo đơn hàng:", error);
      alert("Có lỗi xảy ra khi tạo đơn hàng!");
    }
  });

  // -----------------------
  // Thực hiện khi load
  // -----------------------
  const defaultAddress = await fetchDefaultAddress();
  fillAddressForm(defaultAddress);
  await renderCart();
});
