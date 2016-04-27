// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

public class InitialsView: UIView {
    private(set) public var initialsLabel: UILabel = UILabel()
    
    // MARK: Initialization
    
    public convenience init() {
        self.init(frame: CGRectZero)
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpInitialsLabel()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpInitialsLabel()
    }
    
    private func setUpInitialsLabel() {
        self.initialsLabel.frame = self.bounds
        self.initialsLabel.textAlignment = .Center
        self.initialsLabel.translatesAutoresizingMaskIntoConstraints = false
        self.initialsLabel.font = UIFont.msFont(MSFontStyle.XL, weight: MSFontWeight.Regular)
        self.initialsLabel.textColor = UIColor.msNeutralWhite()
        self.initialsLabel.clipsToBounds = true
        self.addSubview(self.initialsLabel)
        self.setUpConstraints()
    }
    
    private func setUpConstraints() {
        let views = ["label": self.initialsLabel]
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[label]-0-|", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
        self.addConstraints(horizontalConstraints)
        
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[label]-0-|", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
        self.addConstraints(verticalConstraints)
    }
    
    // MARK: Usage
    
    public func setInitialsFromTitle(title: String) {
        self.initialsLabel.text = title.initials().uppercaseString
        self.backgroundColor = UIColor.msHashColor(title)
    }
}
