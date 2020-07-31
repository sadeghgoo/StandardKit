//
//  StandardGradientView.swift
//  StandardKitMain
//
//  Created by sadegh on 4/20/20.
//  Copyright © 2020 sadegh. All rights reserved.
//

import Foundation
import UIKit

public protocol StandardGradinetableViewBehavior {
    func setGradient(color: UIColor..., location: [NSNumber], startPoint: CGPoint, endPoint: CGPoint)
}

public extension StandardGradinetableViewBehavior where Self: UIView {
    
    private var gradintLayer: CAGradientLayer {
        let layer = CAGradientLayer()
        return layer
    }
    
    func setGradient(color: UIColor..., location: [NSNumber], startPoint: CGPoint, endPoint: CGPoint ) {
        
        gradintLayer.startPoint = startPoint
        gradintLayer.endPoint = endPoint
        gradintLayer.colors = color
        gradintLayer.locations = location
        layer.addSublayer(gradintLayer)
    }
}
