//
//  StandardPositionalView.swift
//  StandardKitMain
//
//  Created by sadegh on 4/20/20.
//  Copyright © 2020 sadegh. All rights reserved.
//

import Foundation
import UIKit

public protocol StandardPointableViewBehvior {
    
    var topLeft: CGPoint { get }
    var topRight: CGPoint { get }
    var bottomLeft: CGPoint { get }
    var bottomRight: CGPoint { get }
    var rightMid: CGPoint { get }
    var leftMid: CGPoint { get }
    var bottomMid: CGPoint { get }
    var topMid: CGPoint { get }
}


public extension StandardPointableViewBehvior where Self: UIView {
    
    var topLeft: CGPoint {
        return CGPoint(x: frame.minX, y: frame.minY)
    }
    var topRight: CGPoint {
        return CGPoint(x: frame.maxX, y: frame.minY)
    }
    var bottomLeft: CGPoint {
        return CGPoint(x: frame.minX, y: frame.maxY)
    }
    var bottomRight: CGPoint {
        return CGPoint(x: frame.maxX, y: frame.maxY)
    }
    var rightMid: CGPoint {
        return CGPoint(x: frame.maxX, y: frame.midY)
    }
    var leftMid: CGPoint {
        return CGPoint(x: frame.minX, y: frame.midY)
    }
    var bottomMid: CGPoint {
        return CGPoint(x: frame.midX, y: frame.maxY)
    }
    var topMid: CGPoint {
        return CGPoint(x: frame.midX, y: frame.midX)
    }
  

}
