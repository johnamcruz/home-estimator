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
            List {
                NavigationLink {
                    HomeDetailsView()
                } label: {
                    Label(
                        title: { Text("Home 1") },
                        icon: { Image(systemName: Images.house) }
                    )
                }
                NavigationLink {
                    HomeDetailsView()
                } label: {
                    Label(
                        title: { Text("Home 2") },
                        icon: { Image(systemName: Images.house) }
                    )
                }
                NavigationLink {
                    HomeDetailsView()
                } label: {
                    Label(
                        title: { Text("Home 3") },
                        icon: { Image(systemName: Images.house) }
                    )
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink {
                        AddHomeView(viewModel: .init(address: "", 
                                                     numberOfRooms: 0,
                                                     numberOfBathrooms: 0,
                                                     squareFootage: 1000,
                                                     exteriorCondition: .average,
                                                     interiorCondition: .average))
                    } label: {
                        Image(systemName: Images.plus)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(LocalizedStringKey(Localization.feed))
        }
    }
}

#Preview {
    FeedView()
}
