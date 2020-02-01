////
////  getJSON.swift
////  test2
////
////  Created by lundergust on 10/27/19.
////  Copyright © 2019 lundergust. All rights reserved.
////
import Foundation
var gameIDArray = [String]()
var i = 0
var yesterday = ""
var yesterday_url = ""

func getYesterdayScoreboard() -> String {
    let date = Date()
    let calendar = Calendar.current
    let year: Int = calendar.component(.year, from: date)
    var month: Int = calendar.component(.month, from: date)
    var day: Int = calendar.component(.day, from: date) - 1
    let new_day: String
    let new_month: String
            
    if day < 10 {
        new_day = String("0") + String(day)
    } else {
        new_day = String(day)
    }
    if month < 10 {
        new_month = String("0") + String(month)
    } else {
        new_month = String(month)
    }
    yesterday = (String(year) + String(new_month) + String(new_day))
    yesterday_url = "https://data.nba.net/prod/v2/" + yesterday + "/scoreboard.json"
    return yesterday_url
}

func getYesterdayBoxscore(tag: Int) -> String {
    print(senderTag)
    fetchGameIDs3(getYesterdayScoreboard(), handler: {gameIDArray in
        return gameIDArray
    })
    while gameIDArray.count == 0 {
        let seconds = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                }
    }
//    print(gameIDArray[senderTag])

    let boxscore_url = "http://data.nba.net/data/10s/prod/v1/" + yesterday + "/" + gameIDArray[tag] + "_boxscore.json"
//    print(boxscore_url)
    return boxscore_url
}

func fetchScores(scores: Int, type: String, gameCompletionHandler: @escaping (Scores?, Error?) -> Void) {
  let url = URL(string: getYesterdayScoreboard())!
  let task = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in

    guard let data = data else { return }
    do {
      // parse json data and return it
      let jsonDict = try JSONDecoder().decode(Scores.self, from: data)
      gameCompletionHandler(jsonDict, nil)
      
    } catch let parseErr {
      print("JSON Parsing Error", parseErr)
      gameCompletionHandler(nil, parseErr)
    }
  })
  
  task.resume()
}



func fetchBoxscore3(tag: Int, handler: @escaping (Boxscore?, Error?) -> Void) {
  let url = URL(string: getYesterdayBoxscore(tag: tag))!
  _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
    guard let data = data else { return }
    do {
        // parse json data and return it
        let boxscoreDict = try JSONDecoder().decode(Boxscore.self, from: data)
        handler(boxscoreDict, nil)
        
    } catch {
      handler(nil, error)
    }
  }.resume()
}


func fetchGameIDs3(_ urlString: String, handler:@escaping ([String]) -> ([String])) {
    let url = URL(string: urlString)!
    _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data else { return }
        do {
            let jsonDict = try JSONDecoder().decode(Scores.self, from: data)
            while jsonDict.games.indices.contains(i) {
                gameIDArray.append(String(jsonDict.games[i].gameId))
                i += 1
            }
            handler(gameIDArray)
            
            
        } catch {
            print("JSON Error", error)
            }
            
       }.resume()
  
   }

//func fetchNcaa (handler: @escaping (ncaaData?, Error?) -> Void) {
//    print("fetchNCAA")
//  let url = URL(string: "https://api.collegefootballdata.com/games?year=2019")!
//  _ = URLSession.shared.dataTask(with: url) { (data, response, error) in
//    guard let data = data else { return }
//    do {
//        // parse json data and return it
//        print("trying parse")
//        let ncaaDict = try JSONDecoder().decode(ncaaData.self, from: data)
//        print("parse complete")
//        handler(ncaaDict, nil)
//        
//    } catch {
//        print("oops")
//        handler(nil, error)
//    }
//  }.resume()
//}

