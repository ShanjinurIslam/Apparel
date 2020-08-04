//
//  ContentView.swift
//  Apparel
//
//  Created by Shanjinur Islam on 7/27/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI
import Introspect

@available(iOS 13, *)
extension View {
    /// A Boolean value indicating whether the view controller enforces a modal behavior.
    ///
    /// The default value of this property is `false`. When you set it to `true`, UIKit ignores events
    /// outside the view controller's bounds and prevents the interactive dismissal of the
    /// view controller while it is onscreen.
    public func isModalInPresentation(_ value: Bool) -> some View {
        introspectViewController {
            $0.isModalInPresentation = value
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var userData:UserData
    @State var shouldAnimate:Bool = true

    var body: some View {
        ZStack{
            if(userData.gotoNext==false){
                ZStack{
                    Color("customBlack").edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center){
                        Spacer()
                        Image(systemName: "bolt.circle")
                        .resizable()
                        .frame(width:120,height: 120)
                        .foregroundColor(.white)
                        Spacer()
                        ActivityIndicator(shouldAnimate: self.$shouldAnimate)
                    }
                }
            }else{
                MainView()
                .transition(AnyTransition.opacity)
                .animation(.default)
            }
        }
        .onAppear(perform: self.userData.checkLoggedIn)
        .sheet(isPresented: self.$userData.signUpView ,onDismiss: {
            self.userData.signUpView = false
        }){
            NavigationView{
                SignUpView().environmentObject(self.userData)
            }.isModalInPresentation(true)
        }
    }
}
