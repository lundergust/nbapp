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
    schedule_odds = {}
    games = len(soup.select('div[class*="in-progress-table"]'))
    for i in range(games):
        gamedict = {}
        hteamdict = {'name' : todays_list[i][3], 'record': todays_list[i][4]}
        vteamdict = {'name' : todays_list[i][0], 'record': todays_list[i][1]}
        oddsdict = {'overunder': todays_list[i][2], 'homespread': todays_list[i][5]}
        gamedict['hteam'] = hteamdict
        gamedict['vteam'] = vteamdict
        gamedict['odds'] = oddsdict
        gamestring = 'game'+str(i)
        schedule_odds[gamestring] = gamedict

    return(schedule_odds)
    print(schedule_odds)
    print('\n')
    #retrieve odds sample
    odds = schedule_odds['game0']['odds']['overunder']
    print("o/u for Timberwolves game 0: "+odds)
