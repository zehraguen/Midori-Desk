//
//  MenuSidebarView.swift
//  Midori Desk
//
//  Created by Zehra Gün on 5.08.2025.
//

import SwiftUI


struct MenuSidebarView: View {
    var body: some View {
        List{
            Label("home", systemImage: "house")
            Label("courses", systemImage: "book")
            Label("calendar", systemImage: "calendar")
            Label("calculator", systemImage: "number")
        }
    }
}

#Preview {
    MenuSidebarView()
}
