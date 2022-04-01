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
                Text("Displaying Dashboard")
            }
            
            TopHeader()
        }    }
}

struct COVIDDashboard_Previews: PreviewProvider {
    static var previews: some View {
        COVIDDashboard()
    }
}
