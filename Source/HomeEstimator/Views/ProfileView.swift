//
//  ProfileView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image(systemName: Images.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("User name")
                HStack {
                    Button(LocalizedStringKey(Localization.aboutme)) {
                        
                    }
                    .buttonStyle(.bordered)
                    .frame(width: 100)
                    .tint(.accentColor)
                    Button(LocalizedStringKey(Localization.reviews)) {
                        
                    }
                    .buttonStyle(.bordered)
                    .frame(width: 100)
                }
                Spacer()
            }
            .navigationTitle(LocalizedStringKey(Localization.profile))
        }
    }
}

#Preview {
    ProfileView()
}
