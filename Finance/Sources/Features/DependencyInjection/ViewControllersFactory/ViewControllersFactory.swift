//
//  ViewControllersFactory.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation
import UIKit

final class ViewControllersFactory: ViewControllersFactoryProtocol {
  func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController {
    let contentView = SplashView()
    let viewController = SplashViewController(contentView: contentView,
                                              flowDelegate: flowDelegate)
    return viewController
  }
  
  func makeLoginViewController(flowDelegate: LoginFlowDelegate) -> LoginViewController {
    let contentView = LoginView()
    let viewController = LoginViewController(contentView: contentView,
                                             flowDelegate: flowDelegate)
    return viewController
  }
}
