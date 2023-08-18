//
//  BrightnessAnimationOperation.swift
//  VideoLab
//
//  Created by 王理朝 on 2023/8/18.
//

import UIKit
import CoreMedia

public class BrightnessAnimationOperation: BasicOperation {
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
