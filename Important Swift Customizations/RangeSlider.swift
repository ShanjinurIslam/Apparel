//
//  RangeSlider.swift
//  Apparel
//
//  Created by Shanjinur Islam on 8/1/20.
//  Copyright © 2020 Shanjinur Islam. All rights reserved.
//

import SwiftUI
import WARangeSlider
//import SwiftRangeSlider

struct RSlider:UIViewRepresentable{
    @Binding var lowerValue: Double
    @Binding var upperValue: Double
    var minimumValue: Double
    var maximumValue: Double

    func makeUIView(context: Context) -> RangeSlider {
        let rangeSlider = RangeSlider(frame: .zero)
        rangeSlider.addTarget(context.coordinator, action: #selector(Coordinator.rangeSliderValueChanged(_:)), for: .valueChanged)
        return rangeSlider
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func updateUIView(_ slider: RangeSlider, context: Context) {
        slider.lowerValue = lowerValue
        slider.upperValue = upperValue
        slider.minimumValue = minimumValue
        slider.maximumValue = maximumValue
    }

    class Coordinator: NSObject {

        var control: RSlider

        init(_ control: RSlider) {
            self.control = control
        }

        @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
            self.control.lowerValue = rangeSlider.lowerValue
            self.control.upperValue = rangeSlider.upperValue
        }
    }
}
