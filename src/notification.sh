send_telegram() {
  curl --location "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
    --header 'Content-Type: application/json' \
    --data '{
      "chat_id": "'"$TELEGRAM_GROUP_ID"'",
      "reply_to_message_id": "'"$TELEGRAM_TOPIC_ID"'",
      "text": "'"$1"'"
  }'
}