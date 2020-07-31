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
public protocol StandardBorderableViewBehavior {
    var borderColor: CGColor? { get set }
    var borderWidth: CGFloat { get set }
    
}

public extension StandardBorderableViewBehavior where Self: UIView {
    
    /// Set border color to view layer.
    var borderColor: CGColor? {
        get {
            return layer.borderColor
        }
        set {
            layer.borderColor = newValue
        }
    }
    /// Set border width to view layer.
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

}
