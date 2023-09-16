import nextcord
import requests

url = "https://rory.cat/purr"

roryget = requests.get(url)
roryjson = roryget.json()
roryjsonprocessed = roryget.json["url"]
print(roryjsonprocessed)