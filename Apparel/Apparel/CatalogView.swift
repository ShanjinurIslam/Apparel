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
    @State var showSheetView = false
    @State var current = 0
    
    
    
    struct SheetView: View {
        @Binding var showSheetView: Bool
        @Binding var current:Int
        
        // have to change it to array and dynamic

        var body: some View {
            NavigationView {
                VStack(alignment:.leading){
                    Button(action:{
                        self.current = 0
                    }){
                        HStack{
                            Text("Popular")
                            Spacer()
                            if(self.current==0){
                                Image(systemName: "checkmark").frame(width:24,height: 24)
                            }
                            else{
                                Rectangle().frame(width:24,height: 24).foregroundColor(.clear)
                            }
                        }.padding()
                    }
                    Button(action:{
                        self.current = 1
                    }){
                        HStack{
                            Text("Newest")
                            Spacer()
                            if(self.current==1){
                                Image(systemName: "checkmark").frame(width:24,height: 24)
                            }
                            else{
                                Rectangle().frame(width:24,height: 24).foregroundColor(.clear)
                            }
                        }.padding()
                    }
                    Button(action:{
                        self.current = 2
                    }){
                        HStack{
                            Text("Price high to low")
                            Spacer()
                            if(self.current==2){
                                Image(systemName: "checkmark").frame(width:24,height: 24)
                            }
                            else{
                                Rectangle().frame(width:24,height: 24).foregroundColor(.clear)
                            }
                        }.padding()
                    }
                    Button(action:{
                        self.current = 3
                    }){
                        HStack{
                            Text("Price low to high")
                            Spacer()
                            if(self.current==3){
                                Image(systemName: "checkmark").frame(width:24,height: 24)
                            }
                            else{
                                Rectangle().frame(width:24,height: 24).foregroundColor(.clear)
                            }
                        }.padding()
                    }
                    
                    Spacer()
                }
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
                    Button(action:{
                        
                    }){
                        Image(systemName: "line.horizontal.3.decrease.circle").frame(width:24,height: 24)
                    }
                    Spacer()
                    Button(action:{
                        self.showSheetView = true 
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
        .sheet(isPresented: $showSheetView,onDismiss: {
            self.showSheetView = false
        }) {
            SheetView(showSheetView: self.$showSheetView, current: self.$current)
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catagory: "Woman's Tops")
    }
}
