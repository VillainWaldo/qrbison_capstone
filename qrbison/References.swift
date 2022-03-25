//
//  References.swift
//  qrbison
//
//  Created by Kate Lorenzo on 3/11/22.
//

import SwiftUI

struct References: View {
    var body: some View {
        Text("references(Ob will work on this during the spring break")
    }
}

struct References_Previews: PreviewProvider {
    static var previews: some View {
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
            Text("Safercommunity")
                .font(.system(size: 20))
                .fontWeight(.bold)
                
                .foregroundColor(Color("gallyblue"))
            Text("T3 Testing")
                .font(.system(size: 15))
                .foregroundColor(.gray)
            
            Image("servicenow")
                .resizable()
                .frame(width: 70, height: 70)
                .padding(.top)
            Text("ServiceNow")
                .font(.system(size: 20))
                .fontWeight(.bold)
            //.padding(.top)
                .foregroundColor(Color("gallyblue"))
            Text("Self-assesment")
                .font(.system(size: 15))
                .foregroundColor(.gray)
            
            Image("GU")
                .resizable()
                .frame(width: 70, height: 70)
                .padding(.top)
            
            Text("COVID Dashboard")
                .font(.system(size: 20))
                .fontWeight(.bold)
                //.padding(.top)
                .foregroundColor(Color("gallyblue"))
            Text("Infographic")
                .font(.system(size: 15))
                .foregroundColor(.gray)
            
    }
        //.background(Color("gallycream"))
}
}
