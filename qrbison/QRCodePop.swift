//
//  QRCodePop.swift
//  qrbison
//
//  Created by Kate Lorenzo on 4/22/22.
//

import SwiftUI

struct QRCodePop: View {
    var title: String
    var message: Image
    var buttonText: String
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            if show {
                // PopUp background color
                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                
                // PopUp Window
                VStack(alignment: .center, spacing: 0) {
                    Text(title)
                        .frame(maxWidth: .infinity)
                        .frame(height: 45, alignment: .center)
                        .font(Font.system(size: 23, weight: .semibold))
                        .foregroundColor(Color.white)
                        .background(Color("gallynavyblue"))
                    
                    Text(message)
                        .multilineTextAlignment(.center)
                    HStack {
                        /*Button(action: {
                            //Log out
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }, label: {
                            Text(buttonText)
                                .frame(maxWidth: .infinity)
                                .frame(height: 54, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color("gallynavyblue"))
                                .font(Font.system(size: 23, weight: .semibold))
                        }).buttonStyle(PlainButtonStyle())*/
                        
                        NavigationView {
                                    NavigationLink(destination: LoginPage()) {
                                        Text("Push new screen")
                                    }
                                }
                        
                        Button(action: {
                            //Do not log out
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }, label: {
                            Text(buttonText)
                                .frame(maxWidth: .infinity)
                                .frame(height: 54, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color("gallynavyblue"))
                                .font(Font.system(size: 23, weight: .semibold))
                        }).buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(maxWidth: 300)
                .border(Color.white, width: 2)
                .background(Color("gallycream"))
            }
        }
    }
}

/*struct QRCodePop_Previews: PreviewProvider {
    static var previews: some View {
        QRCodePop()
    }
}*/
