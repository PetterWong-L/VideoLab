//
//  BrightnessAnimationOperation.metal
//  VideoLab
//
//  Created by 王理朝 on 2023/8/18.
//

#include <metal_stdlib>
using namespace metal;
#include "OperationShaderTypes.h"

fragment half4 brightnessFragment(PassthroughVertexIO fragmentInput [[stage_in]],
                                  half4 sourceColor [[color(0)]],
                                  constant float& brightness [[ buffer(1) ]])
{
    return half4(sourceColor.rgb + brightness, sourceColor.a);
}

