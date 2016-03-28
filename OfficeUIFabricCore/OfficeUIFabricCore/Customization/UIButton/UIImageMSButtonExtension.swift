// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIImage {
    class func msButtonBackground(borderColor: UIColor, fillColor: UIColor, scale: CGFloat = UIScreen.mainScreen().scale) -> UIImage {
        
        let strokeWidth: CGFloat = 1
        let cornerRadius: CGFloat = 4
        let size = 11 * scale
        let bounds = CGRect(origin: CGPointZero, size: CGSize(width: size, height: size))
        
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, scale)
        
        borderColor.setStroke()
        fillColor.setFill()
        
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        // Clip corners from dirty pixels
        let roundCornerClip = UIBezierPath.bezierPathByReversingPath(roundedRect)()
        roundCornerClip.addClip()
        
        roundedRect.lineWidth = strokeWidth
        roundedRect.fill()
        roundedRect.stroke()
        
        let bgImage = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return UIImage(CGImage: bgImage.CGImage!, scale: scale, orientation: UIImageOrientation.Up)
            .resizableImageWithCapInsets(
                UIEdgeInsetsMake(
                    cornerRadius + strokeWidth,
                    cornerRadius + strokeWidth,
                    cornerRadius + strokeWidth,
                    cornerRadius + strokeWidth
                ), resizingMode: UIImageResizingMode.Stretch)
    }
}
