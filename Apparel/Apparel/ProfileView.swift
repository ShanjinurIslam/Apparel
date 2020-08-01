//
//  ProfileView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/29/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    var categories:[String] = ["My orders","Shipping Addresses","Payment Methods","Settings"]
    
    struct CatagoryItem: View {
        var name:String!
        
        var body: some View {
            HStack{
                VStack(alignment:.leading){
                    Text(name).font(.headline)
                    Text("Status Message").font(.caption)
                }
                Spacer()
                NavigationLink(destination:CatalogView(catagory: self.name)){
                    Image(systemName: "arrow.right")
                }
            }
            .padding(.leading,15)
            .padding(.trailing,15)
            .padding(.top,2.5)
            .padding(.bottom,2.5)
        }
    }
    
    
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                HStack(spacing:15){
                    Image("banner").resizable().aspectRatio(contentMode: .fill).frame(width:64,height: 64).clipShape(Circle())
                    VStack(alignment:.leading){
                        Text("Shanjinur Islam").font(.headline)
                        Text("spondoncsebuet@gmail.com").font(.caption)
                    }
                    Spacer()
                }.padding()
                VStack{
                    ForEach((0...self.categories.count-1),id:\.self){
                        CatagoryItem(name: self.categories[$0])
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
