//
//  LogInView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct LogInView: View {
    
    @State var email:CustomTextField = CustomTextField(placeholder: "Email",secure: false)
    @State var password:CustomTextField = CustomTextField(placeholder: "Password",secure: true)
    @State var gotoLogin:Bool = false
    
    var body: some View {
        ZStack{
                Color("customBlack").edgesIgnoringSafeArea(.all)
                VStack(alignment:.center){
                    VStack(){
                        email
                        password
                        HStack{
                            Spacer()
                            Text("Forgot Password")
                            NavigationLink(destination: ForgotPasswordView(), isActive: self.$gotoLogin ){
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
                                Text("Login").foregroundColor(Color("customWhite"))
                            }.frame(width:0.90*UIScreen.main.bounds.size.width,height: 50)
                        }.padding(.top,15)
                    }.padding(.top,UIScreen.main.bounds.height*0.1)
                    Spacer()
                }
                
        }
        .navigationBarTitle("Log In")
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
