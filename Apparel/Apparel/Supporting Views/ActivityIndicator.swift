//
//  ActivityIndicator.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/4/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var shouldAnimate:Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if(shouldAnimate){
            uiView.startAnimating()
        }
        else{
            uiView.startAnimating()
        }
    }
}
