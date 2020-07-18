//
//  StandardShadowableView.swift
//  StandardKitMain
//
//  Created by sadegh on 4/20/20.
//  Copyright © 2020 sadegh. All rights reserved.
//

import Foundation
import UIKit

public protocol StandardShadowableView {
    
    func setShadowColor(_ color: UIColor)
    func setShadowOpacity(_ value: Float)
    func setShadowRadius(_ value: CGFloat)
    func setShadowPath(_ path: CGPath)
    func setShadowOffset(_ offset: CGSize)
    
}

public extension StandardShadowableView where Self: UIView {
    
    func setShadowColor(_ color: UIColor) {
        layer.shadowColor = color.cgColor
    }
    
    func setShadowOpacity(_ value: Float) {
        layer.shadowOpacity = value
    }
    
    func setShadowRadius(_ value: CGFloat) {
        layer.shadowRadius = value
    }
    
    func setShadowPath(_ path: CGPath) {
        layer.shadowPath = path
    }
    
    func setShadowOffset(_ offset: CGSize) {
        layer.shadowOffset = offset
    }


}
