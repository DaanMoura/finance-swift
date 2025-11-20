import UIKit

//
//  Gradients.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

public struct Gradients {
  static let black: CAGradientLayer = {
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [
      UIColor(red: 0.059, green: 0.059, blue: 0.059, alpha: 1).cgColor, // #0F0F0F
      UIColor(red: 0.176, green: 0.176, blue: 0.176, alpha: 1).cgColor  // #2D2D2D
    ]
    
    // Convert CSS angle (clockwise from top) to CAGradientLayer start/end points
    // CSS angle 0deg is top to bottom, 90deg is left to right.
    // Cartesian angle (counter-clockwise from positive x-axis) = 90 - CSS angle.
    let cssAngle: CGFloat = 102
    let cartesianAngle = (90 - cssAngle) * .pi / 180
    
    let x = cos(cartesianAngle)
    let y = sin(cartesianAngle)
    
    gradientLayer.startPoint = CGPoint(x: 0.5 - x * 0.5, y: 0.5 + y * 0.5)
    gradientLayer.endPoint = CGPoint(x: 0.5 + x * 0.5, y: 0.5 - y * 0.5)
    
    return gradientLayer
  }()
}
