// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIFont {
    public class func msFont(style: MSFontStyle) -> UIFont? {
        return msFont(style, weight: MSFontConstants.msPreferredFontWeight(style))
    }
    
    public class func msFont(style: MSFontStyle, weight: MSFontWeight) -> UIFont? {
        if #available(iOS 8.2, *) {
            return self.systemFontOfSize(MSFontConstants.msFontSize(style), weight: MSFontConstants.fontWeight(weight))
        }
        return self.systemFontOfSize(MSFontConstants.msFontSize(style))
    }
}
