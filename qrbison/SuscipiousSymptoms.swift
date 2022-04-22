//
//  SuscipiousSymptoms.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/31/22.
//

import SwiftUI

struct SuscipiousSymptoms: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Suscipious Symptons")
                    .fontWeight(.bold)
                    .foregroundColor(Color("gallynavyblue"))
                    .font(.system(size: 30))
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gallycream"))
                        .frame(width: 350, height: 230)
                        .cornerRadius(20)
                    VStack (alignment: .leading){
                    Text("- Fever or chills")
                    Text("-Cough")
                    Text("-Shortness of breath or difficulty breathing")
                    Text("-Fatigue")
                    Text("-Muscles or body aches")
                    Text("New loss of taste or smell")
                    Text("-Sore Throat")
                    Text("-Congestion or runny nose")
                    Text("-Nausea or vomiting")
                    Text("-Diarrhea")
                    
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

struct SuscipiousSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        SuscipiousSymptoms()
    }
}
