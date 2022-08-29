//
//  EntityProtocol.swift
//
//  Created by sadegh on 3/1/20.


import Foundation
import UIKit

/// A standard repesentation for manage cell Name
public protocol StandardCellNameBehavior {
    
    static var cellIdentifier: String { get }
    static var cellNibName: String { get }
    static var cellNib: UINib { get }
}

public extension StandardCellNameBehavior {
    static var cellNib: UINib {
        let nib = UINib(nibName: cellNibName, bundle: nil)
        return nib
    }
}

/// A standard view name manager adopt this to your name manager class
public protocol StandardViewNameBehavior {
    
    static var storyBoardIdentifier: String { get }
    static var storyBoardName: String { get }
    static var storyBoardBundle: Bundle? { get }
}
public extension StandardViewNameBehavior {
    static var storyBoardBundle: Bundle? {
        return nil
    }

}
