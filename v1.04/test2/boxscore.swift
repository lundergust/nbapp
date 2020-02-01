//
//  Scores.swift
//  nbaScores
//
//  Created by Joseph M Leaman on 2/11/19.
//  Copyright © 2019 Joseph M Leaman. All rights reserved.
//

import Foundation


struct Boxscore: Decodable {
    let basicGameData: GameInfo
    var stats: statsObject
    
    private enum CodingKeys: String, CodingKey {
        case basicGameData = "basicGameData"
        case stats = "stats"
    }
}

struct GameInfo: Decodable {
    let gameID: String
    let isGameActivated: Bool
    let startTimeEastern: String
    let clock: String
    let nugget: NuggetObject
    let period: periodObject
    var vTeam: vTeamObject
    var hTeam: hTeamObject
    
    
    private enum CodingKeys: String, CodingKey {
        case gameID = "gameId"
        case clock = "clock"
        case isGameActivated = "isGameActivated"
        case nugget = "nugget"
        case startTimeEastern = "startTimeEastern"
        case period = "period"
        case hTeam = "hTeam"
        case vTeam = "vTeam"
    }
}

struct NuggetObject: Decodable {
    let text: String

    private enum CodingKeys: String, CodingKey {
        case text = "text"
    }
}

struct periodObject: Decodable {
    let current: Int
    let isHalftime: Bool

    private enum CodingKeys: String, CodingKey {
        case current = "current"
        case isHalftime = "isHalftime"
    }
}

struct vTeamObject: Decodable {
    let win: String
    let loss: String
    let triCode: String
    let score: String
    let linescore: [linescoreObject]

    private enum CodingKeys: String, CodingKey {
        case win = "win"
        case loss = "loss"
        case triCode = "triCode"
        case score = "score"
        case linescore = "linescore"
    }
}

struct hTeamObject: Decodable {
    let win: String
    let loss: String
    let triCode: String
    let score: String
    let linescore: [linescoreObject]

    private enum CodingKeys: String, CodingKey {
        case win = "win"
        case loss = "loss"
        case triCode = "triCode"
        case score = "score"
        case linescore = "linescore"
    }
}

struct linescoreObject: Decodable {
    let score: String

    private enum CodingKeys: String, CodingKey {
        case score = "score"
    }
}

struct statsObject: Decodable {
    let vTeamStats: vTeamStatsObject
    let hTeamStats: hTeamStatsObject
    let activePlayers: [activePlayersObject]
    
    private enum CodingKeys: String, CodingKey {
        case vTeamStats = "vTeam"
        case hTeamStats = "hTeam"
        case activePlayers = "activePlayers"
    }
}

struct vTeamStatsObject: Decodable {
    let fastBreakPoints: String
    let pointsInPaint: String
    let biggestLead: String
    let secondChancePoints: String
    let pointsOffTurnovers: String
    let longestRun: String
    let totals: vTotalObject
    let leaders: vLeadersObject
    
    private enum CodingKeys: String, CodingKey {
        case fastBreakPoints = "fastBreakPoints"
        case pointsInPaint = "pointsInPaint"
        case biggestLead = "biggestLead"
        case secondChancePoints = "secondChancePoints"
        case pointsOffTurnovers = "pointsOffTurnovers"
        case longestRun = "longestRun"
        case totals = "totals"
        case leaders = "leaders"
    }
}

struct vTotalObject: Decodable {
    let points: String
    let fgm: String
    let fga: String
    let fgp: String
    let ftm: String
    let fta: String
    let ftp: String
    let tpm: String
    let tpa: String
    let tpp: String
    let offReb: String
    let defReb: String
    let totReb: String
    let assists: String
    let pFouls: String
    let steals: String
    let turnovers: String
    let blocks: String
    
    private enum CodingKeys: String, CodingKey {
        case points = "points"
        case fgm = "fgm"
        case fga = "fga"
        case fgp = "fgp"
        case ftm = "ftm"
        case fta = "fta"
        case ftp = "ftp"
        case tpm = "tpm"
        case tpa = "tpa"
        case tpp = "tpp"
        case offReb = "offReb"
        case defReb = "defReb"
        case totReb = "totReb"
        case assists = "assists"
        case pFouls = "pFouls"
        case steals = "steals"
        case turnovers = "turnovers"
        case blocks = "blocks"
    }
}

