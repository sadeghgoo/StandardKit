//
//  StandardBorderableView.swift
//  StandardKitMain
//
//  Created by sadegh on 4/20/20.
//  Copyright © 2020 sadegh. All rights reserved.
//

import Foundation
import UIKit

/// A standard repesentation for  customize border of view
public protocol StandardBorderableView {
    func setBorderColor(_ value: UIColor)
    func setborderWidth(_ value: CGFloat)
    
}

public extension StandardBorderableView where Self: UIView {
    
    /// Set border color to view
    /// - Parameter value: The color of layer border
    func setBorderColor(_ value: UIColor) {
        layer.borderColor = value.cgColor
    }
    /// Set border width
    /// - Parameter value: The width of layer border
    func setborderWidth(_ value: CGFloat) {
        layer.borderWidth = value
    }

}
