import nextcord
import requests
from nextcord.ext import commands

url = "https://rory.cat/purr"

roryget = requests.get(url)
roryjson = roryget.json()
roryjsonprocessed = roryjson["url"]
print(roryjsonprocessed)


bot = commands.Bot()

@bot.event
async def on_ready():
    print(f'We have logged in as {bot.user}')

@bot.slash_command(description="My first slash command", guild_ids=[TESTING_GUILD_ID])
async def hello(interaction: nextcord.Interaction):
    await interaction.send("Hello!")

bot.run('your token here')