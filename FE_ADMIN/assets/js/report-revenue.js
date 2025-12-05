document.addEventListener("DOMContentLoaded", function () {
    const token = localStorage.getItem("token");

    if (!token) {
        window.location.href = "login.html";
        return;
    }

    fetch("http://localhost:8080/tech-store/api/reports/revenue", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer " + token
        }
    })
        .then(response => {
            if (response.status === 401 || response.status === 403) {
                localStorage.removeItem("token");
                window.location.href = "login.html";
                return;
            }

            if (!response.ok) {
                throw new Error("API /reports/revenue lỗi");
            }

            return response.json();
        })
        .then(data => {
            if (!data || data.code !== 1000) return;

            const revenue = data.result; // today, month, year

            // mặc định hiển thị ngày
            updateRevenueCard("today", revenue.today);

            // bắt sự kiện lọc
            document.querySelectorAll(".revenue-filter").forEach(item => {
                item.addEventListener("click", function () {
                    const type = this.getAttribute("data-type");

                    if (type === "today") {
                        updateRevenueCard("today", revenue.today);
                    } else if (type === "month") {
                        updateRevenueCard("month", revenue.month);
                    } else if (type === "year") {
                        updateRevenueCard("year", revenue.year);
                    }
                });
            });
        })
        .catch(error => console.error("Lỗi:", error));
});


// Cập nhật UI
function updateRevenueCard(type, amount) {
    const label = document.getElementById("revenue-filter-label");
    const value = document.getElementById("revenue-value");

    const labels = {
        today: "| Ngày",
        month: "| Tháng",
        year: "| Năm"
    };

    label.innerText = labels[type];

    value.innerText = formatCurrency(amount);
}

// Format tiền
function formatCurrency(num) {
    return num.toLocaleString("vi-VN") + "đ";
}
