import nextcord
import requests
from nextcord.ext import commands

url = "https://rory.cat/purr"

roryget = requests.get(url)
roryjson = roryget.json()
roryjsonprocessed = roryjson["url"]
print(roryjsonprocessed)


TESTING_GUILD_ID = 1119118101229862973  # Replace with your guild ID

bot = commands.Bot()

@bot.event
async def on_ready():
    print(f'We have logged in as {bot.user}')

@bot.slash_command(description="My first slash command", guild_ids=[TESTING_GUILD_ID])
async def hello(interaction: nextcord.Interaction):
    roryget = requests.get(url)
    roryjson = roryget.json()
    roryjsonprocessed = roryjson["url"]
    await interaction.send(roryjsonprocessed)

bot.run('your token here')