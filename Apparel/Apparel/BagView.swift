//
//  BagView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct BagView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                ForEach((0...3),id:\.self){ item in
                    CartItem(name:"cloth",color: "Black",size: "L")
                }
                HStack{
                    Text("Total Amount").foregroundColor(.gray)
                    Spacer()
                    Text("100$").bold()
                }.padding()
                Button(action:{
                    
                }){
                    ZStack(alignment:.center){
                        RoundedRectangle(cornerRadius: 15,style: .continuous)
                        .foregroundColor(Color("customRed")).frame(height:50)
                        Text("Checkout").bold().foregroundColor(.white).font(.headline)
                    }
                }.padding()
            }
            .navigationBarTitle("Bag")
        }
    }
}
