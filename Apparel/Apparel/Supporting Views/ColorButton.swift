//
//  ColorButton.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/1/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ColorButton: View {
    
    @Binding var selectedColor:Int
    var color:Color
    var index:Int
    
    
    var body: some View{
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
            
        }.onTapGesture {
            self.selectedColor = self.index
        }.frame(width:42,height: 42)
        .frame(maxWidth: .infinity)
    }
}
