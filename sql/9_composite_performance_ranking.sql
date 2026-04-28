WITH profit_ranks AS (
    SELECT 
        year, 
        net_income_hkd_m,
        RANK() OVER (ORDER BY net_income_hkd_m DESC) AS profit_rank
    FROM cx_financials
),
efficiency_ranks AS (
    SELECT 
        year,
        RANK() OVER (ORDER BY cost_per_atk_with_fuel ASC) AS efficiency_rank
    FROM cx_financials
),
capacity_ranks AS (
    SELECT
        year,
        RANK() OVER (ORDER BY ask_million DESC) AS capacity_rank
    FROM cx_operations
)
SELECT
    p.year,
    p.net_income_hkd_m,
    p.profit_rank,
    e.efficiency_rank,
    c.capacity_rank,
    ROUND((p.profit_rank + e.efficiency_rank + c.capacity_rank) / 3.0, 1)
        AS overall_score
FROM profit_ranks AS p
JOIN efficiency_ranks AS e 
    ON p.year = e.year
JOIN capacity_ranks AS c 
    ON p.year = c.year
ORDER BY overall_score;