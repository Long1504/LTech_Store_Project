document.addEventListener("DOMContentLoaded", function () {
  const token = localStorage.getItem("token");

  if (!token) {
    window.location.href = "login.html"; 
    return;
  }

  loadDiscounts(token);

  // Modal tạo mới
  const addBtn = document.querySelector(".btn-add-discount");
  const createModal = new bootstrap.Modal(document.getElementById("createDiscountModal"));
  addBtn.addEventListener("click", () => createModal.show());

  // Submit form tạo mới
  const createForm = document.getElementById("createDiscountForm");
  createForm.addEventListener("submit", function(e) {
    e.preventDefault();
    if (!this.checkValidity()) {
      this.reportValidity();
      return;
    }
    createDiscount(token, createModal);
  });

  // Submit form edit
  const editForm = document.getElementById("editDiscountForm");
  editForm.addEventListener("submit", function(e) {
    e.preventDefault();
    if (!this.checkValidity()) {
      this.reportValidity();
      return;
    }
    updateDiscount(token);
  });

  // Lọc theo trạng thái
  const filterSelect = document.getElementById("filter-discount");
  filterSelect.addEventListener("change", function() {
    filterDiscountByStatus(this.value);
  });
});

// Load danh sách discount
function loadDiscounts(token) {
  fetch("http://localhost:8080/tech-store/api/discounts", {
    method: "GET",
    headers: {
      "Authorization": `Bearer ${token}`,
      "Content-Type": "application/json"
    }
  })
  .then(res => res.json())
  .then(data => renderDiscountTable(data.result))
  .catch(err => console.error("Lỗi load discounts:", err));
}

// Render bảng discount
function renderDiscountTable(discounts) {
  const tbody = document.querySelector("#discount-table tbody");
  tbody.innerHTML = "";

  discounts.forEach(discount => {
    const tr = document.createElement("tr");
    tr.setAttribute("data-id", discount.discountId);

    const startDate = new Date(discount.startDate).toLocaleDateString("vi-VN");
    const endDate = new Date(discount.endDate).toLocaleDateString("vi-VN");
    const minAmount = discount.minOrderAmount.toLocaleString("vi-VN") + "đ";
    const maxAmount = discount.maxDiscountAmount.toLocaleString("vi-VN") + "đ";

    tr.innerHTML = `
      <td class="align-middle">${discount.code}</td>
      <td class="align-middle">${discount.description}</td>
      <td class="align-middle">${discount.discountPercent}%</td>
      <td class="align-middle">${minAmount}</td>
      <td class="align-middle">${maxAmount}</td>
      <td class="align-middle">${discount.quantity}</td>
      <td class="align-middle">${startDate}</td>
      <td class="align-middle">${endDate}</td>
      <td class="align-middle">${discount.isActive ? "Hoạt động" : "Không hoạt động"}</td>
      <td class="align-middle">
        ${
          discount.isActive
            ? `<button class="btn btn-sm btn-warning text-white btn-update-status"><i class="bx bxs-lock"></i></button>`
            : `<button class="btn btn-sm btn-warning text-white btn-update-status"><i class="bx bxs-lock-open"></i></button>`
        }
        <button class="btn btn-sm btn-primary text-white btn-update-discount"><i class="bi bi-pencil-square"></i></button>
        <button class="btn btn-sm btn-danger text-white btn-delete-discount"><i class="bx bx-trash"></i></button>
      </td>
    `;

    tbody.appendChild(tr);

    // Toggle trạng thái
    tr.querySelector(".btn-update-status").addEventListener("click", function() {
      toggleDiscountStatus(tr.getAttribute("data-id"), this);
    });

    // Edit discount
    tr.querySelector(".btn-update-discount").addEventListener("click", function() {
      openEditModal(discount);
    });

    // Delete discount
    tr.querySelector(".btn-delete-discount").addEventListener("click", function() {
      openDeleteModal(discount.discountId);
    });
  });

  filterDiscountByStatus(document.getElementById("filter-discount").value);
}

// Tạo mới
function createDiscount(token, modalInstance) {
  const data = {
    code: document.getElementById("code").value,
    description: document.getElementById("description").value,
    discountPercent: Number(document.getElementById("discountPercent").value),
    minOrderAmount: Number(document.getElementById("minOrderAmount").value),
    maxDiscountAmount: Number(document.getElementById("maxDiscountAmount").value),
    quantity: Number(document.getElementById("quantity").value),
    startDate: document.getElementById("startDate").value,
    endDate: document.getElementById("endDate").value,
    isActive: document.getElementById("isActive").checked
  };

  if (new Date(data.startDate) > new Date(data.endDate)) {
    alert("Ngày bắt đầu phải nhỏ hơn hoặc bằng ngày kết thúc");
    return;
  }

  fetch("http://localhost:8080/tech-store/api/discounts", {
    method: "POST",
    headers: {
      "Authorization": `Bearer ${token}`,
      "Content-Type": "application/json"
    },
    body: JSON.stringify(data)
  })
  .then(res => res.json())
  .then(response => {
    if (response.code === 1000) {
      alert("Tạo mã giảm giá thành công: " + response.result.code);
      modalInstance.hide();
      loadDiscounts(token);
      document.getElementById("createDiscountForm").reset();
    } else {
      alert("Lỗi: " + response.message);
    }
  })
  .catch(err => console.error("Lỗi create discount:", err));
}

