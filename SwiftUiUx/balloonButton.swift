//
//  balloonButton.swift
//  SwiftUiUx
//
//  Created by IkegamiYuki on 11/20/15.
//  Copyright © 2015 IkegamiYuki. All rights reserved.
//

import UIKit
import Foundation
import CoreGraphics

class balloonButton: UIView {

    let ulayer:CAShapeLayer = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        ulayer.strokeColor = UIColor.cyanColor().CGColor
        ulayer.fillColor = UIColor.cyanColor().CGColor
        self.layer.addSublayer(layer)
        
        let stroke:UIBezierPath = {
            let rectanglePath = UIBezierPath()
            rectanglePath.moveToPoint(CGPointMake(29.54, 0))
            rectanglePath.addLineToPoint(CGPointMake(110.46, 0))
            rectanglePath.addCurveToPoint(CGPointMake(140, 31.71), controlPoint1: CGPointMake(126.78, 0), controlPoint2: CGPointMake(140, 14.19))
            rectanglePath.addLineToPoint(CGPointMake(140, 32.02))
            rectanglePath.addCurveToPoint(CGPointMake(110.46, 63.73), controlPoint1: CGPointMake(140, 49.53), controlPoint2: CGPointMake(126.77, 63.73))
            rectanglePath.addLineToPoint(CGPointMake(29.54, 63.73))
            rectanglePath.addCurveToPoint(CGPointMake(0, 32.02), controlPoint1: CGPointMake(13.22, 63.73), controlPoint2: CGPointMake(0, 49.54))
            rectanglePath.addLineToPoint(CGPointMake(0, 31.71))
            rectanglePath.addCurveToPoint(CGPointMake(29.54, 0), controlPoint1: CGPointMake(0, 14.2), controlPoint2: CGPointMake(13.23, 0))
            rectanglePath.closePath()
            rectanglePath.miterLimit = 4;
            rectanglePath.usesEvenOddFillRule = true;
            
            return rectanglePath
        }()
        ulayer.path = stroke.CGPath
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        ulayer.strokeColor = UIColor.cyanColor().CGColor
        ulayer.fillColor = UIColor.cyanColor().CGColor
        self.layer.addSublayer(ulayer)
        
        let stroke:UIBezierPath = {
            let rectanglePath = UIBezierPath()
            rectanglePath.moveToPoint(CGPointMake(29.54, 0))
            rectanglePath.addLineToPoint(CGPointMake(110.46, 0))
            rectanglePath.addCurveToPoint(CGPointMake(140, 31.71), controlPoint1: CGPointMake(126.78, 0), controlPoint2: CGPointMake(140, 14.19))
            rectanglePath.addLineToPoint(CGPointMake(140, 32.02))
            rectanglePath.addCurveToPoint(CGPointMake(110.46, 63.73), controlPoint1: CGPointMake(140, 49.53), controlPoint2: CGPointMake(126.77, 63.73))
            rectanglePath.addLineToPoint(CGPointMake(29.54, 63.73))
            rectanglePath.addCurveToPoint(CGPointMake(0, 32.02), controlPoint1: CGPointMake(13.22, 63.73), controlPoint2: CGPointMake(0, 49.54))
            rectanglePath.addLineToPoint(CGPointMake(0, 31.71))
            rectanglePath.addCurveToPoint(CGPointMake(29.54, 0), controlPoint1: CGPointMake(0, 14.2), controlPoint2: CGPointMake(13.23, 0))
            rectanglePath.closePath()
            rectanglePath.miterLimit = 4;
            rectanglePath.usesEvenOddFillRule = true;
            
            return rectanglePath
        }()
        ulayer.path = stroke.CGPath

    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.locationInView(self)
        let stroke:UIBezierPath = {
            let rectangle1Path = UIBezierPath()
            rectangle1Path.moveToPoint(CGPointMake(29.54, 0))
            rectangle1Path.addLineToPoint(CGPointMake(110.46, 0))
            rectangle1Path.addCurveToPoint(CGPointMake(140, 32.11), controlPoint1: CGPointMake(126.78, 0), controlPoint2: CGPointMake(140, 14.37))
            rectangle1Path.addLineToPoint(CGPointMake(140, 32.43))
            rectangle1Path.addCurveToPoint(CGPointMake(110.46, 64.53), controlPoint1: CGPointMake(140, 50.16), controlPoint2: CGPointMake(126.77, 64.53))
            rectangle1Path.addCurveToPoint(CGPointMake(location.x + 37, 67.62), controlPoint1: CGPointMake(location.x + 36.6, 64.53), controlPoint2: CGPointMake(location.x + 34.3, 64.53))
            rectangle1Path.addCurveToPoint(CGPointMake(location.x + 11, 76), controlPoint1: CGPointMake(location.x + 13.6, 70.71), controlPoint2: CGPointMake(location.x + 11.6, 76))
            rectangle1Path.addCurveToPoint(CGPointMake(location.x - 11, 67.62), controlPoint1: CGPointMake(location.x - 13.6, 76), controlPoint2: CGPointMake(location.x - 11.6, 70.71))
            rectangle1Path.addCurveToPoint(CGPointMake(location.x - 37, 64.53), controlPoint1: CGPointMake(location.x - 36.6, 64.53), controlPoint2: CGPointMake(location.x - 34.3, 64.53))
            rectangle1Path.addCurveToPoint(CGPointMake(0, 32.43), controlPoint1: CGPointMake(13.22, 64.53), controlPoint2: CGPointMake(0, 50.16))
            rectangle1Path.addLineToPoint(CGPointMake(0, 32.11))
            rectangle1Path.addCurveToPoint(CGPointMake(29.54, 0), controlPoint1: CGPointMake(0, 14.37), controlPoint2: CGPointMake(13.23, 0))
            rectangle1Path.closePath()
            rectangle1Path.miterLimit = 4;
            rectangle1Path.usesEvenOddFillRule = true;
            return rectangle1Path
        }()
        ulayer.path = stroke.CGPath
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
                if touch.view?.tag == self.tag{
                    UIView.animateWithDuration(0.5,animations: {
//                        self.frame = CGRectMake(self.center.x,self.center.y, 0, 0)
                        self.alpha = 0
                    })
                }
    }}