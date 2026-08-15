-- European EV Market Intelligence & Business Strategy
-- Example SQL analysis queries used in this student project.

-- 1) Market growth by country: 2021 vs 2026
SELECT
    h21.country,
    h21.estimated_addressable_market_eur_mn AS market_2021_eur_mn,
    h26.estimated_addressable_market_eur_mn AS market_2026_eur_mn,
    ROUND(
        (POWER(h26.estimated_addressable_market_eur_mn / h21.estimated_addressable_market_eur_mn, 1.0/5) - 1) * 100,
        1
    ) AS market_cagr_pct
FROM market_history h21
JOIN market_history h26
    ON h21.country = h26.country
WHERE h21.year = 2021
  AND h26.year = 2026
ORDER BY market_cagr_pct DESC;


-- 2) Country prioritization
SELECT
    country,
    addressable_market_2026_eur_mn,
    market_cagr_2021_2026_percent,
    ev_share_2026_percent,
    attractiveness_score,
    priority_tier
FROM country_attractiveness
ORDER BY attractiveness_score DESC;


-- 3) Large markets with lower EV adoption: possible growth headroom
SELECT
    country,
    addressable_market_2026_eur_mn,
    ev_share_2026_percent,
    market_cagr_2021_2026_percent
FROM country_attractiveness
WHERE addressable_market_2026_eur_mn >= 250
  AND ev_share_2026_percent < 35
ORDER BY market_cagr_2021_2026_percent DESC;


-- 4) Competitor positioning
SELECT
    competitor,
    primary_positioning,
    technical_differentiation_1_5,
    customer_coverage_1_5,
    price_index_vs_market,
    estimated_regional_share_percent
FROM competitor_benchmark
ORDER BY estimated_regional_share_percent DESC;


-- 5) Customer segments ranked by attractiveness
SELECT
    customer_segment,
    estimated_2026_opportunity_eur_mn,
    segment_attractiveness_score,
    growth_outlook_1_5,
    strategic_fit_1_5
FROM customer_segments
ORDER BY segment_attractiveness_score DESC;


-- 6) Base-case revenue potential in priority countries
SELECT
    country,
    year_1_revenue_potential_eur_mn,
    year_3_revenue_potential_eur_mn
FROM revenue_scenarios
WHERE scenario = 'Base'
ORDER BY year_3_revenue_potential_eur_mn DESC;


-- 7) Revenue scenario range by country
SELECT
    country,
    MIN(year_3_revenue_potential_eur_mn) AS conservative_year3_eur_mn,
    MAX(CASE WHEN scenario = 'Base' THEN year_3_revenue_potential_eur_mn END) AS base_year3_eur_mn,
    MAX(year_3_revenue_potential_eur_mn) AS upside_year3_eur_mn
FROM revenue_scenarios
GROUP BY country
ORDER BY base_year3_eur_mn DESC;
