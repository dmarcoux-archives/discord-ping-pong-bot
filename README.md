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

2. Run the bot with Docker:
```
docker pull danymarcoux/discord-ping-pong-bot:latest
docker run --detach --restart always --env DISCORD_TOKEN=YOUR_DISCORD_TOKEN danymarcoux/discord-ping-pong-bot:latest
```

### Publish Docker Image to Docker Hub Registry

1. Create an [access token](https://hub.docker.com/settings/security) for Docker
   Hub

2. Login to the Docker Hub registry with the access token (it will prompt...):
```
docker login --username danymarcoux
```

3. Build Docker image and tag it:
```
docker build --tag danymarcoux/discord-ping-pong-bot:latest .
```

4. Publish Docker image to Docker Hub registry:
```
docker push danymarcoux/discord-ping-pong-bot:latest
```
