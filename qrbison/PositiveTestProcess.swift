//
//  PositiveTestProcess.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/31/22.
//

import SwiftUI

struct PositiveTestProcess: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Positive Test Process")
                    .fontWeight(.bold)
                    .foregroundColor(Color("gallynavyblue"))
                    .font(.system(size: 30))
                Divider()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gallycream"))
                        .frame(width: 350, height: 400)
                Text("The COVID-19 Response Team (CRT) will contact the D.C. Department of Health point of contact to ensure results have been reported and to initiate contact tracing.-A student or staff member living in the residence halls testing positive will be required to immediately report positive test results to the COVID-19 Response Team and to their resident assistant. The Student Health Center will also report any positive results they receive to the CRT.-Students and on-campus staff will be provided a room in a separate building for isolation, as well as services that include daily check-ins for health and wellness, and meal delivery. -Visitors will not be permitted into isolation rooms-Students who are confirmed to have COVID-19 will be required to stay in their isolation rooms on campus until: -At least three days (72 hours) after their fever resolves (without medication) and respiratory symptoms (cough, shortness of breath) improve; AND -At least 10 days have passed since their symptoms first started, whichever occurs later.")
                }
         
            
            }
            
            TopHeader()
        }
    }
}

struct PositiveTestProcess_Previews: PreviewProvider {
    static var previews: some View {
        PositiveTestProcess()
    }
}
