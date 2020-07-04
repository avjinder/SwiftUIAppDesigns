//
//  LocationsView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        ZStack {
            LocationsMapView(locations: dummyLocations)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button(action:{}) {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                        .padding()
                            .background(
                                Circle()
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 16, x: 2, y: 2)
                        )
                    }
                    Spacer()
                }.padding(EdgeInsets(top: 24, leading: 24, bottom: 0, trailing: 0))
                Spacer()
            }
        }
//        .edgesIgnoringSafeArea(.all)
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
