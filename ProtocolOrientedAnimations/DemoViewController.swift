//
//  DemoViewController.swift
//  ProtocolOrientedAnimations
//
//  Created by Michael Mecham on 8/31/16.
//  Copyright © 2016 MichaelMecham. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    @IBOutlet weak private var demoTextField: CustomTextField!
    
    @IBAction func shakeButtonTapped(sender: AnyObject) {
        demoTextField.shake()
    }
    
    @IBAction func moveLeftButtonTapped(sender: AnyObject) {
        demoTextField.move(.Left, points: 600)
    }
    
    @IBAction func moveRightButtonTapeed(sender: AnyObject) {
        demoTextField.move(.Right, points: 600)
    }
}
