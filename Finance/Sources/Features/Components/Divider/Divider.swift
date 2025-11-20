//
//  Divider.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

import Foundation
import UIKit

class Divider: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupUI() {
    self.backgroundColor = Colors.gray300
    setupConstraints()
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate([
      heightAnchor.constraint(equalToConstant: 1),
      topAnchor.constraint(equalTo: topAnchor),
      leadingAnchor.constraint(equalTo: leadingAnchor),
      trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
  }
}

