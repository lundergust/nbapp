//
//  testViewController.swift
//  test2
//
//  Created by lundergust on 3/22/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class testViewController: UIViewController {
    
    


    @IBOutlet var todayMain: UIView!
    @IBOutlet weak var todayScroll: UIScrollView!
    @IBOutlet weak var todayView: UIView!
    
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
    
    //Nuggets
    @IBOutlet weak var nugget1: UILabel!
    @IBOutlet weak var nugget2: UILabel!
    @IBOutlet weak var nugget3: UILabel!
    @IBOutlet weak var nugget4: UILabel!
    @IBOutlet weak var nugget5: UILabel!
    @IBOutlet weak var nugget6: UILabel!
    @IBOutlet weak var nugget7: UILabel!
    @IBOutlet weak var nugget8: UILabel!
    @IBOutlet weak var nugget9: UILabel!
    @IBOutlet weak var nugget10: UILabel!
    @IBOutlet weak var nugget11: UILabel!
    @IBOutlet weak var nugget12: UILabel!
    @IBOutlet weak var nugget13: UILabel!
    @IBOutlet weak var nugget14: UILabel!
    @IBOutlet weak var nugget15: UILabel!
    
    
    
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

                let thing = try JSONDecoder().decode(Scores.self, from: data)
                
                if thing.numGames > 0 {

                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "Number of games: " + String(thing.numGames)
                    
                    DispatchQueue.main.async {self.test_label.text = "Yesterday: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}
                
                    // Game 1
                    var isIndexValid = thing.games.indices.contains(0)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team1.text = thing.games[0].vTeam.triCode}
                        DispatchQueue.main.async {self.team2.text = thing.games[0].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score1.text = thing.games[0].vTeam.score}
                        DispatchQueue.main.async {self.score2.text = thing.games[0].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[0].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[0].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo1.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo2.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[0].isGameActivated == true {
                            if thing.games[0].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock1.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock1.text = thing.games[0].clock + " Q" + String(thing.games[0].period.current)}
                            }
                        } else {
                            if thing.games[0].period.current >= 4 {
                                DispatchQueue.main.async {self.clock1.text = "Final"}

                            } else if thing.games[0].period.current == 0 {
                                DispatchQueue.main.async {self.clock1.text = thing.games[0].startTimeEastern}
                            }
                        }
                        
                        // set nugget
                        DispatchQueue.main.async {self.nugget1.sizeToFit()}
                        DispatchQueue.main.async {self.nugget1.text = thing.games[0].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team1.text = ""}
                        DispatchQueue.main.async {self.team2.text = ""}
                        DispatchQueue.main.async {self.score1.text = ""}
                        DispatchQueue.main.async {self.score2.text = ""}
                        DispatchQueue.main.async {self.clock1.text = ""}
                        DispatchQueue.main.async {self.nugget1.text = ""}
                    }
                    
                    // Game 2
                    isIndexValid = thing.games.indices.contains(1)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team3.text = thing.games[1].vTeam.triCode}
                        DispatchQueue.main.async {self.team4.text = thing.games[1].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score3.text = thing.games[1].vTeam.score}
                        DispatchQueue.main.async {self.score4.text = thing.games[1].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[1].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[1].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo3.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo4.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[1].isGameActivated == true {
                            if thing.games[1].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock2.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock2.text = thing.games[1].clock + " Q" + String(thing.games[1].period.current)}
                            }
                        } else {
                            if thing.games[1].period.current >= 4 {
                                DispatchQueue.main.async {self.clock2.text = "Final"}
                                
                            } else if thing.games[1].period.current == 0 {
                                DispatchQueue.main.async {self.clock2.text = thing.games[1].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget2.sizeToFit()}
                        DispatchQueue.main.async {self.nugget2.text = thing.games[1].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team3.text = ""}
                        DispatchQueue.main.async {self.team4.text = ""}
                        DispatchQueue.main.async {self.score3.text = ""}
                        DispatchQueue.main.async {self.score4.text = ""}
                        DispatchQueue.main.async {self.clock2.text = ""}
                        DispatchQueue.main.async {self.nugget2.text = ""}
                    }
                    
                    // Game 3
                    isIndexValid = thing.games.indices.contains(2)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team5.text = thing.games[2].vTeam.triCode}
                        DispatchQueue.main.async {self.team6.text = thing.games[2].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score5.text = thing.games[2].vTeam.score}
                        DispatchQueue.main.async {self.score6.text = thing.games[2].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[2].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[2].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo5.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo6.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[2].isGameActivated == true {
                            if thing.games[2].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock3.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock3.text = thing.games[2].clock + " Q" + String(thing.games[2].period.current)}
                            }
                        } else {
                            if thing.games[2].period.current >= 4 {
                                DispatchQueue.main.async {self.clock3.text = "Final"}
                                
                            } else if thing.games[2].period.current == 0 {
                                DispatchQueue.main.async {self.clock3.text = thing.games[2].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget3.sizeToFit()}
                        DispatchQueue.main.async {self.nugget3.text = thing.games[2].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team5.text = ""}
                        DispatchQueue.main.async {self.team6.text = ""}
                        DispatchQueue.main.async {self.score5.text = ""}
                        DispatchQueue.main.async {self.score6.text = ""}
                        DispatchQueue.main.async {self.clock3.text = ""}
                        DispatchQueue.main.async {self.nugget3.text = ""}
                    }
                    
                    // Game 4
                    isIndexValid = thing.games.indices.contains(3)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team7.text = thing.games[3].vTeam.triCode}
                        DispatchQueue.main.async {self.team8.text = thing.games[3].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score7.text = thing.games[3].vTeam.score}
                        DispatchQueue.main.async {self.score8.text = thing.games[3].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[3].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[3].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo7.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo8.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[3].isGameActivated == true {
                            if thing.games[3].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock4.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock4.text = thing.games[3].clock + " Q" + String(thing.games[3].period.current)}
                            }
                        } else {
                            if thing.games[3].period.current >= 4 {
                                DispatchQueue.main.async {self.clock4.text = "Final"}
                                
                            } else if thing.games[3].period.current == 0 {
                                DispatchQueue.main.async {self.clock4.text = thing.games[3].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget4.sizeToFit()}
                        DispatchQueue.main.async {self.nugget4.text = thing.games[3].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team7.text = ""}
                        DispatchQueue.main.async {self.team8.text = ""}
                        DispatchQueue.main.async {self.score7.text = ""}
                        DispatchQueue.main.async {self.score8.text = ""}
                        DispatchQueue.main.async {self.clock4.text = ""}
                        DispatchQueue.main.async {self.nugget4.text = ""}
                    }
                    
                    // Game 5
                    isIndexValid = thing.games.indices.contains(4)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team9.text = thing.games[4].vTeam.triCode}
                        DispatchQueue.main.async {self.team10.text = thing.games[4].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score9.text = thing.games[4].vTeam.score}
                        DispatchQueue.main.async {self.score10.text = thing.games[4].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[4].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[4].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo9.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo10.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[4].isGameActivated == true {
                            if thing.games[4].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock5.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock5.text = thing.games[4].clock + " Q" + String(thing.games[4].period.current)}
                            }
                        } else {
                            if thing.games[4].period.current >= 4 {
                                DispatchQueue.main.async {self.clock5.text = "Final"}
                                
                            } else if thing.games[4].period.current == 0 {
                                DispatchQueue.main.async {self.clock5.text = thing.games[4].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget5.sizeToFit()}
                        DispatchQueue.main.async {self.nugget5.text = thing.games[4].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team9.text = ""}
                        DispatchQueue.main.async {self.team10.text = ""}
                        DispatchQueue.main.async {self.score9.text = ""}
                        DispatchQueue.main.async {self.score10.text = ""}
                        DispatchQueue.main.async {self.clock5.text = ""}
                        DispatchQueue.main.async {self.nugget5.text = ""}
                    }
                    
                    // Game 6
                    isIndexValid = thing.games.indices.contains(5)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:800)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team11.text = thing.games[5].vTeam.triCode}
                        DispatchQueue.main.async {self.team12.text = thing.games[5].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score11.text = thing.games[5].vTeam.score}
                        DispatchQueue.main.async {self.score12.text = thing.games[5].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[5].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[5].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo11.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo12.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[5].isGameActivated == true {
                            if thing.games[5].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock6.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock6.text = thing.games[5].clock + " Q" + String(thing.games[5].period.current)}
                            }
                        } else {
                            if thing.games[5].period.current >= 4 {
                                DispatchQueue.main.async {self.clock6.text = "Final"}
                                
                            } else if thing.games[5].period.current == 0 {
                                DispatchQueue.main.async {self.clock6.text = thing.games[5].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget6.sizeToFit()}
                        DispatchQueue.main.async {self.nugget6.text = thing.games[5].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team11.text = ""}
                        DispatchQueue.main.async {self.team12.text = ""}
                        DispatchQueue.main.async {self.score11.text = ""}
                        DispatchQueue.main.async {self.score12.text = ""}
                        DispatchQueue.main.async {self.clock6.text = ""}
                        DispatchQueue.main.async {self.nugget6.text = ""}
                    }
                    
                    // Game 7
                    isIndexValid = thing.games.indices.contains(6)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:950)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team13.text = thing.games[6].vTeam.triCode}
                        DispatchQueue.main.async {self.team14.text = thing.games[6].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score13.text = thing.games[6].vTeam.score}
                        DispatchQueue.main.async {self.score14.text = thing.games[6].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[6].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[6].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo13.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo14.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[6].isGameActivated == true {
                            if thing.games[6].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock7.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock7.text = thing.games[6].clock + " Q" + String(thing.games[6].period.current)}
                            }
                        } else {
                            if thing.games[6].period.current >= 4 {
                                DispatchQueue.main.async {self.clock7.text = "Final"}
                                
                            } else if thing.games[6].period.current == 0 {
                                DispatchQueue.main.async {self.clock7.text = thing.games[6].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget7.sizeToFit()}
                        DispatchQueue.main.async {self.nugget7.text = thing.games[6].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team13.text = ""}
                        DispatchQueue.main.async {self.team14.text = ""}
                        DispatchQueue.main.async {self.score13.text = ""}
                        DispatchQueue.main.async {self.score14.text = ""}
                        DispatchQueue.main.async {self.clock7.text = ""}
                        DispatchQueue.main.async {self.nugget7.text = ""}
                    }
                    
                    // Game 8
                    isIndexValid = thing.games.indices.contains(7)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1050)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team15.text = thing.games[7].vTeam.triCode}
                        DispatchQueue.main.async {self.team16.text = thing.games[7].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score15.text = thing.games[7].vTeam.score}
                        DispatchQueue.main.async {self.score16.text = thing.games[7].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[7].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[7].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo15.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo16.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[7].isGameActivated == true {
                            if thing.games[7].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock8.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock8.text = thing.games[7].clock + " Q" + String(thing.games[7].period.current)}
                            }
                        } else {
                            if thing.games[7].period.current >= 4 {
                                DispatchQueue.main.async {self.clock8.text = "Final"}
                                
                            } else if thing.games[7].period.current == 0 {
                                DispatchQueue.main.async {self.clock8.text = thing.games[7].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget8.sizeToFit()}
                        DispatchQueue.main.async {self.nugget8.text = thing.games[7].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team15.text = ""}
                        DispatchQueue.main.async {self.team16.text = ""}
                        DispatchQueue.main.async {self.score15.text = ""}
                        DispatchQueue.main.async {self.score16.text = ""}
                        DispatchQueue.main.async {self.clock8.text = ""}
                        DispatchQueue.main.async {self.nugget8.text = ""}
                    }
                    
                    // Game 9
                    isIndexValid = thing.games.indices.contains(8)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1160)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team17.text = thing.games[8].vTeam.triCode}
                        DispatchQueue.main.async {self.team18.text = thing.games[8].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score17.text = thing.games[8].vTeam.score}
                        DispatchQueue.main.async {self.score18.text = thing.games[8].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[8].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[8].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo17.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo18.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[8].isGameActivated == true {
                            if thing.games[8].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock9.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock9.text = thing.games[8].clock + " Q" + String(thing.games[8].period.current)}
                            }
                        } else {
                            if thing.games[8].period.current >= 4 {
                                DispatchQueue.main.async {self.clock9.text = "Final"}
                                
                            } else if thing.games[8].period.current == 0 {
                                DispatchQueue.main.async {self.clock9.text = thing.games[8].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget9.sizeToFit()}
                        DispatchQueue.main.async {self.nugget9.text = thing.games[8].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team17.text = ""}
                        DispatchQueue.main.async {self.team18.text = ""}
                        DispatchQueue.main.async {self.score17.text = ""}
                        DispatchQueue.main.async {self.score18.text = ""}
                        DispatchQueue.main.async {self.clock9.text = ""}
                        DispatchQueue.main.async {self.nugget9.text = ""}
                    }
                    
                    // Game 10
                    isIndexValid = thing.games.indices.contains(9)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1280)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team19.text = thing.games[9].vTeam.triCode}
                        DispatchQueue.main.async {self.team20.text = thing.games[9].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score19.text = thing.games[9].vTeam.score}
                        DispatchQueue.main.async {self.score20.text = thing.games[9].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[9].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[9].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo19.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo20.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[9].isGameActivated == true {
                            if thing.games[9].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock10.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock10.text = thing.games[9].clock + " Q" + String(thing.games[9].period.current)}
                            }
                        } else {
                            if thing.games[9].period.current >= 4 {
                                DispatchQueue.main.async {self.clock10.text = "Final"}
                                
                            } else if thing.games[9].period.current == 0 {
                                DispatchQueue.main.async {self.clock10.text = thing.games[9].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget10.sizeToFit()}
                        DispatchQueue.main.async {self.nugget10.text = thing.games[9].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team19.text = ""}
                        DispatchQueue.main.async {self.team20.text = ""}
                        DispatchQueue.main.async {self.score19.text = ""}
                        DispatchQueue.main.async {self.score20.text = ""}
                        DispatchQueue.main.async {self.clock10.text = ""}
                        DispatchQueue.main.async {self.nugget10.text = ""}
                    }
                    
                    // Game 11
                    isIndexValid = thing.games.indices.contains(10)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1400)}
                        // set teams
                        DispatchQueue.main.async {self.team21.text = thing.games[10].vTeam.triCode}
                        DispatchQueue.main.async {self.team22.text = thing.games[10].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score21.text = thing.games[10].vTeam.score}
                        DispatchQueue.main.async {self.score22.text = thing.games[10].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[10].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[10].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo21.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo22.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[10].isGameActivated == true {
                            if thing.games[10].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock11.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock11.text = thing.games[10].clock + " Q" + String(thing.games[10].period.current)}
                            }
                        } else {
                            if thing.games[10].period.current >= 4 {
                                DispatchQueue.main.async {self.clock11.text = "Final"}
                                
                            } else if thing.games[10].period.current == 0 {
                                DispatchQueue.main.async {self.clock11.text = thing.games[10].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget11.sizeToFit()}
                        DispatchQueue.main.async {self.nugget11.text = thing.games[10].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team21.text = ""}
                        DispatchQueue.main.async {self.team22.text = ""}
                        DispatchQueue.main.async {self.score21.text = ""}
                        DispatchQueue.main.async {self.score22.text = ""}
                        DispatchQueue.main.async {self.clock11.text = ""}
                        DispatchQueue.main.async {self.nugget11.text = ""}
                    }
                    
                    // Game 12
                    isIndexValid = thing.games.indices.contains(11)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1520)}
                        // set teams
                        DispatchQueue.main.async {self.team23.text = thing.games[11].vTeam.triCode}
                        DispatchQueue.main.async {self.team24.text = thing.games[11].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score23.text = thing.games[11].vTeam.score}
                        DispatchQueue.main.async {self.score24.text = thing.games[11].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[11].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[11].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo23.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo24.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[11].isGameActivated == true {
                            if thing.games[11].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock12.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock12.text = thing.games[11].clock + " Q" + String(thing.games[11].period.current)}
                            }
                        } else {
                            if thing.games[11].period.current >= 4 {
                                DispatchQueue.main.async {self.clock12.text = "Final"}
                                
                            } else if thing.games[11].period.current == 0 {
                                DispatchQueue.main.async {self.clock12.text = thing.games[11].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget12.sizeToFit()}
                        DispatchQueue.main.async {self.nugget12.text = thing.games[11].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team23.text = ""}
                        DispatchQueue.main.async {self.team24.text = ""}
                        DispatchQueue.main.async {self.score23.text = ""}
                        DispatchQueue.main.async {self.score24.text = ""}
                        DispatchQueue.main.async {self.clock12.text = ""}
                        DispatchQueue.main.async {self.nugget12.text = ""}
                    }
                    
                    // Game 13
                    isIndexValid = thing.games.indices.contains(12)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1640)}
                        // set teams
                        DispatchQueue.main.async {self.team25.text = thing.games[12].vTeam.triCode}
                        DispatchQueue.main.async {self.team26.text = thing.games[12].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score25.text = thing.games[12].vTeam.score}
                        DispatchQueue.main.async {self.score26.text = thing.games[12].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[12].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[12].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo25.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo26.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[12].isGameActivated == true {
                            if thing.games[12].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock13.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock13.text = thing.games[12].clock + " Q" + String(thing.games[12].period.current)}
                            }
                        } else {
                            if thing.games[12].period.current >= 4 {
                                DispatchQueue.main.async {self.clock13.text = "Final"}
                                
                            } else if thing.games[12].period.current == 0 {
                                DispatchQueue.main.async {self.clock13.text = thing.games[12].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget13.sizeToFit()}
                        DispatchQueue.main.async {self.nugget13.text = thing.games[12].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team25.text = ""}
                        DispatchQueue.main.async {self.team26.text = ""}
                        DispatchQueue.main.async {self.score25.text = ""}
                        DispatchQueue.main.async {self.score26.text = ""}
                        DispatchQueue.main.async {self.clock13.text = ""}
                        DispatchQueue.main.async {self.nugget13.text = ""}
                    }
                    
                    // Game 14
                    isIndexValid = thing.games.indices.contains(13)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1760)}
                        // set teams
                        DispatchQueue.main.async {self.team27.text = thing.games[13].vTeam.triCode}
                        DispatchQueue.main.async {self.team28.text = thing.games[13].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score27.text = thing.games[13].vTeam.score}
                        DispatchQueue.main.async {self.score28.text = thing.games[13].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[13].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[13].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo27.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo28.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[13].isGameActivated == true {
                            if thing.games[13].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock14.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock14.text = thing.games[13].clock + " Q" + String(thing.games[13].period.current)}
                            }
                        } else {
                            if thing.games[13].period.current >= 4 {
                                DispatchQueue.main.async {self.clock14.text = "Final"}
                                
                            } else if thing.games[13].period.current == 0 {
                                DispatchQueue.main.async {self.clock14.text = thing.games[13].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget14.sizeToFit()}
                        DispatchQueue.main.async {self.nugget14.text = thing.games[13].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team27.text = ""}
                        DispatchQueue.main.async {self.team28.text = ""}
                        DispatchQueue.main.async {self.score27.text = ""}
                        DispatchQueue.main.async {self.score28.text = ""}
                        DispatchQueue.main.async {self.clock14.text = ""}
                        DispatchQueue.main.async {self.nugget14.text = ""}
                    }
                    
                    // Game 15
                    isIndexValid = thing.games.indices.contains(14)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1880)}
                        // set teams
                        DispatchQueue.main.async {self.team29.text = thing.games[14].vTeam.triCode}
                        DispatchQueue.main.async {self.team30.text = thing.games[14].hTeam.triCode}
                        
                        // set scores
                        DispatchQueue.main.async {self.score29.text = thing.games[14].vTeam.score}
                        DispatchQueue.main.async {self.score30.text = thing.games[14].hTeam.score}
                        
                        // set logos
                        let logo1_string = String(thing.games[14].vTeam.triCode) + "_logo.png"
                        let logo2_string = String(thing.games[14].hTeam.triCode) + "_logo.png"
                        DispatchQueue.main.async {self.logo29.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo30.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[14].isGameActivated == true {
                            if thing.games[14].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock15.text = "Halftime"}
                            } else {
                                DispatchQueue.main.async {self.clock15.text = thing.games[14].clock + " Q" + String(thing.games[14].period.current)}
                            }
                        } else {
                            if thing.games[14].period.current >= 4 {
                                DispatchQueue.main.async {self.clock15.text = "Final"}
                                
                            } else if thing.games[14].period.current == 0 {
                                DispatchQueue.main.async {self.clock15.text = thing.games[14].startTimeEastern}
                            }
                        }
                        // set nugget
                        DispatchQueue.main.async {self.nugget15.sizeToFit()}
                        DispatchQueue.main.async {self.nugget15.text = thing.games[14].nugget.text}
                    } else {
                        DispatchQueue.main.async {self.team29.text = ""}
                        DispatchQueue.main.async {self.team30.text = ""}
                        DispatchQueue.main.async {self.score29.text = ""}
                        DispatchQueue.main.async {self.score30.text = ""}
                        DispatchQueue.main.async {self.clock15.text = ""}
                        DispatchQueue.main.async {self.nugget15.text = ""}
                    }
                    
                    
                    
                }
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
        
    }
    

    
}


