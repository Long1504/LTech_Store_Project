const token = localStorage.getItem("token");

if (!token) {
  window.location.href = "login.html";
}

let customerTable = null;
const tbody = document.querySelector("#customers-table tbody");

function formatDate(dateStr) {
  return new Date(dateStr).toLocaleDateString("vi-VN");
}

function loadCustomers() {
  fetch("http://localhost:8080/tech-store/api/users/customers", {
    headers: { Authorization: "Bearer " + token },
  })
    .then((res) => res.json())
    .then((data) => {
      const customers = data.result;
      tbody.innerHTML = "";

      customers.forEach((user) => {
        const gender =
          user.gender === "MALE"
            ? "Nam"
            : user.gender === "FEMALE"
            ? "Nữ"
            : "Khác";
        const status = user.userStatus === "ACTIVE" ? "Hoạt động" : "Khóa";

        const tr = document.createElement("tr");
        tr.dataset.userId = user.userId;
        tr.innerHTML = `
              <td class="align-middle">${user.username}</td>
              <td class="align-middle">${user.firstname}</td>
              <td class="align-middle">${user.lastname}</td>
              <td class="align-middle">${gender}</td>
              <td class="align-middle">${formatDate(user.dateOfBirth)}</td>
              <td class="align-middle">${user.email}</td>
              <td class="align-middle">${user.phoneNumber}</td>
              <td class="status align-middle">${status}</td>
              <td class="align-middle">
                <button class="btn btn-sm btn-warning text-white toggle-status">
                  <i class="bx ${
                    user.userStatus === "ACTIVE" ? "bxs-lock" : "bxs-lock-open"
                  }"></i>
                </button>
              </td>
            `;
        tbody.appendChild(tr);
      });

      if (customerTable === null) {
        customerTable = new simpleDatatables.DataTable("#customers-table");
      } else {
        customerTable.refresh();
      }

      attachToggleEvents();
    })
    .catch((err) => console.error("Error loading customers:", err));
}

// Gắn sự kiện toggle lock/unlock
function attachToggleEvents() {
  document.querySelectorAll(".toggle-status").forEach((button) => {
    button.addEventListener("click", function () {
      const tr = this.closest("tr");
      const userId = tr.dataset.userId;

      fetch(
        `http://localhost:8080/tech-store/api/users/customers/${userId}/status`,
        {
          method: "PUT",
          headers: {
            Authorization: "Bearer " + token,
            "Content-Type": "application/json",
          },
        }
      )
        .then((res) => res.json())
        .then((result) => {
          const user = result.result;

          tr.querySelector(".status").textContent =
            user.userStatus === "ACTIVE" ? "Hoạt động" : "Khóa";

          const icon = tr.querySelector("i.bx");
          icon.className =
            "bx " +
            (user.userStatus === "ACTIVE" ? "bxs-lock" : "bxs-lock-open");
        })
        .catch((err) => console.error("Update status error:", err));
    });
  });
}

document.addEventListener("DOMContentLoaded", loadCustomers);
