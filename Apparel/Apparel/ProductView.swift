//
//  ProductView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/1/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    private var colors:[Color] = [.accentColor,.black,.red,.orange,.green,.pink]
    private var sizes:[String] = ["XS","S","M","L","XL"]
    @State private var selectedColor = -1
    @State private var selectedSize = -1
    
    struct SizePicker:View{
        var sizeName:String
        @State var index:Int
        @Binding var selectedSize:Int
        
        var body: some View{
            ZStack(alignment:.center){
                RoundedRectangle(cornerRadius: 5,style: .continuous)
                    .frame(width:40,height: 40)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(self.selectedSize==self.index ? .red:.gray)
                Text(sizeName).font(.system(size:14)).bold()
                    .foregroundColor(self.selectedSize==self.index ? .black:.white)
            }.onTapGesture {
                self.selectedSize = self.index
            }
        }
    }
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment:.leading){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(){
                        Image("cloth")
                        Image("cloth")
                    }
                }.padding(.top,15)
                HStack{
                    VStack(alignment:.leading){
                        Text("Ecstacy")
                            .foregroundColor(Color("customGray"))
                            .font(.subheadline)
                        Text("Western Dress")
                            .foregroundColor(.primary)
                            .font(.title)
                    }
                    Spacer()
                    Text("$12")
                    .foregroundColor(Color("customGray"))
                    .font(.headline)
                    
                }.padding()
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
                HStack{
                    ForEach((0...self.sizes.count-1),id:\.self){
                        SizePicker(sizeName:self.sizes[$0],index:$0,selectedSize: self.$selectedSize)
                    }
                }.padding(.leading,15)
                .padding(.trailing,15)
                    .padding(.bottom,15)
                
                Button(action:{
                    
                }){
                    ZStack(alignment:.center){
                        RoundedRectangle(cornerRadius: 15,style: .continuous)
                        .foregroundColor(Color("customRed")).frame(height:50)
                        Text("Add to cart").bold().foregroundColor(.white).font(.headline)
                    }
                }.padding()
                Spacer()
            }
            
        }
        .navigationBarTitle(Text("Western Dress"),displayMode: .inline)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
