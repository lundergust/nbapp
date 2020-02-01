//
//  ViewController.swift
//  test2
//
//  Created by lundergust on 3/20/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class yesterdayViewController: UIViewController {
    

    @IBOutlet var yesterday_scores_page: UIView!
    @IBOutlet weak var yesterday_scores_output: UITextView!
    @IBOutlet weak var yesterday_label: UILabel!
    @IBOutlet weak var yesterday_games_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let date = Date()
        let calendar = Calendar.current
        let year: Int = calendar.component(.year, from: date)
        var month: Int = calendar.component(.month, from: date)
        var day: Int = calendar.component(.day, from: date) - 1
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
                var scores_text: [String] = []
                let header: String = "-------------------------------------"
                let thing = try JSONDecoder().decode(Scores.self, from: data)
                
                if thing.numGames > 0 {
                    
                    let yesterday_text1 = (String(new_month) + "-" + String(new_day))
                    let yesterday_text2 = "Number of games: " + String(thing.numGames)
                    
                    DispatchQueue.main.async {self.yesterday_label.text = "Yesterday: " + yesterday_text1}
                    DispatchQueue.main.async {self.yesterday_games_label.text = yesterday_text2}
                    
                    for game in thing.games {
                        scores_text.append(header)
                        
                        if game.isGameActivated == true {
                            if game.period.isHalftime == true{
                                
                                scores_text.append("    HALF")
                            } else {
                                scores_text.append(game.clock + " Q" + String(game.period.current))
                            }
                            
                            scores_text.append("    " + game.vTeam.triCode + " " + game.vTeam.score + " | " + game.vTeam.linescore[0].score + " | " + game.vTeam.linescore[1].score + " | " + game.vTeam.linescore[2].score + " | " + game.vTeam.linescore[3].score)
                            scores_text.append("@ " + game.hTeam.triCode + " " + game.hTeam.score + " | " + game.hTeam.linescore[0].score + " | " + game.hTeam.linescore[1].score + " | " + game.hTeam.linescore[2].score + " | " + game.hTeam.linescore[3].score)
                            
                        } else {
                            if game.period.current >= 4 {
                                scores_text.append("    Final")
                                scores_text.append("    " + game.vTeam.triCode + " " + game.vTeam.score + " | " + game.vTeam.linescore[0].score + " | " + game.vTeam.linescore[1].score + " | " + game.vTeam.linescore[2].score + " | " + game.vTeam.linescore[3].score)
                                scores_text.append("@ " + game.hTeam.triCode + " " + game.hTeam.score + " | " + game.hTeam.linescore[0].score + " | " + game.hTeam.linescore[1].score + " | " + game.hTeam.linescore[2].score + " | " + game.hTeam.linescore[3].score)
                                scores_text.append(game.nugget.text)
                            } else if game.period.current == 0 {
                                scores_text.append("    " + game.startTimeEastern)
                                scores_text.append("    " + game.vTeam.triCode)
                                scores_text.append("@ " + game.hTeam.triCode)
                            }
                        }
                        
                    }
                    
                    scores_text.append(header)
                    
                } else {
                    scores_text.append("There were no games yesterday :(")
                }
                let stringRepresentation = scores_text.joined(separator: "\n")
                DispatchQueue.main.async {self.yesterday_scores_output.text = String(stringRepresentation)}
                
                
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
        
    }
    
    
    
}

