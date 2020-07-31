//
//  StandardViewControllerInterface.swift
//  Pods-StandardKit_Example
//
//  Created by sadegh on 8/1/20.
//

import Foundation
import UIKit

protocol StandardViewControllerInterface {
    func pushViewController(_ controller: UIViewController, animated: Bool)
    func popViewController(animated: Bool)
    func present(_ controller: UIViewController, completion: (() -> Void)?)
    func dismisViewController(animated: Bool, completion: (() -> Void)?)
}
extension StandardViewControllerInterface where Self: UIViewController {
    func pushViewController(_ controller: UIViewController, animated: Bool) {
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.pushViewController(controller, animated: animated)
        }
    }
   func popViewController(animated: Bool) {
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.popViewController(animated: animated)

        }
    }
    func present(_ controller: UIViewController, completion: (() -> Void)?) {
        DispatchQueue.main.async { [weak self] in
            self?.present(controller, completion: completion)
        }
    }
    func dismisViewController(animated: Bool, completion: (() -> Void)?) {
        DispatchQueue.main.async { [weak self] in
            self?.dismiss(animated: animated, completion: completion)
        }
    }
}
