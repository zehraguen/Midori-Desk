//
//  Course.swift
//  Midori Desk
//
//  Created by Zehra Gün on 27.07.2025.
//

import Foundation

struct Course: Identifiable, Codable {
    var id = UUID()
    var name: String// "CE101", "ENG102", etc.
    var weeklyTopics: [WeeklyTopic]
    var gradingComponents: [GradingComponent]
    var totalWeeks: Int
    
    init(name: String,  totalWeeks: Int) {
        self.id = UUID()
        self.name = name
        self.totalWeeks = totalWeeks
        self.weeklyTopics = (1...totalWeeks).map {
            WeeklyTopic(weekNum: $0, title: "Week \($0)", isCompleted: false)
        }
        self.gradingComponents = []
    }
    
    var totalGrade: Double {
        gradingComponents.reduce(0) { $0 + $1.contribution }
    }

    
}
