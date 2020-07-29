//
//  MainView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            }
            ShopView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Shop")
            }
            BagView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Bag")
                }
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
            }
        }
        .accentColor(Color("customMagenta"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
