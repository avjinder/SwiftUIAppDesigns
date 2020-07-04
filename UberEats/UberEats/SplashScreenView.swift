//
//  SplashScreenView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.black
            UberEatsLogoView(uberColor: .white)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
