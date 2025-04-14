//
//  RootView.swift
//  NavigationTest
//
//  Created by Sami Ahmed on 14/04/2025.
//

import SwiftUI

struct RootView: View {
    @StateObject private var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            HomeView()
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .home:
                        HomeView()
                    case .details(let id):
                        DetailsView(id: id)
                    case .settings:
                        SettingsView()
                    }
                }
        }
        .environmentObject(router)
    }
}


#Preview {
    RootView()
    .environmentObject(Router()) }
