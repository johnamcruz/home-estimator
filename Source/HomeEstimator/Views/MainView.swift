//
//  MainView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/18/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label(LocalizedStringKey("Feed"), 
                          systemImage: "list.bullet")
                }
            ProfileView()
                .tabItem {
                    Label(LocalizedStringKey("Profile"), systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
