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
            .ignoresSafeArea(.keyboard)
        }
        
        else {
            HomePage()
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
