//
//  ContentView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var gotoNext:Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("customBlack").edgesIgnoringSafeArea(.all)
                VStack(alignment:.center){
                    Spacer()
                    Image(systemName: "bolt.circle")
                    .resizable()
                    .frame(width:120,height: 120)
                    .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination:SignUpView(),isActive: self.$gotoNext){
                        Button("Go"){
                            self.gotoNext.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
