SELECT
    f.year,
    f.revenue_hkd_m,
    f.cost_of_revenue_hkd_m,
    f.gross_profit_hkd_m,
    f.operating_income_hkd_m,
    f.net_income_hkd_m,
    f.fuel_cost_hkd_m,
    f.staff_cost_hkd_m,
    f.cost_per_atk_with_fuel,
    f.cost_per_atk_without_fuel,
    o.passengers_carried_000,
    o.ask_million,
    o.rpk_million,
    o.passenger_load_factor_pct,
    o.cargo_load_factor_pct,
    o.rftk_million,
    o.aftk_million,
    o.fleet_size,
    o.destinations,
    o.on_time_performance_pct,
    o.passenger_yield_hk_cents,
    ROUND(f.net_income_hkd_m / f.revenue_hkd_m * 100, 1) AS net_margin_pct,
    ROUND(f.fuel_cost_hkd_m  / f.revenue_hkd_m * 100, 1) AS fuel_pct_of_revenue,
    ROUND(f.staff_cost_hkd_m / f.revenue_hkd_m * 100, 1) AS staff_pct_of_revenue,
    ROUND(o.passengers_carried_000 / 35098.0   * 100, 1) AS pax_pct_of_2019,
    CASE
        WHEN f.year BETWEEN 2015 AND 2019 THEN 'Pre-COVID'
        WHEN f.year BETWEEN 2020 AND 2021 THEN 'COVID'
        WHEN f.year = 2022 THEN 'Recovery Start'
        ELSE 'Recovery'
    END AS era
FROM
    cx_financials AS f
Join
    cx_operations AS o
    ON f.year = o.year
ORDER BY 
    f.year;