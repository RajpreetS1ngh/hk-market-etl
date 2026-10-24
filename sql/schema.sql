-- Star schema skeleton for HK market data

CREATE TABLE IF NOT EXISTS dim_date (
    date_key DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT
);

CREATE TABLE IF NOT EXISTS dim_stock (
    stock_key SERIAL PRIMARY KEY,
    ticker TEXT UNIQUE,
    name TEXT,
    sector TEXT
);

CREATE TABLE IF NOT EXISTS dim_currency (
    currency_key SERIAL PRIMARY KEY,
    code TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS fact_daily_price (
    date_key DATE,
    stock_key INT,
    open NUMERIC,
    high NUMERIC,
    low NUMERIC,
    close NUMERIC,
    volume BIGINT,
    PRIMARY KEY (date_key, stock_key)
);

CREATE TABLE IF NOT EXISTS fact_fx_rate (
    date_key DATE,
    currency_key INT,
    rate NUMERIC,
    PRIMARY KEY (date_key, currency_key)
);
