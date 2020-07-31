//
//  ConfigurableCell.swift
//
//  Created by sadegh on 3/1/20.


import Foundation

/// A standard representation for configue cell
public protocol StandardConfigurableCellBehavior {
    
    associatedtype Model
    func configue(_ model: Model)
    func configureTest(_ model: Model)
    
}
public extension StandardConfigurableCellBehavior {
    
    func configureTest(_ model: Model) {
        
    }

}
