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
    
    @IBOutlet weak private var firstView: CustomView!
    @IBOutlet weak private var secondView: CustomView!
    @IBOutlet weak private var thirdView: CustomView!
    @IBOutlet weak private var plusXButton: UIButton!
    
    private var subMenuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCornersOnSubMenu()
    }
    
    private func roundCornersOnSubMenu() {
        let views = [firstView, secondView, thirdView]
        for view in views {
            view.layer.cornerRadius = view.frame.width / 2
            view.layer.masksToBounds = true
        }
    }
    
    @IBAction func toggleSubMenu(sender: AnyObject) {
        if subMenuShowing {
            hideSubMenu()
        } else {
            showSubMenu()
        }
        subMenuShowing = !subMenuShowing
    }
    
    private func hideSubMenu() {
        UIView.animateWithDuration(0.4) { 
            self.plusXButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
        }
        secondView.move(.Up, points: 58)
        firstView.move(.Up, points: 116)
        
    }
    
    private func showSubMenu() {
        UIView.animateWithDuration(0.4) { 
            self.plusXButton.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_4))
        }
        secondView.move(.Down, points: 58)
        firstView.move(.Down, points: 116)
        
    }
    
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
