//
//  LoginViewControllerTests.swift
//  VIPER ExampleTests
//
//  Created by Jack Smith on 01/10/2020.
//  Copyright © 2020 Jack Smith. All rights reserved.
//

@testable import VIPER_Example
import XCTest

class LoginViewControllerTests: XCTestCase {
    var viewController: LoginViewController!
    var presenter: MockLoginPresenter!

    override func setUp() {
        viewController = LoginViewController()
        presenter = MockLoginPresenter()
        viewController.presenter = presenter
    }
    
    // MARK: - Tests
    
    func testThatTextFieldDidChangeCallsPresenterUsernameDidChange() {
        viewController.textFieldDidChange(viewController.usernameField)

        XCTAssertTrue(presenter.usernameDidChangeCalled)
    }

    func testThatTextFieldDidChangeCallsPresenterPasswordDidChange() {
        viewController.textFieldDidChange(viewController.passwordField)

        XCTAssertTrue(presenter.passwordDidChangeCalled)
    }
    
    func testThatLogInButtonTappedCallsPresenterLogInTapped() {
        viewController.logInButtonTapped()
        
        XCTAssertTrue(presenter.logInTappedCalled)
    }
}
