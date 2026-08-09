# AI-Assisted Prompting Log (RCTCF Format)

## Prompt 1 (Part A: SQL Debugging & Aggregations)
- **Role:** Expert SQLite Database Analyst.
- **Context:** Building the Swiggy Capstone database queries where integer division truncates percentages unless cast or multiplied explicitly.
- **Task:** Write an SQL CTE query joining delivered orders to targets and calculating precise floating-point percentage variance.
- **Constraints:** Must use SQLite syntax, avoid native division truncation, and output formatted columns.
- **Format:** Pure SQL snippet with inline comments.
- **Verification Step:** I executed the generated query against `swiggy_capstone.db` in SQLite shell and verified that the percentage variance returned decimal figures (e.g., -8.69) instead of zero.

## Prompt 2 (Part C: Dashboard Calculation / Data Story Draft)
- **Role:** Senior Business Intelligence Storyteller.
- **Context:** Translating Swiggy category revenue data into executive recommendations.
- **Task:** Draft a concise data interpretation framing why certain cuisines are underperforming against monthly thresholds.
- **Constraints:** Rely strictly on verified numbers from the dataset without external assumptions.
- **Format:** Bulleted markdown recommendations.
- **Verification Step:** I cross-checked the AI-suggested revenue figures for North Indian and Desserts against my spreadsheet Pivot Table outputs before finalizing the write-up.
