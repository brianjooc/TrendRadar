#!/bin/bash
# Only run at 9:00, 12:00, 15:00, 18:00 (America/Toronto time)
HOUR=$(TZ="America/Toronto" date +%H)
if [[ "$HOUR" != "09" && "$HOUR" != "12" && "$HOUR" != "15" && "$HOUR" != "18" ]]; then
    exit 0
fi

cd /Users/brianjosoc/.openclaw/workspace/trendradar
export TELEGRAM_BOT_TOKEN="8748272451:AAELNWyYtP1CTkql-3EUpXDcEbGIZviBKzs"
export TELEGRAM_CHAT_ID="8633760686"
/Users/brianjosoc/.openclaw/workspace/trendradar/venv/bin/python3.12 -m trendradar >> /tmp/trendradar.log 2>&1
