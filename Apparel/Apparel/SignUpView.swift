//
//  SignUpView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @State var name:CustomTextField = CustomTextField(placeholder: "Name",secure: false)
    @State var email:CustomTextField = CustomTextField(placeholder: "Email",secure: false)
    @State var password:CustomTextField = CustomTextField(placeholder: "Password",secure: true)
    @State var gotoLogin:Bool = false
    @ObservedObject var keyboardResponder:KeyboardResponder = KeyboardResponder()
    
    var body: some View {
        VStack(alignment:.center){
            Spacer()
            VStack(){
                name
                email
                password
                HStack{
                    Spacer()
                    Text("Already have an account?")
                    NavigationLink(destination: LogInView(), isActive: self.$gotoLogin ){
                        Button(action:{
                            self.gotoLogin.toggle()
                        }){
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color("customRed"))
                        }
                    }
                    
                }
                .padding(.trailing,15)
                .padding(.top,10)
                
                Button(action:{
                    
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(Color("customRed"))
                        Text("Sign Up").foregroundColor(Color("customWhite"))
                    }.frame(width:0.90*UIScreen.main.bounds.size.width,height: 50)
                }.padding(.top,15)
            }
            Spacer()
        }
        .padding(.bottom,self.keyboardResponder.currentHeight)
        .edgesIgnoringSafeArea(.all)
        .animation(.easeOut(duration: 0.15))
        .navigationBarTitle("Sign up")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
