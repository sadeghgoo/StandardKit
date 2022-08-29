//
//  StandardLifeCycle.swift
//
//  Created by sadegh on 3/1/20.

import Foundation

/// A standard type that consist of all swift standard view life cycle
public protocol StandardViewControllerLifeCycleInterface {
    
    func viewDidLoad()
    func viewDidAppear()
    func viewDidDisappear()
    func viewWillAppear()
    func viewWillDisappear()
}

public extension StandardViewControllerLifeCycleInterface {

    func viewDidLoad() {
        
    }
    
    func viewDidAppear() {
        
    }
    
    func viewDidDisappear() {
        
    }
    
    func viewWillAppear() {
        
    }
    
    func viewWillDisappear() {
        
    }
}
