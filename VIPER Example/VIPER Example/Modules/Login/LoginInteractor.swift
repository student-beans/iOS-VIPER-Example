//
//  LoginInteractor.swift
//  VIPER Example
//
//  Created by Jack Smith on 30/09/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//
// Interactor: Responsible for retrieving data from the model layer, it is independent of the user interface.

import Foundation

class LoginInteractor {
    // MARK: - LoginInteractorInputProtocol
    
    weak var presenter: LoginInteractorOutputProtocol?
    var username: String?
    var password: String?
    
    // MARK: - Private Methods
    
    private func logInRequest() {
        guard let username = username, !username.isEmpty,
            let password = password, !password.isEmpty else {
            presenter?.didFailToLogIn()
            return
        }
        
        // Here we would usually communicate with an entity, perhaps an API client.
        presenter?.didLogInSuccessfully()
    }
}

// MARK: - LoginInteractorInputProtocol

extension LoginInteractor: LoginInteractorInputProtocol {
    func performLogInRequest() {
        logInRequest()
    }
}

