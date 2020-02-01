//
//  popupViewController.swift
//  test2
//
//  Created by lundergust on 10/27/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import UIKit
var myarray = [String]()
var numberOfPlayers: Int = 0
var playerArray = [String]()
var minArray = [String]()
var fgArray = [String]()
var tpArray = [String]()
var ptsArray = [String]()
var rebArray = [String]()
var astArray = [String]()
var thisBoxscore = Boxscore.init(basicGameData: GameInfo(gameID: "", isGameActivated: false, startTimeEastern: "", clock: "", nugget: NuggetObject(text: ""), period: periodObject(current: 0, isHalftime: false), vTeam: vTeamObject(win: "", loss: "", triCode: "", score: "", linescore: [linescoreObject(score: "")]), hTeam: hTeamObject(win: "", loss: "", triCode: "", score: "", linescore: [linescoreObject(score: "")])), stats: statsObject(vTeamStats: vTeamStatsObject(fastBreakPoints: "", pointsInPaint: "", biggestLead: "", secondChancePoints: "", pointsOffTurnovers: "", longestRun: "", totals: vTotalObject(points: "", fgm: "", fga: "", fgp: "", ftm: "", fta: "", ftp: "", tpm: "", tpa: "", tpp: "", offReb: "", defReb: "", totReb: "", assists: "", pFouls: "", steals: "", turnovers: "", blocks: ""), leaders: vLeadersObject(points: vPointLeader(value: "", players: [vPointLeaderPlayers(firstName: "", lastName: "")]), rebounds: vReboundLeader(value: "", players: [vReboundLeaderPlayers(firstName: "", lastName: "")]), assists: vAssistLeader(value: "", players: [vAssistLeaderPlayers(firstName: "", lastName: "")]))), hTeamStats: hTeamStatsObject(fastBreakPoints: "", pointsInPaint: "", biggestLead: "", secondChancePoints: "", pointsOffTurnovers: "", longestRun: "", totals: hTotalObject(points: "", fgm: "", fga: "", fgp: "", ftm: "", fta: "", ftp: "", tpm: "", tpa: "", tpp: "", offReb: "", defReb: "", totReb: "", assists: "", pFouls: "", steals: "", turnovers: "", blocks: ""), leaders: hLeadersObject(points: hPointLeader(value: "", players: [hPointLeaderPlayers(firstName: "", lastName: "")]), rebounds: hReboundLeader(value: "", players: [hReboundLeaderPlayers(firstName: "", lastName: "")]), assists: hAssistLeader(value: "", players: [hAssistLeaderPlayers(firstName: "", lastName: "")]))), activePlayers: [activePlayersObject(firstName: "", lastName: "", jersey: "", teamId: "", isOnCourt: false, points: "", pos: "", min: "", fgm: "", fga: "", fgp: "", ftm: "", fta: "", ftp: "", tpm: "", tpa: "", tpp: "", offReb: "", defReb: "", totReb: "", assists: "", pFouls: "", steals: "", turnovers: "", blocks: "", plusMinus: "", dnp: "")]))

class popupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var boxTableView: UITableView!
    
    func tableRefresher() {
        playerArray.removeAll()
        minArray.removeAll()
        fgArray.removeAll()
        tpArray.removeAll()
        ptsArray.removeAll()
        rebArray.removeAll()
        astArray.removeAll()
        boxTableView.reloadData()
    }
    
    @IBAction func popupaction(_ sender: Any) {
        self.removeAnimate()
    }
    
    func showAnimate() {
        tableRefresher()
        self.view.transform = CGAffineTransform(scaleX: 1.3,y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y:1.0)
            });
    }
           
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3,y:1.3)
            self.view.alpha = 0.0;
       }, completion: {(finished: Bool ) in
           if (finished)
           {self.view.removeFromSuperview()}
       })
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // erase array info
        fetchBoxscore3(tag: senderTag) { thisBoxscore, error in
            numberOfPlayers = thisBoxscore!.stats.activePlayers.count
            for item in (thisBoxscore!.stats.activePlayers) {
                let playerName = String(item.firstName) + " " + String(item.lastName)
                if item.min == "" {
                    if item.dnp != "" {
                        let playerMin = String(item.dnp)
                        minArray.append(playerMin)
                    } else {
                        let playerMin = ""
                        minArray.append(playerMin)
                    }
                } else {
                    let playerMin = String(item.min)
                    minArray.append(playerMin)
                }
                if item.fga == "" {
                    let playerFG = ""
                    fgArray.append(playerFG)
                } else {
                    let playerFG = String(item.fgm) + "-" + String(item.fga)
                    fgArray.append(playerFG)
                }
                if item.tpa == "" {
                    let player3PT = ""
                    tpArray.append(player3PT)
                } else {
                    let player3PT = String(item.tpm) + "-" + String(item.tpa)
                    tpArray.append(player3PT)
                }
                let playerPTS = String(item.points)
                let playerREB   = String(item.totReb)
                let playerAST = String(item.assists)
                playerArray.append(playerName)
                ptsArray.append(playerPTS)
                rebArray.append(playerREB)
                astArray.append(playerAST)
//                print(playerArray)
            }
        }
        
        while playerArray.count == 0 {
        let seconds = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                }
        }
        return numberOfPlayers
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as! boxTableViewCell
        //set the data here
        cell.playerLabel?.text = playerArray[indexPath.row]
        cell.minLabel?.text = minArray[indexPath.row]
        cell.fgLabel?.text = fgArray[indexPath.row]
        cell.tpLabel?.text = tpArray[indexPath.row]
        cell.ptsLabel?.text = ptsArray[indexPath.row]
        cell.rebLabel?.text = rebArray[indexPath.row]
        cell.astLabel?.text = astArray[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showAnimate()

        // Do any additional setup after loading the view.
    }
}
