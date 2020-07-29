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
