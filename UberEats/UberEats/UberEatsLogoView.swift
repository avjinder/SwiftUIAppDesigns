//
//  UberEatsLogoView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct UberEatsLogoView: View {
    var uberColor: Color
    var body: some View {
        VStack {
            Text("Uber")
                .foregroundColor(uberColor)
                .font(.system(size: 48.0, weight: .semibold))
            Text("Eats")
                .foregroundColor(.green)
                .padding(.top, -12)
                .font(.system(size: 48.0, weight: .bold))
        }
    }
}

struct UberEatsLogoView_Previews: PreviewProvider {
    static var previews: some View {
        UberEatsLogoView(uberColor: .black)
    }
}
