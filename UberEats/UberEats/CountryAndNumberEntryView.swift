//
//  CountryAndNumberEntryView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct CountryAndNumberEntryView: View {
    var placeholderNumber: String
    @Binding var phoneNumber: String
    var body: some View {
        HStack {
            HStack {
                Image("flag_usa")
                    .resizable()
                    .frame(width: 28, height: 28)
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color.gray.opacity(0.5))
                    .padding(.leading, -4)
            }
            Text("+1")
            TextField(placeholderNumber, text: $phoneNumber)
                .foregroundColor(Color.gray.opacity(0.8))
            Spacer()
        }
        .padding(8)
        .background(
            Rectangle()
                .cornerRadius(6.0)
                .foregroundColor(Color.gray.opacity(0.1))
        )
        .padding()
    }
}

struct CountryAndNumberEntryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryAndNumberEntryView(
            placeholderNumber: "(201)555-0123", phoneNumber: .constant("")
        )
    }
}
