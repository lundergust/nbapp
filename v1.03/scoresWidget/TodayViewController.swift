//
//  TodayViewController.swift
//  scoresWidget
//
//  Created by lundergust on 3/25/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["BOS 110 @ CHI 89 1:03 Q4", "bread", "tacos", "tomatoes"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        fetchJSON()
    }
    
    // Show more function
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        let expanded = activeDisplayMode == .expanded
        preferredContentSize = expanded ? CGSize(width: maxSize.width, height: 400) : maxSize
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
}
    
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }

func fetchJSON() {

    let date = Date()
    let calendar = Calendar.current
    let year: Int = calendar.component(.year, from: date)
    let month: Int = calendar.component(.month, from: date)
    let day: Int = calendar.component(.day, from: date) - 1
    let new_day: String
    let new_month: String
    let todays_url: String

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
    todays_url = (String(year) + String(new_month) + String(new_day))


    guard let url = URL(string: "https://data.nba.net/prod/v2/" + todays_url + "/scoreboard.json") else { return }
    let session = URLSession.shared
    _ = session.dataTask(with: url) { (data, _, _) in
        guard let data = data else { return }
        
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
        } catch {}
        
        do {
            
            let thing = try JSONDecoder().decode(Scores.self, from: data)
            var gamesList = [Any]()
            var gameString: String
            if thing.numGames > 0 {
                
                for game in thing.games {
                    gameString = String(game.vTeam.triCode) + " " + String(game.vTeam.score) + " @ " + String(game.hTeam.triCode) + " " + String(game.hTeam.score)
                    gamesList.append(gameString)
                }
            }

        } catch let jsonErr {
            print("Error serializing json" ,jsonErr)
        }
        }.resume()
}
