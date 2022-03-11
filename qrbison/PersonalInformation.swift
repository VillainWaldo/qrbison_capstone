//
//  PersonalInformation.swift
//  qrbison
//
//  Created by Kate Lorenzo on 3/11/22.
//

import SwiftUI

struct PersonalInformation: View {
    @State private var positive: Bool = false
    //Add variable for date of most recent test
    var body: some View {
        VStack {
            //TopHeader()
            ZStack {
                Rectangle()
                    .fill(Color("gallycream"))
                    .frame(height: 90)
                VStack {
                    Text("Current Status")
                        .foregroundColor(Color("gallyblue"))
                    if positive {
                        Text("Positive")
                            .foregroundColor(Color.gray)
                            .padding(.vertical, -7.0)
                    }
                    else {
                        Text("Negative")
                            .foregroundColor(Color.gray)
                            .padding(.vertical, -7.0)
                    }
                    Text("2/19/2022")
                        .foregroundColor(Color.gray)
                }
            }
            .padding()
            
            ZStack (alignment: .leading) {
                Rectangle()
                    .fill(Color("gallycream"))
                    .frame(height: 60)
                VStack (alignment: .leading) {
                    Text("ID")
                        .foregroundColor(Color("gallyblue"))
                    Text("0000000")
                        .foregroundColor(Color.gray)
                        .padding(.top, -7.0)
                }
                .padding(.leading)
            }
            .padding()
            
            ZStack (alignment: .leading) {
                Rectangle()
                    .fill(Color("gallycream"))
                    .frame(height: 60)
                VStack (alignment: .leading) {
                    Text("First Name")
                        .foregroundColor(Color("gallynavyblue"))
                    Text("Bob")
                        .foregroundColor(Color.gray)
                        .padding(.top, -7.0)
                }
                .padding(.leading)
            }
            .padding()
            
            ZStack (alignment: .leading) {
                Rectangle()
                    .fill(Color("gallycream"))
                    .frame(height: 60)
                VStack (alignment: .leading) {
                    Text("Last Name")
                        .foregroundColor(Color("gallynavyblue"))
                    Text("Smith")
                        .foregroundColor(Color.gray)
                        .padding(.top, -7.0)
                }
                .padding(.leading)
            }
            .padding()
            
            ZStack (alignment: .leading) {
                Rectangle()
                    .fill(Color("gallycream"))
                    .frame(height: 60)
                VStack (alignment: .leading) {
                    Text("Phone Number")
                        .foregroundColor(Color("gallynavyblue"))
                    Text("(000)-000-0000")
                        .foregroundColor(Color.gray)
                        .padding(.top, -7.0)
                }
                .padding(.leading)
            }
            .padding()
        }
        .padding()
    }
}

struct PersonalInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInformation()
    }
}
