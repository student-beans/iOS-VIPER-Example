//
//  MockLoginInteractor.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import Foundation

class MockLoginInteractor: LoginInteractorInputProtocol {
    // MARK: - LoginInteractorInputProtocol
    
    var presenter: LoginInteractorOutputProtocol?
    var username: String?
    var password: String?
    
    // MARK: - Properties
    
    var performLogInRequestCalled = false
    
    // MARK: - LoginInteractorInputProtocol Methods
    
    func performLogInRequest() {
        performLogInRequestCalled = true
    }
}
