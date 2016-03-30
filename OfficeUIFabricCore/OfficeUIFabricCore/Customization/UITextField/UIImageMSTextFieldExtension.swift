// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

extension UIImage {
    class func msTextFieldBoxBackground(borderColor: UIColor, fillColor: UIColor, scale: CGFloat = UIScreen.mainScreen().scale) -> UIImage {
        
        let innerImageInsets: CGFloat = 1
        let strokeWidth: CGFloat = 1
        let size = 5 * scale
        let bounds = CGRect(origin: CGPointZero, size: CGSize(width: size, height: size))
        
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, scale)
        
        borderColor.setStroke()
        fillColor.setFill()
        
        let boxRect = UIBezierPath(rect: bounds)
        
        boxRect.lineWidth = strokeWidth
        boxRect.fill()
        boxRect.stroke()
        
        let bgImage = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return UIImage(CGImage: bgImage.CGImage!, scale: scale, orientation: UIImageOrientation.Up)
            .resizableImageWithCapInsets(
                UIEdgeInsetsMake(
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth
                ), resizingMode: UIImageResizingMode.Stretch)
    }
    
    class func msTextFieldUnderlineBackground(borderColor: UIColor, fillColor: UIColor, scale: CGFloat = UIScreen.mainScreen().scale) -> UIImage {
        
        let innerImageInsets: CGFloat = 1
        let strokeWidth: CGFloat = 1
        let size = 5 * scale
        let bounds = CGRect(origin: CGPointZero, size: CGSize(width: size, height: size))
        
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, scale)
        
        borderColor.setStroke()
        fillColor.setFill()
        
        UIBezierPath(rect: bounds).fill()
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextMoveToPoint(context, 0, bounds.height - strokeWidth)
        CGContextAddLineToPoint(context, bounds.width, bounds.height - strokeWidth)
        
        CGContextStrokePath(context)
        
        let bgImage = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext()
        
        return UIImage(CGImage: bgImage.CGImage!, scale: scale, orientation: UIImageOrientation.Up)
            .resizableImageWithCapInsets(
                UIEdgeInsetsMake(
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth,
                    innerImageInsets + strokeWidth
                ), resizingMode: UIImageResizingMode.Stretch)
    }
}
