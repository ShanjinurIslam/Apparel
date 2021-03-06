//
//  ProductItem.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct GridItem: View {
    var name:String
    @State var fav:Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing){
                Image(name)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(10)
                
                ZStack{
                    Circle().foregroundColor(Color("customLightDark"))
                    Button(action:{
                        self.fav.toggle()
                    }){
                        if(self.fav){
                            Image(systemName: "heart.fill").foregroundColor(Color("customRed"))
                        }
                        else{
                            Image(systemName: "heart").foregroundColor(Color("customGray"))
                        }
                    }
                }
                .foregroundColor(Color("customLightDark"))
                .frame(width: 36, height: 36)
                .shadow(radius: 8)
                .offset(y:16)
            }
            Text("Ecstacy")
                .foregroundColor(Color("customGray"))
                .font(.subheadline)
            Text("Western Dress")
                .foregroundColor(.primary)
                .font(.caption)
            Text("$12")
                .foregroundColor(Color("customGray"))
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
    }
}
