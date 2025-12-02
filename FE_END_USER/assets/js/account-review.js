document.addEventListener("DOMContentLoaded", () => {

    // ===============================
    // GLOBAL VARIABLES
    // ===============================
    let currentReviewId = null;
    let currentRating = 0;
    let reviewIdToDelete = null;

    // Modal sửa review
    const editReviewModalEl = document.getElementById("editReviewModal");
    const editReviewModal = new bootstrap.Modal(editReviewModalEl);
    const commentInput = document.getElementById("editReviewComment");
    const stars = document.querySelectorAll("#editStarRating i");
    const productImageEl = document.getElementById("editReviewProductImage");
    const productNameEl = document.getElementById("editReviewProductName");

    // Modal xóa review
    const deleteReviewModalEl = document.getElementById("deleteReviewModal");
    const deleteReviewModal = new bootstrap.Modal(deleteReviewModalEl);
    const confirmDeleteBtn = document.getElementById("confirmDeleteReviewBtn");

    // ===============================
    // HELPER FUNCTIONS
    // ===============================
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

    function formatDateVN(date) {
        const d = new Date(date);
        return d.toLocaleString('vi-VN', { hour12: false });
    }

    // ===============================
    // STAR CLICK
    // ===============================
    stars.forEach(star => {
        star.addEventListener("click", () => {
            currentRating = parseInt(star.getAttribute("data-value"));
            updateStars(currentRating);
        });
    });

    // ===============================
    // LOAD MY REVIEWS
    // ===============================
    async function loadMyReviews() {
        const token = localStorage.getItem("token");
        if (!token) return;

        try {
            const res = await fetch("http://localhost:8080/tech-store/api/reviews/my-reviews", {
                headers: { "Authorization": `Bearer ${token}` }
            });
            const data = await res.json();
            const reviews = data.result || [];
            renderReviews(reviews);
        } catch (err) {
            console.error("Error loading reviews:", err);
        }
    }

    function renderReviews(reviews) {
        const container = document.querySelector(".reviews-grid");
        if (!reviews || reviews.length === 0) {
            container.innerHTML = `<p class="text-center mt-4">Bạn chưa có đánh giá nào.</p>`;
            return;
        }

        container.innerHTML = reviews.map(review => {
            let starsHtml = "";
            for (let i = 1; i <= 5; i++) {
                starsHtml += i <= review.rating
                    ? `<i class="bi bi-star-fill text-warning"></i>` 
                    : `<i class="bi bi-star"></i>`;
            }

            return `
            <div class="review-card mb-3" data-review-id="${review.reviewId}" data-product-id="${review.productId}" data-aos="fade-up">
                <div class="review-header d-flex align-items-center mb-2">
                    <img src="${review.productImageUrl}" alt="Product" class="product-image me-3" style="width:60px;height:60px;object-fit:cover;border-radius:5px;">
                    <div class="review-meta">
                        <h5>
                          <a href="product-details.html?productId=${review.productId}" class="text-decoration-none text-dark">
                            ${review.productName}
                          </a>
                        </h5>
                        <div class="rating">${starsHtml} <span>(${review.rating}.0)</span></div>
                        <div class="review-date">Đánh giá lúc ${formatDateVN(review.createdAt)}</div>
                    </div>
                </div>
                <div class="review-content mb-2">
                    <p>${review.comment || "<i>Không có bình luận</i>"}</p>
                </div>
                <div class="review-footer">
                    <button type="button" class="btn btn-sm btn-outline-primary btn-edit" data-review-id="${review.reviewId}">Sửa</button>
                    <button type="button" class="btn btn-sm btn-outline-danger btn-delete" data-review-id="${review.reviewId}">Xóa</button>
                </div>
            </div>
            `;
        }).join("");
    }

    // ===============================
    // CLICK REVIEW BUTTONS (Edit/Delete)
    // ===============================
    document.body.addEventListener("click", e => {
        const target = e.target;

        // --- Edit ---
        if (target.classList.contains("btn-edit")) {
            const card = target.closest(".review-card");
            currentReviewId = target.getAttribute("data-review-id");

            const imgEl = card.querySelector(".product-image");
            const nameEl = card.querySelector(".review-meta h5");
            const ratingEl = card.querySelectorAll(".rating i");
            const commentEl = card.querySelector(".review-content p");

            productImageEl.src = imgEl.src;
            productNameEl.textContent = nameEl.textContent;

            currentRating = [...ratingEl].filter(star => star.classList.contains("bi-star-fill")).length;
            updateStars(currentRating);

            commentInput.value = commentEl.textContent === "Không có bình luận" ? "" : commentEl.textContent;

            editReviewModal.show();
        }

        // --- Delete ---
        if (target.classList.contains("btn-delete")) {
            reviewIdToDelete = target.getAttribute("data-review-id");
            deleteReviewModal.show();
        }
    });

    // ===============================
    // CONFIRM DELETE
    // ===============================
    confirmDeleteBtn.addEventListener("click", async () => {
        if (!reviewIdToDelete) return;

        const token = localStorage.getItem("token");
        try {
            const res = await fetch(`http://localhost:8080/tech-store/api/reviews/${reviewIdToDelete}`, {
                method: "DELETE",
                headers: { "Authorization": `Bearer ${token}` }
            });
            const data = await res.json();
            if (data.code === 1000) {
                alert("Xóa đánh giá thành công!");
                loadMyReviews();
            } else {
                alert("Lỗi: " + data.message);
            }
        } catch (err) {
            console.error(err);
            alert("Không thể xóa đánh giá!");
        } finally {
            deleteReviewModal.hide();
            reviewIdToDelete = null;
        }
    });

    // ===============================
    // SUBMIT EDIT REVIEW
    // ===============================
    document.getElementById("submitEditReviewBtn").addEventListener("click", async () => {
        if (!currentReviewId) return;
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
            rating: currentRating,
            comment: commentInput.value.trim()
        };

        try {
            const res = await fetch(`http://localhost:8080/tech-store/api/reviews/${currentReviewId}`, {
                method: "PUT",
                headers: {
                    "Content-Type": "application/json",
                    "Authorization": `Bearer ${token}`
                },
                body: JSON.stringify(payload)
            });
            const data = await res.json();
            if (data.code === 1000) {
                alert("Cập nhật đánh giá thành công!");
                editReviewModal.hide();
                currentReviewId = null;
                loadMyReviews();
            } else {
                alert("Lỗi: " + data.message);
            }
        } catch (err) {
            console.error(err);
            alert("Không thể cập nhật đánh giá!");
        }
    });

    // ===============================
    // INIT
    // ===============================
    loadMyReviews();
});
