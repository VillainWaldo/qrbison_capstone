//
//  TopHeader.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/11/22.
//

import SwiftUI

struct TopHeader: View {
    var body: some View {
        GeometryReader {geometry in
            ZStack{
                Text("QR Bison")
                    .font(.system(size: 55))
                    .foregroundColor(.white)
                    .offset(y: 45)
            
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image("gallyminilogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    })
                }
                .offset(x: -10)
            }
            .background(
                        Image("header")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .ignoresSafeArea()
                    )
        }
        .edgesIgnoringSafeArea(.all)
        .offset(y: 0)
    }
}

struct TopHeader_Previews: PreviewProvider {
    static var previews: some View {
        TopHeader()
    }
}
