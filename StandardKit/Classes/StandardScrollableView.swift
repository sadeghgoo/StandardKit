//
//  Scrollable.swift
//
//  Created by sadegh on 3/1/20.


import Foundation
import UIKit

public protocol StandardSelectableCell {
    func didSelectElement(at indexPath: IndexPath)
}
/// A standard repesention for manage cell data source and delegate
public protocol StandardReusableScrollView: StandardSelectableCell {
    
    associatedtype entityModel
            
    func numberOfSection() -> Int
    
    func numberOfElementInSection() -> Int
        
    subscript (at index: IndexPath) -> entityModel { get }
    
}


