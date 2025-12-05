// brand-management.js

// Lấy token từ localStorage
const token = localStorage.getItem('token');

// Nếu không có token, chuyển về trang login
if (!token) {
  window.location.href = '/login.html';
}

// URL API
const apiUrl = 'http://localhost:8080/tech-store/api/brands';

// Container để hiển thị brand
const container = document.getElementById('brand-container');

// Modal và form thêm/sửa brand
const addBrandForm = document.getElementById('addBrandForm');
const addBrandModal = new bootstrap.Modal(document.getElementById('addBrandModal'));

const editBrandForm = document.getElementById('editBrandForm');
const editBrandModal = new bootstrap.Modal(document.getElementById('editBrandModal'));

const deleteBrandModal = new bootstrap.Modal(document.getElementById('deleteBrandModal'));
let brandIdToDelete = null;

// Hàm load danh sách brand
function loadBrands() {
  fetch(apiUrl, {
    method: 'GET',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    }
  })
  .then(response => response.json())
  .then(data => {
    container.innerHTML = ''; // Xóa brand cũ

    data.result.forEach(brand => {
      const card = document.createElement('div');
      card.className = 'col-lg-2';
      card.innerHTML = `
        <div class="card">
          <div class="card-body p-3 d-flex align-items-center">
            <span class="brand-name me-auto">${brand.brandName}</span>
            <span class="flex-shrink-0">
              <button class="btn btn-sm btn-primary text-white btn-update-brand" data-id="${brand.brandId}">
                <i class="bi bi-pencil-square"></i>
              </button>
              <button class="btn btn-sm btn-danger text-white btn-delete-brand" data-id="${brand.brandId}">
                <i class="bx bx-trash"></i>
              </button>
            </span>
          </div>
        </div>
      `;
      container.appendChild(card);
    });

    attachEventListeners();
  })
  .catch(error => console.error('Error fetching brands:', error));
}

// Gắn sự kiện cho nút Update/Delete
function attachEventListeners() {
  document.querySelectorAll('.btn-update-brand').forEach(btn => {
    btn.addEventListener('click', () => {
      const brandId = btn.getAttribute('data-id');
      const brandName = btn.closest('.card-body').querySelector('.brand-name').innerText;

      document.getElementById('editBrandId').value = brandId;
      document.getElementById('editBrandName').value = brandName;

      editBrandModal.show();
    });
  });

  document.querySelectorAll('.btn-delete-brand').forEach(btn => {
    btn.addEventListener('click', () => {
      brandIdToDelete = btn.getAttribute('data-id');
      deleteBrandModal.show();
    });
  });
}

// Xử lý submit form thêm brand
addBrandForm.addEventListener('submit', (event) => {
  event.preventDefault();
  const brandName = document.getElementById('brandName').value.trim();
  if (!brandName) return;

  fetch(apiUrl, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ brandName })
  })
  .then(res => res.json())
  .then(data => {
    if (data.code === 1000) {
      alert('Tạo mới thương hiệu thành công!');
      addBrandForm.reset();
      addBrandModal.hide();
      loadBrands();
    } else {
      alert('Thêm brand thất bại!');
    }
  })
  .catch(err => console.error('Error adding brand:', err));
});

// Xử lý submit form sửa brand
editBrandForm.addEventListener('submit', (event) => {
  event.preventDefault();
  const brandId = document.getElementById('editBrandId').value;
  const brandName = document.getElementById('editBrandName').value.trim();
  if (!brandName) return;

  fetch(`${apiUrl}/${brandId}`, {
    method: 'PUT', // hoặc PATCH tùy API
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ brandName })
  })
  .then(res => res.json())
  .then(data => {
    if (data.code === 1000) {
      alert('Cập nhật thương hiệu thành công!');
      editBrandModal.hide();
      loadBrands();
    } else {
      alert('Cập nhật thất bại!');
    }
  })
  .catch(err => console.error('Error updating brand:', err));
});

// Xử lý xác nhận xóa
document.getElementById('confirmDeleteBrandBtn').addEventListener('click', () => {
  if (!brandIdToDelete) return;

  fetch(`${apiUrl}/${brandIdToDelete}`, {
    method: 'DELETE',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    }
  })
  .then(res => res.json())
  .then(data => {
    if (data.code === 1000) {
      alert('Xóa thương hiệu thành công!');
      deleteBrandModal.hide();
      loadBrands();
    } else {
      alert('Xóa thất bại!');
    }
  })
  .catch(err => console.error('Error deleting brand:', err));
});

// Load brands khi trang được tải
document.addEventListener('DOMContentLoaded', loadBrands);
