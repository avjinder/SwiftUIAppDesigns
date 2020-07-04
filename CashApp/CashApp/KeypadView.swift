//
//  KeypadView.swift
//  CashApp
//
//  Created by Avjinder sekhon on 2020-07-04.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import SwiftUI

struct KeypadView: View {
    var tapAction: (String) -> Void
    var keysColor: Color
    
    init(keysColor: Color = Color.gray ,tapAction: @escaping (String) -> Void) {
        self.tapAction = tapAction
        self.keysColor = keysColor
    }
    var body: some View {
        VStack {
            ForEach([["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], ["ABC", "0", "<"]], id: \.self) { item in
                HStack {
                    ForEach(item, id: \.self) { inner in
                        HStack {
                            Spacer()
                            Button(action: {
                                self.tapAction(inner)
                            }) {
                                Text("\(inner)").font(.system(size: 20, weight: .bold))
                                    .foregroundColor(self.keysColor)
                            }
                            Spacer()
                        }
                    }
                }.padding()
            }
        }.padding(.bottom, 48)
    }
}

struct KeypadView_Previews: PreviewProvider {
    static var previews: some View {
        KeypadView { value in
            print(value)
        }
    }
}
