//
//  FeedView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(LocalizedStringKey(Localization.homedesc))
                TextField("",
                          text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .padding()
                
                Button(LocalizedStringKey(Localization.go)) {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                Spacer()
            }
            .navigationTitle(LocalizedStringKey(Localization.homevalue))
        }
    }
}

#Preview {
    FeedView()
}
