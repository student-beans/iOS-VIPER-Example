//
//  LoginPresenter.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Presenter: Contains view logic for preparing content for display (as received from the Interactor) and for reacting
// to user inputs (by requesting new data from the Interactor).

import Foundation

class LoginPresenter {
    // MARK: - LoginPresenterProtocol
    
    var interactor: LoginInteractorInputProtocol?
    
    // MARK: - Properties
    
    weak private var view: LoginViewProtocol?
    private let router: LoginRouterProtocol
    
    // MARK: - Lifecycle

    init(interface: LoginViewProtocol, interactor: LoginInteractorInputProtocol?, router: LoginRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - LoginPresenterProtocol Methods

extension LoginPresenter: LoginPresenterProtocol {
    func viewDidLoad() {
        view?.configure()
        view?.layout()
    }
    
    func usernameDidChange(_ username: String?) {
        interactor?.username = username
    }
    
    func passwordDidChange(_ password: String?) {
        interactor?.password = password
    }
    
    func logInTapped() {
        interactor?.performLogInRequest()
    }
}

    // MARK: - LoginInteractorOutputProtocol Methods

extension LoginPresenter: LoginInteractorOutputProtocol {
    func didLogInSuccessfully() {
        router.navigateToHome()
    }
    
    func didFailToLogIn() {
        router.displayAlert("Invalid Username or Password!",
                            message: "Please enter valid credentials.",
                            completionHandler: nil)
    }
}
