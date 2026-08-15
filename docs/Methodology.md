# Methodology

## Project scope

This is an independent student portfolio case study for a fictional company called **Aster Mobility Systems GmbH**.

The company is assumed to sell B2B EV power-electronics and charging-control components and is considering expansion across Europe.

The analysis covers eight countries:

- Germany
- France
- United Kingdom
- Netherlands
- Norway
- Sweden
- Italy
- Spain

All market sizes, company names, shares, costs and revenue scenarios are synthetic.

## Market history

The synthetic dataset covers 2021-2026 and includes:

- EV registrations
- total car registrations
- EV share
- public charging points
- charging-point density
- estimated addressable component market
- commercial ease
- competition intensity
- relative price index

The values were designed to create different strategic market profiles rather than to replicate any real market forecast.

## Market growth

Market CAGR is calculated as:

`CAGR = (Market_2026 / Market_2021)^(1/5) - 1`

## Country attractiveness model

I used a weighted score across six dimensions:

| Dimension | Weight |
|---|---:|
| Market Size | 30% |
| Market Growth | 20% |
| EV Adoption | 15% |
| Charging Infrastructure | 10% |
| Commercial Ease | 15% |
| Competition Advantage | 10% |

Each dimension is normalized from 0 to 100 across the eight countries.

The final score is:

`0.30 × Market Size + 0.20 × Growth + 0.15 × Adoption + 0.10 × Infrastructure + 0.15 × Commercial Ease + 0.10 × Competition Advantage`

### Priority tiers

- **Tier 1 - Focus:** score >= 50
- **Tier 2 - Build:** score 30-49.9
- **Tier 3 - Monitor:** score < 30

The thresholds are judgement-based and are only used to create a discussion framework.

## Competitor benchmark

Competitors are fictional. I compared them using:

- product breadth
- technical differentiation
- customer coverage
- relative price position
- synthetic regional share

The goal is not to estimate a real market share. It is to practice competitor positioning and identify strategic gaps.

## Customer-segment score

Customer segments are assessed using:

- opportunity size
- growth outlook
- sales-cycle ease
- strategic fit
- margin potential
- competition intensity

The score is a weighted educational framework.

## Revenue scenarios

For the top four markets I created three planning scenarios:

### Conservative
- 18% accessible share
- 1.0% target capture rate
- Year-3 multiplier: 1.45

### Base
- 25% accessible share
- 1.8% target capture rate
- Year-3 multiplier: 1.70

### Upside
- 32% accessible share
- 2.8% target capture rate
- Year-3 multiplier: 2.00

The Base scenario across the four priority markets produces approximately **EUR 17.33 million** of Year-3 revenue potential.

This is not a forecast. It is a sensitivity-style commercial planning exercise.

## Limitations

- all data is synthetic
- competitor names are fictional
- the country score is judgement-based
- regulations and certification requirements are simplified
- no customer interviews were actually performed
- no real pricing or market-share data is used
- the revenue scenarios are illustrative, not financial guidance

The project is designed to practice market-intelligence and business-analysis thinking in a way that can be explained clearly in an interview.
