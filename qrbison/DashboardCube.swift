//  SwiftUIView.swift
//  qrbison
//
//  Created by Vladimir Slavov on 4/22/22.
//

import SwiftUI

struct DashboardCube: View {
    var body: some View {
        
      var num = "0"
       var textMess = "Text"
        
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(Color("gallynavyblue"))
                    .frame(width: 100, height: 100, alignment:.leading)
                    .cornerRadius(20)
                
                Text(num)
                    .foregroundColor(Color.white)
                .font(.system(size: 50))
            }
            Text(textMess)
        }
    }
}
    struct DashboardCube_Previews: PreviewProvider {
        static var previews: some View {
            DashboardCube()
        }
    }

