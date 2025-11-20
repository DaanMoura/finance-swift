//
//  LoginView.swift
//  Finance
//
//  Created by Daniel Moura on 20/11/25.
//

import Foundation
import UIKit

class LoginView: UIView {

  // MARK: Init
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: UI Components

  private let loginImage: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "LoginImage")
    imageView.contentMode = .scaleAspectFit
    imageView.clipsToBounds = true
    imageView.layer.masksToBounds = true
    imageView.layer.cornerRadius = 12
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  private let titleLabel: UILabel = {
    let label = UILabel()
    label.attributedText = RichTypography.titleSm("Boas vindas!")
    label.textColor = Colors.gray700
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  private let descriptionLabel: UILabel = {
    let label = UILabel()
    label.attributedText = RichTypography.textSmRegular(
      "Pronto para organizar suas finanças? Acesse agora"
    )
    label.textColor = Colors.gray500
    label.numberOfLines = 0
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  let nameInput = Input(placeholder: "Nome")
  let emailInput = Input(placeholder: "E-mail")
  let passwordInput: Input = {
    let input = Input(placeholder: "Senha")
    input.enableSecureText()
    return input
  }()

  private let divider = Divider()

  private let signInButton: Button = {
    let button = Button()
    button.setTitle("Entrar", for: .normal)
    //    button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    return button
  }()
  
  // MARK: Containers views
  
  private let generalContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .vertical
    stackView.spacing = 28
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private let greetingsContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .vertical
    stackView.spacing = 8
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private let inputsContainer: UIStackView = {
    let stackView = UIStackView()
    stackView.alignment = .fill
    stackView.axis = .vertical
    stackView.spacing = 12
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()
  
  private func setupUI() {
    addSubview(loginImage)
    addSubview(generalContainer)
    
    [titleLabel, descriptionLabel].forEach {
      greetingsContainer.addArrangedSubview($0)
    }
    
    [nameInput, emailInput, passwordInput].forEach {
      inputsContainer.addArrangedSubview($0)
    }
    
    [greetingsContainer, inputsContainer, divider, signInButton].forEach {
      generalContainer.addArrangedSubview($0)
    }
    
    setupConstraints()
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate([
      loginImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
      loginImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
      loginImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
      
      loginImage.heightAnchor.constraint(equalTo: loginImage.widthAnchor, multiplier: 1),
      
      generalContainer.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 24),
      generalContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
      generalContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
      generalContainer.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
      
      signInButton.heightAnchor.constraint(equalToConstant: Metrics.buttonHeight)
      
    ])
    
  }
}
