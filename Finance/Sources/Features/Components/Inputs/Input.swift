//
//  Input.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

import Foundation
import UIKit

public class Input: UIView {

  // MARK: - UI Components

  private let inputContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = Colors.gray200
    view.layer.borderWidth = 1
    view.layer.borderColor = Colors.gray300.cgColor
    view.layer.cornerRadius = 8
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

  private let hStackView: UIStackView = {
    let stack = UIStackView()
    stack.axis = .horizontal
    stack.spacing = Metrics.small
    stack.alignment = .fill
    stack.distribution = .fill
    stack.translatesAutoresizingMaskIntoConstraints = false
    return stack
  }()

  internal let textField: UITextField = {
    // The text field is now plain, styling is handled by the container.
    let textField = UITextFieldWithPadding()
    textField.font = Typography.input
    textField.textColor = Colors.gray700
    textField.backgroundColor = .clear
    textField.layer.borderWidth = 0
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()

  private var leadingIconImageView: UIImageView?
  private var trailingIconImageView: UIImageView?

  // MARK: - Initialization

  init(
    placeholder: String,
    leadingIcon: UIImage? = nil,
    trailingIcon: UIImage? = nil
  ) {
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false

    configurePlaceholder(placeholder: placeholder)

    if let leadingIcon = leadingIcon {
      let iconView = createIconView(with: leadingIcon)
      self.leadingIconImageView = iconView
      hStackView.addArrangedSubview(iconView)
    }

    hStackView.addArrangedSubview(textField)

    if let trailingIcon = trailingIcon {
      let iconView = createIconView(with: trailingIcon)
      self.trailingIconImageView = iconView
      hStackView.addArrangedSubview(iconView)
    }

    setupView()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Private Methods

  private func createIconView(with image: UIImage) -> UIImageView {
    let imageView = UIImageView(image: image)
    imageView.contentMode = .center
    NSLayoutConstraint.activate([
      imageView.widthAnchor.constraint(equalToConstant: 24),
      imageView.heightAnchor.constraint(equalToConstant: 24),
    ])
    return imageView
  }

  private func configurePlaceholder(placeholder: String) {
    textField.attributedPlaceholder = RichTypography.input(placeholder)
  }

  private func setupView() {
    addSubview(inputContainerView)
    inputContainerView.addSubview(hStackView)

    setupConstraints()
  }

  private func setupConstraints() {
    NSLayoutConstraint.activate([
      // Input Container Constraints
      inputContainerView.topAnchor.constraint(equalTo: topAnchor),  // Adjusted topAnchor
      inputContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
      inputContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
      inputContainerView.heightAnchor.constraint(
        equalToConstant: Metrics.inputHeight
      ),

      // Stack View Constraints (pinned to container with padding)
      hStackView.topAnchor.constraint(equalTo: inputContainerView.topAnchor),
      hStackView.bottomAnchor.constraint(
        equalTo: inputContainerView.bottomAnchor
      ),
      hStackView.leadingAnchor.constraint(
        equalTo: inputContainerView.leadingAnchor,
        constant: Metrics.tiny
      ),
      hStackView.trailingAnchor.constraint(
        equalTo: inputContainerView.trailingAnchor,
        constant: -Metrics.tiny
      ),

      // Self height
      self.bottomAnchor.constraint(equalTo: inputContainerView.bottomAnchor),
    ])
  }

  // MARK: - Public Methods

  func getText() -> String {
    return textField.text ?? ""
  }

  func enableSecureText() {
    textField.isSecureTextEntry = true
  }

  func disableSecureText() {
    textField.isSecureTextEntry = false
  }
}
