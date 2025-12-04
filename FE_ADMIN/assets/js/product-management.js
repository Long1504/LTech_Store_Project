document.addEventListener("DOMContentLoaded", function () {
  const token = localStorage.getItem("token");

  if (!token) {
    window.location.href = "login.html";
    return;
  }

  const categorySelect = document.getElementById("filter-category");
  const brandSelect = document.getElementById("filter-brand");

  // ============================================
  //  LOAD DANH MỤC
  // ============================================
  function loadCategories() {
    return fetch("http://localhost:8080/tech-store/api/categories", {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: "Bearer " + token,
      },
    })
      .then((res) => res.json())
      .then((data) => {
        categorySelect.innerHTML = '<option value="">Tất cả</option>';
        data.result.forEach((cat) => {
          const option = document.createElement("option");
          option.value = cat.categoryId;
          option.textContent = cat.categoryName;
          categorySelect.appendChild(option);
        });
      })
      .catch((err) => console.error("Lỗi load categories:", err));
  }

  // ============================================
  //  LOAD THƯƠNG HIỆU
  // ============================================
  function loadBrands() {
    return fetch("http://localhost:8080/tech-store/api/brands", {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: "Bearer " + token,
      },
    })
      .then((res) => res.json())
      .then((data) => {
        brandSelect.innerHTML = '<option value="">Tất cả</option>';
        data.result.forEach((brand) => {
          const option = document.createElement("option");
          option.value = brand.brandId;
          option.textContent = brand.brandName;
          brandSelect.appendChild(option);
        });
      })
      .catch((err) => console.error("Lỗi load brands:", err));
  }

  // ============================================
  //  LOAD SẢN PHẨM
  //  (PHẢI GLOBAL → GÁN VÀO window)
  // ============================================
  window.loadProducts = function () {
    const categoryId = categorySelect.value;
    const brandId = brandSelect.value;

    let url = "http://localhost:8080/tech-store/api/products/filter";
    const params = [];
    if (categoryId) params.push(`categoryId=${categoryId}`);
    if (brandId) params.push(`brandId=${brandId}`);
    if (params.length > 0) url += "?" + params.join("&");

    fetch(url, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: "Bearer " + token,
      },
    })
      .then((res) => {
        if (res.status === 401) {
          window.location.href = "login.html";
          return;
        }
        return res.json();
      })
      .then((data) => {
        if (!data) return;

        const tbody = document.querySelector("#products-table tbody");
        tbody.innerHTML = "";

        data.result.forEach((product) => {
          const mainImage =
            product.images.find((img) => img.isMain)?.imageUrl || "";

          const tr = document.createElement("tr");
          tr.dataset.productId = product.productId;
          tr.innerHTML = `
            <td><img src="${mainImage}" alt="${
            product.productName
          }" style="max-height: 70px;"></td>
            <td class="align-middle">${product.productName}</td>
            <td class="align-middle">${
              product.category?.categoryName || ""
            }</td>
            <td class="align-middle">${product.brand?.brandName || ""}</td>
            <td class="align-middle">${product.warrantyMonths || 0} tháng</td>
            <td class="align-middle status-cell">${
              product.productStatus === "ACTIVE" ? "Hoạt động" : "Khóa"
            }</td>
            <td class="align-middle">
              <button class="btn btn-sm btn-warning text-white toggle-status" title="Đổi trạng thái">
                <i class="bx ${
                  product.productStatus === "ACTIVE"
                    ? "bxs-lock-open"
                    : "bxs-lock"
                }"></i>
              </button>
              <button class="btn btn-sm btn-primary text-white" onclick="editProduct('${
                product.productId
              }')">
                <i class="bi bi-pencil-square"></i>
              </button>
              <button class="btn btn-sm btn-danger text-white" onclick="deleteProduct('${
                product.productId
              }')">
                <i class="bx bx-trash"></i>
              </button>
            </td>
          `;
          tbody.appendChild(tr);
        });
      })
      .catch((err) => console.error("Error loading products:", err));
  };

  categorySelect.addEventListener("change", loadProducts);
  brandSelect.addEventListener("change", loadProducts);

  // ============================================
  //  XÓA SẢN PHẨM (GLOBAL)
  // ============================================
  let selectedProductId = null;

  window.deleteProduct = function (productId) {
    selectedProductId = productId;
    const modal = new bootstrap.Modal(
      document.getElementById("deleteProductModal")
    );
    modal.show();
  };

  document
    .getElementById("confirmDeleteBtn")
    .addEventListener("click", function () {
      if (!selectedProductId) return;

      fetch(
        `http://localhost:8080/tech-store/api/products/${selectedProductId}`,
        {
          method: "DELETE",
          headers: {
            Authorization: "Bearer " + token,
            "Content-Type": "application/json",
          },
        }
      )
        .then((res) => {
          if (res.ok) {
            alert("Xóa sản phẩm thành công");
            loadProducts();
          } else {
            return res.json().then((err) => {
              alert("Lỗi: " + (err.message || "Không thể xóa sản phẩm"));
            });
          }
        })
        .catch((err) => {
          console.error("Lỗi khi xóa sản phẩm:", err);
          alert("Không thể kết nối đến server");
        })
        .finally(() => {
          selectedProductId = null;
          const modal = bootstrap.Modal.getInstance(
            document.getElementById("deleteProductModal")
          );
          if (modal) modal.hide();
        });
    });

  // ============================================
  //  TOGGLE STATUS (EVENT DELEGATION)
  // ============================================
  // Dùng delegation để bắt click vào nút .toggle-status (button hoặc icon)
  document.addEventListener("click", function (event) {
    const btn = event.target.closest(".toggle-status");
    if (!btn) return;

    const tr = btn.closest("tr");
    if (!tr) return;
    const productId = tr.dataset.productId;
    if (!productId) return;

    // Disable button tạm thời để tránh double click
    btn.disabled = true;

    fetch(`http://localhost:8080/tech-store/api/products/${productId}/status`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Authorization: "Bearer " + token,
      },
    })
      .then(async (res) => {
        // nếu server trả status 204 hoặc 200/201, cố gắng parse json nếu có
        if (!res.ok) {
          let errText = "Đổi trạng thái thất bại";
          try {
            const err = await res.json();
            errText = err.message || errText;
          } catch (e) {}
          throw new Error(errText);
        }
        return res.json().catch(() => ({}));
      })
      .then((data) => {
        // Chọn cách cập nhật UI: load lại cả danh sách để đồng bộ hoặc cập nhật cục bộ
        // Ở đây gọi loadProducts() để đảm bảo dữ liệu đồng bộ
        loadProducts();
      })
      .catch((err) => {
        console.error("Lỗi cập nhật trạng thái:", err);
        alert(err.message || "Không thể cập nhật trạng thái sản phẩm");
      })
      .finally(() => {
        btn.disabled = false;
      });
  });

  // ============================================
  // Update Product
  // ============================================
  window.editProduct = function (productId) {
    window.location.href = `product-update.html?productId=${productId}`;
  };

  // ============================================
  //  Load Filters & Products lần đầu
  // ============================================
  Promise.all([loadCategories(), loadBrands()]).then(() => {
    loadProducts();
  });
});
