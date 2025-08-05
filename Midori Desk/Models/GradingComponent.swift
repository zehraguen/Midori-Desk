//
//  GradingComponent.swift
//  Midori Desk
//
//  Created by Zehra Gün on 27.07.2025.
//

import Foundation

struct GradingComponent: Identifiable, Codable {
    var id = UUID()
    var name: String //"Midterm", "Quiz", etc.
    var weight: Double //in %
    var score: Double? //actual grade (nullable)
    
    var contribution: Double {
        guard let score = score else { return 0 }
        return (score * weight) / 100
    }
}
