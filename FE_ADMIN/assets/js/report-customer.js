document.addEventListener("DOMContentLoaded", function () {

    loadCustomerStats("day"); // mặc định filter theo ngày

    document.querySelectorAll(".filter-customer").forEach(item => {
        item.addEventListener("click", function () {
            const type = this.dataset.type;
            loadCustomerStats(type);

            document.getElementById("customer-filter-label").innerText =
                "| " + (type === "day" ? "Ngày" : type === "month" ? "Tháng" : "Năm");
        });
    });

});


function loadCustomerStats(type) {
    const token = localStorage.getItem("token");

    fetch("http://localhost:8080/tech-store/api/reports/customer", {
        headers: {
            "Authorization": "Bearer " + token
        }
    })
        .then(res => {
            if (res.status === 401 || res.status === 403) {
                localStorage.removeItem("token");
                window.location.href = "login.html";
                return;
            }
            return res.json();
        })
        .then(data => {
            if (!data || data.code !== 1000) return;

            const result = data.result;
            let value = 0;

            if (type === "day") value = result.today;
            else if (type === "month") value = result.month;
            else value = result.year;

            document.getElementById("customer-count").innerText = value;
        })
        .catch(err => console.error(err));
}
