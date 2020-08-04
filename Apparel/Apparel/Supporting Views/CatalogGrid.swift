//
//  CatalogGrid.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatalogGrid: View {
    struct GridStack: View {
        let rows: Int
        let columns: Int

        var body: some View {
            VStack(alignment:.center) {
                ForEach(0 ..< rows, id: \.self) { row in
                    HStack {
                        ForEach(0 ..< self.columns, id: \.self) { column in
                            NavigationLink(destination:ProductView()){
                                GridItem(name:"cloth")
                            }
                        }
                    }
                }
            }
        }

        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
        }
    }
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            GridStack(rows: 4, columns: 2)
                .padding(.top,5)
        }
    }
}

struct CatalogGrid_Previews: PreviewProvider {
    static var previews: some View {
        CatalogGrid()
    }
}
