//
//  HomeView.swift
//  NavigationTest
//
//  Created by Sami Ahmed on 14/04/2025.
//


import SwiftUI

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        VStack(spacing: 20) {
            Text("🏡 Home View")
                .font(.largeTitle)

            Button("Go to Details") {
                router.push(.details(id: 42))
            }

            Button("Go to Settings") {
                router.push(.settings)
            }
        }
        .navigationTitle("Home")
    }
}


#Preview {
    HomeView()
    
}
