//
//  References.swift
//  qrbison
//
//  Created by Kate Lorenzo on 3/11/22.
//

import SwiftUI

struct References: View {
    var body: some View {
        ZStack{
            VStack {
                // References()
                Text("References")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("gallyblue"))
                
                
                Image("safercommunity")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                    .shadow(radius:10)
                
                Link("SaferCommunity",destination: URL(string: "https://apps.apple.com/us/app/safer-community/id1545417277")!)
                    .font(.system(size: 20))
                    //.fontWeight(.bold)
                
                    .foregroundColor(Color("gallyblue"))
                Text("T3 Testing")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Image("servicenow")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                    .shadow(radius:10)
                Link("ServiceNow",destination: URL(string:"https://apps.apple.com/us/app/servicenow-agent/id1446951408")!)
                    .font(.system(size: 20))
                    //.fontWeight(.bold)
                //.padding(.top)
                    .foregroundColor(Color("gallyblue"))
                Text("Self-assesment")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Image("GU")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                    .shadow(radius:10)
                
                
                Link("COVID Dashboard",destination: URL(string: "https://www.gallaudet.edu/about/dashboard/")!)
                    .font(.system(size: 20))
                    //.fontWeight(.bold)
                //.padding(.top)
                    .foregroundColor(Color("gallyblue"))
                Text("Infographic")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
            }
            TopHeader()
        }

        //.background(Color("gallycream"))
        //.frame(width: 500, height: 500)
    }
    }



struct References_Previews: PreviewProvider {
    static var previews: some View {
        References()
    }
}

