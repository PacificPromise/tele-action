send_telegram() {
  # curl --location "https://api.telegram.org/bot6178712814:AAESrlahgu1fQ-Mbe-QuAtli6JwQSTJS6vc/sendMessage" \
  #   --header 'Content-Type: application/json' \
  #   --data '{
  #     "chat_id": -1001837632261,
  #     "reply_to_message_id": 196,
  #     "text": "'"$1"'"
  # }'
  echo $1
}