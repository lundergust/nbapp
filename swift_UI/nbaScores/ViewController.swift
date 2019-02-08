//
//  ViewController.swift
//  nbaScores
//
//  Created by Joseph M Leaman on 2/8/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    struct GAMES : Decodable {
        private enum CodingKeys : String, CodingKey{
            case GAMEID = "gameId"
            case ISGAMEACTIVATED = "isGameActivated"
            case STARTTIMEEASTERN = "startTimeEastern"
            case NUGGET = "nugget"
            case PERIOD = "period"
            case VTEAM = "vTeam"
            case HTEAM = "hTeam"
        }
        let GAMEID : String
        let ISGAMEACTIVATED : boolean_t
        let STARTTIMEEASTERN : String
        let NUGGET : String
        let PERIOD : Int
        let VTEAM : Int
        let HTEAM : Int
    }
    
    struct VTEAM : Decodable {
        private enum CodingKeys: String, CodingKey {
            case NAME = "name"
            case WIN = "win"
            case LOSS = "loss"
            case LINESCORE = "linescore"
        }
        let NAME : String
        let WIN : Int
        let LOSS : Int
        let LINESCORE : Int
    }
    
    struct HTEAM : Decodable {
        private enum CodingKeys: String, CodingKey {
            case NAME = "name"
            case WIN = "win"
            case LOSS = "loss"
            case LINESCORE = "linescore"
        }
        let NAME : String
        let WIN : Int
        let LOSS : Int
        let LINESCORE : Int
    }

        
        
        
    

    
    @IBOutlet weak var gray_bg: UIImageView!
    @IBOutlet weak var start_button: UIButton!
    @IBOutlet weak var scores_page: UIView!
    @IBOutlet weak var basketball: UIImageView!
    @IBOutlet weak var rim: UIImageView!
    @IBOutlet weak var score_output: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlString = "https://data.nba.net/prod/v2/20190204/scoreboard.json"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let data = data else { return }
            print(data)
            // implement json decoding and parsing
            do {
                // decode retrieved data with JSONDecoder
                let gamesData = try JSONDecoder().decode(GAMES.self, from: data)
                print(gamesData)
                
            } catch let jsonError {
                print(jsonError)
            }
            
        }.resume()

    }
    
    @IBAction func button_pressed(_ sender: Any) {
        scores_page.isHidden = false
        rim.isHidden = false
        gray_bg.isHidden = true
        start_button.isHidden = true
        
        UIView.animate(withDuration:3.5, animations: {
            self.basketball.frame = CGRect(x:134, y:900, width:134, height:128)}) { (finished) in}
        UIView.animate(withDuration:3.5, animations: {
            self.score_output.frame = CGRect(x:8, y:240, width:398, height:658)}) { (finished) in}
        
        
        UIView.animate(withDuration: 1, delay: 0, animations: {self.basketball.transform = self.basketball.transform.rotated(by: CGFloat.pi)}, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.5, animations: {self.basketball.transform = self.basketball.transform.rotated(by: CGFloat.pi)}, completion: nil)
        UIView.animate(withDuration: 1, delay: 1, animations: {self.basketball.transform = self.basketball.transform.rotated(by: CGFloat.pi)}, completion: nil)
        UIView.animate(withDuration: 1, delay: 1.5, animations: {self.basketball.transform = self.basketball.transform.rotated(by: CGFloat.pi)}, completion: nil)
        UIView.animate(withDuration: 1, delay: 2.0, animations: {self.basketball.transform = self.basketball.transform.rotated(by: CGFloat.pi)}, completion: nil)
        
    }
}
