// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIColor {
    public class func msHashColor(hash: String) -> UIColor {
        var index = 0
        
        let rgbRed:   [CGFloat] = [  0,   8,  16, 136, 180, 232, 218,   0,  0,   0, 168,  78]
        let rgbGreen: [CGFloat] = [120, 130, 124,  23,   0,  17,  59, 111, 94,  78,   0,  37]
        let rgbBlue:  [CGFloat] = [215, 114,  16, 152, 158,  35,   1, 148, 80, 140,   0, 127]
        
        for char in hash.characters {
            let s = String(char).unicodeScalars
            index += Int(s[s.startIndex].value)
            index %= rgbBlue.count
        }
        
        return UIColor(red: rgbRed[index] / 255, green: rgbGreen[index] / 255, blue: rgbBlue[index] / 255, alpha: 1)
    }
}
