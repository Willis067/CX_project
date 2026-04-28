SELECT 
    year,
    ROUND(revenue_hkd_m - LAG(revenue_hkd_m) OVER (ORDER BY year), 0) 
        AS revenue_change_hkd_m,
    ROUND((revenue_hkd_m - LAG(revenue_hkd_m) OVER (ORDER BY year))
        / LAG(revenue_hkd_m) OVER (ORDER BY year) * 100, 1) AS revenue_yoy_pct,
    ROUND(net_income_hkd_m - LAG(net_income_hkd_m) OVER (ORDER BY year), 0) 
        AS profit_change_hkd_m,
    ROUND(fuel_cost_hkd_m - LAG(fuel_cost_hkd_m) OVER (ORDER BY year), 0)
        AS fuel_change_hkd_m
FROM cx_financials
ORDER BY year;