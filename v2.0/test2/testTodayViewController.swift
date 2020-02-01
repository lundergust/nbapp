//
//  testViewController.swift
//  test2
//
//  Created by lundergust on 3/22/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class testTodayViewController: UIViewController {
    
    
 
    @IBOutlet var mainView: UIView!
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
    
    // Records
    
    @IBOutlet weak var record1: UILabel!
    @IBOutlet weak var record2: UILabel!
    @IBOutlet weak var record3: UILabel!
    @IBOutlet weak var record4: UILabel!
    @IBOutlet weak var record5: UILabel!
    @IBOutlet weak var record6: UILabel!
    @IBOutlet weak var record7: UILabel!
    @IBOutlet weak var record8: UILabel!
    @IBOutlet weak var record9: UILabel!
    @IBOutlet weak var record10: UILabel!
    @IBOutlet weak var record11: UILabel!
    @IBOutlet weak var record12: UILabel!
    @IBOutlet weak var record13: UILabel!
    @IBOutlet weak var record14: UILabel!
    @IBOutlet weak var record15: UILabel!
    @IBOutlet weak var record16: UILabel!
    @IBOutlet weak var record17: UILabel!
    @IBOutlet weak var record18: UILabel!
    @IBOutlet weak var record19: UILabel!
    @IBOutlet weak var record20: UILabel!
    @IBOutlet weak var record21: UILabel!
    @IBOutlet weak var record22: UILabel!
    @IBOutlet weak var record23: UILabel!
    @IBOutlet weak var record24: UILabel!
    @IBOutlet weak var record25: UILabel!
    @IBOutlet weak var record26: UILabel!
    @IBOutlet weak var record27: UILabel!
    @IBOutlet weak var record28: UILabel!
    @IBOutlet weak var record29: UILabel!
    @IBOutlet weak var record30: UILabel!
    
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
        populate()
//        configureRefreshControl()
    }
    
    
