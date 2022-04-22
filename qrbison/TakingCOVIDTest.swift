//
//  TakingCOVIDTest.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/31/22.
//

import SwiftUI

struct TakingCOVIDTest: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Taking a COVID-19 Test")
                    .fontWeight(.bold)
                    .foregroundColor(Color("gallynavyblue"))
                    .font(.system(size: 30))
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gallycream"))
                        .frame(width: 350, height: 230)
                        .cornerRadius(20)
                    VStack (alignment: .leading){
                    Text("Instructions: Schedule an appointment through the SaferCommunity app. -For the appointment: -Must be hydrated. Drink fluids beforehand up to 1 hour before your test. -For 1 hour before your test, you may not: -Drink, eat, chew gum, take medication, brush the teeth, smoke, use chewing tobacco. -If the sample cannot be analyzed, you will need to test again.")
                            .padding(30)
        
                    }
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 100, height: 40, alignment: .center)
                        .cornerRadius(10)
                    Button(
                       action: {
                      
                        },
                        label: {  Text("Video")
                                .foregroundColor(Color.white)
                                .underline() })
                }
                
            }
            
            
            
            TopHeader()
        }
    }
}

struct TakingCOVIDTest_Previews: PreviewProvider {
    static var previews: some View {
        TakingCOVIDTest()
    }
}
