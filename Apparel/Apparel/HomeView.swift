//
//  HomeView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        ScrollView(.vertical){
            Banner()
            CatagoryRow(name: "New")
            CatagoryRow(name: "Sale")
            CatagoryRow(name: "Classic").padding(.bottom,100)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
