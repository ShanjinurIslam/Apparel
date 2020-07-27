//
//  CustomTextField.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder:String!
    var secure:Bool!
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5, style: .continuous)
            .frame(height: 60)
                .foregroundColor(Color("customLightDark"))
                .padding(.top,5)
                .padding(.bottom,5)
            FloatingLabelInput(placeholder: self.placeholder, title: "",secure: self.secure)
            .frame(height: 60)
                .padding(.leading,20)
        }
        .padding(.leading,15)
        .padding(.trailing,15)
        
    }
}