// Mở modal sửa và điền dữ liệu
function openEditModal(discount) {
  document.getElementById("editDiscountId").value = discount.discountId;
  document.getElementById("editCode").value = discount.code;
  document.getElementById("editDescription").value = discount.description;
  document.getElementById("editDiscountPercent").value = discount.discountPercent;
  document.getElementById("editMinOrderAmount").value = discount.minOrderAmount;
  document.getElementById("editMaxDiscountAmount").value = discount.maxDiscountAmount;
  document.getElementById("editQuantity").value = discount.quantity;
  document.getElementById("editStartDate").value = discount.startDate;
  document.getElementById("editEndDate").value = discount.endDate;
  document.getElementById("editIsActive").checked = discount.isActive;

  const editModal = new bootstrap.Modal(document.getElementById("editDiscountModal"));
  editModal.show();
}

// Update discount
function updateDiscount(token) {
  const discountId = document.getElementById("editDiscountId").value;
  const data = {
    code: document.getElementById("editCode").value,
    description: document.getElementById("editDescription").value,
    discountPercent: Number(document.getElementById("editDiscountPercent").value),
    minOrderAmount: Number(document.getElementById("editMinOrderAmount").value),
    maxDiscountAmount: Number(document.getElementById("editMaxDiscountAmount").value),
    quantity: Number(document.getElementById("editQuantity").value),
    startDate: document.getElementById("editStartDate").value,
    endDate: document.getElementById("editEndDate").value,
    isActive: document.getElementById("editIsActive").checked
  };

  if (new Date(data.startDate) > new Date(data.endDate)) {
    alert("Ngày bắt đầu phải nhỏ hơn hoặc bằng ngày kết thúc");
    return;
  }

  fetch(`http://localhost:8080/tech-store/api/discounts/${discountId}`, {
    method: "PUT",
    headers: {
      "Authorization": `Bearer ${token}`,
      "Content-Type": "application/json"
    },
    body: JSON.stringify(data)
  })
  .then(res => res.json())
  .then(response => {
    if (response.code === 1000) {
      alert("Cập nhật mã giảm giá thành công");
      bootstrap.Modal.getInstance(document.getElementById("editDiscountModal")).hide();
      loadDiscounts(token);
    } else {
      alert("Cập nhật thất bại: " + response.message);
    }
  })
  .catch(err => console.error("Lỗi cập nhật discount:", err));
}

// Toggle trạng thái
function toggleDiscountStatus(discountId, btn) {
  const token = localStorage.getItem("token");
  fetch(`http://localhost:8080/tech-store/api/discounts/${discountId}/status`, {
    method: "PUT",
    headers: {
      "Authorization": `Bearer ${token}`,
      "Content-Type": "application/json"
    }
  })
  .then(res => res.json())
  .then(response => {
    if (response.code === 1000 && response.result) {
      const isActive = response.result.isActive;
      btn.innerHTML = isActive ? '<i class="bx bxs-lock"></i>' : '<i class="bx bxs-lock-open"></i>';
      btn.closest("tr").cells[8].textContent = isActive ? "Hoạt động" : "Không hoạt động";
      filterDiscountByStatus(document.getElementById("filter-discount").value);
    } else {
      alert("Cập nhật trạng thái thất bại");
    }
  })
  .catch(err => console.error("Lỗi đổi trạng thái:", err));
}

// Lọc bảng
function filterDiscountByStatus(status) {
  const rows = document.querySelectorAll("#discount-table tbody tr");
  rows.forEach(row => {
    const statusCell = row.cells[8].textContent.trim();
    row.style.display = (status === "" || (status === "true" && statusCell === "Hoạt động") || (status === "false" && statusCell === "Không hoạt động")) ? "" : "none";
  });
}

// Delete
function openDeleteModal(discountId) {
  const deleteBtn = document.getElementById("confirmDeleteBtn");
  const deleteModal = new bootstrap.Modal(document.getElementById("deleteDiscountModal"));
  deleteModal.show();

  deleteBtn.onclick = function() {
    deleteDiscount(discountId);
    deleteModal.hide();
  };
}

function deleteDiscount(discountId) {
  const token = localStorage.getItem("token");
  fetch(`http://localhost:8080/tech-store/api/discounts/${discountId}`, {
    method: "DELETE",
    headers: { "Authorization": `Bearer ${token}` }
  })
  .then(res => res.json())
  .then(response => {
    if (response.code === 1000) {
      alert("Xóa mã giảm giá thành công");
      loadDiscounts(token);
    } else {
      alert("Xóa thất bại: " + response.message);
    }
  })
  .catch(err => console.error("Lỗi xóa discount:", err));
}
