//
//  DetailsView.swift
//  NavigationTest
//
//  Created by Sami Ahmed on 14/04/2025.
//


import SwiftUI

import SwiftUI

struct DetailsView: View {
    let id: Int
    @EnvironmentObject var router: Router

    var body: some View {
        VStack(spacing: 20) {
            Text("📝 Details View")
                .font(.title)
            Text("Item ID: \(id)")

            Button("Back") {
                router.pop()
            }

            Button("Back to Root") {
                router.popToRoot()
            }
        }
        .navigationTitle("Details")
    }
}


#Preview {
    DetailsView(id: 1)
}
