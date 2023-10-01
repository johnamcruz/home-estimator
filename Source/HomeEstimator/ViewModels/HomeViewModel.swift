//
//  HomeModel.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/30/23.
//

import Foundation

enum HomeCondition: String, CaseIterable {
    case needsWork
    case average
    case excellent

    var title: String {
        switch self {
        case .needsWork:
            return "Needs work"
        case .average:
            return "Average"
        case .excellent:
            return "Excellent"
        }
    }
}

struct HomeViewModel {
    var numberOfRooms: Int
    var numberOfBathrooms: Int
    var squareFootage: Double
    var exteriorCondition: HomeCondition
    var interiorCondition: HomeCondition
}
