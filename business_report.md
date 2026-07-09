# DJIA News Sentiment & Risk Monitoring Analysis
### Business Report — Prepared for NorthBridge Capital

---

## 1. Executive Summary

This analysis examined three years of daily international news headlines (1,989 trading days, 2008–2016) alongside DJIA market direction to identify patterns useful for investment analysts. The core finding is nuanced: **simple sentiment polarity alone is not a reliable signal** of next-day market direction (p=0.72, not statistically significant). However, a **composite risk score** combining news theme density and topic-specific signals shows a statistically meaningful, if moderate, relationship with market downturns. The most actionable finding is that **technology-related news** and **the number of simultaneously active news themes** are the only individually significant predictors identified in this dataset (p=0.0033 and p=0.029 respectively).

---

## 2. Key Findings

### 2.1 Headline Volume Is Not a Differentiator
Average headline length and word count are nearly identical between up-days and down-days (~2,756 characters, ~442 words either way). Analysts should not use news *volume* as a signal.

### 2.2 Simple Sentiment Polarity Is Not Statistically Significant
Average sentiment on down-days (0.0223) vs. up-days (0.0231) shows a negligible difference. An independent t-test confirms this is not significant (t=0.36, p=0.72). **Recommendation: do not rely on generic sentiment scoring tools as a standalone market indicator.**

### 2.3 Only One Theme Category Shows a Significant Relationship
Six broad news themes were tested (geopolitical conflict, economy, technology, energy, disaster, government policy) via chi-square tests. Only **technology** was statistically significant (p=0.0033). Technology-related headlines appeared on 63.2% of down-days vs. 56.6% of up-days — a moderate, not dramatic, effect.

### 2.4 Thematic Density Matters More Than Any Single Topic
The number of simultaneously active news themes per day is significantly higher on down-days (4.37 vs. 4.27 themes, p=0.029). This suggests that **accumulation of concurrent risk narratives** — rather than any single topic — carries more signal.

### 2.5 Risk Score Reflects Population-Level Patterns, Not Daily Predictions
The composite Risk Score (0–100 scale, weighted by sentiment, technology theme, and economic theme) averages 51.2 on down-days vs. 48.1 on up-days. This is a real but moderate difference at the aggregate level. **Important caveat:** among the 15 highest individual risk-score days, 10 were actually up-days — confirming this score is a population-level probabilistic signal, not a day-by-day predictor.

### 2.6 Risk Levels Cluster Over Multi-Year Periods
Annual average risk scores show a hump-shaped trend: rising from 41.7 (2008) to a peak of 53.9 (2012), then declining to 45.2 (2016). Four consecutive years (2011–2014) all exceeded a risk score of 50, suggesting elevated media risk sentiment tends to persist over multi-year windows rather than spiking briefly.

---

## 3. Business Recommendations

1. **Do not deploy simple sentiment scoring as a standalone monitoring tool.** It lacks statistical backing in this dataset and could create false confidence.
2. **Prioritize investigation of days with high thematic density** (multiple concurrent risk themes), rather than filtering by any single topic category.
3. **Treat "technology" headlines as a moderate watch-flag**, not a hard rule — it is the only individually significant theme found, but its effect size is modest.
4. **Use the composite Risk Score to triage, not predict.** It is best suited to help analysts prioritize which days' news deserves closer manual review, reducing workload — not to forecast market direction.
5. **Monitor risk score trends at a multi-year level** to contextualize current conditions against historical baselines, rather than reacting to single-day spikes alone.

---

## 4. Limitations & Risks

- **No causal claims can be made.** All relationships identified are correlational; news coverage and market movement may share common underlying causes not captured in this dataset.
- **Aggregated daily headlines only** — no timestamp-level granularity, so intra-day dynamics (e.g., news released after market close) cannot be assessed.
- **Sentiment analysis used a general-purpose tool (TextBlob)**, not a finance-tuned NLP model; more sophisticated sentiment models tuned to financial language may capture stronger signals.
- **Theme categorization used keyword matching**, which is transparent and explainable but less nuanced than topic modeling; some headlines may be mis-tagged or under-tagged.
- **Sample period (2008–2016) includes the 2008 financial crisis**, which may not generalize to calmer market regimes.
- **Individual word-frequency analysis proved unreliable** (high noise, spurious correlations) at this sample size and was deliberately excluded from final recommendations in favor of theme-level aggregation, which is more robust.

---

## 5. Suggested Monthly Monitoring Metrics

| Metric | Purpose |
|---|---|
| Average Risk Score (rolling 30-day) | Track whether media risk sentiment is trending up or down |
| % of Days Classified "High Risk" (score ≥70) | Flag months requiring more analyst attention |
| Average Number of Active Themes per Day | Monitor concurrent risk narrative accumulation |
| Technology Theme Frequency (%) | Track the one validated significant signal |
| Risk Score vs. Prior 12-Month Average | Contextualize current risk level against recent history |

---

## 6. Methodology Note

All findings reported as "significant" passed a formal statistical test (independent t-test for continuous variables, chi-square test for categorical theme flags) at the p<0.05 threshold. Findings without statistical confirmation are explicitly labeled as directional/exploratory rather than conclusive, in line with the client's stated understanding that news-market relationships are not strictly causal.
