// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

open class LogoView: UIView {
    private(set) open var initialsView: InitialsView = InitialsView()
    private(set) open var imageView: UIImageView = UIImageView()
    
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
        self.imageView.contentMode = UIViewContentMode.scaleAspectFit
        self.imageView.clipsToBounds = true
        self.initialsView.clipsToBounds = true
        self.setupSubview(subview: self.imageView)
        self.setupSubview(subview: self.initialsView)
    }
    
    private func setupSubview(subview: UIView) {
        subview.frame = self.bounds
        self.addSubview(subview)
        
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: NSLayoutFormatOptions.alignAllCenterX, metrics: nil, views: ["subview": subview])
        self.addConstraints(horizontalConstraints)
        
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: NSLayoutFormatOptions.alignAllCenterY, metrics: nil, views: ["subview": subview])
        self.addConstraints(verticalConstraints)
        
        subview.isHidden = true
    }
    
    // MARK: Usage
    
    open func updateWithTitle(title: String) {
        self.initialsView.setInitialsFromTitle(title: title)
        self.initialsView.isHidden = false
        self.imageView.isHidden = true
    }
    
    open func updateWithImage(image: UIImage?) {
        self.imageView.image = image
        self.imageView.isHidden = false
        self.initialsView.isHidden = true
    }
}