struct vLeadersObject: Decodable {
    let points: vPointLeader
    let rebounds: vReboundLeader
    let assists: vAssistLeader
    
    private enum CodingKeys: String, CodingKey {
        case points = "points"
        case rebounds = "rebounds"
        case assists = "assists"
    }
}

struct vPointLeader: Decodable {
    let value: String
    let players: [vPointLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct vPointLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct vReboundLeader: Decodable {
    let value: String
    let players: [vReboundLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct vReboundLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct vAssistLeader: Decodable {
    let value: String
    let players: [vAssistLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct vAssistLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct hTeamStatsObject: Decodable {
    let fastBreakPoints: String
    let pointsInPaint: String
    let biggestLead: String
    let secondChancePoints: String
    let pointsOffTurnovers: String
    let longestRun: String
    let totals: hTotalObject
    let leaders: hLeadersObject
    
    private enum CodingKeys: String, CodingKey {
        case fastBreakPoints = "fastBreakPoints"
        case pointsInPaint = "pointsInPaint"
        case biggestLead = "biggestLead"
        case secondChancePoints = "secondChancePoints"
        case pointsOffTurnovers = "pointsOffTurnovers"
        case longestRun = "longestRun"
        case totals = "totals"
        case leaders = "leaders"
    }
}

struct hTotalObject: Decodable {
    let points: String
    let fgm: String
    let fga: String
    let fgp: String
    let ftm: String
    let fta: String
    let ftp: String
    let tpm: String
    let tpa: String
    let tpp: String
    let offReb: String
    let defReb: String
    let totReb: String
    let assists: String
    let pFouls: String
    let steals: String
    let turnovers: String
    let blocks: String
    
    private enum CodingKeys: String, CodingKey {
        case points = "points"
        case fgm = "fgm"
        case fga = "fga"
        case fgp = "fgp"
        case ftm = "ftm"
        case fta = "fta"
        case ftp = "ftp"
        case tpm = "tpm"
        case tpa = "tpa"
        case tpp = "tpp"
        case offReb = "offReb"
        case defReb = "defReb"
        case totReb = "totReb"
        case assists = "assists"
        case pFouls = "pFouls"
        case steals = "steals"
        case turnovers = "turnovers"
        case blocks = "blocks"
    }
}

struct hLeadersObject: Decodable {
    let points: hPointLeader
    let rebounds: hReboundLeader
    let assists: hAssistLeader
    
    private enum CodingKeys: String, CodingKey {
        case points = "points"
        case rebounds = "rebounds"
        case assists = "assists"
    }
}

struct hPointLeader: Decodable {
    let value: String
    let players: [hPointLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct hPointLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct hReboundLeader: Decodable {
    let value: String
    let players: [hReboundLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct hReboundLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct hAssistLeader: Decodable {
    let value: String
    let players: [hAssistLeaderPlayers]
    
    private enum CodingKeys: String, CodingKey {
        case value = "value"
        case players = "players"
    }
}

struct hAssistLeaderPlayers: Decodable {
    let firstName: String
    let lastName: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
    }
}

struct activePlayersObject: Decodable {
    let firstName: String
    let lastName: String
    let jersey: String
    let teamId: String
    let isOnCourt: Bool
    let points: String
    let pos: String
    let min: String
    let fgm: String
    let fga: String
    let fgp: String
    let ftm: String
    let fta: String
    let ftp: String
    let tpm: String
    let tpa: String
    let tpp: String
    let offReb: String
    let defReb: String
    let totReb: String
    let assists: String
    let pFouls: String
    let steals: String
    let turnovers: String
    let blocks: String
    let plusMinus: String
    let dnp: String
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case lastName = "lastName"
        case jersey = "jersey"
        case teamId = "teamId"
        case isOnCourt = "isOnCourt"
        case points = "points"
        case pos = "pos"
        case min = "min"
        case fgm = "fgm"
        case fga = "fga"
        case fgp = "fgp"
        case ftm = "ftm"
        case fta = "fta"
        case ftp = "ftp"
        case tpm = "tpm"
        case tpa = "tpa"
        case tpp = "tpp"
        case offReb = "offReb"
        case defReb = "defReb"
        case totReb = "totReb"
        case assists = "assists"
        case pFouls = "pFouls"
        case steals = "steals"
        case turnovers = "turnovers"
        case blocks = "blocks"
        case plusMinus = "plusMinus"
        case dnp = "dnp"
    }
}




