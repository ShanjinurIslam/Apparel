//
//  CartItem.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/1/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CartItem: View {
    var name:String
    var color:String
    var size:String
    @State var current:Int = 1
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10,style: .continuous).foregroundColor(Color("customLightDark"))
            HStack{
                Image(name)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100,height:100)
                    .cornerRadius(10)
                
                VStack(alignment:.leading){
                    VStack(alignment:.leading){
                        Text("Western Dress")
                            .foregroundColor(Color("customGray"))
                            .font(.subheadline)
                        HStack(spacing:10){
                            Text(color)
                            .foregroundColor(Color("customGray"))
                                .font(.subheadline).bold()
                            
                            Text(size)
                            .foregroundColor(Color("customGray"))
                                .font(.subheadline).bold()
                        }
                    }.padding(.top,10)
                    Spacer()
                    HStack(spacing:10){
                        Button(action:{
                            if(self.current>0){
                                self.current -= 1
                            }
                        }){
                            ZStack{
                                Circle().foregroundColor(Color("customBlack"))
                                Image(systemName: "minus").foregroundColor(Color("customGray"))
                            }
                        }
                        .foregroundColor(Color("customLightDark"))
                        .frame(width: 36, height: 36)
                        .shadow(radius: 8)
                        
                        Text(String(self.current))
                        .foregroundColor(Color("customGray"))
                        .font(.subheadline)
                        
                        Button(action:{
                            self.current += 1
                        }){
                            ZStack{
                                Circle().foregroundColor(Color("customBlack"))
                                Image(systemName: "plus").foregroundColor(Color("customGray"))
                            }
                        }
                        .foregroundColor(Color("customLightDark"))
                        .frame(width: 36, height: 36)
                        .shadow(radius: 8)
                    }.padding(.bottom,10)
                    
                }.padding(.leading,10)
                Spacer()
                VStack(alignment:.trailing){
                    Button(action:{
                        
                    }){
                        Image(systemName: "multiply").foregroundColor(Color("customGray"))
                        
                    }
                    .foregroundColor(Color("customLightDark"))
                    //.frame(width: 36, height: 36)
                    Spacer()
                    Text(String(self.current*51)+"$").bold()
                    .foregroundColor(Color("customGray"))
                    .font(.subheadline)
                }.padding(.top,15)
                .padding(.bottom,15)
                .padding(.trailing,15)
            }
        }
        .frame(height:100)
        .padding(.leading,15)
        .padding(.trailing,15)
        .padding(.top,8)
        .padding(.bottom,8)
    }
}

