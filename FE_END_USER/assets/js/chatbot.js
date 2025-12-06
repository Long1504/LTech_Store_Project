document.addEventListener("DOMContentLoaded", function () {
  const toggleBtn = document.getElementById("chatbotToggle");
  const chatbotWindow = document.getElementById("chatbotWindow");
  const chatMessages = document.getElementById("chatMessages");
  const chatInput = document.getElementById("chatInput");
  const sendBtn = document.getElementById("sendMsg");
  const chatbotClose = document.getElementById("chatbotClose");

  const CHAT_API = "http://localhost:8080/tech-store/api/chats";
  const HISTORY_API = "http://localhost:8080/tech-store/api/chats/history";

  const token = localStorage.getItem("token");

  // Tạo header
  function getHeaders() {
    return token
      ? { "Content-Type": "application/json", "Authorization": `Bearer ${token}` }
      : { "Content-Type": "application/json" };
  }

  // Hiển thị tin nhắn
  function appendMessage(type, content) {
    const msgDiv = document.createElement("div");
    msgDiv.className = type === "USER" ? "chat-message user" : "chat-message bot";
    msgDiv.innerHTML = content.replace(/\n/g, "<br>");
    chatMessages.appendChild(msgDiv);
    chatMessages.scrollTop = chatMessages.scrollHeight;
  }

  // Load lịch sử chat khi mở cửa sổ
  async function loadHistory() {
    try {
      const res = await fetch(HISTORY_API, { headers: getHeaders() });
      if (!res.ok) throw new Error("Không thể tải lịch sử chat");
      const data = await res.json();
      if (data.code === 1000 && Array.isArray(data.result)) {
        chatMessages.innerHTML = ""; // xóa tin nhắn cũ
        data.result.forEach(item => appendMessage(item.type, item.content));
      }
    } catch (err) {
      console.error(err);
      chatMessages.innerHTML = `<div class="text-muted text-center small">Không thể tải lịch sử chat</div>`;
    }
  }

  // Gửi tin nhắn
  async function sendMessage() {
    const msg = chatInput.value.trim();
    if (!msg) return;

    appendMessage("USER", msg);
    chatInput.value = "";

    try {
      const res = await fetch(CHAT_API, {
        method: "POST",
        headers: getHeaders(),
        body: JSON.stringify({ message: msg })
      });

      if (!res.ok) throw new Error("Lỗi server");
      const data = await res.json();
      if (data.code === 1000) {
        appendMessage("ASSISTANT", data.result);
      } else {
        appendMessage("ASSISTANT", "Chatbot gặp lỗi. Hãy thử lại sau.");
      }
    } catch (err) {
      console.error(err);
      appendMessage("ASSISTANT", "Không thể kết nối tới server.");
    }
  }

  // Mở/đóng chatbot
  toggleBtn.addEventListener("click", () => {
    const isShown = chatbotWindow.classList.toggle("show");
    if (isShown) loadHistory();
  });

  // Đóng cửa sổ chatbot
  chatbotClose.addEventListener("click", () => {
    chatbotWindow.classList.remove("show");
  });

  // Gửi tin nhắn khi click nút
  sendBtn.addEventListener("click", sendMessage);

  // Gửi tin nhắn khi nhấn Enter
  chatInput.addEventListener("keypress", (e) => {
    if (e.key === "Enter") sendMessage();
  });
});
