//
//  ViewController.swift
//  SwiftUiUx
//
//  Created by IkegamiYuki on 11/20/15.
//  Copyright © 2015 IkegamiYuki. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {
    
    @IBOutlet weak var mainBtn: UILabel!
    @IBOutlet weak var pushPlace: UILabel!
    
    let layer:CAShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushPlace.alpha = 0
        pushPlace.backgroundColor = UIColor.redColor()
        pushPlace.layer.cornerRadius = 42
        pushPlace.clipsToBounds = true
        
        mainBtn.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height / 2)
        mainBtn.backgroundColor = UIColor.redColor()
        mainBtn.layer.cornerRadius = 30
        mainBtn.clipsToBounds = false
        mainBtn.userInteractionEnabled = true
        mainBtn.tag = 1
        
        layer.strokeColor = UIColor.cyanColor().CGColor
        layer.fillColor = UIColor.cyanColor().CGColor
        mainBtn.layer.addSublayer(layer)
        
        let stroke:CGPath = {
            let path:CGMutablePathRef = CGPathCreateMutable()
            CGPathMoveToPoint(path, nil, 0, 32)
            CGPathAddCurveToPoint(path, nil, 2.00, 40.84, 13.16, 52.00, 32, 64)
            CGPathAddCurveToPoint(path, nil, 20.00, 46.00, 25, 48, 100, 0)
            return path
        }()
        layer.path = stroke

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.locationInView(self.view)
        if touch.view?.tag == self.mainBtn.tag{
            pushPlace.center = CGPoint(x: location.x, y: location.y)
            pushPlace.alpha = 1
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.locationInView(self.view)
        pushPlace.center = CGPoint(x: location.x, y: location.y)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        pushPlace.alpha = 0
//        if touch.view?.tag == self.mainBtn.tag{
//            UIView.animateWithDuration(0.5,animations: {
//                self.mainBtn.frame = CGRectMake(self.mainBtn.center.x,self.mainBtn.center.y, 0, 0)
//            })
//        }
    }
    
}

