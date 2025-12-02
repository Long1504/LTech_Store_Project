document.addEventListener("DOMContentLoaded", () => {

    let currentProductId = null;
    let currentRating = 0;

    const reviewModalEl = document.getElementById("reviewModal");
    const reviewModal = new bootstrap.Modal(reviewModalEl);
    const commentInput = document.getElementById("reviewComment");
    const stars = document.querySelectorAll("#starRating i");

    const productImageEl = document.getElementById("reviewProductImage");
    const productNameEl = document.getElementById("reviewProductName");

    // Cập nhật sao
    function updateStars(rating) {
        stars.forEach(star => {
            const value = parseInt(star.getAttribute("data-value"));
            star.className = value <= rating
                ? "bi bi-star-fill text-warning"
                : "bi bi-star";
        });
    }

    function resetStars() {
        stars.forEach(star => star.className = "bi bi-star");
    }

    // Chọn sao
    stars.forEach(star => {
        star.addEventListener("click", () => {
            currentRating = parseInt(star.getAttribute("data-value"));
            updateStars(currentRating);
        });
    });

    // Gắn sự kiện nút đánh giá (dynamic)
    document.body.addEventListener("click", e => {
        if (e.target.classList.contains("btn-review")) {

            const itemEl = e.target.closest(".item");
            currentProductId = e.target.getAttribute("data-product-id") 
                               || itemEl.getAttribute("data-product-id");

            if (!currentProductId) {
                console.error("Không tìm thấy productId!");
                return;
            }

            // Lấy thông tin ảnh và tên sản phẩm
            const imgEl = itemEl.querySelector("img");
            const nameEl = itemEl.querySelector("h6");

            productImageEl.src = imgEl ? imgEl.src : "";
            productNameEl.textContent = nameEl ? nameEl.textContent : "Sản phẩm";

            resetStars();
            commentInput.value = "";
            currentRating = 0;

            reviewModal.show();
        }
    });

    // Gửi API đánh giá
    document.getElementById("submitReviewBtn").addEventListener("click", async () => {

        if (currentRating === 0) {
            alert("Vui lòng chọn số sao!");
            return;
        }

        const token = localStorage.getItem("token");
        if (!token) {
            alert("Bạn cần đăng nhập để đánh giá");
            return;
        }

        const payload = {
            productId: currentProductId,
            rating: currentRating,
            comment: commentInput.value.trim()
        };

        try {
            const res = await fetch("http://localhost:8080/tech-store/api/reviews", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "Authorization": `Bearer ${token}`
                },
                body: JSON.stringify(payload)
            });

            const data = await res.json();
            console.log("Review response:", data);

            if (data.code === 1000) {
                alert("Đánh giá thành công!");
                reviewModal.hide();
            } else {
                alert("Lỗi: " + data.message);
            }

        } catch (error) {
            console.error("Lỗi đánh giá:", error);
            alert("Không thể gửi đánh giá!");
        }
    });

});
