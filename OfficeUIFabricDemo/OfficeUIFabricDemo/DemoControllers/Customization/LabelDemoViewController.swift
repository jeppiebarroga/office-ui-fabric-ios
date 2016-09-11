// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit
import OfficeUIFabricCore

class LabelDemoViewController: UIViewController {
    @IBOutlet weak var largeLabel: UILabel!
    @IBOutlet weak var mediumLabel: UILabel!
    @IBOutlet weak var smallLabel: UILabel!
    
    @IBOutlet weak var boldLabel: UILabel!
    
    @IBOutlet weak var colorLargeLabel: UILabel!
    @IBOutlet weak var colorMediumLabel: UILabel!
    @IBOutlet weak var colorSmallLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.largeLabel.msLabel(style: MSFontStyle.XL)
        self.mediumLabel.msLabel(style: MSFontStyle.M)
        self.smallLabel.msLabel(style: MSFontStyle.XS)
        
        self.boldLabel.msLabel(style: MSFontStyle.M, fontWeight: MSFontWeight.Semibold)
        
        self.colorLargeLabel.msLabel(style: MSFontStyle.XL, textColor: UIColor.msThemeSecondary())
        self.colorMediumLabel.msLabel(style: MSFontStyle.M, textColor: UIColor.msThemeSecondary())
        self.colorSmallLabel.msLabel(style: MSFontStyle.XS, textColor: UIColor.msThemeSecondary())
    }
    
}
