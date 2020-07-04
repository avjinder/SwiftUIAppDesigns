//
//  PaymentView.swift
//  CashApp
//
//  Created by Avjinder sekhon on 2020-07-04.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct PaymentView: View {
    @State private var amount: Int = 0
    var body: some View {
        ZStack {
            
            Color(UIColor(red:0.11, green:0.71, blue:0.29, alpha:1.00)).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "viewfinder")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "person.crop.circle")
                    .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
                .padding(.horizontal)

                
                Text("＄\(amount)")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 48)
                Spacer()
                
                KeypadView(keysColor: Color.white, tapAction: self.handleKeypadTap(value:))
                
                HStack {
                    Button(action: {}) {
                        Text("Request")
                            .frame(width:UIScreen.main.bounds.size.width / 2 - 16 ,height: 48)
                            .foregroundColor(.white)
                            .background(Capsule()
                                .foregroundColor(Color(UIColor(red:0.12, green:0.75, blue:0.31, alpha:1.00)))
                        )
                    }
                    Button(action: {}) {
                        Text("Request")
                            .frame(width:UIScreen.main.bounds.size.width / 2 - 16 ,height: 48)
                            .foregroundColor(.white)
                            .background(Capsule()
                                .foregroundColor(Color(UIColor(red:0.12, green:0.75, blue:0.31, alpha:1.00)))
                        )
                    }
                }.padding(.bottom, 36)
                
                HStack() {
                    Group {
                        Spacer()
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 24, height: 20)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    Group {
                        Spacer()
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .frame(width: 24, height: 20)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    Group {
                        Spacer()
                        Image(systemName: "dollarsign.square.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                    Group {
                    Spacer()
                        Image(systemName: "scribble")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    Group {
                        Spacer()
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                    Spacer()
                }
            }.padding()
        }
    }
    
    func handleKeypadTap(value: String) {
        print(value)
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
