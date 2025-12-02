document.addEventListener("DOMContentLoaded", () => {
  const urlParams = new URLSearchParams(window.location.search);
  const productId = urlParams.get("productId");

  // Elements
  const ratingGroupEl = document.querySelector(".rating-group");
  const avgScoreEl = document.querySelector(".reviews-content .score-display");
  const totalReviewsEl = document.querySelector(".reviews-content .total-reviews");
  const ratingDistributionRows = document.querySelectorAll(".rating-distribution .rating-row");
  const reviewsListEl = document.querySelector(".customer-reviews-list");

  async function loadReviews() {
    try {
      const res = await fetch(`http://localhost:8080/tech-store/api/products/${productId}`);
      const data = await res.json();

      if (data.code !== 1000) {
        console.error("API trả về lỗi:", data.message);
        return;
      }

      const product = data.result;
      const reviews = product.reviews || [];

      renderRatingSummary(reviews);
      renderRatingDistribution(reviews);
      renderReviewsList(reviews);
      updateReviewTabCount(reviews.length);

    } catch (err) {
      console.error("Lỗi khi load review:", err);
    }
  }

  // ================== Rating trung bình + tổng số review ==================
  function renderRatingSummary(reviews) {
    const total = reviews.length;
    if (total === 0) {
      ratingGroupEl.innerHTML = `
        <div class="stars">
          <i class="bi bi-star-fill me-1"></i>
          <span>0.0</span>
        </div>
        <span class="review-text">(0 đánh giá)</span>
      `;
      if (avgScoreEl) avgScoreEl.textContent = "0.0";
      if (totalReviewsEl) totalReviewsEl.textContent = "(0 khách hàng đánh giá)";
      return;
    }

    const totalRating = reviews.reduce((sum, r) => sum + r.rating, 0);
    const avgRating = (totalRating / total).toFixed(1);

    // Top rating group
    ratingGroupEl.innerHTML = `
      <div class="stars">
        <i class="bi bi-star-fill me-1"></i>
        <span>${avgRating}</span>
      </div>
      <span class="review-text">(${total} đánh giá)</span>
    `;

    // Tab review header
    if (avgScoreEl) avgScoreEl.textContent = avgRating;
    if (totalReviewsEl) totalReviewsEl.textContent = `(${total} khách hàng đánh giá)`;
  }

  // ================== Phân phối đánh giá ==================
  function renderRatingDistribution(reviews) {
    const counts = [0, 0, 0, 0, 0]; // index 0 = 1★, index 4 = 5★
    reviews.forEach(r => {
      if (r.rating >= 1 && r.rating <= 5) counts[r.rating - 1]++;
    });

    const total = reviews.length;
    ratingDistributionRows.forEach((row, i) => {
      const percent = total ? ((counts[4 - i] / total) * 100).toFixed(0) : 0;
      const fill = row.querySelector(".progress-fill");
      const countLabel = row.querySelector(".count-label");
      if (fill) fill.style.width = percent + "%";
      if (countLabel) countLabel.textContent = counts[4 - i];
    });
  }

  // ================== Render danh sách review ==================
  function renderReviewsList(reviews) {
    if (!reviewsListEl) return;

    if (reviews.length === 0) {
      reviewsListEl.innerHTML = `<p class="text-center mt-3">Chưa có đánh giá nào.</p>`;
      return;
    }

    reviewsListEl.innerHTML = reviews.map(r => {
      // Chỉ hiển thị đúng số sao đánh giá
      let starsHtml = "";
      for (let i = 0; i < r.rating; i++) {
        starsHtml += `<i class="bi bi-star-fill text-warning"></i>`;
      }

      const date = new Date(r.createdAt).toLocaleString("vi-VN", { hour12: false });

      return `
        <div class="review-card mb-3" data-review-id="${r.reviewId}">
          <div class="reviewer-profile d-flex mb-2">
            <img src="assets/img/person/avt-profile.jpg" alt="Customer" class="profile-pic">
            <div>
              <div class="customer-name fw-bold">${r.userFullName}</div>
              <div class="review-meta">
                <div class="review-stars mb-1">${starsHtml}</div>
                <div class="review-date text-muted">${date}</div>
              </div>
            </div>
          </div>
          <div class="review-text">
            <p class="mb-0">${r.comment || "<i>Không có bình luận</i>"}</p>
          </div>
        </div>
      `;
    }).join("");
  }

  // ================== Cập nhật số lượng review trên tab ==================
  function updateReviewTabCount(totalReviews) {
    const reviewTabBtn = document.querySelector('[data-bs-target="#ecommerce-product-details-5-customer-reviews"]');
    if (reviewTabBtn) {
      reviewTabBtn.textContent = `Đánh giá (${totalReviews})`;
    }
  }

  // ================== INIT ==================
  loadReviews();
});
