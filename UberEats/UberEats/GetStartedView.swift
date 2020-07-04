//
//  GetStartedView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                Image("food_image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
            
            VStack {
                HStack(alignment: .top) {
                    UberEatsLogoView(uberColor: .black)
                    Spacer()
                    Button(action: {}) {
                        Text("Skip")
                            .font(.body)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .foregroundColor(.black)
                            .background(Capsule().foregroundColor(.white))
                    }
                }.padding()
                
                Spacer()
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Get started with Uber Eats")
                            .font(.system(size: 20.0, weight: .semibold))
                            .padding(.bottom, 8)
                        
                            Button(action: {}) {
                                HStack {
                                    Spacer()
                                    Text("Continue")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18.0))
                                    Spacer()
                                    Image(systemName: "arrow.right")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.white)
                                        .padding(.trailing)
                                }
                            }
                                    .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 60.0)
                                    .background(Rectangle().foregroundColor(.green))
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 32, leading: 16, bottom: 54, trailing: 16))
                .background(Color.white)
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
//        ForEach(["iPhone 11", "iPad Pro (11-inch) (2nd generation)"], id: \.self) { item in
//            GetStartedView()
//                .previewDevice(PreviewDevice(rawValue: item))
//        }
    }
}
