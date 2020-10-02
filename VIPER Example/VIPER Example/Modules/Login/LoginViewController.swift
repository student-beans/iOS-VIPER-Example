//
//  LoginViewController.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// View: Displays what the Presenter tells it to display and relays user input back to the Presenter.

import UIKit

class LoginViewController: UIViewController {
    // MARK: - UI Elements
    
    lazy var usernameField: UITextField = {
        let usernameField = UITextField()
        usernameField.placeholder = "Username"
        usernameField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        return usernameField
    }()
    
    lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        passwordField.isSecureTextEntry = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    lazy var logInButton: UIButton = {
        let logInButton = UIButton(type: .system)
        logInButton.setTitle("Log In", for: .normal)
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.backgroundColor = .lightGray
        logInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        return logInButton
    }()
    
    // MARK: - LoginViewProtocol
    
    var presenter: LoginPresenterProtocol?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    // MARK: - Public Methods
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if textField == usernameField {
            presenter?.usernameDidChange(textField.text)
        } else {
            presenter?.passwordDidChange(textField.text)
        }
    }
    
    @objc func logInButtonTapped() {
        presenter?.logInTapped()
    }
}

// MARK: - LoginViewProtocol Methods

extension LoginViewController: LoginViewProtocol {
    func configure() {
        view.backgroundColor = .white
    }
    
    func layout() {
        let views = [usernameField, passwordField, logInButton]
        
        let stackVeiw = UIStackView(arrangedSubviews: views)
        stackVeiw.translatesAutoresizingMaskIntoConstraints = false
        stackVeiw.axis = .vertical
        stackVeiw.spacing = 16
        stackVeiw.alignment = .fill
        
        view.addSubview(stackVeiw)
        stackVeiw.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackVeiw.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        views.forEach { $0.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true }
    }
}
