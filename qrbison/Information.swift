//
//  Information.swift
//  qrbison
//
//  Created by Kate Lorenzo on 3/11/22.
//

import SwiftUI

struct Information: View {
    var body: some View {
        VStack{
            Text("Important Information")
            
            Text("Current Mask Status: ")
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gallycream"))
                    .frame(width: 250, height: 250, alignment: .center)
                    .cornerRadius(25)
                VStack{
                Text("Return to Campus")
                
             //   NavigationLink(destination: Information()) {
                    Text("Taking a COVID-19 Test")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 175, height: 75, alignment: .center)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
            //   }
                
             //   NavigationLink(destination: PersonalInformation()) {
                    Text("Positive Test Process")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
            //    }
                
          //      NavigationLink(destination: References()) {
                    Text("COVID-19 Dashboard")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
         //       }
                
                
                
                }
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gallycream"))
                    .frame(width: 250, height: 125, alignment: .center)
                    .cornerRadius(25)
                VStack{
                Text("Your Safety")
                    Text("Suscipious Symptoms\")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
                }
        }
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color.black)
                    .frame(width: 150, height: 40, alignment: .center)
                    .cornerRadius(10)
                    
            }
    }
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
