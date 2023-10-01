//
//  HomeModel.swift
//  HomeEstimator
//
//  Created by John M Cruz on 9/30/23.
//

import Foundation

enum HomeCondition: CaseIterable {
    case needsWork
    case average
    case excellent
}

struct HomeModel {
    var numberOfRooms: Int
    var numberOfBathRooms: Int
    var squareFootage: Double
    var exteriorCondition: HomeCondition
    var interiorCondition: HomeCondition
}
