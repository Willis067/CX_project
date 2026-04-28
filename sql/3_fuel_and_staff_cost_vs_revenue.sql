SELECT
    year,
    revenue_hkd_m
    fuel_cost_hkd_m,
    ROUND((fuel_cost_hkd_m / revenue_hkd_m) * 100, 2) AS fuel_pct_of_revenue,
    staff_cost_hkd_m,
    ROUND((staff_cost_hkd_m / revenue_hkd_m) * 100, 2) AS staff_pct_of_revenue
FROM cx_financials
ORDER BY year;