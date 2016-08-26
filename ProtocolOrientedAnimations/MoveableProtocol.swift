//
//  MoveableProtocol.swift
//  ProtocolOrientedAnimations
//
//  Created by Michael Mecham on 8/26/16.
//  Copyright © 2016 MichaelMecham. All rights reserved.
//

import UIKit

/**
 The direction the animation will travel.
 
 - Right: For moving the view to the right on the x axis.
 - Left: For moving the view to the left on the x axis.
 - Up: For moving the view up on the y axis.
 - Down: For moving the view down on the y axis.
 */

public enum AnimatableDirection {
    case Right
    case Left
    case Up
    case Down
}


protocol Moveable {}

extension Moveable where Self: UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPointMake(self.center.x - 4.0, self.center.y))
        animation.toValue = NSValue(CGPoint: CGPointMake(self.center.x + 4.0, self.center.y))
        layer.addAnimation(animation, forKey: "position")
    }
    
    /**
     Decides the direction and distance in which to move the view.
     - Parameters:
        - direction: The direction you want to the view to move
        - points: The distance that you want the view to move.
     */
    
    func move(direction: AnimatableDirection, points: CGFloat) {
        let originalFrame = self.frame
        UIView.animateWithDuration(0.4) {
            switch direction {
            case .Right:
                self.frame.origin.x = originalFrame.origin.x + points
            case .Left:
                self.frame.origin.x = originalFrame.origin.x - points
            case .Up:
                self.frame.origin.y = originalFrame.origin.y - points
            case .Down:
                self.frame.origin.y = originalFrame.origin.y + points
            }
        }
    }
    
    /**
     Defines a new height and/or width for the view by adding or subtracting a given amount of points.
     - Parameters:
        - heightBy: Increase the height with a positive number, or decrease the height with a negative number. Default value = 0.0
        - widthBy: Increase the width with a positive number, or decrease the width with a negative number. Default value is 0.0
     */
    
    func resize(heightBy: CGFloat = 0.0, widthBy: CGFloat = 0.0) {
        UIView.animateWithDuration(0.4) {
            self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.width + widthBy, self.frame.height + heightBy)
        }
    }
}
