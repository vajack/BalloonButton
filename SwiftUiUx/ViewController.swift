//
//  ViewController.swift
//  SwiftUiUx
//
//  Created by IkegamiYuki on 11/20/15.
//  Copyright © 2015 IkegamiYuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainBtn: UILabel!
    @IBOutlet weak var pushPlace: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushPlace.alpha = 0
        pushPlace.backgroundColor = UIColor.cyanColor()
        pushPlace.layer.cornerRadius = 42
        pushPlace.clipsToBounds = true
        
        mainBtn.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height / 2)
        mainBtn.backgroundColor = UIColor.cyanColor()
        mainBtn.layer.cornerRadius = 30
        mainBtn.clipsToBounds = true
        mainBtn.tag = 1
        
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
        pushPlace.alpha = 0
    }
    
}

