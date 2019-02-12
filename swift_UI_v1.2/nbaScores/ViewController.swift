//
//  ViewController.swift
//  nbaScores
//
//  Created by Joseph M Leaman on 2/8/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var gray_bg: UIImageView!
    @IBOutlet weak var start_button: UIButton!
    @IBOutlet weak var scores_page: UIView!
    @IBOutlet weak var score_output: UITextView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    @IBAction func button_pressed(_ sender: Any) {

        let date = Date()
        let calendar = Calendar.current
        let year: Int = calendar.component(.year, from: date)
        var month: Int = calendar.component(.month, from: date)
        var day: Int = calendar.component(.day, from: date)
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
                print(json)
                print("\n decode attempt")
            } catch {}
            
            do {
                var scores_text: [String] = []
                let header: String = "-------------------------------------"
                scores_text.append(header)
                let thing = try JSONDecoder().decode(Scores.self, from: data)
                print(thing.games)
                
                if thing.numGames > 0 {

                    let text1 = ("NBA Action From " + String(year) + "-" + String(new_month) + "-" +  String(new_day) + "\nNumber of games today: " + String(thing.numGames))
                    
                    scores_text.append(text1)
                    
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
                            if game.period.current == 4 {
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
                    scores_text.append("There are no games today :(")
                }
                let stringRepresentation = scores_text.joined(separator: "\n")
                DispatchQueue.main.async {self.score_output.text = String(stringRepresentation)}

                
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
        
        
        
        
        
        scores_page.isHidden = false
        gray_bg.isHidden = true
        start_button.isHidden = true
        
        UIView.animate(withDuration:1.0, animations: {
            self.score_output.frame = CGRect(x:8, y:50, width:398, height:800)}) { (finished) in}
        
        

    }
}
