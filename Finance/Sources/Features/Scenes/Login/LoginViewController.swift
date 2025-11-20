//
//  LoginViewController.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
  
  let contentView: LoginView
  public weak var flowDelegate: LoginFlowDelegate?
  
  init(contentView: LoginView,
       flowDelegate: LoginFlowDelegate) {
    self.contentView = contentView
    self.flowDelegate = flowDelegate
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationController?.isNavigationBarHidden = true
    
    setupUI()
  }

  private func setupUI() {
    self.view.addSubview(contentView)
    self.view.backgroundColor = Colors.gray100
    contentView.translatesAutoresizingMaskIntoConstraints = false
    
    setupConstraints()
  }
  
  private func setupConstraints() {
    setupContentViewToBounds(contentView: contentView)
  }

}
