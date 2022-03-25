//
//  HomePage.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/11/22.
//

import SwiftUI

struct HomePage: View {
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
                
                TopHeader()
            }
            
            //.padding(20)
            //}
            //.navigationTitle("Buttons")
        }
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
