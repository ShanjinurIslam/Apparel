//
//  CatalogList.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/31/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CatalogList: View {
    var items:[String] = ["cloth","cloth","cloth"]
    
    struct CatalogItem: View {
        var name:String
        @State var fav:Bool = false
        
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 10,style: .continuous).foregroundColor(Color("customLightDark"))
                HStack{
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:100,height:100)
                        .cornerRadius(10)
                    VStack(alignment:.leading,spacing: 5){
                        Text("Ecstacy")
                            .foregroundColor(Color("customGray"))
                            .font(.subheadline)
                        Text("Western Dress")
                            .foregroundColor(.primary)
                            .font(.caption)
                        Text("$12")
                            .foregroundColor(Color("customGray"))
                            .font(.headline)
                    }.padding(.leading,10)
                    Spacer()
                    ZStack{
                        Circle().foregroundColor(Color("customBlack"))
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
                    .offset(y:44)
                }
            }
            .frame(height:100)
            .padding(.leading,15)
            .padding(.trailing,15)
            .padding(.top,8)
            .padding(.bottom,8)
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                ForEach((0...items.count-1), id: \.self) {
                    CatalogItem(name:self.items[$0])
                }
            }
        }
    }
}

struct CatalogList_Previews: PreviewProvider {
    static var previews: some View {
        CatalogList()
    }
}
