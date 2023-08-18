//
//  BrightnessAdjustment.swift
//  VideoLab
//
//  Created by Bear on 2020/8/21.
//  Copyright © 2020 Chocolate. All rights reserved.
//
import CoreMedia

public class BrightnessAdjustment: BasicOperation {
    public var brightness:Float = 0.0 {
        didSet {
            uniformSettings["brightness"] = brightness
        }
    }
    
    public init() {
        super.init(fragmentFunctionName: "brightnessFragment", numberOfInputs: 0)
        
        ({ brightness = 0.0 })()
    }
    
    public override func updateAnimationValues(at time: CMTime) {
        if let brightness = KeyframeAnimation.value(for: "brightness", at: time, animations: animations) {
            self.brightness = brightness
        }
    }
}
