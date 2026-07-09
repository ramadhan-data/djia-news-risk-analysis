-- ============================================================
-- Project: DJIA News Sentiment & Risk Scoring Analysis
-- Client: NorthBridge Capital (simulated brief)
-- Database: djia_news_analysis
-- Table: news_market_daily
-- ============================================================

-- Query 1: Average risk score and sentiment by market direction
SELECT 
    Label,
    ROUND(AVG(risk_score_normalized), 2) AS avg_risk_score,
    ROUND(AVG(sentiment), 4) AS avg_sentiment,
    COUNT(*) AS total_days
FROM news_market_daily
GROUP BY Label;

-- Query 2: Occurrence volume of each news theme on market down-days
SELECT
    SUM(geopolitical_conflict) AS geopolitical_days,
    SUM(economy) AS economy_days,
    SUM(technology) AS technology_days,
    SUM(energy) AS energy_days,
    SUM(disaster) AS disaster_days,
    SUM(government_policy) AS policy_days
FROM news_market_daily
WHERE Label = 0;

-- Query 3: Top 10 days with the highest risk scores
SELECT Date, Label, risk_score_normalized, num_active_themes
FROM news_market_daily
ORDER BY risk_score_normalized DESC
LIMIT 10;

-- Query 4: Years with an average risk score above 50 (HAVING)
SELECT 
    YEAR(Date) AS year,
    ROUND(AVG(risk_score_normalized), 2) AS avg_risk_score
FROM news_market_daily
GROUP BY YEAR(Date)
HAVING AVG(risk_score_normalized) > 50
ORDER BY avg_risk_score DESC;

-- Query 5: Risk level categorization (CASE WHEN)
SELECT 
    Date,
    risk_score_normalized,
    CASE 
        WHEN risk_score_normalized >= 70 THEN 'High Risk'
        WHEN risk_score_normalized >= 40 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM news_market_daily;