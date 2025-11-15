//
//  ViewControllersFactoryProtocol.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation

protocol ViewControllersFactoryProtocol: AnyObject {
  func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController
}
