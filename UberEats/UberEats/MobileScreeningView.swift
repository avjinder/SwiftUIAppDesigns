//
//  MobileScreeningView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct MobileScreeningView: View {
    @State var phoneNumber: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                }
                Spacer()
            }.padding()
            VStack(alignment: .leading) {
                Text("Enter your mobile number")
                    .font(.system(size: 20))
                    .padding(.leading, 16)
                CountryAndNumberEntryView(placeholderNumber: "(201)555-0123", phoneNumber: $phoneNumber)
                    .padding(.top, -18)
            }
            .padding(.top, 24)
            Spacer()
        }
    }
}

struct MobileScreeningView_Previews: PreviewProvider {
    static var previews: some View {
        MobileScreeningView()
    }
}
