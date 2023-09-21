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
                    Label(LocalizedStringKey(Localization.feed),
                          systemImage: Images.feed)
                }
            ProfileView()
                .tabItem {
                    Label(LocalizedStringKey(Localization.profile), 
                          systemImage: Images.profile)
                }
        }
    }
}

#Preview {
    MainView()
}
