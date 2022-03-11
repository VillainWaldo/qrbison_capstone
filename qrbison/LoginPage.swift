//
//  ContentView.swift
//  QR Bison
//
//  Created by Kate Lorenzo on 2/13/22.
//  Modified by Obaidullah Bakali
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var needlogin: Bool = true
    
    var body: some View {
        
        if needlogin {
            VStack {
                Spacer()
                Image("gallyfulllogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                
                Spacer()
                
                Text("QR Bison")
                    .font(.system(size: 70))
                    .padding()
                    .foregroundColor(Color("gallyblue"))
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Username: ")
                    TextField(
                        "Enter your username",
                        text: $username
                    )
                        .disableAutocorrection(true)
                    Text("Password: ")
                    TextField(
                        "Enter your password",
                        text: $password
                    )
                        .disableAutocorrection(true)
                        .padding(.bottom, 30)
                    
                    Button(
                        action: {
                            needlogin = false
                        }, label: {Text("Log In")}
                    )
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(5)
                    
                    Link("Forgot password?", destination: URL(string: "https://ssl.gallaudet.edu/passwordassistance/")!)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom, 30)
                
                Spacer()
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            .background(Color("gallycream"))
        }
        
        else {
            NavigationView{
                VStack {
                    /* ZStack{
                     Rectangle()
                     .foregroundColor(Color.blue)
                     } */
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 500, height: 150)
                            .rotationEffect(.degrees(2))
                            .foregroundColor(.gray)
                            .ignoresSafeArea(.all)
                        
                        Rectangle()
                            .position(x: 200, y: 65)
                            .frame(width: 500, height: 150)
                            .foregroundColor(.blue)
                            .rotationEffect(.degrees(-5))
                            .ignoresSafeArea(.all)
                        
                        
                        Text("QR Bison")
                            .frame(width: 250, height: 150, alignment: .top)
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .shadow(radius: 50)
                            .overlay(
                                Image("smalllogo")
                                    .resizable()
                                    .frame(width: 50, height:45, alignment: .topTrailing)
                                    .position(x: 275, y: 5)
                            )
                        
                    }
                    
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
                    
                    NavigationLink(destination: PersonalInformation()) {
                        Text("Personal Information")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: References()) {
                        Text("References")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                //.padding(20)
                //}
                //.navigationTitle("Buttons")
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
