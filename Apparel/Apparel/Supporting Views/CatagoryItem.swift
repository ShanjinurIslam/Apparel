//
//  CatagoryItem.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatagoryItem: View {
    var name:String!
    
    var body: some View {
        HStack{
            Text(name)
            Spacer()
            NavigationLink(destination:LogInView()){
                Image(systemName: "arrow.right")
            }
        }
        .padding(.leading,15)
        .padding(.trailing,15)
        .padding(.top,2.5)
        .padding(.bottom,2.5)
    }
}
