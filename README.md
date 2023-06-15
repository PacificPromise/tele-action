# Telegram-action
GitHub Action for sending a Telegram notification message. 
---
## Usage

**NOTE**: If you are getting "Error: Chat not found", then you need to look at this stackoverflow's answer [here](https://stackoverflow.com/a/41291666).

## Environment variable

Set environment variable in secrets of your repository as below: 
- TELEGRAM_GROUP_ID: id of your telegram group chat, you can find a way to get a group chat id [here](https://stackoverflow.com/questions/32423837/telegram-bot-how-to-get-a-group-chat-id)
- TELEGRAM_TOPIC_ID: id of your topic's group (if your group have topic)
- TELEGRAM_BOT_TOKEN: token of your telegram bot, visit [here](https://www.siteguarding.com/en/how-to-get-telegram-bot-api-token) to know how to get telegram bot token

|   Environment variable   |                    Description                      |         Example       |
|--------------------------|-----------------------------------------------------|-----------------------|
|   TELEGRAM_GROUP_ID      |  Id of your telegram group chat,                    |     -1001837632261    |
|                          |  you can find a way to get a group                   |                       |      
|                          |  chat id [here](https://stackoverflow.com/questions  |                       |
|                          |  /32423837telegram-bot-                             |                       |
|                          |  how-to-get-a-group-chat-id)                        |                       |
|--------------------------|-----------------------------------------------------|-----------------------|
|   TELEGRAM_TOPIC_ID      | Id of your topic's group (if your group have topic) |          196          |
|--------------------------|-----------------------------------------------------|-----------------------|
|   TELEGRAM_BOT_TOKEN     | Token of your telegram bot, visit [here]            |       xxxxxxxxx       |
|                          | (https://www.siteguarding.com/en/                   |                       |
|                          | how-to-get-telegram-bot-api-token)                  |                       |     
|                          | to know how to get telegram bot token               |                       | 

Send custom message:
```yml
name: telegram message

on: [push]

env:
  TELEGRAM_GROUP_ID: ${{ secrets.TELEGRAM_GROUP_ID }}
  TELEGRAM_TOPIC_ID: ${{ secrets.TELEGRAM_TOPIC_ID }}
  TELEGRAM_BOT_TOKEN: ${{ secrets.TELEGRAM_BOT_TOKEN }}

jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@main
    - name: Send custom message
      uses: PacificPromise/tele-action@main
      with:
        message: Test telegram action
```
