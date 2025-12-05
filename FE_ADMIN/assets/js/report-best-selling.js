document.addEventListener("DOMContentLoaded", () => {
    const tableBody = document.querySelector("#best-selling-table tbody");
    const titleSpan = document.querySelector("#best-selling-filter-label");
    const filterItems = document.querySelectorAll(".best-selling-filter");

    // =============================
    // Gọi API
    // =============================
    async function fetchBestSelling(period) {
        const token = localStorage.getItem("token");
        const url = `http://localhost:8080/tech-store/api/reports/best-selling/${period}`;

        const response = await fetch(url, {
            headers: {
                "Authorization": "Bearer " + token
            }
        });

        if (!response.ok) {
            console.error("API error:", response.status);
            return [];
        }

        const json = await response.json();
        return json.result || [];
    }

    // =============================
    // Render bảng
    // =============================
    function renderTable(products) {
        tableBody.innerHTML = "";

        if (!products.length) {
            tableBody.innerHTML = `<tr><td colspan="7" class="text-center">Không có dữ liệu</td></tr>`;
            return;
        }

        products.forEach(p => {
            const row = document.createElement("tr");

            row.innerHTML = `
                <td><img src="${p.imageUrl}" alt="${p.productName}" style="width:50px;height:50px;object-fit:cover;"></td>
                <td class="fw-semibold">${p.productName}</td>
                <td>${p.color}</td>
                <td>${p.originalPrice.toLocaleString('vi-VN')}đ</td>
                <td>${p.promotionalPrice.toLocaleString('vi-VN')}đ</td>
                <td class="fw-semibold">${p.soldQuantity}</td>
                <td>${p.revenue.toLocaleString('vi-VN')}đ</td>
            `;

            tableBody.appendChild(row);
        });
    }

    // =============================
    // Load dữ liệu
    // =============================
    async function loadBestSelling(period, label) {
        titleSpan.innerHTML = `| ${label}`;
        const products = await fetchBestSelling(period);
        renderTable(products);
    }

    // =============================
    // Load lần đầu (ngày)
    // =============================
    loadBestSelling("daily", "Ngày");

    // =============================
    // Bắt sự kiện click filter
    // =============================
    filterItems.forEach(item => {
        item.addEventListener("click", e => {
            e.preventDefault();
            const period = item.getAttribute("data-type");
            const label = item.textContent.trim();
            loadBestSelling(period, label);
        });
    });
});
