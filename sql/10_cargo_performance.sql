SELECT
    f.year,
    f.revenue_hkd_m,
    f.fuel_cost_hkd_m,
    o.cargo_load_factor_pct,
    o.rftk_million,
    ROUND(o.rftk_million / o.aftk_million *100, 2) AS cargo_utilisation_pct,
    CASE 
        WHEN cargo_load_factor_pct > 70 THEN 'Cargo carrying the airline'
        WHEN cargo_load_factor_pct > 63 THEN 'Normal'
        ELSE 'Cargo soft'
    END AS cargo_status
FROM cx_financials AS f
JOIN cx_operations as o
    ON f.year = o.year
ORDER BY f.year