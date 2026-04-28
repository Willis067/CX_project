SELECT
    f.year,
    o.passenger_load_factor_pct,
    f.net_income_hkd_m,
    o.passenger_yield_hk_cents,
    RANK() OVER (ORDER BY o.passenger_load_factor_pct DESC) AS load_rank,
    RANK() OVER (ORDER BY f.net_income_hkd_m DESC)          AS profit_rank
FROM cx_financials AS f
JOIN cx_operations AS o
    ON f.year = o.year
ORDER BY f.year;
