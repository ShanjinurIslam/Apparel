//
//  CategoryColumn.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CategoryColumn: View {
    private var catagories:[String] = ["Tops","Shirts","Dresses","Skirts"]
    
    struct CatagoryItem: View {
        var name:String!
        
        var body: some View {
            HStack{
                Text(name)
                Spacer()
                NavigationLink(destination:CatalogView(catagory: self.name)){
                    Image(systemName: "arrow.right")
                }
            }
            .padding(.leading,15)
            .padding(.trailing,15)
            .padding(.top,2.5)
            .padding(.bottom,2.5)
        }
    }
    
    var body: some View {
        ScrollView(.horizontal){
            ForEach(0...catagories.count-1,id:\.self){
                CatagoryItem(name:self.catagories[$0]).frame(width:UIScreen.main.bounds.size.width)
                
            }
        }
    }
}

/*
struct CategoryColumn_Previews: PreviewProvider {
    static var previews: some View {
        CategoryColumn()
    }
}
*/