//    func configureRefreshControl() {
//        // Add the refresh control to your UIScrollView object.
//        let refreshControl = UIRefreshControl()
//        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
//        refreshControl.tintColor = UIColor.white
//        refreshControl.addTarget(self, action: #selector(self.refresh), for: .valueChanged)
//        self.scrollView.refreshControl = refreshControl
////        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
//    }
//
//    @objc func update() {
//        populate()
//    }
//
//    @objc func refresh(_ refreshControl: UIRefreshControl) {
//        DispatchQueue.main.async {self.clock1.text = "hello"}
//
//        self.scrollView.refreshControl?.endRefreshing()
//    }
    
    
    func populate() {
        
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
                
            } catch {}
            
            do {
            
                let thing = try JSONDecoder().decode(Scores.self, from: data)

                var isIndexValid = thing.games.indices.contains(0)
                if isIndexValid == false {
                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "No Games Today"
                    DispatchQueue.main.async {self.test_label.text = "Today: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}
                    DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                    }
                
                if thing.numGames > 0 {
                    
                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "Number of games: " + String(thing.numGames)
                    
                    DispatchQueue.main.async {self.test_label.text = "Today: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}
                    
                    // Game 1
                    var isIndexValid = thing.games.indices.contains(0)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team1.text = thing.games[0].vTeam.triCode}
                        DispatchQueue.main.async {self.team2.text = thing.games[0].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[0].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[0].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo1.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo2.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[0].isGameActivated == true {
                            DispatchQueue.main.async {self.clock1.sizeToFit()}
                            // set scores
                            DispatchQueue.main.async {self.score1.text = thing.games[0].vTeam.score}
                            DispatchQueue.main.async {self.score2.text = thing.games[0].hTeam.score}
                            DispatchQueue.main.async {self.record1.text = ""}
                            DispatchQueue.main.async {self.record2.text = ""}
                            if thing.games[0].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock1.text = "Halftime"}
                                DispatchQueue.main.async {self.record1.text = ""}
                                DispatchQueue.main.async {self.record2.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock1.text = thing.games[0].clock + " Q" + String(thing.games[0].period.current)}
                                DispatchQueue.main.async {self.record1.text = ""}
                                DispatchQueue.main.async {self.record2.text = ""}
                            }
                        } else {
                            if thing.games[0].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score1.text = thing.games[0].vTeam.score}
                                DispatchQueue.main.async {self.score2.text = thing.games[0].hTeam.score}
                                DispatchQueue.main.async {self.clock1.text = "Final"}
                                DispatchQueue.main.async {self.record1.text = ""}
                                DispatchQueue.main.async {self.record2.text = ""}
                                
                            } else if thing.games[0].period.current == 0 {
                                DispatchQueue.main.async {self.clock1.text = thing.games[0].startTimeEastern}
                                DispatchQueue.main.async {self.clock1.sizeToFit()}
                                
                                //set records
                                let away1win = String(thing.games[0].vTeam.win)
                                let away1loss = String(thing.games[0].vTeam.loss)
                                let home1win = String(thing.games[0].hTeam.win)
                                let home1loss = String(thing.games[0].hTeam.loss)
                                let away1record = "( " + away1win + " - " + away1loss + " )"
                                let home1record = "( " + home1win + " - " + home1loss + " )"
                                DispatchQueue.main.async {self.record1.text = away1record}
                                DispatchQueue.main.async {self.record2.text = home1record}
                                
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
                        DispatchQueue.main.async {self.record1.text = ""}
                        DispatchQueue.main.async {self.record2.text = ""}
                    }
                    
                    // Game 2
                    isIndexValid = thing.games.indices.contains(1)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team3.text = thing.games[1].vTeam.triCode}
                        DispatchQueue.main.async {self.team4.text = thing.games[1].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[1].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[1].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo3.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo4.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[1].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score3.text = thing.games[1].vTeam.score}
                            DispatchQueue.main.async {self.score4.text = thing.games[1].hTeam.score}
                            DispatchQueue.main.async {self.record3.text = ""}
                            DispatchQueue.main.async {self.record4.text = ""}
                            if thing.games[1].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock2.text = "Halftime"}
                                DispatchQueue.main.async {self.record3.text = ""}
                                DispatchQueue.main.async {self.record4.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock2.text = thing.games[1].clock + " Q" + String(thing.games[1].period.current)}
                                DispatchQueue.main.async {self.record3.text = ""}
                                DispatchQueue.main.async {self.record4.text = ""}
                            }
                        } else {
                            if thing.games[1].period.current >= 4 {
                                DispatchQueue.main.async {self.clock2.text = "Final"}
                                DispatchQueue.main.async {self.record3.text = ""}
                                DispatchQueue.main.async {self.record4.text = ""}
                                // set scores
                                DispatchQueue.main.async {self.score3.text = thing.games[1].vTeam.score}
                                DispatchQueue.main.async {self.score4.text = thing.games[1].hTeam.score}
                                
                            } else if thing.games[1].period.current == 0 {
                                DispatchQueue.main.async {self.clock2.text = thing.games[1].startTimeEastern}
                                
                                //set records
                                let away2win = String(thing.games[1].vTeam.win)
                                let away2loss = String(thing.games[1].vTeam.loss)
                                let home2win = String(thing.games[1].hTeam.win)
                                let home2loss = String(thing.games[1].hTeam.loss)
                                let away2record = "( " + away2win + " - " + away2loss + " )"
                                let home2record = "( " + home2win + " - " + home2loss + " )"
                                DispatchQueue.main.async {self.record3.text = away2record}
                                DispatchQueue.main.async {self.record4.text = home2record}
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
                        DispatchQueue.main.async {self.record3.text = ""}
                        DispatchQueue.main.async {self.record4.text = ""}
                    }
                    
                    // Game 3
                    isIndexValid = thing.games.indices.contains(2)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team5.text = thing.games[2].vTeam.triCode}
                        DispatchQueue.main.async {self.team6.text = thing.games[2].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[2].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[2].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo5.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo6.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[2].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score5.text = thing.games[2].vTeam.score}
                            DispatchQueue.main.async {self.score6.text = thing.games[2].hTeam.score}
                            DispatchQueue.main.async {self.record5.text = ""}
                            DispatchQueue.main.async {self.record6.text = ""}
                            if thing.games[2].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock3.text = "Halftime"}
                                DispatchQueue.main.async {self.record5.text = ""}
                                DispatchQueue.main.async {self.record6.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock3.text = thing.games[2].clock + " Q" + String(thing.games[2].period.current)}
                                DispatchQueue.main.async {self.record5.text = ""}
                                DispatchQueue.main.async {self.record6.text = ""}
                            }
                        } else {
                            if thing.games[2].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score5.text = thing.games[2].vTeam.score}
                                DispatchQueue.main.async {self.score6.text = thing.games[2].hTeam.score}
                                DispatchQueue.main.async {self.clock3.text = "Final"}
                                DispatchQueue.main.async {self.record5.text = ""}
                                DispatchQueue.main.async {self.record6.text = ""}
                                
                            } else if thing.games[2].period.current == 0 {
                                DispatchQueue.main.async {self.clock3.text = thing.games[2].startTimeEastern}
                                
                                //set records
                                let away3win = String(thing.games[2].vTeam.win)
                                let away3loss = String(thing.games[2].vTeam.loss)
                                let home3win = String(thing.games[2].hTeam.win)
                                let home3loss = String(thing.games[2].hTeam.loss)
                                let away3record = "( " + away3win + " - " + away3loss + " )"
                                let home3record = "( " + home3win + " - " + home3loss + " )"
                                DispatchQueue.main.async {self.record5.text = away3record}
                                DispatchQueue.main.async {self.record6.text = home3record}
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
                        DispatchQueue.main.async {self.record5.text = ""}
                        DispatchQueue.main.async {self.record6.text = ""}
                    }
                    
                    // Game 4
                    isIndexValid = thing.games.indices.contains(3)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team7.text = thing.games[3].vTeam.triCode}
                        DispatchQueue.main.async {self.team8.text = thing.games[3].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[3].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[3].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo7.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo8.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[3].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score7.text = thing.games[3].vTeam.score}
                            DispatchQueue.main.async {self.score8.text = thing.games[3].hTeam.score}
                            DispatchQueue.main.async {self.record7.text = ""}
                            DispatchQueue.main.async {self.record8.text = ""}
                            if thing.games[3].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock4.text = "Halftime"}
                                DispatchQueue.main.async {self.record7.text = ""}
                                DispatchQueue.main.async {self.record8.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock4.text = thing.games[3].clock + " Q" + String(thing.games[3].period.current)}
                                DispatchQueue.main.async {self.record7.text = ""}
                                DispatchQueue.main.async {self.record8.text = ""}
                            }
                        } else {
                            if thing.games[3].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score7.text = thing.games[3].vTeam.score}
                                DispatchQueue.main.async {self.score8.text = thing.games[3].hTeam.score}
                                DispatchQueue.main.async {self.clock4.text = "Final"}
                                DispatchQueue.main.async {self.record7.text = ""}
                                DispatchQueue.main.async {self.record8.text = ""}
                                
                            } else if thing.games[3].period.current == 0 {
                                DispatchQueue.main.async {self.clock4.text = thing.games[3].startTimeEastern}
                                
                                //set records
                                let away4win = String(thing.games[3].vTeam.win)
                                let away4loss = String(thing.games[3].vTeam.loss)
                                let home4win = String(thing.games[3].hTeam.win)
                                let home4loss = String(thing.games[3].hTeam.loss)
                                let away4record = "( " + away4win + " - " + away4loss + " )"
                                let home4record = "( " + home4win + " - " + home4loss + " )"
                                DispatchQueue.main.async {self.record7.text = away4record}
                                DispatchQueue.main.async {self.record8.text = home4record}
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
                        DispatchQueue.main.async {self.record7.text = ""}
                        DispatchQueue.main.async {self.record8.text = ""}
                    }
                    
                    // Game 5
                    isIndexValid = thing.games.indices.contains(4)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:830)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team9.text = thing.games[4].vTeam.triCode}
                        DispatchQueue.main.async {self.team10.text = thing.games[4].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[4].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[4].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo9.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo10.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[4].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score9.text = thing.games[4].vTeam.score}
                            DispatchQueue.main.async {self.score10.text = thing.games[4].hTeam.score}
                            DispatchQueue.main.async {self.record9.text = ""}
                            DispatchQueue.main.async {self.record10.text = ""}
                            if thing.games[4].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock5.text = "Halftime"}
                                DispatchQueue.main.async {self.record9.text = ""}
                                DispatchQueue.main.async {self.record10.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock5.text = thing.games[4].clock + " Q" + String(thing.games[4].period.current)}
                                DispatchQueue.main.async {self.record9.text = ""}
                                DispatchQueue.main.async {self.record10.text = ""}
                            }
                        } else {
                            if thing.games[4].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score9.text = thing.games[4].vTeam.score}
                                DispatchQueue.main.async {self.score10.text = thing.games[4].hTeam.score}
                                DispatchQueue.main.async {self.clock5.text = "Final"}
                                DispatchQueue.main.async {self.record9.text = ""}
                                DispatchQueue.main.async {self.record10.text = ""}
                                
                            } else if thing.games[4].period.current == 0 {
                                DispatchQueue.main.async {self.clock5.text = thing.games[4].startTimeEastern}
                                
                                //set records
                                let away5win = String(thing.games[4].vTeam.win)
                                let away5loss = String(thing.games[4].vTeam.loss)
                                let home5win = String(thing.games[4].hTeam.win)
                                let home5loss = String(thing.games[4].hTeam.loss)
                                let away5record = "( " + away5win + " - " + away5loss + " )"
                                let home5record = "( " + home5win + " - " + home5loss + " )"
                                DispatchQueue.main.async {self.record9.text = away5record}
                                DispatchQueue.main.async {self.record10.text = home5record}
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
                        DispatchQueue.main.async {self.record9.text = ""}
                        DispatchQueue.main.async {self.record10.text = ""}
                    }
                    
                    // Game 6
                    isIndexValid = thing.games.indices.contains(5)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:975)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team11.text = thing.games[5].vTeam.triCode}
                        DispatchQueue.main.async {self.team12.text = thing.games[5].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[5].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[5].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo11.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo12.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[5].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score11.text = thing.games[5].vTeam.score}
                            DispatchQueue.main.async {self.score12.text = thing.games[5].hTeam.score}
                            DispatchQueue.main.async {self.record11.text = ""}
                            DispatchQueue.main.async {self.record12.text = ""}
                            if thing.games[5].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock6.text = "Halftime"}
                                DispatchQueue.main.async {self.record11.text = ""}
                                DispatchQueue.main.async {self.record12.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock6.text = thing.games[5].clock + " Q" + String(thing.games[5].period.current)}
                                DispatchQueue.main.async {self.record11.text = ""}
                                DispatchQueue.main.async {self.record12.text = ""}
                            }
                        } else {
                            if thing.games[5].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score11.text = thing.games[5].vTeam.score}
                                DispatchQueue.main.async {self.score12.text = thing.games[5].hTeam.score}
                                DispatchQueue.main.async {self.clock6.text = "Final"}
                                DispatchQueue.main.async {self.record11.text = ""}
                                DispatchQueue.main.async {self.record12.text = ""}
                                
                            } else if thing.games[5].period.current == 0 {
                                DispatchQueue.main.async {self.clock6.text = thing.games[5].startTimeEastern}
                                
                                //set records
                                let away6win = String(thing.games[5].vTeam.win)
                                let away6loss = String(thing.games[5].vTeam.loss)
                                let home6win = String(thing.games[5].hTeam.win)
                                let home6loss = String(thing.games[5].hTeam.loss)
                                let away6record = "( " + away6win + " - " + away6loss + " )"
                                let home6record = "( " + home6win + " - " + home6loss + " )"
                                DispatchQueue.main.async {self.record11.text = away6record}
                                DispatchQueue.main.async {self.record12.text = home6record}
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
                        DispatchQueue.main.async {self.record11.text = ""}
                        DispatchQueue.main.async {self.record12.text = ""}
                    }
                    
                    // Game 7
                    isIndexValid = thing.games.indices.contains(6)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1120)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team13.text = thing.games[6].vTeam.triCode}
                        DispatchQueue.main.async {self.team14.text = thing.games[6].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[6].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[6].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo13.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo14.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[6].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score13.text = thing.games[6].vTeam.score}
                            DispatchQueue.main.async {self.score14.text = thing.games[6].hTeam.score}
                            DispatchQueue.main.async {self.record13.text = ""}
                            DispatchQueue.main.async {self.record14.text = ""}
                            if thing.games[6].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock7.text = "Halftime"}
                                DispatchQueue.main.async {self.record13.text = ""}
                                DispatchQueue.main.async {self.record14.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock7.text = thing.games[6].clock + " Q" + String(thing.games[6].period.current)}
                                DispatchQueue.main.async {self.record13.text = ""}
                                DispatchQueue.main.async {self.record14.text = ""}
                            }
                        } else {
                            if thing.games[6].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score13.text = thing.games[6].vTeam.score}
                                DispatchQueue.main.async {self.score14.text = thing.games[6].hTeam.score}
                                DispatchQueue.main.async {self.clock7.text = "Final"}
                                DispatchQueue.main.async {self.record13.text = ""}
                                DispatchQueue.main.async {self.record14.text = ""}
                                
                            } else if thing.games[6].period.current == 0 {
                                DispatchQueue.main.async {self.clock7.text = thing.games[6].startTimeEastern}
                                
                                //set records
                                let away7win = String(thing.games[6].vTeam.win)
                                let away7loss = String(thing.games[6].vTeam.loss)
                                let home7win = String(thing.games[6].hTeam.win)
                                let home7loss = String(thing.games[6].hTeam.loss)
                                let away7record = "( " + away7win + " - " + away7loss + " )"
                                let home7record = "( " + home7win + " - " + home7loss + " )"
                                DispatchQueue.main.async {self.record13.text = away7record}
                                DispatchQueue.main.async {self.record14.text = home7record}
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
                        DispatchQueue.main.async {self.record13.text = ""}
                        DispatchQueue.main.async {self.record14.text = ""}
                    }
                    
                    // Game 8
                    isIndexValid = thing.games.indices.contains(7)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1270)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team15.text = thing.games[7].vTeam.triCode}
                        DispatchQueue.main.async {self.team16.text = thing.games[7].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[7].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[7].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo15.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo16.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[7].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score15.text = thing.games[7].vTeam.score}
                            DispatchQueue.main.async {self.score16.text = thing.games[7].hTeam.score}
                            DispatchQueue.main.async {self.record15.text = ""}
                            DispatchQueue.main.async {self.record16.text = ""}
                            if thing.games[7].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock8.text = "Halftime"}
                                DispatchQueue.main.async {self.record15.text = ""}
                                DispatchQueue.main.async {self.record16.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock8.text = thing.games[7].clock + " Q" + String(thing.games[7].period.current)}
                                DispatchQueue.main.async {self.record15.text = ""}
                                DispatchQueue.main.async {self.record16.text = ""}
                            }
                        } else {
                            if thing.games[7].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score15.text = thing.games[7].vTeam.score}
                                DispatchQueue.main.async {self.score16.text = thing.games[7].hTeam.score}
                                DispatchQueue.main.async {self.clock8.text = "Final"}
                                DispatchQueue.main.async {self.record15.text = ""}
                                DispatchQueue.main.async {self.record16.text = ""}
                                
                            } else if thing.games[7].period.current == 0 {
                                DispatchQueue.main.async {self.clock8.text = thing.games[7].startTimeEastern}
                                
                                //set records
                                let away8win = String(thing.games[7].vTeam.win)
                                let away8loss = String(thing.games[7].vTeam.loss)
                                let home8win = String(thing.games[7].hTeam.win)
                                let home8loss = String(thing.games[7].hTeam.loss)
                                let away8record = "( " + away8win + " - " + away8loss + " )"
                                let home8record = "( " + home8win + " - " + home8loss + " )"
                                DispatchQueue.main.async {self.record15.text = away8record}
                                DispatchQueue.main.async {self.record16.text = home8record}
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
                        DispatchQueue.main.async {self.record15.text = ""}
                        DispatchQueue.main.async {self.record16.text = ""}
                    }
                    
                    // Game 9
                    isIndexValid = thing.games.indices.contains(8)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1400)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team17.text = thing.games[8].vTeam.triCode}
                        DispatchQueue.main.async {self.team18.text = thing.games[8].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[8].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[8].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo17.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo18.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[8].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score17.text = thing.games[8].vTeam.score}
                            DispatchQueue.main.async {self.score18.text = thing.games[8].hTeam.score}
                            DispatchQueue.main.async {self.record17.text = ""}
                            DispatchQueue.main.async {self.record18.text = ""}
                            if thing.games[8].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock9.text = "Halftime"}
                                DispatchQueue.main.async {self.record17.text = ""}
                                DispatchQueue.main.async {self.record18.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock9.text = thing.games[8].clock + " Q" + String(thing.games[8].period.current)}
                                DispatchQueue.main.async {self.record17.text = ""}
                                DispatchQueue.main.async {self.record18.text = ""}
                            }
                        } else {
                            if thing.games[8].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score17.text = thing.games[8].vTeam.score}
                                DispatchQueue.main.async {self.score18.text = thing.games[8].hTeam.score}
                                DispatchQueue.main.async {self.clock9.text = "Final"}
                                DispatchQueue.main.async {self.record17.text = ""}
                                DispatchQueue.main.async {self.record18.text = ""}
                                
                            } else if thing.games[8].period.current == 0 {
                                DispatchQueue.main.async {self.clock9.text = thing.games[8].startTimeEastern}
                                
                                //set records
                                let away9win = String(thing.games[8].vTeam.win)
                                let away9loss = String(thing.games[8].vTeam.loss)
                                let home9win = String(thing.games[8].hTeam.win)
                                let home9loss = String(thing.games[8].hTeam.loss)
                                let away9record = "( " + away9win + " - " + away9loss + " )"
                                let home9record = "( " + home9win + " - " + home9loss + " )"
                                DispatchQueue.main.async {self.record17.text = away9record}
                                DispatchQueue.main.async {self.record18.text = home9record}
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
                        DispatchQueue.main.async {self.record17.text = ""}
                        DispatchQueue.main.async {self.record18.text = ""}
                    }
                    
                    // Game 10
                    isIndexValid = thing.games.indices.contains(9)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1700)}
                        
                        // set teams
                        DispatchQueue.main.async {self.team19.text = thing.games[9].vTeam.triCode}
                        DispatchQueue.main.async {self.team20.text = thing.games[9].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[9].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[9].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo19.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo20.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[9].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score19.text = thing.games[9].vTeam.score}
                            DispatchQueue.main.async {self.score20.text = thing.games[9].hTeam.score}
                            DispatchQueue.main.async {self.record19.text = ""}
                            DispatchQueue.main.async {self.record20.text = ""}
                            if thing.games[9].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock10.text = "Halftime"}
                                DispatchQueue.main.async {self.record19.text = ""}
                                DispatchQueue.main.async {self.record20.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock10.text = thing.games[9].clock + " Q" + String(thing.games[9].period.current)}
                                DispatchQueue.main.async {self.record19.text = ""}
                                DispatchQueue.main.async {self.record20.text = ""}
                            }
                        } else {
                            if thing.games[9].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score19.text = thing.games[9].vTeam.score}
                                DispatchQueue.main.async {self.score20.text = thing.games[9].hTeam.score}
                                DispatchQueue.main.async {self.clock10.text = "Final"}
                                DispatchQueue.main.async {self.record19.text = ""}
                                DispatchQueue.main.async {self.record20.text = ""}
                                
                            } else if thing.games[9].period.current == 0 {
                                DispatchQueue.main.async {self.clock10.text = thing.games[9].startTimeEastern}
                                
                                //set records
                                let away10win = String(thing.games[9].vTeam.win)
                                let away10loss = String(thing.games[9].vTeam.loss)
                                let home10win = String(thing.games[9].hTeam.win)
                                let home10loss = String(thing.games[9].hTeam.loss)
                                let away10record = "( " + away10win + " - " + away10loss + " )"
                                let home10record = "( " + home10win + " - " + home10loss + " )"
                                DispatchQueue.main.async {self.record19.text = away10record}
                                DispatchQueue.main.async {self.record20.text = home10record}
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
                        DispatchQueue.main.async {self.record19.text = ""}
                        DispatchQueue.main.async {self.record20.text = ""}
                    }
                    
                    // Game 11
                    isIndexValid = thing.games.indices.contains(10)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1850)}
                        // set teams
                        DispatchQueue.main.async {self.team21.text = thing.games[10].vTeam.triCode}
                        DispatchQueue.main.async {self.team22.text = thing.games[10].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[10].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[10].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo21.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo22.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[10].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score21.text = thing.games[10].vTeam.score}
                            DispatchQueue.main.async {self.score22.text = thing.games[10].hTeam.score}
                            DispatchQueue.main.async {self.record21.text = ""}
                            DispatchQueue.main.async {self.record22.text = ""}
                            if thing.games[10].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock11.text = "Halftime"}
                                DispatchQueue.main.async {self.record21.text = ""}
                                DispatchQueue.main.async {self.record22.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock11.text = thing.games[10].clock + " Q" + String(thing.games[10].period.current)}
                                DispatchQueue.main.async {self.record21.text = ""}
                                DispatchQueue.main.async {self.record22.text = ""}
                            }
                        } else {
                            if thing.games[10].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score21.text = thing.games[10].vTeam.score}
                                DispatchQueue.main.async {self.score22.text = thing.games[10].hTeam.score}
                                DispatchQueue.main.async {self.clock11.text = "Final"}
                                DispatchQueue.main.async {self.record21.text = ""}
                                DispatchQueue.main.async {self.record22.text = ""}
                                
                            } else if thing.games[10].period.current == 0 {
                                DispatchQueue.main.async {self.clock11.text = thing.games[10].startTimeEastern}
                                
                                //set records
                                let away11win = String(thing.games[10].vTeam.win)
                                let away11loss = String(thing.games[10].vTeam.loss)
                                let home11win = String(thing.games[10].hTeam.win)
                                let home11loss = String(thing.games[10].hTeam.loss)
                                let away11record = "( " + away11win + " - " + away11loss + " )"
                                let home11record = "( " + home11win + " - " + home11loss + " )"
                                DispatchQueue.main.async {self.record21.text = away11record}
                                DispatchQueue.main.async {self.record22.text = home11record}
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
                        DispatchQueue.main.async {self.record21.text = ""}
                        DispatchQueue.main.async {self.record22.text = ""}
                    }
                    
                    // Game 12
                    isIndexValid = thing.games.indices.contains(11)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:1990)}
                        // set teams
                        DispatchQueue.main.async {self.team23.text = thing.games[11].vTeam.triCode}
                        DispatchQueue.main.async {self.team24.text = thing.games[11].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[11].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[11].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo23.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo24.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[11].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score23.text = thing.games[11].vTeam.score}
                            DispatchQueue.main.async {self.score24.text = thing.games[11].hTeam.score}
                            DispatchQueue.main.async {self.record23.text = ""}
                            DispatchQueue.main.async {self.record24.text = ""}
                            if thing.games[11].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock12.text = "Halftime"}
                                DispatchQueue.main.async {self.record23.text = ""}
                                DispatchQueue.main.async {self.record24.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock12.text = thing.games[11].clock + " Q" + String(thing.games[11].period.current)}
                                DispatchQueue.main.async {self.record23.text = ""}
                                DispatchQueue.main.async {self.record24.text = ""}
                            }
                        } else {
                            if thing.games[11].period.current >= 4 {
                                DispatchQueue.main.async {self.clock12.text = "Final"}
                                // set scores
                                DispatchQueue.main.async {self.score23.text = thing.games[11].vTeam.score}
                                DispatchQueue.main.async {self.score24.text = thing.games[11].hTeam.score}
                                DispatchQueue.main.async {self.record23.text = ""}
                                DispatchQueue.main.async {self.record24.text = ""}
                                
                            } else if thing.games[11].period.current == 0 {
                                DispatchQueue.main.async {self.clock12.text = thing.games[11].startTimeEastern}
                                
                                //set records
                                let away12win = String(thing.games[11].vTeam.win)
                                let away12loss = String(thing.games[11].vTeam.loss)
                                let home12win = String(thing.games[11].hTeam.win)
                                let home12loss = String(thing.games[11].hTeam.loss)
                                let away12record = "( " + away12win + " - " + away12loss + " )"
                                let home12record = "( " + home12win + " - " + home12loss + " )"
                                DispatchQueue.main.async {self.record23.text = away12record}
                                DispatchQueue.main.async {self.record24.text = home12record}
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
                        DispatchQueue.main.async {self.record23.text = ""}
                        DispatchQueue.main.async {self.record24.text = ""}
                    }
                    
                    // Game 13
                    isIndexValid = thing.games.indices.contains(12)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:2150)}
                        // set teams
                        DispatchQueue.main.async {self.team25.text = thing.games[12].vTeam.triCode}
                        DispatchQueue.main.async {self.team26.text = thing.games[12].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[12].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[12].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo25.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo26.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[12].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score25.text = thing.games[12].vTeam.score}
                            DispatchQueue.main.async {self.score26.text = thing.games[12].hTeam.score}
                            DispatchQueue.main.async {self.record25.text = ""}
                            DispatchQueue.main.async {self.record26.text = ""}
                            if thing.games[12].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock13.text = "Halftime"}
                                DispatchQueue.main.async {self.record25.text = ""}
                                DispatchQueue.main.async {self.record26.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock13.text = thing.games[12].clock + " Q" + String(thing.games[12].period.current)}
                                DispatchQueue.main.async {self.record25.text = ""}
                                DispatchQueue.main.async {self.record26.text = ""}
                            }
                        } else {
                            if thing.games[12].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score25.text = thing.games[12].vTeam.score}
                                DispatchQueue.main.async {self.score26.text = thing.games[12].hTeam.score}
                                DispatchQueue.main.async {self.clock13.text = "Final"}
                                DispatchQueue.main.async {self.record25.text = ""}
                                DispatchQueue.main.async {self.record26.text = ""}
                                
                            } else if thing.games[12].period.current == 0 {
                                DispatchQueue.main.async {self.clock13.text = thing.games[12].startTimeEastern}
                                
                                //set records
                                let away13win = String(thing.games[12].vTeam.win)
                                let away13loss = String(thing.games[12].vTeam.loss)
                                let home13win = String(thing.games[12].hTeam.win)
                                let home13loss = String(thing.games[12].hTeam.loss)
                                let away13record = "( " + away13win + " - " + away13loss + " )"
                                let home13record = "( " + home13win + " - " + home13loss + " )"
                                DispatchQueue.main.async {self.record25.text = away13record}
                                DispatchQueue.main.async {self.record26.text = home13record}
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
                        DispatchQueue.main.async {self.record25.text = ""}
                        DispatchQueue.main.async {self.record26.text = ""}
                    }
                    
                    // Game 14
                    isIndexValid = thing.games.indices.contains(13)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:2350)}
                        // set teams
                        DispatchQueue.main.async {self.team27.text = thing.games[13].vTeam.triCode}
                        DispatchQueue.main.async {self.team28.text = thing.games[13].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[13].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[13].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo27.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo28.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[13].isGameActivated == true {
                            // set scores
                            DispatchQueue.main.async {self.score27.text = thing.games[13].vTeam.score}
                            DispatchQueue.main.async {self.score28.text = thing.games[13].hTeam.score}
                            DispatchQueue.main.async {self.record27.text = ""}
                            DispatchQueue.main.async {self.record28.text = ""}
                            if thing.games[13].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock14.text = "Halftime"}
                                DispatchQueue.main.async {self.record27.text = ""}
                                DispatchQueue.main.async {self.record28.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock14.text = thing.games[13].clock + " Q" + String(thing.games[13].period.current)}
                                DispatchQueue.main.async {self.record27.text = ""}
                                DispatchQueue.main.async {self.record28.text = ""}
                            }
                        } else {
                            if thing.games[13].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score27.text = thing.games[13].vTeam.score}
                                DispatchQueue.main.async {self.score28.text = thing.games[13].hTeam.score}
                                DispatchQueue.main.async {self.clock14.text = "Final"}
                                DispatchQueue.main.async {self.record27.text = ""}
                                DispatchQueue.main.async {self.record28.text = ""}
                                
                            } else if thing.games[13].period.current == 0 {
                                DispatchQueue.main.async {self.clock14.text = thing.games[13].startTimeEastern}
                                
                                //set records
                                let away14win = String(thing.games[13].vTeam.win)
                                let away14loss = String(thing.games[13].vTeam.loss)
                                let home14win = String(thing.games[13].hTeam.win)
                                let home14loss = String(thing.games[13].hTeam.loss)
                                let away14record = "( " + away14win + " - " + away14loss + " )"
                                let home14record = "( " + home14win + " - " + home14loss + " )"
                                DispatchQueue.main.async {self.record27.text = away14record}
                                DispatchQueue.main.async {self.record28.text = home14record}
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
                        DispatchQueue.main.async {self.record27.text = ""}
                        DispatchQueue.main.async {self.record28.text = ""}
                    }
                    
                    // Game 15
                    isIndexValid = thing.games.indices.contains(14)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.scrollView.contentSize = CGSize(width:414, height:2500)}
                        // set teams
                        DispatchQueue.main.async {self.team29.text = thing.games[14].vTeam.triCode}
                        DispatchQueue.main.async {self.team30.text = thing.games[14].hTeam.triCode}
                        
                        // set logos
                        let logo1_string = String(thing.games[14].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[14].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo29.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo30.image = UIImage(named: logo2_string)}
                        
                        // set clock
                        if thing.games[14].isGameActivated == true {
                        // set scores
                            DispatchQueue.main.async {self.score29.text = thing.games[14].vTeam.score}
                            DispatchQueue.main.async {self.score30.text = thing.games[14].hTeam.score}
                            DispatchQueue.main.async {self.record29.text = ""}
                            DispatchQueue.main.async {self.record30.text = ""}
                            if thing.games[14].period.isHalftime == true {
                                DispatchQueue.main.async {self.clock15.text = "Halftime"}
                                DispatchQueue.main.async {self.record29.text = ""}
                                DispatchQueue.main.async {self.record30.text = ""}
                            } else {
                                DispatchQueue.main.async {self.clock15.text = thing.games[14].clock + " Q" + String(thing.games[14].period.current)}
                                DispatchQueue.main.async {self.record29.text = ""}
                                DispatchQueue.main.async {self.record30.text = ""}
                            }
                        } else {
                            if thing.games[14].period.current >= 4 {
                                // set scores
                                DispatchQueue.main.async {self.score29.text = thing.games[14].vTeam.score}
                                DispatchQueue.main.async {self.score30.text = thing.games[14].hTeam.score}
                                DispatchQueue.main.async {self.clock15.text = "Final"}
                                DispatchQueue.main.async {self.record29.text = ""}
                                DispatchQueue.main.async {self.record30.text = ""}
                                
                            } else if thing.games[14].period.current == 0 {
                                DispatchQueue.main.async {self.clock15.text = thing.games[14].startTimeEastern}
                                
                                //set records
                                let away15win = String(thing.games[14].vTeam.win)
                                let away15loss = String(thing.games[14].vTeam.loss)
                                let home15win = String(thing.games[14].hTeam.win)
                                let home15loss = String(thing.games[14].hTeam.loss)
                                let away15record = "( " + away15win + " - " + away15loss + " )"
                                let home15record = "( " + home15win + " - " + home15loss + " )"
                                DispatchQueue.main.async {self.record29.text = away15record}
                                DispatchQueue.main.async {self.record30.text = home15record}
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
                        DispatchQueue.main.async {self.record29.text = ""}
                        DispatchQueue.main.async {self.record30.text = ""}
                    }
                    
                    
                    
                }
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
        
    }
    
    
    
}


