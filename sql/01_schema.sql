-- European EV Market Intelligence & Business Strategy
-- SQLite-compatible schema for the student case study.

CREATE TABLE market_history (
    year INTEGER,
    country TEXT,
    ev_registrations INTEGER,
    total_car_registrations INTEGER,
    ev_share_percent REAL,
    public_charging_points INTEGER,
    charging_points_per_1000_ev REAL,
    estimated_addressable_market_eur_mn REAL,
    commercial_ease_1_5 REAL,
    competition_intensity_1_5 REAL,
    price_index_vs_eu REAL
);

CREATE TABLE country_attractiveness (
    country TEXT PRIMARY KEY,
    ev_registrations_2026 INTEGER,
    ev_share_2026_percent REAL,
    public_chargers_2026 INTEGER,
    charging_density_per_1000_ev REAL,
    addressable_market_2026_eur_mn REAL,
    market_cagr_2021_2026_percent REAL,
    commercial_ease_1_5 REAL,
    competition_intensity_1_5 REAL,
    market_size_score REAL,
    growth_score REAL,
    adoption_score REAL,
    infrastructure_score REAL,
    commercial_ease_score REAL,
    competition_advantage_score REAL,
    attractiveness_score REAL,
    priority_tier TEXT
);

CREATE TABLE competitor_benchmark (
    competitor TEXT PRIMARY KEY,
    hq_country TEXT,
    primary_positioning TEXT,
    product_breadth_1_5 REAL,
    technical_differentiation_1_5 REAL,
    customer_coverage_1_5 REAL,
    price_index_vs_market REAL,
    estimated_regional_share_percent REAL,
    strategic_note TEXT
);

CREATE TABLE customer_segments (
    customer_segment TEXT PRIMARY KEY,
    estimated_2026_opportunity_eur_mn REAL,
    growth_outlook_1_5 REAL,
    sales_cycle_ease_1_5 REAL,
    strategic_fit_1_5 REAL,
    margin_potential_1_5 REAL,
    competition_intensity_1_5 REAL,
    segment_attractiveness_score REAL,
    notes TEXT
);

CREATE TABLE revenue_scenarios (
    country TEXT,
    scenario TEXT,
    addressable_market_2026_eur_mn REAL,
    accessible_share_percent REAL,
    target_capture_rate_percent REAL,
    year_1_revenue_potential_eur_mn REAL,
    year_3_revenue_potential_eur_mn REAL,
    assumption TEXT
);
