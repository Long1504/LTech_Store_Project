document.addEventListener("DOMContentLoaded", function () {
  loadCategories();
  loadBrands();
  setupImagePreviewWithRemove("productImage", "imagePreview");
  setupCategoryChange();
  hideAllVariants();
});

const token = localStorage.getItem("token");
let selectedFiles = []; // lưu trữ các file đã chọn
let currentProductId = null;

// ------------------------------
// Load Categories
// ------------------------------
function loadCategories() {
  const selectElement = document.getElementById("category");

  fetch("http://localhost:8080/tech-store/api/categories", {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
  })
    .then((res) => res.json())
    .then((data) => {
      selectElement.innerHTML = "";
      data.result.forEach((cat) => {
        const option = document.createElement("option");
        option.value = cat.categoryId;
        option.textContent = cat.categoryName;
        selectElement.appendChild(option);
      });

      // Hiển thị biến thể theo category đang chọn
      if (selectElement.value) {
        const selectedText =
          selectElement.options[selectElement.selectedIndex].text;
        showVariantByText(selectedText);
      }
    })
    .catch((err) => console.error("Lỗi load categories:", err));
}

// ------------------------------
// Load Brands
// ------------------------------
function loadBrands() {
  const selectElement = document.getElementById("brand");

  fetch("http://localhost:8080/tech-store/api/brands", {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
  })
    .then((res) => res.json())
    .then((data) => {
      selectElement.innerHTML = "";
      data.result.forEach((brand) => {
        const option = document.createElement("option");
        option.value = brand.brandId;
        option.textContent = brand.brandName;
        selectElement.appendChild(option);
      });
    })
    .catch((err) => console.error("Lỗi load brands:", err));
}

// ------------------------------
// Preview + xóa ảnh trước khi lưu
// ------------------------------
function setupImagePreviewWithRemove(inputId, previewContainerId) {
  const inputFile = document.getElementById(inputId);
  const previewContainer = document.getElementById(previewContainerId);

  inputFile.addEventListener("change", function () {
    const files = Array.from(this.files);

    files.forEach((file) => {
      if (!file.type.startsWith("image/")) return;

      const reader = new FileReader();
      reader.onload = function (e) {
        const wrapper = document.createElement("div");
        wrapper.style.position = "relative";
        wrapper.style.display = "inline-block";
        wrapper.style.margin = "5px";

        const img = document.createElement("img");
        img.src = e.target.result;
        img.style.width = "100px";
        img.style.height = "100px";
        img.style.objectFit = "cover";

        const btnRemove = document.createElement("button");
        btnRemove.textContent = "×";
        btnRemove.style.position = "absolute";
        btnRemove.style.top = "0";
        btnRemove.style.right = "0";
        btnRemove.style.background = "red";
        btnRemove.style.color = "white";
        btnRemove.style.border = "none";
        btnRemove.style.borderRadius = "50%";
        btnRemove.style.width = "20px";
        btnRemove.style.height = "20px";
        btnRemove.style.cursor = "pointer";
        btnRemove.style.display = "flex";
        btnRemove.style.alignItems = "center";
        btnRemove.style.justifyContent = "center";
        btnRemove.style.fontSize = "14px";
        btnRemove.style.lineHeight = "1";

        btnRemove.addEventListener("click", function () {
          wrapper.remove();
          selectedFiles = selectedFiles.filter((f) => f !== file);
        });

        wrapper.appendChild(img);
        wrapper.appendChild(btnRemove);
        previewContainer.appendChild(wrapper);

        // Lưu file vào selectedFiles
        selectedFiles.push(file);
      };
      reader.readAsDataURL(file);
    });

    // Reset input để chọn thêm file mà không xóa selectedFiles
    this.value = "";
  });
}

// ------------------------------
// Ẩn tất cả biến thể
// ------------------------------
function hideAllVariants() {
  document
    .querySelectorAll(
      ".card-phone-variant, .card-laptop-variant, .card-mouse-variant, .card-keyboard-variant, .card-charging-adapter-variant, .card-charging-cable-variant"
    )
    .forEach((card) => (card.style.display = "none"));
}

// ------------------------------
// Hiển thị biến thể theo text
// ------------------------------
function showVariantByText(text) {
  hideAllVariants();
  switch (text) {
    case "Điện thoại":
      document.querySelector(".card-phone-variant").style.display = "block";
      break;
    case "Laptop":
      document.querySelector(".card-laptop-variant").style.display = "block";
      break;
    case "Chuột":
      document.querySelector(".card-mouse-variant").style.display = "block";
      break;
    case "Bàn phím":
      document.querySelector(".card-keyboard-variant").style.display = "block";
      break;
    case "Củ sạc":
      document.querySelector(".card-charging-adapter-variant").style.display =
        "block";
      break;
    case "Cáp sạc":
      document.querySelector(".card-charging-cable-variant").style.display =
        "block";
      break;
  }
}

