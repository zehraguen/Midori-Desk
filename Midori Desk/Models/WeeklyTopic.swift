//
//  WeeklyTopic.swift
//  Midori Desk
//
//  Created by Zehra Gün on 27.07.2025.
//

import Foundation

struct WeeklyTopic: Identifiable, Codable {
    var id = UUID()
    var weekNum: Int
    var title: String
    var isCompleted: Bool
    var notes: String = ""
}
