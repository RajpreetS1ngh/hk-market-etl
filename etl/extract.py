"""Extract HK stock prices via yfinance and save raw files."""
import yfinance as yf
from datetime import datetime
from pathlib import Path

TICKERS = ["0700.HK", "0005.HK", "0941.HK", "1299.HK", "0388.HK", "9988.HK"]
RAW_DIR = Path("data/raw")
RAW_DIR.mkdir(parents=True, exist_ok=True)

def extract_stocks(date: str | None = None):
    date = date or datetime.now().strftime("%Y-%m-%d")
    for ticker in TICKERS:
        # Placeholder: actual download later
        print(f"Would download {ticker} for {date}")
    print("Extract skeleton ready")

if __name__ == "__main__":
    extract_stocks()
