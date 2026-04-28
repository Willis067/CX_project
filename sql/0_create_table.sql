CREATE TABLE cx_financials (
    year INT PRIMARY KEY,
    revenue_hkd_m NUMERIC,
    cost_of_revenue_hkd_m NUMERIC,
    gross_profit_hkd_m NUMERIC,
    operating_income_hkd_m NUMERIC,
    net_income_hkd_m NUMERIC,
    fuel_cost_hkd_m NUMERIC,
    staff_cost_hkd_m NUMERIC,
    depreciation_hkd_m NUMERIC,
    total_atk_m NUMERIC,
    cost_per_atk_with_fuel NUMERIC,
    cost_per_atk_without_fuel NUMERIC
);

CREATE TABLE cx_operations (
    year INT PRIMARY KEY,
    passengers_carried_000 NUMERIC,
    ask_million NUMERIC,
    rpk_million NUMERIC,
    passenger_load_factor_pct NUMERIC,
    cargo_load_factor_pct NUMERIC,
    aftk_million NUMERIC,
    rftk_million NUMERIC,
    fleet_size INT,
    destinations INT,
    on_time_performance_pct NUMERIC,
    revenue_per_ask_hk_cents NUMERIC,
    passenger_yield_hk_cents NUMERIC
);

SELECT *
FROM cx_financials;


SELECT *
FROM cx_operations;

