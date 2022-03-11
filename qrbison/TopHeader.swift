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
                ZStack {
                    Rectangle()
                        .frame(width: geometry.size.width * 1.4, height: geometry.size.height * 0.3)
                                        .position(x: geometry.size.width / 2, y: geometry.size.height * 0.095)
                        .rotationEffect(.degrees(2))
                        .foregroundColor(Color("gallycream"))
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                    
                    Rectangle()
                        .frame(width: geometry.size.width * 1.4, height: geometry.size.height * 0.3)
                                        .position(x: geometry.size.width / 2, y: geometry.size.height * 0.09)
                        .foregroundColor(Color("gallyblue"))
                        .rotationEffect(.degrees(-5))
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                }
                
                
                Text("QR Bison")
                    .frame(width: 250, height: 150)
                    .font(.system(size: 55))
                    .foregroundColor(.white)
                    .shadow(radius: 50)
                    .overlay(
                        Image("gallyminilogo")
                            .resizable()
                            .frame(width: 50, height: 45, alignment: .topTrailing)
                            .position(x: 275, y: 5)
                    )
                    .offset(y: -10)
            }
        }
    }
}

struct TopHeader_Previews: PreviewProvider {
    static var previews: some View {
        TopHeader()
    }
}
