import Foundation
import SwiftUI
import Combine


public struct FloatingLabelInput: View {

    
    final class Model: ObservableObject {
        

        @Published var text: String = ""


        var placeholder: String = ""
        var currentValue: String = ""
        
        
        var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
        
        
        init() {

            self.$text
                .sink(receiveValue: { value in

                    self.currentValue = value
                })
                .store(in: &cancellables)
        }
    }
    
    
    @ObservedObject var model: FloatingLabelInput.Model = FloatingLabelInput.Model()

    
    public init(placeholder: String,
                title: String) {

        self.model.placeholder = placeholder
        self.model.text = title
    }
    
    
    public var body: some View {
        
        ZStack {
            
            HStack {
                
                Text(self.model.placeholder)
                    .font(self.model.currentValue.isEmpty ? .body : .caption)
                    .foregroundColor(self.model.currentValue.isEmpty ? Color.gray : Color.gray.opacity(0.5))
                    .offset(x: 0,
                            y: self.model.currentValue.isEmpty ? 0 : -15)
                    .transition(.slide)
                    .transition(.scale)
                
                Spacer()
            }
            .animation(.easeIn(duration: 0.1))
            
            TextField("",
                      text: self.$model.text)
        }
    }
}

