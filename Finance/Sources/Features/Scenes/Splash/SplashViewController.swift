//
//  SplashViewController.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
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
    setup()
  }
  
  private func setup() {
    self.view.addSubview(contentView)
    
    setupConstraints()
  }
  
  private func setupConstraints() {
    setupContentViewToBounds(contentView: contentView)
  }
}
