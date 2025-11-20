//
//  SplashViewController.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
  private let gradientLayer = Gradients.black
  let contentView: SplashView
  public weak var flowDelegate: SplashFlowDelegate?
  
  init(contentView: SplashView,
       flowDelegate: SplashFlowDelegate) {
    self.contentView = contentView
    self.flowDelegate = flowDelegate
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    startBreathingAnimation()
    setup()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    gradientLayer.frame = view.bounds
  }
  
  private func setup() {
    self.navigationController?.navigationBar.isHidden = true
    self.view.backgroundColor = .clear
    
    // Add the gradient background:
    self.view.layer.insertSublayer(gradientLayer, at: 0)
    
    self.view.addSubview(contentView)
    
    setupConstraints()
  }
  
  private func setupConstraints() {
    setupContentViewToBounds(contentView: contentView)
  }
  
  private func decideNavigationFlow() {
    self.flowDelegate?.navigateToLogin()
  }
}

//MARK: - Animations
extension SplashViewController {
  private func startBreathingAnimation() {
    UIView.animate(withDuration: 1, delay: 0.0, animations: {
      self.contentView.logoImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
    }, completion: { _ in
      self.decideNavigationFlow()
    })
  }
}
