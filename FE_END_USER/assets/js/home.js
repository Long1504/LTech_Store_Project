// ======================
// LOAD SẢN PHẨM MỚI
// ======================
async function loadLatestProducts() {
    try {
        const res = await fetch("http://localhost:8080/tech-store/api/products/latest");
        const data = await res.json();

        const products = data.result;
        const container = document.getElementById("latest-products");

        if (!container) {
            console.error("Không tìm thấy phần tử #latest-products trong HTML.");
            return;
        }

        container.innerHTML = ""; 

        products.forEach(product => {
            const ratingHtml = product.reviewCount > 0
                ? `
                    <div class="stars">
                        <i class="bi bi-star-fill"></i> ${product.averageRating}
                    </div>
                    <span class="rating-count">(${product.reviewCount})</span>
                  `
                : `
                    <div class="stars">
                        <i class="bi bi-star-fill"></i>
                    </div>
                    <span class="rating-count">Chưa có đánh giá</span>
                  `;

            container.innerHTML += `
                <div class="col-lg-3 col-md-6">
                    <div class="product-item">
                        <div class="product-image">
                            <div class="product-badge sale-badge bg-warning">Mới</div>
                            <img src="${product.imageURL}" alt="${product.productName}" class="img-fluid" loading="lazy">
                        </div>
                        <div class="product-info">
                            <div class="product-category fw-light mb-1">${product.categoryName}</div>
                            <h4 class="product-name">
                                <a href="product-details.html?productId=${product.productId}">
                                    ${product.productName}
                                </a>
                            </h4>
                            <div class="product-price mb-2">
                                <span class="product-promotional-price text-danger fw-bold">
                                    ${product.promotionalPrice.toLocaleString("vi-VN")}đ
                                </span>
                                <span class="product-original-price text-muted text-decoration-line-through small">
                                    ${product.originalPrice.toLocaleString("vi-VN")}đ
                                </span>
                            </div>
                            <div class="product-rating">
                                ${ratingHtml}
                            </div>
                        </div>
                    </div>
                </div>
            `;
        });

    } catch (error) {
        console.error("Error loading latest products:", error);
    }
}



// ======================
// LOAD MÃ GIẢM GIÁ
// ======================
async function loadDiscountsForCustomer() {
    try {
        const res = await fetch("http://localhost:8080/tech-store/api/discounts/customer");
        const data = await res.json();

        const discounts = data.result;
        const container = document.getElementById("discount-list");

        if (!container) {
            console.error("Không tìm thấy phần tử #discount-list trong HTML.");
            return;
        }

        container.innerHTML = "";

        discounts.forEach(discount => {
            container.innerHTML += `
                <div class="col-lg-3 col-md-6 mb-3">
                    <div class="product-showcase">
                        <div class="discount-code fw-bold text-danger">${discount.code}</div>
                        <div>
                            Giảm 
                            <span class="fw-medium">${discount.discountPercent}%</span>
                            tối đa 
                            <span class="fw-medium">${discount.maxDiscountAmount.toLocaleString("vi-VN")}đ</span>
                        </div>
                        <div>
                            Điều kiện: Đơn hàng từ 
                            <span class="fw-medium">${discount.minOrderAmount.toLocaleString("vi-VN")}đ</span>
                        </div>
                        <div>
                            Thời gian:
                            <span class="fw-medium">${new Date(discount.startDate).toLocaleDateString("vi-VN")}</span> - 
                            <span class="fw-medium">${new Date(discount.endDate).toLocaleDateString("vi-VN")}</span>
                        </div>
                        <div>(Số lượng: <span class="fw-medium">${discount.quantity}</span>)</div>
                    </div>
                </div>
            `;
        });

    } catch (error) {
        console.error("Error loading discounts:", error);
    }
}



// ======================
// GỌI HAI HÀM KHI TRANG LOAD
// ======================
document.addEventListener("DOMContentLoaded", () => {
    loadLatestProducts();
    loadDiscountsForCustomer();
});
