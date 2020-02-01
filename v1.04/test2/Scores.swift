//
//  Scores.swift
//  nbaScores
//
//  Created by Joseph M Leaman on 2/11/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import Foundation



struct Scores: Decodable {
    var games: [GameArray]
    let numGames: Int
}


struct GameArray: Decodable {
    let gameId: String
    let clock: String
    let isGameActivated: Bool
    let nugget: Nugget
    let startTimeEastern: String
    let period: periodDict
    var hTeam: hTeamDict
    var vTeam: vTeamDict
    
    private enum CodingKeys: String, CodingKey {
        case gameId = "gameId"
        case clock = "clock"
        case isGameActivated = "isGameActivated"
        case nugget = "nugget"
        case startTimeEastern = "startTimeEastern"
        case period = "period"
        case hTeam = "hTeam"
        case vTeam = "vTeam"
    }
}

struct Nugget: Decodable {
    let text: String
    
    private enum CodingKeys: String, CodingKey {
        case text = "text"
    }
}

struct periodDict: Decodable {
    let current: Int
    let isHalftime: Bool
    
    private enum CodingKeys: String, CodingKey {
        case current = "current"
        case isHalftime = "isHalftime"
    }
}

struct hTeamDict: Decodable {
    let win: String
    let loss: String
    let triCode: String
    let score: String
    let linescore: [linescoreArray]
    
    private enum CodingKeys: String, CodingKey {
        case win = "win"
        case loss = "loss"
        case triCode = "triCode"
        case score = "score"
        case linescore = "linescore"
    }
}

struct linescoreArray: Decodable {
    let score: String
    
    private enum CodingKeys: String, CodingKey {
        case score = "score"
    }
}


struct vTeamDict: Decodable {
    let win: String
    let loss: String
    let triCode: String
    let score: String
    let linescore: [linescoreArray]
    
    private enum CodingKeys: String, CodingKey {
        case win = "win"
        case loss = "loss"
        case triCode = "triCode"
        case score = "score"
        case linescore = "linescore"
    }
}




