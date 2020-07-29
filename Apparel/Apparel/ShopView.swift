//
//  ShopView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ShopView: View {
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment:.leading){
                    Button(action:{
                        
                    }){
                        ZStack{
                            RoundedRectangle(cornerRadius: 25,style: .continuous)
                            Text("View all items").foregroundColor(.white)
                        }.frame(height:48)
                    }.padding()
                    
                    Text("Choose Category").font(.caption).foregroundColor(Color("customGray")).padding(.top,0).padding(.bottom,15).padding(.leading,15)
                    
                    CategoryColumn()
                    
                }
            }
            .navigationBarTitle(Text("Categories"))
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
