// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UILabel {
    public func msLabel(style: MSFontStyle = MSFontStyle.L, textColor: UIColor = UIColor.msNeutralPrimary()) {
        self.font = UIFont.msFont(style, weight: MSFontConstants.msPreferredFontWeight(style))
        self.textColor = textColor
    }
    
    public func msLabel(style: MSFontStyle = MSFontStyle.L, fontWeight: MSFontWeight, textColor: UIColor = UIColor.msNeutralPrimary()) {
        self.font = UIFont.msFont(style, weight: fontWeight)
        self.textColor = textColor
    }
}
