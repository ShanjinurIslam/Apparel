//
//  ForgotPasswordView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State var email:CustomTextField = CustomTextField(placeholder: "Email",secure: false)
    @State var shouldShake:Bool = false
    @State var attempts: Int = 0
    
    var body: some View {
        ZStack{
                Color("customBlack").edgesIgnoringSafeArea(.all)
                VStack(){
                    Text("Please, enter your email address. You will receive a link to create a new password via email.").padding()
                    VStack(){
                        email.modifier(Shake(animatableData: CGFloat(attempts)))
                        
                        Button(action:{
                            withAnimation(.default) {
                                self.attempts += 1
                            }
                        }){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .foregroundColor(Color("customRed"))
                                Text("Send").foregroundColor(Color("customWhite"))
                            }.frame(height: 50)
                        }.padding()
                    }
                    Spacer()
                }.padding(.top,15)
                    
        }
        .navigationBarTitle("Forgot Password")
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
