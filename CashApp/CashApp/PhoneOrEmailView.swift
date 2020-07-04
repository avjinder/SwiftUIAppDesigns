//
//  PhoneOrEmailView.swift
//  CashApp
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct PhoneOrEmailView: View {
    @State var phoneOrEmail: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "questionmark").font(.system(size: 20, weight: .bold))
            }
            HStack {
                Text("Enter your phone or email").font(.system(size: 28, weight: .semibold))
                Spacer()
            }
            TextField("Phone or Email", text: $phoneOrEmail)
                .foregroundColor(.green)
                .font(.system(size: 14, weight: .semibold))
                .accentColor(.green)
                .frame(height: 64)
            Spacer()
            
            KeypadView(tapAction: self.handleButtonTap(value:))

            Button(action: {}) {
                Text("Next")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold))
                    .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 52)
                    .background(Capsule().foregroundColor(.green))
            }
        }.padding()
    }
    
    func handleButtonTap(value: String) {
        print("Tapped value: \(value)")
        switch value {
        case "<":
            phoneOrEmail.removeLast()
        default:
            phoneOrEmail.append(value)
        }
    }
}

struct PhoneOrEmailView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneOrEmailView()
    }
}
