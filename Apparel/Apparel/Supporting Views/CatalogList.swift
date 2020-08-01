//
//  CatalogList.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatalogList: View {
    var items:[String] = ["cloth","cloth","cloth"]
    
    func deleteItems(at offsets: IndexSet) {
        //order.items.remove(atOffsets: offsets)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                ForEach((0...items.count-1), id: \.self) { item in
                    NavigationLink(destination:ProductView()){
                        ListItem(name:self.items[item])
                    }
                }.onDelete(perform:deleteItems)
            }
        }
    }
}

struct CatalogList_Previews: PreviewProvider {
    static var previews: some View {
        CatalogList()
    }
}
