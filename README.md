# <a href="https://github.com/dmarcoux/discord-ping-pong-bot">dmarcoux/discord-ping-pong-bot</a>

### Introduction

My first Discord bot with [serenity](https://github.com/serenity-rs/serenity).
The code is from [serenity's
examples](https://github.com/serenity-rs/serenity/tree/7dd01eb95754dcdc71cea8e744e2fedacd3ab9dd/examples/e01_basic_ping_bot).

It responds to `ping` messages (on all channels) with `pong`. Nothing more, it's
already quite impressive!

### Setup Bot

1. Create a bot (and its Discord token) in the [Discord Developer
   Portal](https://discord.com/developers), then add the bot to a Discord
   server. Follow this [guide](https://www.writebots.com/discord-bot-token/) for
   details.

2. Run the bot with Docker (TODO: Having to login to pull the image is annoying. Publish to Docker Hub instead):
```
docker login docker.pkg.github.com --username dmarcoux
docker pull docker.pkg.github.com/dmarcoux/discord-ping-pong-bot/bot:latest
docker run --detach --env DISCORD_TOKEN=YOUR_DISCORD_TOKEN docker.pkg.github.com/dmarcoux/discord-ping-pong-bot/bot:latest
```

### Publish Docker Image to GitHub Package Registry

1. Create a [personal access token](https://github.com/settings/tokens) with the
scopes:
  - `read:packages`
  - `write:packages`
  - `delete:packages`
  - `repo` (only needed for private repositories)

2. Login to the Github Package registry with the personal access token (it will
   prompt...):
```
docker login docker.pkg.github.com --username dmarcoux
```

3. Build Docker image and tag it:
```
docker build --tag docker.pkg.github.com/dmarcoux/discord-ping-pong-bot/bot:latest .
```

4. Publish Docker image to GitHub Package registry:
```
docker push docker.pkg.github.com/dmarcoux/discord-ping-pong-bot/bot:latest
```
