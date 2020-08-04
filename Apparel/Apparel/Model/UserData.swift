//
//  UserData.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/4/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import Foundation

class UserData:ObservableObject{
    @Published var gotoNext:Bool = false
    @Published var signUpView:Bool = false
    
    func checkLoggedIn(){
        self.gotoNext = true
    }
}
