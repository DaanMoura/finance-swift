//
//  Button.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

import Foundation
import UIKit

public final class Button: UIButton {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  public convenience init() {
    self.init(type: .system)
    commonInit()
  }

  private func commonInit() {
    self.configuration = .prominentGlass()
    self.configuration?.cornerStyle = .fixed
    self.configuration?.background.cornerRadius = Metrics.small
    self.tintColor = Colors.magenta
    self.configuration?.imagePadding = Metrics.little
    self.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
      var outgoing = incoming
      outgoing.font = Typography.buttonMd
      return outgoing
    }
    self.configuration?.preferredSymbolConfigurationForImage = .init(pointSize: Metrics.buttonIconSize, weight: .heavy)
    self.translatesAutoresizingMaskIntoConstraints = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public func setupDefaultConstraints(to: UIView) {
    NSLayoutConstraint.activate([
      self.leadingAnchor.constraint(equalTo: to.leadingAnchor, constant: Metrics.large),
      self.trailingAnchor.constraint(equalTo: to.trailingAnchor, constant: -Metrics.large),
      self.bottomAnchor.constraint(equalTo: to.safeAreaLayoutGuide.bottomAnchor, constant: -Metrics.tiny),
      self.heightAnchor.constraint(equalToConstant: Metrics.buttonHeight)
    ])
  }
  
}
