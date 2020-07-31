//
//  CatagoryRow.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatagoryRow: View {
    var name:String
    var items:[String] = ["cloth","cloth","cloth"]
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                VStack(alignment:.leading){
                    Text(name).font(.system(size:34)).bold()
                    Text("You have never seen like this").font(.system(size:15)).foregroundColor(Color("customGray"))
                }
                Spacer()
                VStack(alignment:.center){
                    Spacer()
                    Button(action:{
                        
                    }){
                        Text("View all").foregroundColor(Color("customGray")).font(.system(size:15))
                    }
                    Spacer()
                }
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach((0...items.count-1), id: \.self) {
                        ProductItem(name:self.items[$0]).padding(.leading, 15)
                    }
                }
            }
        }
    }
}
