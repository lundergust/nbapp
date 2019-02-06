import requests
import urllib.request
from bs4 import BeautifulSoup
import json
from datetime import datetime, timedelta
import re

def get_odds():
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
    return(schedule)
    print('\n')

    #retrieve odds sample
    odds = schedule['game0']['hteam']['odds']
    print("Odds for Timberwolves game 0: "+odds)

def get_scores():
    schedule = get_odds()
    today = datetime.strftime(datetime.now(), '%Y-%m-%d')
    today_url = datetime.strftime(datetime.now(), '%Y%m%d')
    # url = "https://data.nba.net/prod/v2/20190204/scoreboard.json"
    main_api = "https://data.nba.net/prod/v2/"
    url = main_api + today_url + "/scoreboard.json"

    json_data = requests.get(url).json()

    json_numGames = json_data['numGames']
    if json_numGames > 0:
        time = json_data['_internal']['pubDateTime']
        print('\nNBA Action as of ' + time + '\nNumber of Games Today: ' + str(json_numGames))

        for each in json_data['games']:
            print('------------------------------')
            if each['isGameActivated'] == True:
                if each['period']['isHalftime'] == True:
                    print('HALF')
                else:
                    game_clock = each['clock']
                    quarter = str(each['period']['current'])
                    print(game_clock + '  Q' + quarter)

            vis = each['vTeam']['triCode']
            check_v = each['vTeam']
            if len(check_v.get('linescore')) == 0:
                start = each['startTimeEastern']
                vis_w = each['vTeam']['win']
                vis_l = each['vTeam']['loss']
                print('  ' + start + '\n  ' + vis + ' (' + vis_w + ' - ' + vis_l + ')')

            if len(check_v.get('linescore')) == 1:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = '--'
                vis_q3 = '--'
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "\
                 + vis_q2 + " | " + vis_q3 + " | "+ vis_q4 + " | ")

            if len(check_v.get('linescore')) == 2:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = '--'
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "\
                 + vis_q2 + " | " + vis_q3 + " | "+ vis_q4 + " | ")

            if len(check_v.get('linescore')) == 3:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = each['vTeam']['linescore'][2]['score']
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "\
                 + vis_q2 + " | " + vis_q3 + " | "+ vis_q4 + " | ")

            if len(check_v.get('linescore')) == 4:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = each['vTeam']['linescore'][2]['score']
                vis_q4 = each['vTeam']['linescore'][3]['score']
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "\
                 + vis_q2 + " | " + vis_q3 + " | "+ vis_q4 + " | ")

            h = each['hTeam']['triCode']
            check_h = each['hTeam']
            if len(check_h.get('linescore')) == 0:
                h_w = each['hTeam']['win']
                h_l = each['hTeam']['loss']
                print('@ ' + h + ' (' + h_w + ' - ' + h_l + ')')

            if len(check_h.get('linescore')) == 1:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = '--'
                h_q3 = '--'
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "\
                 + h_q2 + " | " + h_q3 + " | "+ h_q4 + " | ")

            if len(check_h.get('linescore')) == 2:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = '--'
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "\
                 + h_q2 + " | " + h_q3 + " | "+ h_q4 + " | ")

            if len(check_h.get('linescore')) == 3:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = each['hTeam']['linescore'][2]['score']
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "\
                 + h_q2 + " | " + h_q3 + " | "+ h_q4 + " | ")
            check_end = each['nugget']
            if len(check_h.get('linescore')) == 4:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = each['hTeam']['linescore'][2]['score']
                h_q4 = each['hTeam']['linescore'][3]['score']
                h_score = each['hTeam']['score']
                if len(check_end.get('text')) == 0:
                    print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "\
                    + h_q2 + " | " + h_q3 + " | "+ h_q4 + " |")
                else:
                    print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "\
                    + h_q2 + " | " + h_q3 + " | "+ h_q4 + " |  \n" \
                    + each['nugget']['text'])

        print('------------------------------')

if __name__ == "__main__":
    get_scores()
