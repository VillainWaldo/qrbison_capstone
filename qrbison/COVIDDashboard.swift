//
//  COVIDDashboard.swift
//  qrbison
//
//  Created by Vladimir Slavov on 3/31/22.
//

import SwiftUI

struct COVIDDashboard: View {
    var body: some View {
        ZStack{
            VStack{
                Text("COVID-19 Dashboard")
                    .fontWeight(.bold)
                    .foregroundColor(Color("gallynavyblue"))
                    .font(.system(size: 30))
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gallycream"))
                        .frame(width: 350, height: 450)
                        .cornerRadius(20)
                    VStack{
                        HStack{
                            DashboardCube()
                            DashboardCube()
                            
                        }
                        HStack{
                            DashboardCube()
                            DashboardCube()
                            
                        }
                        DashboardCube()
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



struct COVIDDashboard_Previews: PreviewProvider {
    static var previews: some View {
        COVIDDashboard()
    }
}
