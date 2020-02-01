//
//  TableViewCell.swift
//  test2
//
//  Created by lundergust on 10/27/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerl: UILabel!
    @IBOutlet weak var ptsl: UILabel!
    @IBOutlet weak var rebl: UILabel!
    @IBOutlet weak var astl: UILabel!
    @IBOutlet weak var minl: UILabel!
    @IBOutlet weak var fgl: UILabel!
    @IBOutlet weak var tpl: UILabel!
    
    
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var fgLabel: UILabel!
    @IBOutlet weak var tpLabel: UILabel!
    @IBOutlet weak var ptsLabel: UILabel!
    @IBOutlet weak var rebLabel: UILabel!
    @IBOutlet weak var astLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        

        // Initialization code
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
                var gameIdArray = [String]()
                var i = 1
                while thing.games.indices.contains(i) == true {
                    gameIdArray.append(thing.games[i].gameId)
                    i += 1
                }
                print(gameIdArray)
                                    } catch let jsonErr {
                           print("Error serializing json" ,jsonErr)
                       }
                       }.resume()
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
        
//               guard let url = URL(string: "http://data.nba.net/data/10s/prod/v1/" + todays_url + thisGameID + "_boxscore.json" ) else { return }
//               let session = URLSession.shared
//               _ = session.dataTask(with: url) { (data, _, _) in
//                   guard let data = data else { return }
//
//
//                   do {
//                       let json = try JSONSerialization.jsonObject(with: data, options: [])
//
//                   } catch {}
//
//                   do {
//
//                       let otherThing = try JSONDecoder().decode(boxscore.self, from: data)
//
//                       var isIndexValid = thing.games.indices.contains(0)
//                       if isIndexValid == false {
//                           let test_text1 = (String(new_month) + "-" + String(new_day))
//                           let test_text2 = "No Games Yesterday"
//                           DispatchQueue.main.async {self.test_label.text = "Yesterday: " + test_text1}
//                           DispatchQueue.main.async {self.test_games_label.text = test_text2}
//                           DispatchQueue.main.async {self.todayScroll.contentSize = CGSize(width:414, height:830)}
//
//
//    }
//                }
//        }
//    }


