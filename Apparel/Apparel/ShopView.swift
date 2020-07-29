//
//  ShopView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        Text("Hello, World!")
        .navigationBarTitle("Catagories")
            .navigationBarItems(trailing: Button(action:{
                
            }){
                Image(systemName: "magni")
            })
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
