SELECT
    year,
    revenue_hkd_m,
    net_income_hkd_m,
    ROUND(net_income_hkd_m / revenue_hkd_m * 100, 1) AS net_margin_pct,
    CASE
        WHEN year BETWEEN 2015 AND 2020 THEN 'Pre-COVID'
        WHEN year BETWEEN 2020 AND 2022 THEN 'COVID'
        WHEN year = 2023 THEN 'Recovery start'
        ELSE 'Recovery'
    END AS period
FROM cx_financials
ORDER BY year;