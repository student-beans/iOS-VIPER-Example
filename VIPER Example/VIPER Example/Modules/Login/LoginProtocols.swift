// swiftlint:disable:this file_name
//
//  LoginProtocols.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Protocols: Define interactions between components of the VIPER module.

import Foundation

// MARK: - View
/// Presenter -> ViewController
protocol LoginViewProtocol: AnyObject {
    var presenter: LoginPresenterProtocol? { get set }
    
    func configure()
    func layout()
}

// MARK: - Interactor
/// Presenter -> Interactor
protocol LoginInteractorInputProtocol: AnyObject {
    var presenter: LoginInteractorOutputProtocol? { get set }
    var username: String? { get set }
    var password: String? { get set }
    
    func performLogInRequest()
}

/// Interactor -> Presenter
protocol LoginInteractorOutputProtocol: AnyObject {
    func didLogInSuccessfully()
    func didFailToLogIn()
}

// MARK: - Presenter
/// ViewController -> Presenter
protocol LoginPresenterProtocol: AnyObject, ViewControllerLifeCycle {
    var interactor: LoginInteractorInputProtocol? { get set }
    
    func usernameDidChange(_ username: String?)
    func passwordDidChange(_ password: String?)
    func logInTapped()
}

// MARK: Router
/// Navigation
protocol LoginRouterProtocol: AnyObject, DefaultRouterProtocol {
    func navigateToHome()
}
