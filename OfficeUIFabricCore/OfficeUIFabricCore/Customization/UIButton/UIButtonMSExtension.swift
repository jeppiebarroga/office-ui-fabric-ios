// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIButton {
    public func msStandardButton(mainColor: UIColor = UIColor.msThemePrimary(), disabledColor: UIColor = UIColor.msNeutralTertiaryAlt()) {
        self.setBackgroundImage(UIImage.msButtonBackground(mainColor, fillColor: UIColor.clearColor()), forState: .Normal)
        self.setBackgroundImage(UIImage.msButtonBackground(mainColor, fillColor: mainColor), forState: .Highlighted)
        self.setBackgroundImage(UIImage.msButtonBackground(mainColor, fillColor: mainColor), forState: .Selected)
        self.setBackgroundImage(UIImage.msButtonBackground(disabledColor, fillColor: disabledColor.colorWithAlphaComponent(0.1)), forState: .Disabled)
        
        self.setTitleColor(mainColor, forState: .Normal)
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Highlighted)
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Selected)
        self.setTitleColor(disabledColor, forState: .Disabled)
    }
    
    public func msPrimaryButton(mainColor: UIColor = UIColor.msThemePrimary(), selectedColor: UIColor = UIColor.msThemeDark(), disabledColor: UIColor = UIColor.msNeutralTertiaryAlt()) {
        self.setBackgroundImage(UIImage.msButtonBackground(mainColor, fillColor: mainColor), forState: .Normal)
        self.setBackgroundImage(UIImage.msButtonBackground(selectedColor, fillColor: selectedColor), forState: .Highlighted)
        self.setBackgroundImage(UIImage.msButtonBackground(selectedColor, fillColor: selectedColor), forState: .Selected)
        self.setBackgroundImage(UIImage.msButtonBackground(disabledColor, fillColor: disabledColor), forState: .Disabled)
        
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Normal)
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Highlighted)
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Selected)
        self.setTitleColor(UIColor.msNeutralWhite(), forState: .Disabled)
    }
}
