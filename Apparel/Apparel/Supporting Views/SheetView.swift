//
//  SheetView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/1/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct SheetView: View {
    @Binding var showSheetView: Bool
    @Binding var current:Int
    var sortCategories:[String]!
    
    struct SortItem: View{
        var name:String
        var index:Int
        @Binding var current:Int
        
        var body: some View{
            Button(action:{
                self.current = self.index
            }){
                HStack{
                    Text(name)
                    Spacer()
                    if(self.current==index){
                        Image(systemName: "checkmark").frame(width:24,height: 24)
                    }
                    else{
                        Rectangle().frame(width:24,height: 24).foregroundColor(.clear)
                    }
                }
                .padding(.top,5)
                .padding(.bottom,5)
                .padding(.leading,15)
                .padding(.trailing,15)
                
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                ForEach((0...self.sortCategories.count-1),id: \.self){
                    SortItem(name:self.sortCategories[$0],index: $0, current: self.$current)
                }
                Spacer()
            }
            .offset(y:10)
            .navigationBarTitle(Text("Sort By"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    print("Dismissing sheet view...")
                    self.showSheetView = false
                }) {
                    Text("Done").bold()
                })
        }.accentColor(Color("customMagenta"))
    }
}

