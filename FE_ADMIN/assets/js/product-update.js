document.addEventListener("DOMContentLoaded", async function () {

  // ================================
  // GLOBAL
  // ================================
  const token = localStorage.getItem("token") || "";
  const params = new URLSearchParams(window.location.search);
  const productId = params.get("productId");

  const categoryInput = document.getElementById("category");
  const variantsTable = document
    .getElementById("variants-table")
    .querySelector("tbody");

  let selectedVariantIndex = null;

  // ================================
  // VARIANT CARDS
  // ================================
  const variantCards = {
    "Điện thoại": document.querySelector(".card-phone-variant"),
    "Laptop": document.querySelector(".card-laptop-variant"),
    "Chuột": document.querySelector(".card-mouse-variant"),
    "Bàn phím": document.querySelector(".card-keyboard-variant"),
    "Củ sạc": document.querySelector(".card-charging-adapter-variant"),
    "Cáp sạc": document.querySelector(".card-charging-cable-variant"),
  };

  const idMap = {
    "phone-color": "color",
    "phone-originalPrice": "originalPrice",
    "phone-promotionalPrice": "promotionalPrice",
    "phone-stock": "stock",
    "phone-isDefault": "isDefault",

    "laptop-color": "color",
    "laptop-originalPrice": "originalPrice",
    "laptop-promotionalPrice": "promotionalPrice",
    "laptop-stock": "stock",
    "laptop-isDefault": "isDefault",

    "mouse-color": "color",
    "mouse-originalPrice": "originalPrice",
    "mouse-promotionalPrice": "promotionalPrice",
    "mouse-stock": "stock",
    "mouse-isDefault": "isDefault",

    "keyboard-color": "color",
    "keyboard-originalPrice": "originalPrice",
    "keyboard-promotionalPrice": "promotionalPrice",
    "keyboard-stock": "stock",
    "keyboard-isDefault": "isDefault",

    "charging-adapter-color": "color",
    "charging-adapter-originalPrice": "originalPrice",
    "charging-adapter-promotionalPrice": "promotionalPrice",
    "charging-adapter-stock": "stock",
    "charging-adapter-isDefault": "isDefault",

    "charging-cable-color": "color",
    "charging-cable-originalPrice": "originalPrice",
    "charging-cable-promotionalPrice": "promotionalPrice",
    "charging-cable-stock": "stock",
    "charging-cable-isDefault": "isDefault",
  };

  // ================================
  // UTIL
  // ================================
  function hideAllVariantCards() {
    Object.values(variantCards).forEach(card => {
      if (card) card.style.display = "none";
    });
  }

  function showVariantCard(categoryName) {
    hideAllVariantCards();
    if (variantCards[categoryName]) {
      variantCards[categoryName].style.display = "block";
    }
  }

  // ================================
  // LOAD BRAND
  // ================================
  async function loadBrands() {
    const res = await fetch("http://localhost:8080/tech-store/api/brands", {
      headers: { Authorization: `Bearer ${token}` },
    });
    const data = await res.json();

    const brandSelect = document.getElementById("brand");
    brandSelect.innerHTML = "";

    data.result.forEach(b => {
      const opt = document.createElement("option");
      opt.value = b.brandId;
      opt.textContent = b.brandName;
      brandSelect.appendChild(opt);
    });
  }

  // ================================
  // FILL PRODUCT
  // ================================
  function fillProductInfo(product) {
    document.getElementById("productName").value = product.productName || "";
    document.getElementById("category").value = product.category?.categoryName || "";
    document.getElementById("warrantyMonths").value = product.warrantyMonths || "";
    document.getElementById("productStatus").value = product.productStatus || "ACTIVE";

    if (product.brand?.brandId) {
      document.getElementById("brand").value = product.brand.brandId;
    }

    const imagePreview = document.getElementById("imagePreview");
    imagePreview.innerHTML = "";
    product.images?.forEach(img => {
      const i = document.createElement("img");
      i.src = img.imageUrl;
      i.style.width = "100px";
      i.style.height = "100px";
      i.style.objectFit = "cover";
      imagePreview.appendChild(i);
    });
  }

  function fillVariantCard(variant) {
    const categoryName = categoryInput.value;
    const card = variantCards[categoryName];
    if (!card) return;

    card.querySelectorAll(".product-variant-infor input, .product-variant-infor select")
      .forEach(input => {
        const key = idMap[input.id];
        if (!key || variant[key] === undefined) return;

        input.value = typeof variant[key] === "boolean"
          ? variant[key].toString()
          : variant[key];
      });

    card.querySelectorAll(".product-spec-infor input").forEach(input => {
      const specKey = input.dataset.specKey || input.id;
      const spec = variant.productSpecs?.find(s => s.specKey === specKey);
      input.value = spec ? spec.specValue : "";
    });
  }

  // ================================
  // LOAD PRODUCT DETAIL
  // ================================
  async function loadProductDetail() {
    const res = await fetch(
      `http://localhost:8080/tech-store/api/products/${productId}`,
      { headers: { Authorization: `Bearer ${token}` } }
    );
    const data = await res.json();
    const product = data.result;

    fillProductInfo(product);
    showVariantCard(product.category?.categoryName);

    window.productVariants = product.productVariants || [];
    variantsTable.innerHTML = "";

    window.productVariants.forEach(v => {
      const row = document.createElement("tr");
      row.innerHTML = `
        <td>${v.color || ""}</td>
        <td>${v.originalPrice || ""}</td>
        <td>${v.promotionalPrice || ""}</td>
        <td>${v.stock || ""}</td>
        <td>${v.isDefault ? "TRUE" : "FALSE"}</td>
      `;
      variantsTable.appendChild(row);
    });

    const def = window.productVariants.find(v => v.isDefault);
    if (def) fillVariantCard(def);
  }

  // ================================
  // SELECT VARIANT
  // ================================
  variantsTable.addEventListener("click", e => {
    const row = e.target.closest("tr");
    if (!row) return;

    selectedVariantIndex = [...row.parentNode.children].indexOf(row);
    fillVariantCard(window.productVariants[selectedVariantIndex]);
  });

  // ================================
  // UPDATE PRODUCT
  // ================================
  document.querySelector(".btn-update-product")
    .addEventListener("click", async () => {

      const payload = {
        productName: document.getElementById("productName").value.trim(),
        brandId: document.getElementById("brand").value,
        warrantyMonths: Number(document.getElementById("warrantyMonths").value),
        productStatus: document.getElementById("productStatus").value
      };

      try {
        const res = await fetch(
          `http://localhost:8080/tech-store/api/products/${productId}`,
          {
            method: "PUT",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`
            },
            body: JSON.stringify(payload)
          }
        );

        const data = await res.json();
        if (!res.ok || data.code !== 1000) throw new Error(data.message);

        alert("✅ Cập nhật sản phẩm thành công");
        await loadProductDetail();

      } catch (e) {
        console.error(e);
        alert("❌ Cập nhật sản phẩm thất bại");
      }
    });

  // ================================
  // UPDATE VARIANT
  // ================================
  document.querySelectorAll(".btn-update-product-variant")
    .forEach(btn => {

      btn.addEventListener("click", async () => {

        if (selectedVariantIndex === null) {
          alert("❌ Vui lòng chọn biến thể");
          return;
        }

        const categoryName = categoryInput.value;
        const card = variantCards[categoryName];
        const oldVariant = window.productVariants[selectedVariantIndex];

        const payload = {
          color: oldVariant.color,
          originalPrice: oldVariant.originalPrice,
          promotionalPrice: oldVariant.promotionalPrice,
          stock: oldVariant.stock,
          isDefault: oldVariant.isDefault,
          productSpecs: []
        };

        card.querySelectorAll(".product-variant-infor input, .product-variant-infor select")
          .forEach(input => {
            const key = idMap[input.id];
            if (!key) return;

            if (input.type === "number") payload[key] = Number(input.value);
            else if (input.tagName === "SELECT") payload[key] = input.value === "true";
            else payload[key] = input.value.trim();
          });

        card.querySelectorAll(".product-spec-infor input")
          .forEach(input => {
            const specValue = input.value.trim();
            if (specValue !== "") {
              payload.productSpecs.push({
                specKey: input.dataset.specKey || input.id,
                specValue
              });
            }
          });

        try {
          const res = await fetch(
            `http://localhost:8080/tech-store/api/product-variants/${oldVariant.productVariantId}`,
            {
              method: "PUT",
              headers: {
                "Content-Type": "application/json",
                Authorization: `Bearer ${token}`
              },
              body: JSON.stringify(payload)
            }
          );

          const data = await res.json();
          if (!res.ok || data.code !== 1000) throw new Error(data.message);

          alert("✅ Cập nhật biến thể thành công");
          await loadProductDetail();

        } catch (err) {
          console.error(err);
          alert("❌ Cập nhật biến thể thất bại");
        }
      });
    });

  // ================================
  // INIT
  // ================================
  await loadBrands();
  await loadProductDetail();
});
