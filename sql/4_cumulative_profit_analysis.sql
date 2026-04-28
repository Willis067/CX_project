SELECT
    year,
    net_income_hkd_m,
    SUM(net_income_hkd_m) OVER (ORDER BY year) AS cumulative_profit_hkd_m,
    CASE
        WHEN SUM(net_income_hkd_m) OVER (ORDER BY year) < 0
        THEN 'Loss'
        ELSE 'Profit'
    END AS cumulative_status
FROM cx_financials
ORDER BY year;