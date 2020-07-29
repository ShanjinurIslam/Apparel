//
//  Banner.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        ZStack{
            ZStack{
                Image("banner")
                    .resizable()                     // Make it resizable
                    .aspectRatio(contentMode: .fit)
                Rectangle()                         // Shapes are resizable by default
                .foregroundColor(.clear)        // Making rectangle transparent
                    .background(LinearGradient(gradient: Gradient(colors: [.clear, Color("customBlack")]), startPoint: .top,endPoint:.bottom))
                
            }
            .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height*0.66)
            
            VStack(alignment:.leading){
                Spacer()
                HStack{
                    Text("Summer Sale").font(.system(size:40)).bold()
                    Spacer()
                }
                HStack{
                    Button(action:{
                        
                    }){
                        ZStack(alignment:.center){
                            RoundedRectangle(cornerRadius: 25,style: .continuous)
                            .foregroundColor(Color("customRed")).frame(width:UIScreen.main.bounds.width*0.35,height:50)
                            Text("Check").bold().foregroundColor(.white).font(.headline)
                        }
                    }
                    Spacer()
                }
                .padding(.top,0)
                .padding(.bottom,15)
            }.padding()
        }
    }
}

struct Banner_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}
