//
//  StandardListInterface.swift
//  Pods-StandardKit_Example
//
//  Created by sadegh on 8/28/22.
//

import Foundation

protocol StandardListInterface: AnyObject {
    var numberOfSections: Int { get }
    func numberOfItems(in section: Int) -> Int
    func didSelectItem(at indexPath: IndexPath)
}

extension StandardListInterface {
    var numberOfSections: Int { 1 }
    func didSelectItem(at indexPath: IndexPath) {  }
}
