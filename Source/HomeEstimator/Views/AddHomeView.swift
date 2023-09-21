//
//  AddHomeView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct AddHomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(LocalizedStringKey(Localization.homedesc))
                TextField("",
                          text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .padding()
                
                NavigationLink {
                    ResultsView()
                        .toolbarRole(.editor)
                } label: {
                    Text(LocalizedStringKey(Localization.go))
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
    AddHomeView()
}