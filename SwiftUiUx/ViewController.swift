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
    
    @IBOutlet weak var mainBtn: balloonButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainBtn.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height / 2)
        mainBtn.backgroundColor = UIColor.clearColor()
        mainBtn.layer.cornerRadius = 30
        mainBtn.clipsToBounds = false
        mainBtn.userInteractionEnabled = true
        mainBtn.tag = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

