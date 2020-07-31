//
//  Filter.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct Filter: View {
   @State private var price: Double = 30
    private var colors:[Color] = [.accentColor,.black,.red,.orange,.green,.pink]
    private var sizes:[String] = ["XS","S","M","L","XL"]
    private var categories:[String] = ["All","Men","Women","Boys","Girls"]
    
    
    @State private var selectedColor = 0
    
    struct ColorButton:View{
        @Binding var selectedColor:Int
        var color:Color
        var index:Int
        
        
        var body: some View{
            Button(action:{
                self.selectedColor = self.index
            }){
                ZStack(alignment:.center){
                    
                    if(self.selectedColor==self.index){
                        Circle()
                        .foregroundColor(.clear)
                        .frame(width:42,height: 42)
                        .frame(maxWidth: .infinity)
                            .overlay(Circle().stroke(lineWidth:2).foregroundColor(.gray))
                    }
                    
                    Circle()
                    .foregroundColor(color)
                    .frame(width:36,height: 36)
                    .frame(maxWidth: .infinity)
                    
                }
                    
            }
        }
    }
    
    struct SizeButton:View{
        @State var selected:Bool = false
        var sizeName:String
        
        var body: some View{
            Button(action:{
                self.selected.toggle()
            }){
                ZStack(alignment:.center){
                    RoundedRectangle(cornerRadius: 5,style: .continuous)
                        .frame(width:40,height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(self.selected ? .red:.gray)
                    Text(sizeName).font(.system(size:14)).bold()
                        .foregroundColor(self.selected ? .black:.white)
                }
            }
        }
    }
    
    struct CategoryButton:View{
        @State var selected:Bool = false
        var categoryName:String
        
        var body: some View{
            Button(action:{
                self.selected.toggle()
            }){
                ZStack(alignment:.center){
                    RoundedRectangle(cornerRadius: 5,style: .continuous)
                        .frame(width:65,height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(self.selected ? .red:.gray)
                    Text(categoryName).font(.system(size:14)).bold()
                        .foregroundColor(self.selected ? .black:.white)
                }
            }
        }
    }
    
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack{
                Text("Price Range").font(.body).bold().foregroundColor(Color("customGray")).padding()
                Spacer()
            }
            Slider(value: $price, in: 10...100, step: 0.1).padding()
            HStack{
                Text("Colors").font(.body).bold().foregroundColor(Color("customGray")).padding()
                Spacer()
            }
            HStack{
                ForEach((0...self.colors.count-1),id:\.self){
                    ColorButton(selectedColor: self.$selectedColor, color: self.colors[$0], index: $0)
                }
            }.padding(.leading,15)
            .padding(.trailing,15)
            
            HStack{
                Text("Sizes").font(.body).bold().foregroundColor(Color("customGray")).padding()
                Spacer()
            }
            .padding(.top,5)
            .padding(.bottom,5)
            HStack{
                ForEach((0...self.sizes.count-1),id:\.self){
                    SizeButton(sizeName: self.sizes[$0] )
                }
            }.padding(.leading,15)
            .padding(.trailing,15)
            
            HStack{
                Text("Categories").font(.body).bold().foregroundColor(Color("customGray")).padding()
                Spacer()
            }
            .padding(.top,5)
            .padding(.bottom,5)
            HStack{
                ForEach((0...self.categories.count-1),id:\.self){
                    CategoryButton(categoryName: self.categories[$0] )
                }
            }.padding(.leading,15)
            .padding(.trailing,15)
            Spacer()
            HStack{
                Button(action:{
                    
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15,style: .continuous)
                            .frame(width:150,height:40).foregroundColor(.gray)
                        Text("Discard").foregroundColor(.white).bold()
                    }
                        .frame(maxWidth: .infinity).padding()
                }
                Button(action:{
                    
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15,style: .continuous)
                            .frame(width:150,height:40).foregroundColor(Color("customMagenta"))
                        Text("Apply").foregroundColor(.white).bold()
                    }
                    .frame(maxWidth: .infinity).padding()
                }
            }
        }.navigationBarTitle(Text("Filter"),displayMode: .inline)
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
    }
}
