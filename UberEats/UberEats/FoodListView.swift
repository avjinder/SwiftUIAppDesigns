//
//  FoodListView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct FoodListView: View {
    var body: some View {
        NavigationView {
            List(foodItems) { foodItem in
                FoodRowView(foodItem: foodItem)
            }.navigationBarTitle("Order Food")
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
