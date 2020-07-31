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
    @State var changeAppearance:Bool = false
    @State var showSheetView = false
    @State var current = 0
    var sortCategories:[String] = ["Popular","Newest","Price high to low","Price low to high"]
    
    
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
    
    var body: some View {
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
        .navigationBarTitle(catagory)
        .sheet(isPresented: $showSheetView,onDismiss: {
            self.showSheetView = false
        }) {
            SheetView(showSheetView: self.$showSheetView, current: self.$current,sortCategories: self.sortCategories)
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catagory: "Woman's Tops")
    }
}
