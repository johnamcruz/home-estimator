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
                Text("Hello world")
            }
            .navigationTitle(LocalizedStringKey(Localization.feed))
        }
    }
}

#Preview {
    FeedView()
}