// ------------------------------
// Setup event onchange cho category
// ------------------------------
function setupCategoryChange() {
  const categorySelect = document.getElementById("category");

  categorySelect.addEventListener("change", function () {
    const selectedText = this.options[this.selectedIndex].text;
    showVariantByText(selectedText);
  });
}

// ------------------------------
// Lưu sản phẩm
// ------------------------------
async function saveProduct() {
  if (selectedFiles.length === 0) {
    alert("Vui lòng chọn ít nhất 1 ảnh!");
    return;
  }

  const imageObjects = [];

  for (let i = 0; i < selectedFiles.length; i++) {
    const file = selectedFiles[i];
    const formData = new FormData();
    formData.append("file", file);

    try {
      const uploadRes = await fetch(
        "http://localhost:8080/tech-store/api/upload/image",
        {
          method: "POST",
          headers: {
            Authorization: "Bearer " + token,
          },
          body: formData,
        }
      );

      const uploadData = await uploadRes.json();

      imageObjects.push({
        imageUrl: uploadData.result,
        isMain: i === 0,
      });
    } catch (err) {
      console.error("Upload ảnh lỗi:", err);
      alert("Upload ảnh thất bại!");
      return;
    }
  }

  const product = {
    categoryId: document.getElementById("category").value,
    brandId: document.getElementById("brand").value,
    productName: document.getElementById("productName").value,
    warrantyMonths: document.getElementById("warrantyMonths").value,
    productStatus: document.getElementById("productStatus").value,
    images: imageObjects,
  };

  try {
    const res = await fetch("http://localhost:8080/tech-store/api/products", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: "Bearer " + token,
      },
      body: JSON.stringify(product),
    });

    const result = await res.json();
    console.log("Tạo sản phẩm thành công:", result);
    alert("Lưu sản phẩm thành công!");
    currentProductId = result.result.productId;

    loadProductVariants(currentProductId);

    // Reset form + preview + selectedFiles
    document.getElementById("productImage").value = "";
    document.getElementById("imagePreview").innerHTML = "";
    selectedFiles = [];
  } catch (err) {
    console.error("Lỗi tạo sản phẩm:", err);
    alert("Lưu sản phẩm thất bại!");
  }
}

// Gắn sự kiện cho nút Lưu sản phẩm
document
  .querySelector(".btn-save-product")
  .addEventListener("click", saveProduct);

// ------------------------------
// Lưu biến thể
// ------------------------------
function getVariantData(cardSelector) {
  const card = document.querySelector(cardSelector);
  if (!card) return null;

  const variant = {
    productId: currentProductId,
    color: card.querySelector("[id$='-color']").value,
    originalPrice: Number(card.querySelector("[id$='-originalPrice']").value),
    promotionalPrice: Number(
      card.querySelector("[id$='-promotionalPrice']").value
    ),
    stock: Number(card.querySelector("[id$='-stock']").value),
    isDefault: card.querySelector("[id$='-isDefault']").value === "true",
    productSpecs: [],
  };

  // Lấy các specs còn lại
  card.querySelectorAll(".product-spec-infor input").forEach((input) => {
    variant.productSpecs.push({
      specKey: input.previousElementSibling.textContent,
      specValue: input.value,
    });
  });

  return variant;
}

// Sử dụng chung cho nút lưu biến thể
document.querySelectorAll(".btn-save-product-variant").forEach((btn) => {
  btn.addEventListener("click", async function () {
    const card = this.closest(".card");
    const variantData = getVariantData("." + card.classList[1]); // lấy class thứ 2 như laptop/mouse
    if (!variantData) return;

    try {
      const res = await fetch(
        "http://localhost:8080/tech-store/api/product-variants",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: "Bearer " + token,
          },
          body: JSON.stringify(variantData),
        }
      );
      const result = await res.json();
      alert("Lưu biến thể thành công!");
      console.log(result);
      loadProductVariants(currentProductId);
    } catch (err) {
      console.error(err);
      alert("Lưu biến thể thất bại!");
    }
  });
});

// ------------------------------
// Load danh sách biến thể
// ------------------------------
async function loadProductVariants(productId) {
  const tbody = document.querySelector("#variants-table tbody");
  tbody.innerHTML = "";

  try {
    const res = await fetch(
      `http://localhost:8080/tech-store/api/products/${productId}`,
      {
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + token,
        },
      }
    );
    const data = await res.json();

    const variants = data.result.productVariants || [];

    variants.forEach((variant) => {
      const tr = document.createElement("tr");
      tr.innerHTML = `
                <td>${variant.color}</td>
                <td>${variant.originalPrice.toLocaleString()}đ</td>
                <td>${variant.promotionalPrice.toLocaleString()}đ</td>
                <td>${variant.stock}</td>
                <td>${variant.isDefault ? "TRUE" : "FALSE"}</td>
            `;
      tbody.appendChild(tr);
    });
  } catch (err) {
    console.error("Lỗi load biến thể:", err);
    tbody.innerHTML = `<tr><td colspan="5">Không thể tải dữ liệu</td></tr>`;
  }
}

if (currentProductId) {
  loadProductVariants(currentProductId);
}
