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
            //TopHeader
            Text("Important Information")
            
            Text("Current Mask Status: ")
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gallycream"))
                    .frame(width: .infinity, height: 275, alignment: .center)
                    .cornerRadius(25)
                    .padding(.horizontal, 20)
                VStack{
                Text("Return to Campus")
                
             //   NavigationLink(destination: Information()) {
                    Text("Taking a COVID-19 Test")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 3, alignment: .center)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
            //   }
                
             //   NavigationLink(destination: PersonalInformation()) {
                    Text("Positive Test Process")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .frame(width: .infinity, height: 30, alignment: .center)
                        .padding(.horizontal, 50)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
                        
            //    }
                
          //      NavigationLink(destination: References()) {
                    Text("COVID-19 Dashboard")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 3, alignment: .center)
                        .padding(20)
                        .background(Color("gallyblue"))
                        .cornerRadius(10)
         //       }
                
                
                
                }
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gallycream"))
                    .frame(width: .infinity, height: 100, alignment: .center)
                    .cornerRadius(25)
                    .padding(.horizontal, 20)
                VStack{
                Text("Your Safety")
                    Text("Suscipious Symptoms")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 3, alignment: .center)
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
            Spacer()
    }
    
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
