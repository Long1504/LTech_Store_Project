document.addEventListener("DOMContentLoaded", () => {
  const urlParams = new URLSearchParams(window.location.search);
  const productId = urlParams.get("productId");

  // Elements
  const currentPage = document.querySelector(".current");
  const productNameEl = document.querySelector(".product-name");
  const categoryName = document.getElementById("category-name");
  const brandName = document.getElementById("brand-name");
  const promotionalPriceEl = document.getElementById("promotional-price");
  const originalPriceEl = document.getElementById("original-price");
  const stockQuantityEl = document.getElementById("stock-quantity");
  const specsTable = document.getElementById("specs-table");
  const versionContainer = document.getElementById("version-container");
  const colorContainer = document.getElementById("variant-container");
  const qtyInput = document.querySelector(".quantity-input");
  const decreaseBtn = document.querySelector(".quantity-btn.decrease");
  const increaseBtn = document.querySelector(".quantity-btn.increase");
  const mainImageEl = document.getElementById("main-product-image");
  const thumbnailGrid = document.querySelector(".thumbnail-grid");
  const prevBtn = document.querySelector(".prev-image");
  const nextBtn = document.querySelector(".next-image");

  let productData = null;
  let selectedVersion = null;
  let selectedColor = null;
  let selectedVariant = null;

  let images = [];
  let currentImageIndex = 0;

  let versionKey = "";

  fetch(`http://localhost:8080/tech-store/api/products/${productId}`)
    .then((res) => res.json())
    .then((data) => {
      if (data.code === 1000) {
        productData = data.result;

        if (productData.category.categoryName === "Điện thoại") {
          versionKey = "Bộ nhớ";
        } else if (productData.category.categoryName === "Laptop") {
          versionKey = "Ổ cứng";
        } else if (productData.category.categoryName === "Củ sạc") {
          versionKey = "Công suất sạc";
        } else if (productData.category.categoryName === "Cáp sạc") {
          versionKey = "Công suất sạc";
        } else if (productData.category.categoryName === "Chuột") {
          versionKey = "Độ phân giải";
        } else if (productData.category.categoryName === "Bàn phím") {
          versionKey = "Loại bàn phím";
        }

        initProduct();
      } else {
        console.error("API trả về lỗi:", data.message);
      }
    })
    .catch((err) => console.error("Fetch error:", err));

  function initProduct() {
    //Breadcrumb
    const prevPage = document.referrer || "index.html";

    document.getElementById("product-title").innerText =
      productData.productName;
    document.getElementById("breadcrumb-current").innerHTML = `
          <ol>
              <li><a href="index.html">Trang chủ</a></li>
              <li><a href="${prevPage}">${productData.category.categoryName}</a></li>
              <li class="current">${productData.productName}</li>
            </ol>
        `;

    //Tên sản phẩm
    categoryName.innerText = productData.category.categoryName;
    brandName.innerText = productData.brand.brandName;
    productNameEl.textContent = productData.productName;

    //Các phiên bản (Bộ nhớ - Điện thoại) / Ổ cứng - Laptop)
    const versions = [
      ...new Set(
        productData.productVariants.map(
          (v) => v.productSpecs.find((s) => s.specKey === versionKey).specValue
        )
      ),
    ];

    selectedVersion = versions[0]; //Mặc định phiên bản đầu
    renderVersions(versions);
    updateColors();
    updateProductInfo();
    renderGallery(productData.images);
  }

  //Ảnh
  function renderGallery(imgs) {
    if (!imgs || !imgs.length) return;

    images = imgs;
    currentImageIndex =
      imgs.findIndex((img) => img.isMain) >= 0
        ? imgs.findIndex((img) => img.isMain)
        : 0;
    mainImageEl.src = images[currentImageIndex].imageUrl;

    thumbnailGrid.innerHTML = "";
    images.forEach((img, index) => {
      const thumb = document.createElement("div");
      thumb.className = "thumbnail-wrapper thumbnail-item";
      if (index === currentImageIndex) thumb.classList.add("active");
      thumb.innerHTML = `<img src="${img.imageUrl}" alt="Thumbnail" class="img-fluid">`;

      thumb.onclick = () => {
        currentImageIndex = index;
        updateMainImage();
      };
      thumbnailGrid.appendChild(thumb);
    });
  }

  function updateMainImage() {
    mainImageEl.src = images[currentImageIndex].imageUrl;
    Array.from(thumbnailGrid.children).forEach((t, i) => {
      t.classList.toggle("active", i === currentImageIndex);
    });
  }

  prevBtn.onclick = () => {
    if (!images.length) return;
    currentImageIndex = (currentImageIndex - 1 + images.length) % images.length;
    updateMainImage();
  };

  nextBtn.onclick = () => {
    if (!images.length) return;
    currentImageIndex = (currentImageIndex + 1) % images.length;
    updateMainImage();
  };

  //Phiên bản
  function renderVersions(versions) {
    versionContainer.innerHTML = "";
    versions.forEach((version) => {
      const btn = document.createElement("button");
      btn.className = "variant-option";
      btn.textContent = version;

      if (version === selectedVersion) btn.classList.add("active");

      btn.onclick = () => {
        selectedVersion = version;
        selectedColor = null;

        Array.from(versionContainer.children).forEach((b) =>
          b.classList.remove("active")
        );
        btn.classList.add("active");

        updateColors();
        updateProductInfo();
      };
      versionContainer.appendChild(btn);
    });
  }

  //Màu
  function updateColors() {
    colorContainer.innerHTML = "";
    const filteredVariants = productData.productVariants.filter(
      (v) =>
        v.productSpecs.find((s) => s.specKey === versionKey).specValue ===
        selectedVersion
    );

    if (filteredVariants.length > 0) selectedColor = filteredVariants[0].color;

    filteredVariants.forEach((v) => {
      const btn = document.createElement("button");
      btn.className = "variant-option text-start d-flex align-items-center p-2";
      btn.innerHTML = `
            <div class="d-flex flex-column">
              <div class="fw-semibold small">${v.color}</div>
              <div class="text-muted small">${v.promotionalPrice.toLocaleString()}đ</div>
            </div>
          `;

      if (v.color === selectedColor) btn.classList.add("active");

      btn.onclick = () => {
        selectedColor = v.color;
        Array.from(colorContainer.children).forEach((b) =>
          b.classList.remove("active")
        );
        btn.classList.add("active");
        updateProductInfo();
      };
      colorContainer.appendChild(btn);
    });
  }

  // Cập nhật thông tin sản phẩm
  function updateProductInfo() {
    if (!selectedVersion || !selectedColor) return;

    selectedVariant = productData.productVariants.find(
      (v) =>
        v.color === selectedColor &&
        v.productSpecs.some(
          (s) => s.specKey === versionKey && s.specValue === selectedVersion
        )
    );

    if (!selectedVariant) return;

    // Giá & stock
    promotionalPriceEl.textContent =
      selectedVariant.promotionalPrice.toLocaleString() + "đ";
    originalPriceEl.textContent =
      selectedVariant.originalPrice.toLocaleString() + "đ";
    stockQuantityEl.textContent = `Chỉ còn ${selectedVariant.stock} sản phẩm`;

    // Thông số kỹ thuật
    specsTable.innerHTML = "";
    selectedVariant.productSpecs.forEach((spec) => {
      if (spec.specKey && spec.specValue) {
        const row = document.createElement("div");
        row.className = "spec-row";
        row.innerHTML = `
              <span class="spec-key">${spec.specKey}</span>
              <span class="spec-value">${spec.specValue}</span>
            `;
        specsTable.appendChild(row);
      }
    });

    // Reset số lượng
    qtyInput.value = 1;
    qtyInput.max = selectedVariant.stock;
  }

  //Thêm vào giỏ
  document
    .getElementById("add-to-cart-btn")
    .addEventListener("click", function () {
      const token = localStorage.getItem("token");

      // Nếu chưa đăng nhập -> hiển thị modal
      if (!token) {
        const loginModal = new bootstrap.Modal(
          document.getElementById("loginModal")
        );
        loginModal.show();
        return;
      }

      // Nếu đã đăng nhập -> gọi API
      const productVariantId = selectedVariant.productVariantId;
      const quantity = parseInt(
        document.querySelector(".quantity-input").value
      );

      fetch("http://localhost:8080/tech-store/api/cart-item", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          productVariantId: productVariantId,
          quantity: quantity,
        }),
      })
        .then((response) => response.json())
        .then((data) => {
          console.log("Thêm vào giỏ thành công:", data);

          // Cập nhật badge giỏ hàng
          const badge = document.querySelector(".header-action-btn .badge");
          if (badge) badge.textContent = data.totalQuantity;

          alert("Đã thêm vào giỏ hàng!");
        })
        .catch((error) => console.error("Lỗi:", error));
    });
});
