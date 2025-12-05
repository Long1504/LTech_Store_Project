document.addEventListener("DOMContentLoaded", () => {
    const chartElement = document.querySelector("#customerOrderChart");
    const titleSpan = document.querySelector("#customer-order-filter-label");
    const filterItems = document.querySelectorAll(".customer-order-filter");

    let chartInstance = null;

    async function fetchReport(type) {
        const token = localStorage.getItem("token");
        const url = `http://localhost:8080/tech-store/api/reports/customer-order/${type}`;

        const response = await fetch(url, {
            headers: {
                "Authorization": "Bearer " + token
            }
        });

        if (!response.ok) {
            console.error("API error:", response.status);
            return null;
        }

        const json = await response.json();
        return json.result;
    }

    function renderChart(data, type) {
        if (chartInstance) chartInstance.destroy();

        const options = {
            series: [
                { name: 'Khách hàng mới', data: data.customers },
                { name: 'Số đơn đặt', data: data.orders }
            ],
            chart: {
                height: 350,
                type: 'area',
                toolbar: { show: false }
            },
            markers: { size: 4 },
            colors: ['#ff771d', '#4154f1'],
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    opacityFrom: 0.3,
                    opacityTo: 0.4,
                    stops: [0, 90, 100]
                }
            },
            dataLabels: { enabled: false },
            stroke: {
                curve: 'smooth',
                width: 2
            },
            xaxis: {
                categories: data.labels,
                type: type === 'daily' ? "datetime" : "category"
            },
            tooltip: {
                x: { format: type === 'daily' ? 'dd/MM/yyyy' : undefined }
            }
        };

        chartInstance = new ApexCharts(chartElement, options);
        chartInstance.render();
    }

    async function loadReport(type, label) {
        titleSpan.innerHTML = `| ${label}`;
        const result = await fetchReport(type);
        if (result) renderChart(result, type);
    }

    loadReport("daily", "Ngày");

    filterItems.forEach(item => {
        item.addEventListener("click", () => {
            const type = item.dataset.type;
            const label = item.textContent.trim();

            loadReport(type, label);
        });
    });
});
