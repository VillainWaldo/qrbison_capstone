//
//  Information.swift
//  qrbison
//
//  Created by Kate Lorenzo on 3/11/22.
//

import SwiftUI

struct Information: View {
    var body: some View {
        NavigationView{
        ZStack{
            
            VStack{
                
                Text("Important Information")
                    .font(.title)
                    .foregroundColor(Color("gallynavyblue"))
                    
                
                HStack{
                    Text("Current Mask Status: ")
                    
                    Circle()
                        .foregroundColor(Color.green)
                        .frame(width: 20, height: 20)
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gallycream"))
                        .frame(width: .infinity, height: 250, alignment: .center)
                        .cornerRadius(25)
                        .padding(.horizontal, 20)
                    
                    VStack{
                        Text("Return to Campus")
                        NavigationLink(destination: TakingCOVIDTest()) {
                            Text("Taking a COVID-19 Test")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                                .frame(width: 200, height: 3, alignment: .center)
                                .padding(20)
                                .background(Color("gallyblue"))
                                .cornerRadius(10)
                        }
                        
                           NavigationLink(destination: PositiveTestProcess()) {
                        Text("Positive Test Process")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 3, alignment: .center)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                        
                           }
                        
                            NavigationLink(destination: COVIDDashboard()) {
                        Text("COVID-19 Dashboard")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 3, alignment: .center)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                             }
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
                        NavigationLink(destination: SuscipiousSymptoms()){
                        Text("Suscipious Symptoms")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 3, alignment: .center)
                            .padding(20)
                            .background(Color("gallyblue"))
                            .cornerRadius(10)
                        }
                    }
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 250, height: 40, alignment: .center)
                        .cornerRadius(10)
                    Button(
                       action: {
                      
                        },
                        label: {  Text("More on GU wesbite")
                                .foregroundColor(Color.white)
                                .underline() })
                    
                    Link("", destination: URL(string: "https://www.gallaudet.edu/about/return-to-campus/gu")!)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    
                }
            }
            TopHeader()
        }
        
    }
    }
}


struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
