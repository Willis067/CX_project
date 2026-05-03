# Cathay Pacific Airways — Data Analytics Project

![Dashboard Preview](dashboard/cx_dashboard.png)

## Overview

I built this project to practise end-to-end data analytics on a real-world subject I care about — Cathay Pacific, Hong Kong's flag carrier. Rather than using a pre-cleaned classroom dataset, I compiled the data manually from official annual results announcements, designed the database schema, and wrote all SQL queries and visualisations.

The project tells a compelling business story: how one of the world's great airlines navigated a near-total shutdown during COVID-19, survived on cargo revenue alone, and rebuilt itself into a leaner, more profitable operation by 2025 — while still not fully recovering its pre-pandemic passenger volumes.

**What this project demonstrates:**
- Translating raw financial reports into a structured relational database
- Writing SQL to extract meaningful business insights
- Communicating findings clearly through interactive visual dashboards
- Telling a data story with real-world context

---
 
## 📌 Project Summary
 
| | |
|---|---|
| **Subject** | Cathay Pacific Airways (0293.HK) |
| **Period** | 2015 – 2025 (11 years) |
| **Data** | Financial + operational metrics from official annual reports |
| **Tools** | PostgreSQL 18, SQL, Tableau Public |
| **Goal** | Demonstrate end-to-end analytics: database → SQL → dashboard |
 
---

## 🔍 Key Findings

- **Revenue collapsed 56%** in 2020 — the largest single-year drop in the airline's history (HK$107B → HK$47B)
- **Passenger volume hit 2% of 2019 levels** in 2021 — just 717,000 passengers for the entire year, roughly one week of normal operations
- **Cargo saved the airline during COVID** — cargo load factor peaked at 75.8% in 2021 while passenger operations were near-zero, providing critical revenue when passenger flying was impossible
- **Cathay only turned cumulatively profitable again in 2025** — three consecutive strong recovery years (2023–2025) were needed to offset the HK$25B+ in cumulative COVID losses
- **2018 was Cathay's best overall year** — highest composite score across profitability, cost efficiency, and capacity metrics
- **Post-COVID Cathay is leaner** — cost per ATK dropped to 3.34 in recovery vs 3.80 pre-COVID, reflecting structural improvements from the pandemic restructuring
- **Revenue recovered faster than passengers** — by 2023, revenue was at 88% of 2019 levels while passengers were only at 51%, reflecting a deliberate premium pricing strategy


---
 
## Project Structure
 
```
CX_project/
├── README.md
├── data/
│   ├── cx_financials.csv        # Financial data (2015–2025)
│   └── cx_operations.csv        # Operational data (2015–2025)
|   └── cx_tableau.csv           # Data for Tableau
├── sql/
│   ├── 0_create_table.sql
│   ├── 1_full_revenue_story.sql
│   ├── 2_passenger_volume_changes.sql
│   ├── 3_fuel_and_staff_cost_vs_revenue.sql
│   ├── 4_cumulative_profit_analysis.sql
│   ├── 5_load_factor_vs_profitability.sql
│   ├── 6_cost_efficiency_ranking.sql
│   ├── 7_recovery_speed.sql
│   ├── 8_year_on_year_changes.sql
│   ├── 9_composite_performance_ranking.sql
│   ├── 10_cargo_performance.sql
│   └── 11_export_for_tableau.sql
└── dashboard/
    └── cx_dashboard.png
```
 
---
## Database Schema
 
Two tables joined on `year`:
 
### `cx_financials`
| Column | Description |
|---|---|
| `year` | Fiscal year (PK) |
| `revenue_hkd_m` | Total revenue (HK$ million) |
| `cost_of_revenue_hkd_m` | Total operating costs |
| `gross_profit_hkd_m` | Gross profit |
| `operating_income_hkd_m` | Operating income |
| `net_income_hkd_m` | Net profit / loss |
| `fuel_cost_hkd_m` | Fuel expenditure |
| `staff_cost_hkd_m` | Staff expenditure |
| `cost_per_atk_with_fuel` | Cost efficiency metric (with fuel) |
| `cost_per_atk_without_fuel` | Cost efficiency metric (ex-fuel) |
 
### `cx_operations`
| Column | Description |
|---|---|
| `year` | Fiscal year (PK) |
| `passengers_carried_000` | Passengers carried (thousands) |
| `ask_million` | Available Seat Kilometres (millions) |
| `rpk_million` | Revenue Passenger Kilometres (millions) |
| `passenger_load_factor_pct` | Passenger load factor (%) |
| `cargo_load_factor_pct` | Cargo load factor (%) |
| `fleet_size` | Number of aircraft in service |
| `destinations` | Number of destinations served |
 
---

## 📊 Dashboard
 
**Live dashboard:** [Tableau Public — Cathay Pacific Performance Dashboard 2015–2025](https://public.tableau.com/views/CathayPacificPerformanceDashboard2015-2025/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
 
Four charts covering the full story:
 
| # | Chart | Type | Key Insight |
|---|---|---|---|
| 1 | Revenue vs Net Income | Bar + Line | 56% revenue collapse in 2020, recovery to new highs by 2025 |
| 2 | Passenger Recovery vs 2019 Peak | Line with era bands | 2% of normal in 2021, still only 80% recovered by 2025 |
| 3 | Fuel & Staff Cost as % of Revenue | Dual line | Staff costs overtook fuel costs in 2020 as flying stopped |
| 4 | Cargo vs Passenger Load Factor | Dual line | Cargo crossed above passenger load factor during COVID years |
 
---

