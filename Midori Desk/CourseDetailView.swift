//
//  CourseDetailView.swift
//  Midori Desk
//
//  Created by Zehra Gün on 31.07.2025.
//

import SwiftUI

struct CourseDetailView: View {
    var course: Course

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(course.name)
                .font(.largeTitle)
                .bold()

            Text("Weeks: \(course.totalWeeks)")
            Text("Total Grade: \(course.totalGrade, specifier: "%.2f")")

            List(course.weeklyTopics) { topic in
                HStack {
                    Text(topic.title)
                    Spacer()
                    if topic.isCompleted {
                        Text("✅")
                    } else {
                        Text("⭕️")
                    }
                }
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Course Details")
    }
}

#Preview {
    var testCourse = Course(name: "SE 115", totalWeeks: 14)
    testCourse.weeklyTopics[0].title = "Introduction"
    testCourse.weeklyTopics[0].isCompleted = true
    return CourseDetailView(course: testCourse)
}
