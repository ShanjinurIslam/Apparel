//
//  MainView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI
import StatefulTabView

struct MainView: View {
    var body: some View {
        StatefulTabView() {
            Tab(title: "Home", systemImageName: "house") {
                HomeView()
            }
            Tab(title: "Shop", systemImageName: "cart") {
                ShopView()
            }
            Tab(title: "Bag", systemImageName: "bag") {
                BagView()
            }
            Tab(title: "Favorites", systemImageName: "heart") {
                FavoritesView()
            }
            Tab(title: "Profile", systemImageName: "person") {
                FavoritesView()
            }
        }
        .barAppearanceConfiguration(.default)
        .accentColor(Color("customMagenta"))
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
