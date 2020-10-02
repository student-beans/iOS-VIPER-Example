//
//  MockLoginPresenter.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import Foundation

class MockLoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol {
    // MARK: - LoginPresenterProtocol
    
    var interactor: LoginInteractorInputProtocol?
    
    // MARK: - Properties
    
    var usernameDidChangeCalled = false
    var passwordDidChangeCalled = false
    var logInTappedCalled = false
    
    var didLogInSuccessfullyCalled = false
    var didFailToLogInCalled = false
    
    
    // MARK: - LoginPresenterProtocol Methods
    
    func usernameDidChange(_ username: String?) {
        usernameDidChangeCalled = true
    }
    
    func passwordDidChange(_ password: String?) {
        passwordDidChangeCalled = true
    }
    
    func logInTapped() {
        logInTappedCalled = true
    }
    
    // MARK: - LoginInteractorOutputProtocol Methods
    
    func didLogInSuccessfully() {
        didLogInSuccessfullyCalled = true
    }
    
    func didFailToLogIn() {
        didFailToLogInCalled = true
    }
}
