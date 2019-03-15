import requests
import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
from datetime import datetime, timedelta
import re

# GET ODDS FROM CBS
urlcbs = "https://www.cbssports.com/nba/scoreboard/"

rcbs = requests.get(urlcbs)

html_content = rcbs.text

soup = BeautifulSoup(html_content,"html.parser")

odds = []
for eachGame in soup.select('div[class*="in-progress-table"]'):
    newodds = eachGame.get_text()
    newodds = newodds.replace('\n\xa0',' ')
    newodds = newodds.replace(' ',' ')
    newodds = newodds.replace('\n',' ')
    newodds = newodds.replace('\xa0',' ')
    newodds = str(newodds)
    odds.append(newodds)
final = []
for odd in odds:
    new = re.sub(r'\s+', ' ', odd)
    final.append(new)

full_list = []
for boop in final[:]:
    team0 = boop.split()
    full_list.append(team0)

print(full_list)
print(full_list[0][3])
# Create Dictionary Tree


schedule = {'games': [
# game 0
    {'hteam':
        {'name': full_list[0][3], 'record': full_list[0][4], 'odds': full_list[0][5]},\
    'ateam':
        {'name': full_list[0][0], 'record': full_list[0][1], 'odds': full_list[0][3]}},
#  game 1
    {'hteam':
        {'name': full_list[1][3], 'record': full_list[1][4], 'odds': full_list[1][5]},\
    'ateam':
        {'name': full_list[1][0], 'record': full_list[1][1], 'odds': full_list[1][3]}},
]}
print('\n')
print("Manual")
print(schedule)
print('\n')
print("Iterative")
schedule2 = {}
games = len(soup.select('div[class*="in-progress-table"]'))
for i in range(games):
    gamedict = {}
    hteamdict = {'name' : 'Timberwolves', 'record': '82-0', 'odds': 'infinity'}
    ateamdict = {'name' : 'Grizzlies', 'record': '21-33', 'odds': 'slim'}
    gamedict['hteam'] = hteamdict
    gamedict['ateam'] = ateamdict
    gamestring = 'game'+str(i)
    schedule2[gamestring] = gamedict

print(schedule2)
print('\n')

#retrieve odds sample
odds = schedule2['game0']['hteam']['odds']
print("Odds for Timberwolves game 0: "+odds)


home0 = schedule['games'][0]['hteam']['name']
home0odds = schedule['games'][0]['hteam']['odds']
print("Game0 home: " + home0 + " " + home0odds)
home1 = schedule['games'][1]['hteam']['name']
home1odds = schedule['games'][1]['hteam']['odds']
print("Game1 home: " + home0 + " " + home0odds)
print(schedule['games'][1]['hteam'])
