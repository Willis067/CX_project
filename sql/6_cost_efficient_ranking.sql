SELECT
    CASE
        WHEN year BETWEEN 2015 AND 2020 THEN 'Pre-COVID'
        WHEN year BETWEEN 2020 AND 2022 THEN 'COVID'
        WHEN year = 2023 THEN 'Recovery start'
        ELSE 'Recovery'
    END AS era,
    ROUND(AVG(cost_per_atk_with_fuel), 2) AS avg_cost_per_atk,
    ROUND(AVG(net_income_hkd_m), 0) AS avg_net_income,
    ROUND(AVG(fuel_cost_hkd_m / revenue_hkd_m * 100), 2) AS avg_fuel_pct
FROM cx_financials
GROUP BY era
ORDER BY MIN(year);