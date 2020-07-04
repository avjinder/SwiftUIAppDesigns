//
//  FoodItem.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import Foundation

struct FoodItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var address: String
    var foodCategory: String
    var foodType: String
    var distanceInMiles: Double
    var totalRatings: Int
    var rating: Double
    var minutesToTravelMinimum: Int
    var minutesToTravelMaximum: Int
    var usersComments: String?
    var priceLevel: PriceLevel
    var headerImage: String
}

enum PriceLevel: String {
    case inexpensive = "$"
    case affordable = "$$"
    case expensive = "$$$"
    case exorbitant = "$$$$"
}

let foodItems: [FoodItem] = [
    FoodItem(
        name: "Carl's Jr",
        address: "1001 Veterans Blvd",
        foodCategory: "Fast Food",
        foodType: "Burger",
        distanceInMiles: 3.40,
        totalRatings: 104,
        rating: 4.7,
        minutesToTravelMinimum: 5,
        minutesToTravelMaximum: 15,
        priceLevel: .affordable,
        headerImage: "carls_jr"
    ),
    FoodItem(
        name: "Denny's",
        address: "814 Ahwanee Ave",
        foodCategory: "American",
        foodType: "Breakfast & brunch",
        distanceInMiles: 9.6,
        totalRatings: 187,
        rating: 4.5,
        minutesToTravelMinimum: 10,
        minutesToTravelMaximum: 20,
        priceLevel: .expensive,
        headerImage: "dennys"
    )
]
