//
//  MockLoginViewController.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import Foundation

class MockLoginViewController: LoginViewProtocol {
    // MARK: - LoginViewProtocol
    
    var presenter: LoginPresenterProtocol?
    
    // MARK: - Properties
    
    var configureCalled = false
    var layoutCalled = false
    
    // MARK: - LoginViewProtocol Methods
    
    func configure() {
        configureCalled = true
    }
    
    func layout() {
        layoutCalled = true
    }
}
