//
//  ContentView.swift
//  Midori Desk
//
//  Created by Zehra Gün on 27.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var currentWeek = 5
    @State private var courses: [Course] = [
        Course(name: "Algorithms", totalWeeks: 14),
        Course(name: "Operating Systems", totalWeeks: 12)
    ]

    var body: some View {
        NavigationSplitView {
            MenuSidebarView()
        } detail: {
            
        }
        VStack(){
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
