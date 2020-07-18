////
////  File.swift
////
////
////  Created by sadegh on 4/26/20.
////
//
//import Foundation
//import UIKit
//
//public protocol StandardLodableView {
//    var indicatorColor: UIColor { get }
//    var indicatorStyle: UIActivityIndicatorView.Style { get  }
//    var isAnimating: Bool { get }
//    func configueIndicator()
//    func startAnimateIndicator()
//    func stopAnimateIndicator()
//
//}
//
//public extension StandardLodableView where Self: UIView {
//
//    private lazy var activityIndicator: UIActivityIndicatorView = {
//        let indicator = UIActivityIndicatorView()
//        indicator.color = indicatorColor
//        indicator.style = indicatorStyle
//        return indicator
//    }
//
//    var isAnimating: Bool {
//        get {
//            activityIndicator.isAnimating
//        }
//    }
//
//    var indicatorStyle: UIActivityIndicatorView.Style {
//        get {
//            return activityIndicator.style
//        }
//        set {
//            activityIndicator.style = newValue
//        }
//    }
//
//    func configueIndicator() {
//
//    }
//
//    func startAnimateIndicator() {
//        activityIndicator.startAnimating()
//    }
//
//    func stopAnimateIndicator() {
//        activityIndicator.stopAnimating()
//    }
//
//}
