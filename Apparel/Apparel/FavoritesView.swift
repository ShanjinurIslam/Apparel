//
//  FavoritesView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    
    @State var changeAppearance:Bool = false
    @State var current = 0
    @State var showSheetView = false
    var sortCategories:[String] = ["Popular","Newest","Price high to low","Price low to high"]
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment:.center){
                    HStack{
                        NavigationLink(destination:Filter()){
                            Image(systemName: "line.horizontal.3.decrease.circle").frame(width:24,height: 24)
                        }
                        Spacer()
                        Button(action:{
                            self.showSheetView = true
                        }){
                            HStack{
                                Image(systemName: "arrow.up.arrow.down")
                                Text(self.sortCategories[self.current]).font(.caption)
                            }
                        }
                        Spacer()
                        Button(action:{
                            self.changeAppearance.toggle()
                        }){
                            if(self.changeAppearance){
                                Image(systemName: "list.dash").frame(width:24,height: 24)
                            }
                            else{
                                Image(systemName: "square.grid.2x2").frame(width:24,height: 24)
                            }
                        }
                    }
                    .padding(.leading,15)
                    .padding(.trailing,15)
                    .padding(.top,5)
                    .padding(.bottom,5)
                    
                    if(self.changeAppearance){
                        CatalogGrid()
                    }
                    else{
                        CatalogList()
                    }
                }
            }
            .navigationBarTitle("Favorites")
            .sheet(isPresented: $showSheetView,onDismiss: {
                self.showSheetView = false
            }) {
                SheetView(showSheetView: self.$showSheetView, current: self.$current,sortCategories: self.sortCategories)
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
