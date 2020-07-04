//
//  FoodRowView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct FoodRowView: View {
    var foodItem: FoodItem
    var body: some View {
        VStack {
                Image(self.foodItem.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
            
            HStack {
                Text(foodItem.name)
                Text("(\(foodItem.address))")
                Spacer()
            }.font(.system(size: 16))

            HStack {
                Text(foodItem.priceLevel.rawValue)
                Image(systemName: "circle.fill")
                    .resizable().frame(width: 4, height: 4)
                Text(foodItem.foodCategory)
                Image(systemName: "circle.fill")
                    .resizable().frame(width: 4, height: 4)
                Text(foodItem.foodType)
                Spacer()
            }.font(.system(size: 12)).foregroundColor(.gray)

            HStack {
                Text(String(format: "%.2f mi", foodItem.distanceInMiles))
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .background( Rectangle() .cornerRadius(4) .foregroundColor( Color.gray.opacity(0.2)))
                
                HStack(spacing: 4) {
                    Text(String(format: "%.1f", foodItem.rating))
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text("(\(foodItem.totalRatings))").foregroundColor(Color.gray)
                }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .background( Rectangle() .cornerRadius(4) .foregroundColor( Color.gray.opacity(0.2)))
                
                Text("\(foodItem.minutesToTravelMinimum)-\(foodItem.minutesToTravelMaximum) MINS")
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .background( Rectangle() .cornerRadius(4) .foregroundColor( Color.gray.opacity(0.2)))
                Spacer()
            }
        }
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRowView(foodItem: foodItems[0])
            .previewLayout(.fixed(width: 600, height: 350))
    }
}
