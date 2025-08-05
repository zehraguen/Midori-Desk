//
//  WeeklyDashboardView.swift
//  Midori Desk
//
//  Created by Zehra Gün on 5.08.2025.
//

import SwiftUI

struct WeeklyDashboardView: View {
    var currentWeek: Int
    var courses: [Course]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Week \(currentWeek)")
                .font(.title2)
                .bold()

            ForEach(courses) { course in
                if let topic = course.weeklyTopics.first(where: { $0.weekNum == currentWeek }) {
                    HStack {
                        Text("\(course.name) – \(topic.title)")
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Text(topic.isCompleted ? "✅ Done" : "❌ Not Done")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
            }
        }
            .padding()
    }
}

#Preview {
    let currentWeek = 4
    var courses: [Course] = [
        Course(name: "Algorithms", totalWeeks: 14),
        Course(name: "Operating Systems", totalWeeks: 12),
        Course(name: "Database Systems", totalWeeks: 10)
    ]
    courses[0].weeklyTopics[3].isCompleted = true // Week 5

    return WeeklyDashboardView(currentWeek: currentWeek, courses: courses)
}
