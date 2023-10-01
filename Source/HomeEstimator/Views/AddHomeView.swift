//
//  AddHomeView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct AddHomeView: View {
    @State var viewModel: HomeViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Section(LocalizedStringKey(Localization.homedesc)) {
                    VStack {
                        TextField("",
                                  text: $viewModel.address,
                                  prompt: Text("Enter Address"))
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    }
                }
                
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
                
                Button(LocalizedStringKey(Localization.go)) {
                    
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .frame(maxWidth: .infinity)
            }
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
