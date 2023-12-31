//
//  FeedView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct FeedView: View {
    @State var showPopup: Bool = false
    
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
                    Button(action: {
                        showPopup.toggle()
                    }, label: {
                        Image(systemName: Images.plus)
                    })
                }
            }
            .listStyle(.plain)
            .navigationTitle(LocalizedStringKey(Localization.feed))
            .popover(isPresented: $showPopup) {
                AddHomeView(viewModel: .init(address: "",
                                             numberOfRooms: 0,
                                             numberOfBathrooms: 0,
                                             squareFootage: 1000,
                                             exteriorCondition: .average,
                                             interiorCondition: .average))
            }
        }
    }
}

#Preview {
    FeedView()
}
