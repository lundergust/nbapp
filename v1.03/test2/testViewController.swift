//
//  testViewController.swift
//  test2
//
//  Created by lundergust on 3/22/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class testViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var test_games_label: UILabel!
    @IBOutlet weak var test_label: UILabel!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    
    //Teams
    @IBOutlet weak var team1: UILabel!
    @IBOutlet weak var team2: UILabel!
    @IBOutlet weak var team3: UILabel!
    @IBOutlet weak var team4: UILabel!
    @IBOutlet weak var team5: UILabel!
    @IBOutlet weak var team6: UILabel!
    @IBOutlet weak var team7: UILabel!
    @IBOutlet weak var team8: UILabel!
    @IBOutlet weak var team9: UILabel!
    @IBOutlet weak var team10: UILabel!
    @IBOutlet weak var team11: UILabel!
    @IBOutlet weak var team12: UILabel!
    @IBOutlet weak var team13: UILabel!
    @IBOutlet weak var team14: UILabel!
    @IBOutlet weak var team15: UILabel!
    @IBOutlet weak var team16: UILabel!
    @IBOutlet weak var team17: UILabel!
    @IBOutlet weak var team18: UILabel!
    @IBOutlet weak var team19: UILabel!
    @IBOutlet weak var team20: UILabel!
    @IBOutlet weak var team21: UILabel!
    @IBOutlet weak var team22: UILabel!
    @IBOutlet weak var team23: UILabel!
    @IBOutlet weak var team24: UILabel!
    @IBOutlet weak var team25: UILabel!
    @IBOutlet weak var team26: UILabel!
    @IBOutlet weak var team27: UILabel!
    @IBOutlet weak var team28: UILabel!
    @IBOutlet weak var team29: UILabel!
    @IBOutlet weak var team30: UILabel!
    
    //Scores
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    @IBOutlet weak var score7: UILabel!
    @IBOutlet weak var score8: UILabel!
    @IBOutlet weak var score9: UILabel!
    @IBOutlet weak var score10: UILabel!
    @IBOutlet weak var score11: UILabel!
    @IBOutlet weak var score12: UILabel!
    @IBOutlet weak var score13: UILabel!
    @IBOutlet weak var score14: UILabel!
    @IBOutlet weak var score15: UILabel!
    @IBOutlet weak var score16: UILabel!
    @IBOutlet weak var score17: UILabel!
    @IBOutlet weak var score18: UILabel!
    @IBOutlet weak var score19: UILabel!
    @IBOutlet weak var score20: UILabel!
    @IBOutlet weak var score21: UILabel!
    @IBOutlet weak var score22: UILabel!
    @IBOutlet weak var score23: UILabel!
    @IBOutlet weak var score24: UILabel!
    @IBOutlet weak var score25: UILabel!
    @IBOutlet weak var score26: UILabel!
    @IBOutlet weak var score27: UILabel!
    @IBOutlet weak var score28: UILabel!
    @IBOutlet weak var score29: UILabel!
    @IBOutlet weak var score30: UILabel!
    
    //Logos
    @IBOutlet weak var logo1: UIImageView!
    @IBOutlet weak var logo2: UIImageView!
    @IBOutlet weak var logo3: UIImageView!
    @IBOutlet weak var logo4: UIImageView!
    @IBOutlet weak var logo5: UIImageView!
    @IBOutlet weak var logo6: UIImageView!
    @IBOutlet weak var logo7: UIImageView!
    @IBOutlet weak var logo8: UIImageView!
    @IBOutlet weak var logo9: UIImageView!
    @IBOutlet weak var logo10: UIImageView!
    @IBOutlet weak var logo11: UIImageView!
    @IBOutlet weak var logo12: UIImageView!
    @IBOutlet weak var logo13: UIImageView!
    @IBOutlet weak var logo14: UIImageView!
    @IBOutlet weak var logo15: UIImageView!
    @IBOutlet weak var logo16: UIImageView!
    @IBOutlet weak var logo17: UIImageView!
    @IBOutlet weak var logo18: UIImageView!
    @IBOutlet weak var logo19: UIImageView!
    @IBOutlet weak var logo20: UIImageView!
    @IBOutlet weak var logo21: UIImageView!
    @IBOutlet weak var logo22: UIImageView!
    @IBOutlet weak var logo23: UIImageView!
    @IBOutlet weak var logo24: UIImageView!
    @IBOutlet weak var logo25: UIImageView!
    @IBOutlet weak var logo26: UIImageView!
    @IBOutlet weak var logo27: UIImageView!
    @IBOutlet weak var logo28: UIImageView!
    @IBOutlet weak var logo29: UIImageView!
    @IBOutlet weak var logo30: UIImageView!
    
    //Clocks
    @IBOutlet weak var clock1: UILabel!
    @IBOutlet weak var clock2: UILabel!
    @IBOutlet weak var clock3: UILabel!
    @IBOutlet weak var clock4: UILabel!
    @IBOutlet weak var clock5: UILabel!
    @IBOutlet weak var clock6: UILabel!
    @IBOutlet weak var clock7: UILabel!
    @IBOutlet weak var clock8: UILabel!
    @IBOutlet weak var clock9: UILabel!
    @IBOutlet weak var clock10: UILabel!
    @IBOutlet weak var clock11: UILabel!
    @IBOutlet weak var clock12: UILabel!
    @IBOutlet weak var clock13: UILabel!
    @IBOutlet weak var clock14: UILabel!
    @IBOutlet weak var clock15: UILabel!
    
    
    
    
    
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
                print(json)
                print("\n decode attempt")
            } catch {}
            
            do {
                
                var scores_text: [String] = []
                let header: String = "-------------------------------------"
                let thing = try JSONDecoder().decode(Scores.self, from: data)
                print(thing.games)
                
                if thing.numGames > 0 {

                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "Number of games: " + String(thing.numGames)
                    
                    DispatchQueue.main.async {self.test_label.text = "Yesterday: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}
                    
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
                
                
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
        
        DispatchQueue.main.async {self.team1.text = "BOS"}
        DispatchQueue.main.async {self.team2.text = "PHI"}
        DispatchQueue.main.async {self.score1.text = "69"}
        DispatchQueue.main.async {self.score2.text = "69"}
        DispatchQueue.main.async {self.logo1.image = UIImage(named: "BOS_logo.png")}
        DispatchQueue.main.async {self.logo2.image = UIImage(named: "PHI_logo.png")}
        DispatchQueue.main.async {self.clock1.text = "4:24 Q3"}
        
    }
    

    
}


