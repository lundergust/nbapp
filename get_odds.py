def get_odds():

    import requests
    import urllib.request
    from bs4 import BeautifulSoup
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

    todays_list = []
    for boop in final[:]:
        team0 = boop.split()
        todays_list.append(team0)

    # Create Dictionary Tree
    # Andrew Johnson Code
    schedule = {}
    games = len(soup.select('div[class*="in-progress-table"]'))
    for i in range(games):
        gamedict = {}
        hteamdict = {'name' : todays_list[i][3], 'record': todays_list[i][4], 'odds': todays_list[i][5]}
        ateamdict = {'name' : todays_list[i][0], 'record': todays_list[i][1], 'odds': todays_list[i][2]}
        gamedict['hteam'] = hteamdict
        gamedict['ateam'] = ateamdict
        gamestring = 'game'+str(i)
        schedule[gamestring] = gamedict

    print(schedule)
    print('\n')

    #retrieve odds sample
    odds = schedule['game0']['hteam']['odds']
    print("Odds for Timberwolves game 0: "+odds)
