# Warfork Console Reporter

Read logs and report to telegram

### Prerequisites

What things you need to install the software and how to install them

* incron

### Usage

Add to incron line
```
/home/wf/log/console IN_MODIFY /home/wf/cc.sh $@/$#
```
where /home/wf/log/console its logs directory and /home/wf/cc.sh its path to script.

in script change BOT to you telegram bot token, CHAT to chat id or user id (first you must write to bot).
CHECKWORD its array of word to alert.

## Authors

* **Andrey Kuntsevich** - [Taz](https://github.com/Glip)
