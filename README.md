# Swiggy Cuisine Performance Diagnostic

## Project Overview

Swiggy Cuisine Performance Diagnostic is a connected SQL, Spreadsheet, and Tableau analysis project that evaluates revenue performance across six cuisines from January to June 2026. A deterministic SQLite database was created and analyzed using SQL, the resulting monthly cuisine revenue data was exported to CSV and reconciled in a spreadsheet, and the same CSV was used to build a Tableau Public dashboard. The project identifies cuisines that are above or below their revenue targets and provides data-driven recommendations for the category team.

## Files Submitted

- [generate_data.py](./generate_data.py)
- [swiggy_capstone.db](./swiggy_capstone.db)
- [verify.sql](./verify.sql)
- [01_foundations.sql](./01_foundations.sql)
- [02_aggregation_joins.sql](./02_aggregation_joins.sql)
- [03_reporting.sql](./03_reporting.sql)
- [monthly_cuisine_revenue.csv](./monthly_cuisine_revenue.csv)
- [swiggy_spreadsheet_analysis (2).xlsx](./swiggy_spreadsheet_analysis%20%282%29.xlsx)
- [ai_log.md](./ai_log.md)
- [DATA_STORY.md](./DATA_STORY.md)

## Tableau Public Dashboard

[View the Live Tableau Public Dashboard](https://public.tableau.com/views/Swiggy_Cuisine_Performance_Dashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Data Story

The complete data story, including cuisine-level target performance and two concrete recommendations, is available here:

[Read the Data Story](./DATA_STORY.md)

## AI-Assisted Prompting Log

The two RCTCF-structured AI prompts and their concrete verification steps are documented here:

[View the AI Log](./ai_log.md)

## Repository Structure

- `generate_data.py` — deterministic database generation script using random seed 42
- `swiggy_capstone.db` — generated SQLite database
- `verify.sql` — database verification queries and expected results
- `01_foundations.sql` — foundational SQL queries
- `02_aggregation_joins.sql` — aggregation, joins, and HAVING queries
- `03_reporting.sql` — reporting, CASE WHEN, date, and variance queries
- `monthly_cuisine_revenue.csv` — fixed monthly cuisine revenue export used by Parts B and C
- `swiggy_spreadsheet_analysis (2).xlsx` — spreadsheet cross-check and reconciliation
- `ai_log.md` — AI-assisted prompting and verification log
- `DATA_STORY.md` — Tableau/dashboard data story and recommendations
- `README.md` — project documentation and links

## How to Regenerate the Database

Run the following command from the repository folder:

```bash
python3 generate_data.py
