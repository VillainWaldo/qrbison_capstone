//
//  HomePage.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/11/22.
//

import SwiftUI

struct HomePage: View {
    //For log out pop up window
    @State private var showPopUp: Bool = false
    @State private var showQR: Bool = false
    
    //Personal QR Code
    @State private var qrcode: Image = Image("qrcode")
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    Spacer()
                    Image("gallycovid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    
                    NavigationLink(destination: Information()) {
                        Text("Information")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 30.0)
                    
                    NavigationLink(destination: PersonalInformation()) {
                        Text("Personal Information")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 30.0)
                    
                    NavigationLink(destination: References()) {
                        Text("References")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 30.0)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .fill(Color("gallycream"))
                            .edgesIgnoringSafeArea(.all)
                            .frame(maxHeight: 85)
                            .offset(y: 50)
                        Button{showQR.toggle()} label: {Image(systemName: "qrcode")
                                .resizable()
                                .renderingMode(.original)
                                .foregroundColor(.white)
                                .frame(width: 54, height: 54)
                                .padding(10.0)
                                .border(Color.white)
                                .shadow(radius: 3, x: 5, y: 5)
                                //.edgesIgnoringSafeArea(.all)
                        }
                        .background(Color("gallyblue"))
                        .padding(.top, 10.0)
                        
                    }
                }
                
                TopHeader()
                
                VStack{
                    HStack{
                        Button{showPopUp.toggle()} label: {Image(systemName: "rectangle.portrait.and.arrow.right")
                                .resizable()
                                .renderingMode(.original)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)}
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.leading, 25.0)
                .padding(.top, 40.0)
                .edgesIgnoringSafeArea(.all)
                
                LogOutPop(title: "Log Out", message: "Are you sure you want to log out?", buttonText: "No", show: $showPopUp)
                
                QRCodePop(title: "Personal QR Code", message: qrcode, buttonText: "OK", show: $showQR)
            }
        }
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
