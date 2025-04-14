//
//  SettingsView.swift
//  NavigationTest
//
//  Created by Sami Ahmed on 14/04/2025.
//


import SwiftUI

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        VStack(spacing: 20) {
            Text("⚙️ Settings View")
                .font(.title)

            Button("Back") {
                router.pop()
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
