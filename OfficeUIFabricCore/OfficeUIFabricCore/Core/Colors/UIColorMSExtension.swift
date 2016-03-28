// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIColor {
    // MARK: Theme Colors
    public class func msThemeDarker() -> UIColor {
        return UIColor(red:0.000, green:0.271, blue:0.471, alpha:1) // #004578
    }
    public class func msThemeDark() -> UIColor {
        return UIColor(red:0.000, green:0.353, blue:0.620, alpha:1) // #005a9e
    }
    public class func msThemeDarkAlt() -> UIColor {
        return UIColor(red:0.063, green:0.431, blue:0.745, alpha:1) // #106ebe
    }
    public class func msThemePrimary() -> UIColor {
        return UIColor(red:0.000, green:0.471, blue:0.843, alpha:1) // #0078d7
    }
    public class func msThemeSecondary() -> UIColor {
        return UIColor(red:0.169, green:0.533, blue:0.847, alpha:1) // #2b88d8
    }
    public class func msThemeTertiary() -> UIColor {
        return UIColor(red:0.443, green:0.686, blue:0.898, alpha:1) // #71afe5
    }
    public class func msThemeLight() -> UIColor {
        return UIColor(red:0.780, green:0.878, blue:0.957, alpha:1) // #c7e0f4
    }
    public class func msThemeLighter() -> UIColor {
        return UIColor(red:0.871, green:0.925, blue:0.976, alpha:1) // #deecf9
    }
    public class func msThemeLighterAlt() -> UIColor {
        return UIColor(red:0.937, green:0.965, blue:0.988, alpha:1) // #eff6fc
    }
    
    // MARK: Neutral Colors
    public class func msNeutralBlack() -> UIColor {
        return UIColor(white:0.000, alpha:1) // #000000
    }
    public class func msNeutralDark() -> UIColor {
        return UIColor(white:0.129, alpha:1) // #212121
    }
    public class func msNeutralPrimary() -> UIColor {
        return UIColor(white:0.200, alpha:1) // #333333
    }
    public class func msNeutralSecondary() -> UIColor {
        return UIColor(white:0.400, alpha:1) // #666666
    }
    public class func msNeutralSecondaryAlt() -> UIColor {
        return UIColor(white:0.463, alpha:1) // #767676
    }
    public class func msNeutralTertiary() -> UIColor {
        return UIColor(white:0.651, alpha:1) // #a6a6a6
    }
    public class func msNeutralTertiaryAlt() -> UIColor {
        return UIColor(white:0.784, alpha:1) // #c8c8c8
    }
    public class func msNeutralLight() -> UIColor {
        return UIColor(white:0.918, alpha:1) // #eaeaea
    }
    public class func msNeutralLighter() -> UIColor {
        return UIColor(white:0.957, alpha:1) // #f4f4f4
    }
    public class func msNeutralLighterAlt() -> UIColor {
        return UIColor(white:0.973, alpha:1) // #f8f8f8
    }
    public class func msNeutralWhite() -> UIColor {
        return UIColor(white:1.000, alpha:1) // #ffffff
    }
    
    // MARK: Accent Colors
    public class func msAccentYellow() -> UIColor {
        return UIColor(red:1.000, green:0.725, blue:0.000, alpha:1) // #ffb900
    }
    public class func msAccentYellowLight() -> UIColor {
        return UIColor(red:1.000, green:0.945, blue:0.000, alpha:1) // #fff100
    }
    public class func msAccentOrange() -> UIColor {
        return UIColor(red:0.847, green:0.231, blue:0.004, alpha:1) // #d83b01
    }
    public class func msAccentOrangeLight() -> UIColor {
        return UIColor(red:1.000, green:0.549, blue:0.000, alpha:1) // #ff8c00
    }
    public class func msAccentRedDark() -> UIColor {
        return UIColor(red:0.659, green:0.000, blue:0.000, alpha:1) // #a80000
    }
    public class func msAccentRed() -> UIColor {
        return UIColor(red:0.910, green:0.067, blue:0.137, alpha:1) // #e81123
    }
    public class func msAccentMagentaDark() -> UIColor {
        return UIColor(red:0.361, green:0.000, blue:0.361, alpha:1) // #5c005c
    }
    public class func msAccentMagenta() -> UIColor {
        return UIColor(red:0.706, green:0.000, blue:0.620, alpha:1) // #b4009e
    }
    public class func msAccentMagentaLight() -> UIColor {
        return UIColor(red:0.890, green:0.000, blue:0.549, alpha:1) // #e3008c
    }
    public class func msAccentPurpleDark() -> UIColor {
        return UIColor(red:0.196, green:0.078, blue:0.353, alpha:1) // #32145a
    }
    public class func msAccentPurple() -> UIColor {
        return UIColor(red:0.361, green:0.176, blue:0.569, alpha:1) // #5c2d91
    }
    public class func msAccentPurpleLight() -> UIColor {
        return UIColor(red:0.706, green:0.627, blue:1.000, alpha:1) // #b4a0ff
    }
    public class func msAccentBlueDark() -> UIColor {
        return UIColor(red:0.000, green:0.125, blue:0.314, alpha:1) // #002050
    }
    public class func msAccentBlueMid() -> UIColor {
        return UIColor(red:0.000, green:0.094, blue:0.561, alpha:1) // #00188f
    }
    public class func msAccentBlue() -> UIColor {
        return UIColor(red:0.000, green:0.471, blue:0.843, alpha:1) // #0078d7
    }
    public class func msAccentBlueLight() -> UIColor {
        return UIColor(red:0.000, green:0.737, blue:0.949, alpha:1) // #00bcf2
    }
    public class func msAccentTealDark() -> UIColor {
        return UIColor(red:0.000, green:0.294, blue:0.314, alpha:1) // #004b50
    }
    public class func msAccentTeal() -> UIColor {
        return UIColor(red:0.000, green:0.510, blue:0.447, alpha:1) // #008272
    }
    public class func msAccentTealLight() -> UIColor {
        return UIColor(red:0.000, green:0.698, blue:0.580, alpha:1) // #00b294
    }
    public class func msAccentGreenDark() -> UIColor {
        return UIColor(red:0.000, green:0.294, blue:0.110, alpha:1) // #004b1c
    }
    public class func msAccentGreen() -> UIColor {
        return UIColor(red:0.063, green:0.486, blue:0.063, alpha:1) // #107c10
    }
    public class func msAccentGreenLight() -> UIColor {
        return UIColor(red:0.729, green:0.847, blue:0.039, alpha:1) // #bad80a
    }
}
