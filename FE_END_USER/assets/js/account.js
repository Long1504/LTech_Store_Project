document.addEventListener("DOMContentLoaded", async function () {
  const token = localStorage.getItem("token");
  if (!token) {
    window.location.href = "login.html";
    return;
  }

  // ================== LOAD THÔNG TIN NGƯỜI DÙNG ==================
  async function loadUserInfo() {
    try {
      const response = await fetch("http://localhost:8080/tech-store/api/users/myInfo", {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      });

      const result = await response.json();

      if (result.code === 1000) {
        const user = result.result;

        document.getElementById("fullname").textContent = `${user.lastname} ${user.firstname}`;
        document.getElementById("lastname").value = user.lastname;
        document.getElementById("firstname").value = user.firstname;
        document.getElementById("dob").value = user.dateOfBirth;

        const genderSelect = document.getElementById("gender");
        genderSelect.value = user.gender;

        document.getElementById("email").value = user.email;
        document.getElementById("phoneNumber").value = user.phoneNumber;
      } else {
        console.error(result.message);
        window.location.href = "login.html";
      }
    } catch (error) {
      console.error("Lỗi khi tải thông tin người dùng:", error);
      window.location.href = "login.html";
    }
  }

  await loadUserInfo();

  // ================== HÀM LOAD DANH SÁCH ĐỊA CHỈ ==================
  async function loadAddresses() {
    try {
      const response = await fetch("http://localhost:8080/tech-store/api/addresses", {
        method: "GET",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
      });

      const data = await response.json();
      if (data.code !== 1000) throw new Error(data.message);

      const addressesGrid = document.querySelector(".addresses-grid");
      addressesGrid.innerHTML = "";

      const addresses = data.result.sort((a, b) => b.isDefault - a.isDefault);

      addresses.forEach((addr) => {
        const card = document.createElement("div");
        card.className = `address-card ${addr.isDefault ? "default" : ""}`;
        card.dataset.aos = "fade-up";

        const addressTypeMap = {
          HOME: "Nhà",
          OFFICE: "Văn phòng",
          STORE: "Cửa hàng",
          OTHER: "Khác",
        };

        card.innerHTML = `
          <div class="card-header">
            <h4 class="address-type">${addressTypeMap[addr.addressType] || "Khác"}</h4>
            ${addr.isDefault ? `<span class="default-badge">Mặc định</span>` : ""}
          </div>
          <div class="card-body">
            <p class="address-text">Tỉnh/Thành phố: ${addr.city}<br>Quận/Huyện: ${addr.district}<br>Phường/Xã: ${addr.ward}<br>Chi tiết: ${addr.detailAddress || ""}</p>
            <div class="contact-info">
              <div><i class="bi bi-person"></i> ${addr.recipientName}</div>
              <div><i class="bi bi-telephone"></i> ${addr.recipientPhone}</div>
            </div>
          </div>
          <div class="card-actions d-flex gap-2">
            <button type="button" class="btn-edit"><i class="bi bi-pencil"></i> Sửa</button>
            <button type="button" class="btn-remove"><i class="bi bi-trash"></i> Xóa</button>
            ${!addr.isDefault ? `<button type="button" class="btn-make-default ms-auto">Đặt làm mặc định</button>` : ""}
          </div>
        `;

        addressesGrid.appendChild(card);

        // ================== ĐẶT MẶC ĐỊNH ==================
        const btnMakeDefault = card.querySelector(".btn-make-default");
        if (btnMakeDefault) {
          btnMakeDefault.addEventListener("click", async () => {
            try {
              const res = await fetch(`http://localhost:8080/tech-store/api/addresses/${addr.addressId}/default`, {
                method: "PUT",
                headers: {
                  Authorization: `Bearer ${token}`,
                  "Content-Type": "application/json",
                },
              });
              const result = await res.json();
              if (result.code === 1000) {
                loadAddresses();
              } else {
                alert(result.message || "Đặt mặc định thất bại!");
              }
            } catch (error) {
              console.error("Lỗi khi đặt địa chỉ mặc định:", error);
            }
          });
        }

        // ================== XÓA ĐỊA CHỈ ==================
        const btnRemove = card.querySelector(".btn-remove");
        btnRemove.addEventListener("click", async () => {
          if (!confirm("Bạn có chắc chắn muốn xóa địa chỉ này?")) return;

          try {
            const res = await fetch(`http://localhost:8080/tech-store/api/addresses/${addr.addressId}`, {
              method: "DELETE",
              headers: {
                Authorization: `Bearer ${token}`,
                "Content-Type": "application/json",
              },
            });
            const result = await res.json();
            if (result.code === 1000) {
              loadAddresses();
            } else {
              alert(result.message || "Xóa thất bại!");
            }
          } catch (error) {
            console.error("Lỗi khi xóa địa chỉ:", error);
          }
        });

        // ================== SỬA ĐỊA CHỈ ==================
        const btnEdit = card.querySelector(".btn-edit");
        btnEdit.addEventListener("click", () => {
          // Điền dữ liệu vào modal
          document.getElementById("editAddressId").value = addr.addressId;
          document.getElementById("editAddressType").value = addr.addressType;
          document.getElementById("editRecipientName").value = addr.recipientName;
          document.getElementById("editRecipientPhone").value = addr.recipientPhone;
          document.getElementById("editCity").value = addr.city;
          document.getElementById("editDistrict").value = addr.district;
          document.getElementById("editWard").value = addr.ward;
          document.getElementById("editDetailAddress").value = addr.detailAddress || "";

          const editModal = new bootstrap.Modal(document.getElementById("editAddressModal"));
          editModal.show();
        });
      });
    } catch (error) {
      console.error("Lỗi khi tải danh sách địa chỉ:", error);
    }
  }

  // Gọi load khi vào trang
  loadAddresses();

  // ================== THÊM ĐỊA CHỈ ==================
  document.getElementById("btnAddAddress").addEventListener("click", async function () {
    const payload = {
      addressType: document.getElementById("addressType").value,
      recipientName: document.getElementById("recipientName").value.trim(),
      recipientPhone: document.getElementById("recipientPhone").value.trim(),
      city: document.getElementById("city").value.trim(),
      district: document.getElementById("district").value.trim(),
      ward: document.getElementById("ward").value.trim(),
      detailAddress: document.getElementById("detailAddress").value.trim(),
    };

    try {
      const response = await fetch("http://localhost:8080/tech-store/api/addresses", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify(payload),
      });

      const result = await response.json();
      if (result.code === 1000) {
        alert("Thêm địa chỉ thành công!");
        const modal = bootstrap.Modal.getInstance(document.getElementById("addAddressModal"));
        modal.hide();
        document.getElementById("addAddressForm").reset();
        loadAddresses();
      } else {
        alert(result.message || "Đã xảy ra lỗi!");
      }
    } catch (error) {
      console.error("Lỗi khi thêm địa chỉ:", error);
      alert("Không thể kết nối server!");
    }
  });

  // ================== CẬP NHẬT ĐỊA CHỈ ==================
  document.getElementById("editAddressForm").addEventListener("submit", async (e) => {
    e.preventDefault();

    const payload = {
      addressType: document.getElementById("editAddressType").value,
      recipientName: document.getElementById("editRecipientName").value.trim(),
      recipientPhone: document.getElementById("editRecipientPhone").value.trim(),
      city: document.getElementById("editCity").value.trim(),
      district: document.getElementById("editDistrict").value.trim(),
      ward: document.getElementById("editWard").value.trim(),
      detailAddress: document.getElementById("editDetailAddress").value.trim(),
    };

    const addressId = document.getElementById("editAddressId").value;

    try {
      const res = await fetch(`http://localhost:8080/tech-store/api/addresses/${addressId}`, {
        method: "PUT",
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify(payload),
      });

      const result = await res.json();
      if (result.code === 1000) {
        alert("Cập nhật địa chỉ thành công!");
        const modal = bootstrap.Modal.getInstance(document.getElementById("editAddressModal"));
        modal.hide();
        loadAddresses();
      } else {
        alert(result.message || "Cập nhật thất bại!");
      }
    } catch (error) {
      console.error("Lỗi khi cập nhật địa chỉ:", error);
    }
  });
});
