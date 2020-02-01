//
//  ncaaObj.swift
//  test2
//
//  Created by lundergust on 11/10/19.
//  Copyright © 2019 lundergust. All rights reserved.
//

import Foundation
struct ncaaData: Decodable {
    let ncaaObj: [NcaaObj]
}
struct NcaaObj: Decodable {
    let id: String
    let season: Int
    let week: Int
    let start_date: String
    let home_team: String
    let home_points: Int
    let home_line_score: [Int]
    let away_team: String
    let away_points: Int
    let away_line_score: [Int]

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case season = "season"
        case week = "week"
        case start_date = "start_date"
        case home_team = "home_team"
        case home_points = "home_points"
        case home_line_score = "home_line_score"
        case away_team = "away_team"
        case away_points = "away_points"
        case away_line_score = "away_line_score"
    }
}


