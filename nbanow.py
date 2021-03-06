from nbaTriCode_dict import nbaTriCode_dict
from get_odds import get_odds
schedule_odds = get_odds()

triCode_dict = nbaTriCode_dict()


def get_scores():
    import requests
    import urllib.request
    from bs4 import BeautifulSoup
    import json
    from datetime import datetime, timedelta
    import re
    today = datetime.strftime(datetime.now(), '%Y-%m-%d')
    today_url = datetime.strftime(datetime.now(), '%Y%m%d')
    url = "https://data.nba.net/prod/v2/20190204/scoreboard.json"
    main_api = "https://data.nba.net/prod/v2/"
    # url = main_api + today_url + "/scoreboard.json"
    json_data = requests.get(url).json()

    json_numGames = json_data['numGames']
    if json_numGames > 0:
        time = json_data['_internal']['pubDateTime']
        print('\nNBA Action as of ' + time +
              '\nNumber of Games Today: ' + str(json_numGames))

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
                # Convert name with triCode_dict
                visitor_name = triCode_dict[vis]
                # Get o/u from schedule_odds
                games = len(schedule_odds)
                for i in range(games):
                    if schedule_odds['game'+str(i)]['vteam']['name'] == str(visitor_name):
                        overunder = schedule_odds['game' +
                                                  str(i)]['odds']['overunder']
                        print('  ' + start + '\n  ' + vis + ' (' +
                              vis_w + ' - ' + vis_l + ') o/u ' + overunder)

            if len(check_v.get('linescore')) == 1:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = '--'
                vis_q3 = '--'
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "
                      + vis_q2 + " | " + vis_q3 + " | " + vis_q4 + " | ")

            if len(check_v.get('linescore')) == 2:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = '--'
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "
                      + vis_q2 + " | " + vis_q3 + " | " + vis_q4 + " | ")

            if len(check_v.get('linescore')) == 3:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = each['vTeam']['linescore'][2]['score']
                vis_q4 = '--'
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "
                      + vis_q2 + " | " + vis_q3 + " | " + vis_q4 + " | ")

            if len(check_v.get('linescore')) == 4:
                vis_q1 = each['vTeam']['linescore'][0]['score']
                vis_q2 = each['vTeam']['linescore'][1]['score']
                vis_q3 = each['vTeam']['linescore'][2]['score']
                vis_q4 = each['vTeam']['linescore'][3]['score']
                vis_score = each['vTeam']['score']
                print('  ' + vis + ": " + vis_score + " | " + vis_q1 + " | "
                      + vis_q2 + " | " + vis_q3 + " | " + vis_q4 + " | ")

            h = each['hTeam']['triCode']
            check_h = each['hTeam']
            if len(check_h.get('linescore')) == 0:
                h_w = each['hTeam']['win']
                h_l = each['hTeam']['loss']
                # Convert name with triCode_dict
                home_name = triCode_dict[h]
                # Get spread from schedule_odds
                games = len(schedule_odds)
                for i in range(games):
                    if schedule_odds['game'+str(i)]['hteam']['name'] == str(home_name):
                        spread = schedule_odds['game' +
                                               str(i)]['odds']['homespread']
                        print('@ ' + h + ' (' + h_w + ' - ' + h_l + ') ' + spread)

            if len(check_h.get('linescore')) == 1:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = '--'
                h_q3 = '--'
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "
                      + h_q2 + " | " + h_q3 + " | " + h_q4 + " | ")

            if len(check_h.get('linescore')) == 2:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = '--'
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "
                      + h_q2 + " | " + h_q3 + " | " + h_q4 + " | ")

            if len(check_h.get('linescore')) == 3:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = each['hTeam']['linescore'][2]['score']
                h_q4 = '--'
                h_score = each['hTeam']['score']
                print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "
                      + h_q2 + " | " + h_q3 + " | " + h_q4 + " | ")
            check_end = each['nugget']
            if len(check_h.get('linescore')) == 4:
                h_q1 = each['hTeam']['linescore'][0]['score']
                h_q2 = each['hTeam']['linescore'][1]['score']
                h_q3 = each['hTeam']['linescore'][2]['score']
                h_q4 = each['hTeam']['linescore'][3]['score']
                h_score = each['hTeam']['score']
                if len(check_end.get('text')) == 0:
                    print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "
                          + h_q2 + " | " + h_q3 + " | " + h_q4 + " |")
                else:
                    print('@ ' + h + ": " + h_score + " | " + h_q1 + " | "
                          + h_q2 + " | " + h_q3 + " | " + h_q4 + " |  \n"
                          + each['nugget']['text'])

        print('------------------------------')


if __name__ == "__main__":
    get_scores()
