import nextcord
import requests

url = "https://rory.cat/purr"

roryget = requests.get(url)
roryjson = roryget.json
print(roryjson(')