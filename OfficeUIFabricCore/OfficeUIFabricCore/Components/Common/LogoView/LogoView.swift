// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

public class LogoView: UIView {
    private(set) public var initialsView: InitialsView = InitialsView()
    private(set) public var imageView: UIImageView = UIImageView()
    
    // MARK: Initialization
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSubviews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupSubviews()
    }
    
    private func setupSubviews() {
        self.imageView.contentMode = UIViewContentMode.ScaleAspectFit
        self.setupSubview(self.imageView)
        self.setupSubview(self.initialsView)
    }
    
    private func setupSubview(subview: UIView) {
        subview.frame = self.bounds
        self.addSubview(subview)
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[subview]-0-|", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: ["subview": subview])
        self.addConstraints(horizontalConstraints)
        
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[subview]-0-|", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: ["subview": subview])
        self.addConstraints(verticalConstraints)
        
        subview.hidden = true
    }
    
    // MARK: Usage
    
    public func updateWithTitle(title: String) {
        self.initialsView.setInitialsFromTitle(title)
        self.initialsView.hidden = false
        self.imageView.hidden = true
    }
    
    public func updateWithImage(image: UIImage?) {
        self.imageView.image = image
        self.imageView.hidden = false
        self.initialsView.hidden = true
    }
}
