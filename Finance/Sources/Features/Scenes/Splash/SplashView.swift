//
//  SplashView.swift
//  Finance
//
//  Created by Daniel Moura on 15/11/25.
//

import Foundation
import UIKit

class SplashView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupUI() {
    self.backgroundColor = .red
  }
}
