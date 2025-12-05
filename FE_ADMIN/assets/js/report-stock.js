document.addEventListener("DOMContentLoaded", async () => {
    const token = localStorage.getItem("token");
    if (!token) return (window.location.href = "login.html");

    const stockEl = document.getElementById("total-stock");
    if (!stockEl) return;

    try {
        const res = await fetch("http://localhost:8080/tech-store/api/reports/stock", {
            headers: { "Authorization": `Bearer ${token}` }
        });

        if (res.status === 401 || res.status === 403) {
            localStorage.removeItem("token");
            return (window.location.href = "login.html");
        }

        const data = await res.json();
        if (data.code === 1000) stockEl.textContent = data.result;

    } catch (err) {
        console.error("Lỗi:", err);
    }
});
