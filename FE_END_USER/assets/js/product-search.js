// DOM Elements
const productList = document.getElementById("product-list");
const brandListContainer = document.getElementById("brand-list");
const applyBrandBtn = document.querySelector(".brand-actions .btn-apply");
const clearBrandBtn = document.querySelector(".brand-actions .btn-clear");
const priceRangeSelect = document.getElementById("priceRange");
const sortBySelect = document.getElementById("sortBy");

// Lấy keyword từ URL
const params = new URLSearchParams(window.location.search);
const keyword = params.get("keyword")?.trim() || "";

// Đặt giá trị input search bằng keyword
const searchInput = document.querySelector(".search-form.desktop-search-form input[name='keyword']");
if (searchInput) {
  searchInput.value = keyword;
}

// Cập nhật tiêu đề và breadcrumbs
function updateTitle(count) {
  const titleText = `Tìm thấy ${count} sản phẩm phù hợp với từ khóa "${keyword}"`;
  const pageTitle = document.querySelector(".page-title h1");
  const breadcrumbCurrent = document.querySelector(".breadcrumbs .current");
  if (pageTitle) pageTitle.textContent = titleText;
  if (breadcrumbCurrent) breadcrumbCurrent.textContent = "Tìm kiếm";
}

let allProducts = [];

// Render sản phẩm
function renderProducts(products) {
  productList.innerHTML = "";
  if (!products || products.length === 0) {
    productList.innerHTML = `<p class="text-center">Không có sản phẩm nào</p>`;
    updateTitle(0);
    return;
  }

  let html = "";
  products.forEach((p) => {
    html += `
      <div class="col-6 col-xl-3">
        <div class="product-card" data-aos="zoom-in" data-aos-delay="200">
          <div class="product-image">
            <img src="${p.imageURL}" class="main-image img-fluid" alt="${p.productName}">
          </div>
          <div class="product-details">
            <div class="brand-name">${p.brandName}</div>
            <h4 class="product-name">
              <a href="product-details.html?productId=${p.productId}">${p.productName}</a>
            </h4>
            <div class="promotional-price mb-2">
              ${p.promotionalPrice.toLocaleString("vi-VN")}đ
              <span class="original-price">${p.originalPrice.toLocaleString("vi-VN")}đ</span>
            </div>
            <div class="product-rating">
              ${
                p.reviewCount === 0
                  ? `<i class="bi bi-star-fill"></i><span class="text-muted">Chưa có đánh giá</span>`
                  : `<i class="bi bi-star-fill"></i>${p.averageRating} <span>(${p.reviewCount})</span>`
              }
            </div>
          </div>
        </div>
      </div>
    `;
  });
  productList.innerHTML = html;

  updateTitle(products.length);
}

// Fetch sản phẩm theo keyword
if (keyword) {
  fetch(`http://localhost:8080/tech-store/api/products/search?keyword=${encodeURIComponent(keyword)}`)
    .then((res) => res.json())
    .then((data) => {
      allProducts = data.result || [];
      renderProducts(allProducts);
    })
    .catch((err) => {
      console.error("Lỗi lấy danh sách sản phẩm:", err);
      renderProducts([]);
    });
} else {
  productList.innerHTML = `<p class="text-center">Vui lòng nhập từ khóa tìm kiếm!</p>`;
  updateTitle(0);
}

// Fetch brand và thêm checkbox
if (brandListContainer) {
  brandListContainer.innerHTML = "";

  fetch("http://localhost:8080/tech-store/api/brands")
    .then((res) => res.json())
    .then((data) => {
      const brands = data.result || [];
      brands.forEach((brand, index) => {
        const brandItem = document.createElement("div");
        brandItem.className = "brand-item";
        brandItem.innerHTML = `
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="brand-${index}" value="${brand.brandName}">
            <label class="form-check-label" for="brand-${index}">${brand.brandName}</label>
          </div>
        `;
        brandListContainer.appendChild(brandItem);
      });
    })
    .catch((err) => console.error("Lỗi lấy danh sách brand:", err));
}

// Hàm lọc sản phẩm theo brand, giá, sort
function applyFilters() {
  let filtered = [...allProducts];

  // Lọc brand nếu có checkbox checked
  const selectedBrands = Array.from(
    brandListContainer.querySelectorAll("input[type=checkbox]:checked")
  ).map((input) => input.value);

  if (selectedBrands.length > 0) {
    filtered = filtered.filter((p) => selectedBrands.includes(p.brandName));
  }

  // Lọc theo giá
  const priceRange = priceRangeSelect.value;
  filtered = filtered.filter((p) => {
    const price = p.promotionalPrice;
    switch (priceRange) {
      case "Dưới 5.000.000":
        return price < 5000000;
      case "5.000.000 - 10.000.000":
        return price >= 5000000 && price <= 10000000;
      case "10.000.000 - 20.000.000":
        return price > 10000000 && price <= 20000000;
      case "Trên 20.000.000":
        return price > 20000000;
      default:
        return true;
    }
  });

  // Sắp xếp
  const sortBy = sortBySelect.value;
  switch (sortBy) {
    case "Giá: Thấp đến cao":
      filtered.sort((a, b) => a.promotionalPrice - b.promotionalPrice);
      break;
    case "Giá: Cao đến thấp":
      filtered.sort((a, b) => b.promotionalPrice - a.promotionalPrice);
      break;
    case "Đánh giá":
      filtered.sort((a, b) => b.averageRating - a.averageRating);
      break;
  }

  renderProducts(filtered);
}

// Event listener
priceRangeSelect.addEventListener("change", applyFilters);
sortBySelect.addEventListener("change", applyFilters);

// Áp dụng brand filter khi nhấn nút
if (applyBrandBtn) {
  applyBrandBtn.addEventListener("click", applyFilters);
}

// Xóa tất cả brand
if (clearBrandBtn) {
  clearBrandBtn.addEventListener("click", () => {
    brandListContainer.querySelectorAll("input[type=checkbox]").forEach((cb) => (cb.checked = false));
    applyFilters();
  });
}

// Xử lý form tìm kiếm
const searchForm = document.querySelector(".search-form.desktop-search-form");
if (searchForm) {
  searchForm.addEventListener("submit", function (e) {
    e.preventDefault();
    const kw = searchInput.value.trim();
    if (!kw) return; // nếu trống thì không chuyển
    window.location.href = `product-search.html?keyword=${encodeURIComponent(kw)}`;
  });
}
