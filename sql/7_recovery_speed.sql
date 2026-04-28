WITH base_2019 AS (
    SELECT
        f.revenue_hkd_m AS rev_2019,
        o.passengers_carried_000 AS pax_2019,
        o.ask_million AS ask_2019
    FROM cx_financials AS f
    JOIN cx_operations AS o
        ON f.year = o.year
    WHERE f.year = 2019
)
SELECT
    f.year,
    ROUND(f.revenue_hkd_m / b.rev_2019 * 100, 2) AS revenue_vs_2019_pct,
    ROUND(o.passengers_carried_000 / b.pax_2019 * 100, 2) AS pax_vs_2019_pct,
    ROUND(o.ask_million / b.ask_2019 * 100, 2) AS capacity_vs_2019_pct
FROM cx_financials AS f
JOIN cx_operations AS o
    ON f.year = o.year
CROSS JOIN base_2019 AS b
WHERE f.year >= 2020
ORDER BY f.year;