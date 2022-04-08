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
    
    var body: some View {
        NavigationView{
            ZStack {
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
                    }
                    
                    TopHeader()
                    VStack{
                        HStack{
                            Button{showPopUp.toggle()} label: {Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 30, height: 30)}
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding()
                    .offset(y: -110)
                }
                LogOutPop(title: "Log Out", message: "Are you sure you want to log out?", buttonText: "No", show: $showPopUp)
            }
        }
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
