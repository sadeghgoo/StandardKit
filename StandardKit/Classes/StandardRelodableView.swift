//
//  File.swift
//  
//
//  Created by sadegh on 4/26/20.
//

import Foundation

public protocol StandardRelodableView {
    func reloadData(finished: () -> ())
    func reloadData(after: DispatchTime, comp: () -> ())
}

public extension StandardRelodableView {
    
    func reloadData(after: DispatchTime, completion: @escaping  () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: after, execute: completion)
    }
}
