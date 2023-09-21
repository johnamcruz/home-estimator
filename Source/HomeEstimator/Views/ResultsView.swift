//
//  ResultsView.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/20/23.
//

import SwiftUI

struct ResultsView: View {
    @State var homeValue = 100000.0
    @State private var minValue = 0.0
    @State private var maxValue = 1000000.0
    
    var body: some View {
        VStack {
            Gauge(value: homeValue, in: minValue...maxValue) {
                Text(LocalizedStringKey(Localization.homeresultvalue))
            } currentValueLabel: {
                Text("\(Int(homeValue).formatted(.currency(code: "USD")))")
            } minimumValueLabel: {
                Text("\(Int(minValue))")
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
            }
            .gaugeStyle(SpeedometerGaugeStyle())
            .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    ResultsView()
}
