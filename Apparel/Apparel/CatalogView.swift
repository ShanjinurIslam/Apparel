//
//  CatalogView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatalogView: View {
    var catagory:String
    @State var sortBy:String = "Price low to high"
    @State var changeAppearance:Bool = false
    
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment:.center){
                HStack{
                    Button(action:{
                        
                    }){
                        Image(systemName: "line.horizontal.3.decrease.circle").frame(width:24,height: 24)
                    }
                    Spacer()
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "arrow.up.arrow.down")
                            Text(self.sortBy).font(.caption)
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
        .navigationBarTitle(catagory)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catagory: "Woman's Tops")
    }
}
