//
//  StandardRoundableView.swift
//  StandardKitMain
//
//  Created by sadegh on 4/20/20.
//  Copyright © 2020 sadegh. All rights reserved.
//

import Foundation
import UIKit

public protocol StandardRoundableViewBehavior {

    func roundCorners(_ value: CGFloat, corners: UIView.CACorner...)
    var cornerRadius: CGFloat { get set }
}

public extension StandardRoundableViewBehavior where Self: UIView {
    
    typealias corner = CACorner
    
    /// Set corner radius to view, The radius to use when drawing rounded corners for the layer’s background.
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set(newValue) {
            layer.cornerRadius = newValue
        }
        
    }
   
    /// round view in custom corners
    func roundCorners(_ value: CGFloat, corners: UIView.CACorner...) {
        
        var maskedCorners: CACornerMask = []
        
        for maskedCorner in corners {
            maskedCorners.update(with: maskedCorner.value)
        }
        
        layer.maskedCorners = maskedCorners
        layer.cornerRadius = value
        
    }
}

public extension UIView  {

    enum CACorner {
        case topLeft
        case topRight
        case bottomLeft
        case bottomRight
        
        var value: CACornerMask {
            switch self {
            case .bottomRight:
                return .layerMaxXMaxYCorner
                
            case .topRight:
                return .layerMaxXMaxYCorner
                
            case .bottomLeft:
                return .layerMinXMaxYCorner
                
            case .topLeft:
                return .layerMinXMinYCorner
                
            }
        }
    }

}
