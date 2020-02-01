//
//  testViewController.swift
//  test2
//
//  Created by lundergust on 3/22/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit
var senderTag = 0

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
    

    @IBAction func clock(_ sender: UIButton) {
        
//        fetchNcaa ( handler: { thisNcaa, error in
//            print(thisNcaa)
//        })
        
        senderTag = sender.tag
//        print(senderTag)
        fetchGameIDs3(getYesterdayScoreboard(), handler: {gameIDArray in
            return gameIDArray
        })
//        fetchBoxscore3(tag: senderTag) { thisBoxscore, error in
//            print("hello")
//            numberOfPlayers = thisBoxscore!.stats.activePlayers.count
//            print(numberOfPlayers)
//        }
        while gameIDArray.count == 0 {
//            while numberOfPlayers == 0 {
            let seconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
//                    }
            }
        }
        print(gameIDArray)
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! popupViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)

    }
    
    @IBOutlet weak var clock1: UIButton!
    @IBOutlet weak var clock2: UIButton!
    @IBOutlet weak var clock3: UIButton!
    @IBOutlet weak var clock4: UIButton!
    @IBOutlet weak var clock5: UIButton!
    @IBOutlet weak var clock6: UIButton!
    @IBOutlet weak var clock7: UIButton!
    @IBOutlet weak var clock8: UIButton!
    @IBOutlet weak var clock9: UIButton!
    @IBOutlet weak var clock10: UIButton!
    @IBOutlet weak var clock11: UIButton!
    @IBOutlet weak var clock12: UIButton!
    @IBOutlet weak var clock13: UIButton!
    @IBOutlet weak var clock14: UIButton!
    @IBOutlet weak var clock15: UIButton!
    
    
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
        print(senderTag)
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

                var isIndexValid = thing.games.indices.contains(0)
                if isIndexValid == false {
                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "No Games Yesterday"
                    DispatchQueue.main.async {self.test_label.text = "Yesterday: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}
                    DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                    
                }
                
                if thing.numGames > 0 {
                    
//                    var gameIdArray = [String]()
//                    var i = 1
//                    while thing.games.indices.contains(i) == true {
//                        gameIdArray.append(thing.games[i].gameId)
//                        i += 1
//                                  }
//                    print(gameIdArray)
                    
                    let test_text1 = (String(new_month) + "-" + String(new_day))
                    let test_text2 = "Number of games: " + String(thing.numGames)

                    DispatchQueue.main.async {self.test_label.text = "Yesterday: " + test_text1}
                    DispatchQueue.main.async {self.test_games_label.text = test_text2}

                    // Game 1
//                    DispatchQueue.main.async {self.clock1.contentHorizontalAlignment = .center}
                    var isIndexValid = thing.games.indices.contains(0)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                        // set teams
                        DispatchQueue.main.async {self.team1.text = thing.games[0].vTeam.triCode}
                        DispatchQueue.main.async {self.team2.text = thing.games[0].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score1.text = thing.games[0].vTeam.score}
                        DispatchQueue.main.async {self.score2.text = thing.games[0].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[0].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[0].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo1.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo2.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock1.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock1.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock1.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock1.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget1.sizeToFit()}
                        DispatchQueue.main.async {self.nugget1.text = thing.games[0].nugget.text}
                    }

                    // Game 2
                    isIndexValid = thing.games.indices.contains(1)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                        // set teams
                        DispatchQueue.main.async {self.team3.text = thing.games[1].vTeam.triCode}
                        DispatchQueue.main.async {self.team4.text = thing.games[1].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score3.text = thing.games[1].vTeam.score}
                        DispatchQueue.main.async {self.score4.text = thing.games[1].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[1].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[1].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo3.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo4.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock2.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock2.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock2.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock2.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget2.sizeToFit()}
                        DispatchQueue.main.async {self.nugget2.text = thing.games[1].nugget.text}
                    }

                    // Game 3
                    isIndexValid = thing.games.indices.contains(2)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                        // set teams
                        DispatchQueue.main.async {self.team5.text = thing.games[2].vTeam.triCode}
                        DispatchQueue.main.async {self.team6.text = thing.games[2].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score5.text = thing.games[2].vTeam.score}
                        DispatchQueue.main.async {self.score6.text = thing.games[2].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[2].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[2].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo5.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo6.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock3.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock3.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock3.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock3.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget3.sizeToFit()}
                        DispatchQueue.main.async {self.nugget3.text = thing.games[2].nugget.text}
                    }

                    // Game 4
                    isIndexValid = thing.games.indices.contains(3)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                        // set teams
                        DispatchQueue.main.async {self.team7.text = thing.games[3].vTeam.triCode}
                        DispatchQueue.main.async {self.team8.text = thing.games[3].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score7.text = thing.games[3].vTeam.score}
                        DispatchQueue.main.async {self.score8.text = thing.games[3].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[3].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[3].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo7.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo8.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock4.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock4.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock4.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock4.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget4.sizeToFit()}
                        DispatchQueue.main.async {self.nugget4.text = thing.games[3].nugget.text}
                    }
                    // Game 5
                    isIndexValid = thing.games.indices.contains(4)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
                        // set teams
                        DispatchQueue.main.async {self.team9.text = thing.games[4].vTeam.triCode}
                        DispatchQueue.main.async {self.team10.text = thing.games[4].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score9.text = thing.games[4].vTeam.score}
                        DispatchQueue.main.async {self.score10.text = thing.games[4].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[4].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[4].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo9.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo10.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock5.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock5.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock5.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock5.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget5.sizeToFit()}
                        DispatchQueue.main.async {self.nugget5.text = thing.games[4].nugget.text}
                    }

                    // Game 6
                    isIndexValid = thing.games.indices.contains(5)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:975)}
                        // set teams
                        DispatchQueue.main.async {self.team11.text = thing.games[5].vTeam.triCode}
                        DispatchQueue.main.async {self.team12.text = thing.games[5].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score11.text = thing.games[5].vTeam.score}
                        DispatchQueue.main.async {self.score12.text = thing.games[5].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[5].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[5].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo11.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo12.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock6.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock6.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock6.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock6.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget6.sizeToFit()}
                        DispatchQueue.main.async {self.nugget6.text = thing.games[5].nugget.text}
                    }

                    // Game 7
                    isIndexValid = thing.games.indices.contains(6)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1120)}
                        // set teams
                        DispatchQueue.main.async {self.team13.text = thing.games[6].vTeam.triCode}
                        DispatchQueue.main.async {self.team14.text = thing.games[6].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score13.text = thing.games[6].vTeam.score}
                        DispatchQueue.main.async {self.score14.text = thing.games[6].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[6].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[6].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo13.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo14.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock7.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock7.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock7.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock7.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget7.sizeToFit()}
                        DispatchQueue.main.async {self.nugget7.text = thing.games[6].nugget.text}
                    }

                    // Game 8
                    isIndexValid = thing.games.indices.contains(7)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1270)}
                        // set teams
                        DispatchQueue.main.async {self.team15.text = thing.games[7].vTeam.triCode}
                        DispatchQueue.main.async {self.team16.text = thing.games[7].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score15.text = thing.games[7].vTeam.score}
                        DispatchQueue.main.async {self.score16.text = thing.games[7].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[7].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[7].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo15.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo16.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock8.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock8.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock8.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock8.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget8.sizeToFit()}
                        DispatchQueue.main.async {self.nugget8.text = thing.games[7].nugget.text}
                    }

                    // Game 9
                    isIndexValid = thing.games.indices.contains(8)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1400)}
                        // set teams
                        DispatchQueue.main.async {self.team17.text = thing.games[8].vTeam.triCode}
                        DispatchQueue.main.async {self.team18.text = thing.games[8].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score17.text = thing.games[8].vTeam.score}
                        DispatchQueue.main.async {self.score18.text = thing.games[8].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[8].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[8].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo17.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo18.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock9.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock9.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock9.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock9.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget9.sizeToFit()}
                        DispatchQueue.main.async {self.nugget9.text = thing.games[8].nugget.text}
                    }

                    // Game 10
                    isIndexValid = thing.games.indices.contains(9)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1700)}
                        // set teams
                        DispatchQueue.main.async {self.team19.text = thing.games[9].vTeam.triCode}
                        DispatchQueue.main.async {self.team20.text = thing.games[9].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score19.text = thing.games[9].vTeam.score}
                        DispatchQueue.main.async {self.score20.text = thing.games[9].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[9].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[9].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo19.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo20.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock10.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock10.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock10.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock10.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget10.sizeToFit()}
                        DispatchQueue.main.async {self.nugget10.text = thing.games[9].nugget.text}
                    }

                    // Game 11
                    isIndexValid = thing.games.indices.contains(10)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1850)}
                        // set teams
                        DispatchQueue.main.async {self.team21.text = thing.games[10].vTeam.triCode}
                        DispatchQueue.main.async {self.team22.text = thing.games[10].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score21.text = thing.games[10].vTeam.score}
                        DispatchQueue.main.async {self.score22.text = thing.games[10].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[10].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[10].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo21.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo22.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock11.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock11.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock11.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock11.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget11.sizeToFit()}
                        DispatchQueue.main.async {self.nugget11.text = thing.games[10].nugget.text}
                    }

                    // Game 12
                    isIndexValid = thing.games.indices.contains(11)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:1990)}
                        // set teams
                        DispatchQueue.main.async {self.team23.text = thing.games[11].vTeam.triCode}
                        DispatchQueue.main.async {self.team24.text = thing.games[11].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score23.text = thing.games[11].vTeam.score}
                        DispatchQueue.main.async {self.score24.text = thing.games[11].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[11].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[11].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo23.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo24.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock12.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock12.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock12.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock12.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget12.sizeToFit()}
                        DispatchQueue.main.async {self.nugget12.text = thing.games[11].nugget.text}
                    }

                    // Game 13
                    isIndexValid = thing.games.indices.contains(12)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:2150)}
                        // set teams
                        DispatchQueue.main.async {self.team25.text = thing.games[12].vTeam.triCode}
                        DispatchQueue.main.async {self.team26.text = thing.games[12].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score25.text = thing.games[12].vTeam.score}
                        DispatchQueue.main.async {self.score26.text = thing.games[12].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[12].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[12].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo25.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo26.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock13.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock13.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock13.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock13.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget13.sizeToFit()}
                        DispatchQueue.main.async {self.nugget13.text = thing.games[12].nugget.text}
                    }

                    // Game 14
                    isIndexValid = thing.games.indices.contains(13)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:2350)}
                        // set teams
                        DispatchQueue.main.async {self.team27.text = thing.games[13].vTeam.triCode}
                        DispatchQueue.main.async {self.team28.text = thing.games[13].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score27.text = thing.games[13].vTeam.score}
                        DispatchQueue.main.async {self.score28.text = thing.games[13].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[13].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[13].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo27.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo28.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock14.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock14.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock14.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock14.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget14.sizeToFit()}
                        DispatchQueue.main.async {self.nugget14.text = thing.games[13].nugget.text}
                    }

                    // Game 15
                    isIndexValid = thing.games.indices.contains(14)
                    if isIndexValid == true {
                        // limit scroll
                        DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:2350)}
                        // set teams
                        DispatchQueue.main.async {self.team29.text = thing.games[14].vTeam.triCode}
                        DispatchQueue.main.async {self.team30.text = thing.games[14].hTeam.triCode}
                        // set scores
                        DispatchQueue.main.async {self.score29.text = thing.games[14].vTeam.score}
                        DispatchQueue.main.async {self.score30.text = thing.games[14].hTeam.score}
                        // set logos
                        let logo1_string = String(thing.games[14].vTeam.triCode) + ".png"
                        let logo2_string = String(thing.games[14].hTeam.triCode) + ".png"
                        DispatchQueue.main.async {self.logo29.image = UIImage(named: logo1_string)}
                        DispatchQueue.main.async {self.logo30.image = UIImage(named: logo2_string)}
                        // set clock
                        DispatchQueue.main.async {self.clock15.setTitleColor(.white, for: .normal)}
                        DispatchQueue.main.async {self.clock15.setTitle("Final", for: .normal)}
                        DispatchQueue.main.async {self.clock15.backgroundColor = UIColor(red: 0.9373, green: 0.3098, blue: 0.3098, alpha: 1.0)}
                        DispatchQueue.main.async {self.clock15.layer.borderWidth = 2}
                        // set nugget
                        DispatchQueue.main.async {self.nugget15.sizeToFit()}
                        DispatchQueue.main.async {self.nugget15.text = thing.games[14].nugget.text}
                    }
                }
            } catch let jsonErr {
                print("Error serializing json" ,jsonErr)
            }
            }.resume()
        
    }
}


