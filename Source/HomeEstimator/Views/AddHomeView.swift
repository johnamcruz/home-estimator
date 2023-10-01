//
//  AddHomeView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct AddHomeView: View {
    @State private var selected: Int = 0
    @State var viewModel: HomeViewModel
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selected) {
                Form {
                    VStack {
                        Text(LocalizedStringKey(Localization.homedesc))
                        TextField("",
                                  text: $viewModel.address,
                                  prompt: Text("Enter Address"))
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        Button(LocalizedStringKey(Localization.go)) {
                            selected = 1
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.accentColor)
                        Spacer()
                    }
                }
                .tag(0)
                
                Form {
                    Section("Property Details") {
                        Stepper("\(viewModel.numberOfRooms) Bedrooms", value: $viewModel.numberOfRooms, in: 0...10)
                        Stepper("\(viewModel.numberOfBathrooms) Bathrooms", value: $viewModel.numberOfBathrooms, in: 0...10)
                        
                        Picker("Interior Condition", selection: $viewModel.interiorCondition) {
                            ForEach(HomeCondition.allCases, id: \.self) { condition in
                                Text(condition.title)
                                    .tag(condition)
                            }
                        }
                        Picker("Exterior Condition", selection: $viewModel.exteriorCondition) {
                            ForEach(HomeCondition.allCases, id: \.self) { condition in
                                Text(condition.title)
                                    .tag(condition)
                            }
                        }
                    }
                }
                .tag(1)
            }
            .tabViewStyle(.page)
            .navigationTitle(LocalizedStringKey(Localization.homevalue))
        }
    }
}

#Preview {
    AddHomeView(viewModel: .init(address: "",
                                 numberOfRooms: 1,
                                 numberOfBathrooms: 1,
                                 squareFootage: 1000,
                                 exteriorCondition: .average,
                                 interiorCondition: .average))
}
