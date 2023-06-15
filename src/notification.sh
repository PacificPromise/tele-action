send_telegram() {
  curl --location "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    --header 'Content-Type: application/json' \
    --data '{
      "chat_id": -1001837632261,
      "reply_to_message_id": 196,
      "text": "'"$1"'"
  }'
}