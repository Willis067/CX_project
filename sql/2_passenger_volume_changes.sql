SELECT
    year,
    passengers_carried_000,
    ROUND(
        (passengers_carried_000 - LAG(passengers_carried_000) OVER (ORDER BY year))
        / LAG(passengers_carried_000) OVER (ORDER BY year) * 100, 1
    ) AS yoy_change_pct,
    ROUND(passengers_carried_000 / 35098.0 * 100, 1) AS pct_of_2019_peak
FROM cx_operations
ORDER BY year;