//
//  FlowController.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation
import UIKit

class FlowController {
  private var navigationController: UINavigationController?
  private var viewControllersFactory: ViewControllersFactoryProtocol
  
  public init() {
    self.viewControllersFactory = ViewControllersFactory()
  }
  
  //MARK: - startFlow
  func start() -> UINavigationController? {
    let startViewController = viewControllersFactory.makeSplashViewController(flowDelegate: self)
    self.navigationController = UINavigationController(rootViewController: startViewController)
    return navigationController
  }
}

// MARK: - Splash

extension FlowController: SplashFlowDelegate {
  func navigateToLogin() {
    let loginViewController = viewControllersFactory.makeLoginViewController(flowDelegate: self)
    navigationController?.pushViewController(loginViewController, animated: true)
  }
}

// MARK: - Login

extension FlowController: LoginFlowDelegate {
}
