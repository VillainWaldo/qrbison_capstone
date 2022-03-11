//
//  TopHeader.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/11/22.
//

import SwiftUI

struct TopHeader: View {
    var body: some View {
        ZStack{
            Rectangle()
                .position(x: 200, y: 65)
                .frame(width: 500, height: 150)
                .rotationEffect(.degrees(2))
                .foregroundColor(Color("gallycream"))
                .ignoresSafeArea(.all)
            
            Rectangle()
                .position(x: 200, y: 65)
                .frame(width: 500, height: 150)
                .foregroundColor(Color("gallyblue"))
                .rotationEffect(.degrees(-5))
                .ignoresSafeArea(.all)
            
            
            Text("QR Bison")
                .frame(width: 250, height: 150, alignment: .top)
                .font(.system(size: 45))
                .foregroundColor(.white)
                .shadow(radius: 50)
                .overlay(
                    Image("gallyminilogo")
                        .resizable()
                        .frame(width: 50, height:45, alignment: .topTrailing)
                        .position(x: 275, y: 5)
                )
            
        }
    }
}

struct TopHeader_Previews: PreviewProvider {
    static var previews: some View {
        TopHeader()
    }
}
